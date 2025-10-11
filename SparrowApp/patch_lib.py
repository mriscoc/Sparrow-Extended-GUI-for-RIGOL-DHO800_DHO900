#!/usr/bin/env python3
# patch_lib.py
#
# Applies binary patches to libscope-auklet.so for RIGOL DHO804.
#
# Usage:
#   python patch_lib.py
#
# This script copies libscope-auklet.so.original to libscope-auklet.so,
# then applies a series of binary patches defined in PATCHES.
#
# Author: Miguel Risco-Castillo (MRiscoC)
# License: MIT
#

import mmap
import os
import shutil

BASE_DIR = "./lib/arm64-v8a/"
SOURCE_FILE = os.path.join(BASE_DIR, "libscope-auklet.so.original")
TARGET_FILE = os.path.join(BASE_DIR, "libscope-auklet.so")

PATCHES = [
# ------------------ (MRiscoC) 200 uV/div in 800 series ---------------------------------
    {
        "offset": "25C180",  # CApiVertical::ApiChannel_GetScale(CApiVertical* self, int64_t* outScale)
        "original": "3C 82 FC 97", # BL API_GetProductSeries()
        "patched": "80 70 80 52", # MOV W0, #900
        "description": "Force the product series to 900 to enable 200 uV/div in 800 series 1/2"
    },
    {
        "offset": "25C5F8",  # CApiVertical::ApiChannel_SetRefAutoScale(CApiVertical *this, __int64 a2, char a3)
        "original": "1E 81 FC 97", # BL API_GetProductSeries()
        "patched": "80 70 80 52", # MOV W0, #900
        "description": "Force the product series to 900 to enable 200 uV/div in 800 series 2/2"
    },
# ------------------ (MRiscoC) Enable UPA -----------------------------------------------
    {
        "offset": "3764E8",  # CApiUPA::runUpaThread()
        "original": "F7 C3 40 39", # v2 = v18
        "patched": "46 00 00 14", # goto LABEL_38  ;B loc_376600
        "description": "Forces the device to an EDU one to enable UPA 1/5"
    },
    {
        "offset": "3775A0",  # CApiUPA::ApiUpaPowerQ_SetDisplay(bool enable)
        "original": "F8 E3 40 39", # v4 = v25
        "patched": "5C 00 00 14", # goto LABEL_44  ;B loc_377710
        "description": "Forces the device to an EDU one to enable UPA 2/5"
    },
    {
        "offset": "379F6C",  # CApiUPA::ApiUpaRipple_SetDisplay(CApiUPA *this, char a2)
        "original": "F8 E3 40 39", # v4 = v29
        "patched": "5C 00 00 14", # goto LABEL_44  ;B loc_37A0DC
        "description": "Forces the device to an EDU one to enable UPA 3/5"
    },
    {
        "offset": "377170",  # CPowerQcfg::serialIn(CPowerQcfg *this, CStream *a2)
        "original": "F8 43 41 39", # v4 = v26
        "patched": "4A 00 00 14", # goto LABEL_48  ;B loc_377298
        "description": "Forces the device to an EDU one to enable UPA 4/5"
    },
    {
        "offset": "379B98",  # CRipplecfg::serialIn(CRipplecfg *this, CStream *a2)
        "original": "F8 43 41 39", # v4 = v26
        "patched": "4A 00 00 14", # goto LABEL_42  ;B loc_379CC0
        "description": "Forces the device to an EDU one to enable UPA 5/5"
    },
# ------------------ (MRiscoC) Enable RLU -----------------------------------------------
    {
        "offset": "25F3F8",  # CApiHorizontal::getChannelMaxRecordLength
        "original": "08 00 00 12", # AND W8, W0, #1
        "patched": "28 00 80 52",  # MOV W8, #1
        "description": "Force hasLicense = true in getChannelMaxRecordLength, enable RLU 1/3"
    },
    {
      "offset": "2609FC",  # CApiHorizontal::licenseChanged(CApiHorizontal *this)
      "original": "08 00 00 12", # AND W8, W0, #1
      "patched": "28 00 80 52",  # MOV W8, #1
      "description": "Force hasLicense = true in licenseChanged, enable RLU 2/3"
    },
    {
        "offset": "260A50",  # non-virtual thunk to CApiHorizontal::licenseChanged
        "original": "08 00 00 12", # AND W8, W0, #1
        "patched": "28 00 80 52",  # MOV W8, #1
        "description": "Force hasLicense = true in licenseChanged, enable RLU 3/3"
    },
]

def parse_offset(value):
    value = value.strip().lower()
    if value.startswith("0x"):
        value = value[2:]
    return int(value, 16)

def parse_hex_string(hex_str):
    try:
        hex_str = hex_str.strip().replace(" ", "")
        return bytes.fromhex(hex_str)
    except ValueError:
        raise ValueError(f"Invalid hex string: '{hex_str}'")

def apply_patches(file_path, patches):
    with open(file_path, "r+b") as f:
        mm = mmap.mmap(f.fileno(), 0)
        for patch in patches:
            try:
                offset = parse_offset(patch["offset"])
                original = parse_hex_string(patch["original"])
                patched = parse_hex_string(patch["patched"])
                desc = patch["description"]
            except Exception as e:
                print(f"[!] Error in patch: {e}")
                continue

            if len(original) != len(patched):
                print(f"[!] Incompatible length in {hex(offset)}: original={len(original)}, patch={len(patched)} → omitted")
                continue

            if offset + len(original) > mm.size():
                print(f"[!] Offset out of range in {hex(offset)} → omitted")
                continue

            mm.seek(offset)
            current = mm.read(len(original))

            if current != original:
                print(f"[!] Mismatch in offset {hex(offset)}: expected {original.hex()}, found {current.hex()}")
                continue

            mm.seek(offset)
            mm.write(patched)
            print(f"[✓] Patch applied on {hex(offset)}: {desc}")

        mm.flush()
        mm.close()

if __name__ == "__main__":
    if not os.path.exists(SOURCE_FILE):
        print(f"[!] Source file not found: {SOURCE_FILE}")
    else:
        shutil.copyfile(SOURCE_FILE, TARGET_FILE)
        print(f"[→] Copy created: {TARGET_FILE}")
        apply_patches(TARGET_FILE, PATCHES)