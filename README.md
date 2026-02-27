# Sparrow Extended GUI for the RIGOL DHO800 DHO900 Oscilloscopes
Sparrow Android GUI project for Rigol DHO800 and DHO900 series Oscilloscopes

This the official repository for the proyect Sparrow Extended UI. This proyect was started 

This project began by gathering ideas and contributions from the community of users of Rigol DHO800 and DHO900 series oscilloscopes, mainly on the [Eevblog forum](https://www.eevblog.com/forum/testgear/hacking-the-rigol-dho800900-scope). Other projects to customize the original interface were started later. If you visit that forum, you can find a historical compilation of the ideas implemented in this modification. In early 2024, the first layout changes of the measurement panel and a little reorganization of the UI elements were presented in the forum, and the [first public release](https://www.eevblog.com/forum/testgear/hacking-the-rigol-dho800900-scope/msg5470243/#msg5470243) was presented, as well as the first demonstration of the [full screen mode](https://www.eevblog.com/forum/testgear/hacking-the-rigol-dho800900-scope/msg5471431/#msg5471431). A new [header bar](https://www.eevblog.com/forum/testgear/hacking-the-rigol-dho800900-scope/msg5471554/#msg5471554) was shown in April 2024 and released in the Github repository. Finally, a video showing the modifications made up to May 2024 [was published on YouTube](https://www.eevblog.com/forum/testgear/hacking-the-rigol-dho800900-scope/msg5504275/#msg5504275). Many more modifications have been made over time. At the end of 2025, Rigol launched the MHO900 series of oscilloscopes, applying many of the ideas from this project to the user interface of these instruments.

⚠️ Over time, other customization projects appeared with similar names, which has caused confusion. This document refers exclusively to this **ORIGINAL Sparrow Extended** project.

> [!NOTE]
> DHO Actions must be started after the Oscilloscope application is loaded to be able to connect to it, if the Oscilloscope application closes and restarts, you must force a reconnect by pressing and holding the close icon [X] in the upper right corner of the DHO Actions screen and start it from the DHO Sparrow application.

## Extended GUI

Latest version can be found at:  
For **00.01.04** firmware: https://www.patreon.com/posts/141472182  
For **00.01.02** firmware: https://www.patreon.com/mriscoc/shop/rigol-dho800-900-sparrow-extended-gui-v0-204640    

Get the latest version here: https://www.patreon.com/posts/dho800-900-gui-7-141608043

Features of verion 0.7.1:
- Full Screen mode with informative bottom bar and clickable elements
- Special A(ction) button to launch the DHO Actions application
- Included a configurable DHO Actions panel that allows to execute SCPI commands, launch applications (Python scripts with PyDroid) and open web pages in the default browser.
- Included DHO visor, allows to display the screen streaming in scaling mode.
- Unlocks extended decoders like LIN, FlexRay, I2S, 1553B
- All DHO series have bandwidth unlocked to 250MHz and Memory depth up to 50M
- Ultra Power Analyzer unlocked for all DHO series
- Enabled advanced settings in XY mode with real functions.
- Compact unified Horizontal bar, Trigger bar and Channel widgets
- Dock/Undock of the Result Bar
- Compact Result / measurements bar with optimized rendering
- Probe attenuation in channel widget
- Trigger coupling indicator
- Better rendering of the chanel scale labels, so they can be readed always no matter what the back color is.
- Automatically show date-time at boot if it is valid
- Start menu settings button allows to open Android system settings
- Fixes alignment of visual elements, color and transparency corrections
- Better UI organization for improvement of screen size utilization 
- Code enhancements, removed extra logging for better general performance
- Fixes for bugs reported by the community
- Normal and System versions

## Screeshot of version 0.7.1:
![Sparrow_Extended_v0 7 1](https://github.com/user-attachments/assets/ba0dd531-b2ab-4f03-9d15-3c6e5d58f9af)

## Fullscreen mode  
![Sparrow_Extended_v0 7 1_fullscreen](https://github.com/user-attachments/assets/cb4c6276-d328-41e7-826f-6bc0315a32db)

## Unlocked decoders
![Sparrow_Extended_v0 7 1_decoders](https://github.com/user-attachments/assets/6140cba9-ea47-4c27-ac15-f61dada7410a)

## Unlocked UPA
![Sparrow_Extended_v0 7 1_UPA](https://github.com/user-attachments/assets/0aceb6ec-334d-4f39-8086-2f8b2bef024c)

## Using Python
![DHO804_PyVISA](https://github.com/user-attachments/assets/fc0a5206-0fbf-4e06-858b-c6ce302a6ba5)

## DHO 8x2 with full features without ghost channels
![DHO802_about](https://github.com/user-attachments/assets/ffa26d4c-512e-42e3-8a4d-c1efe1e83c4e)

## Using the DHOVisor and the DHOTools
Image of the FM radio stations in my city:
<img width="2092" height="788" alt="image" src="https://github.com/user-attachments/assets/ca56f111-e94a-4268-9f8c-cf1a05081546" />

## Social media communication channel
Telegram DHO800/900 channel: https://t.me/S2084K/2

### Installing Sparrow Extended manually
First **make a backup** of the original internal µSD card just in case,
then follow this guide: [How to install the new Sparrow extended UI?](https://github.com/mriscoc/RIGOL_DHO800_DHO900_GUI/discussions/4)


## Donations
Thank you for your support, I receive donations through [Patreon](https://www.patreon.com/mriscoc) and [Paypal](https://www.paypal.com/donate/?business=85SPAAR6UZEE8)   

[<img src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif">](https://www.paypal.com/donate?business=85SPAAR6UZEE8&currency_code=USD)   

## Disclaimer  

THIS SOFTWARE AND ALL OTHER FILES IN THE DOWNLOAD ARE PROVIDED WITH NO WARRANTY OR GUARANTEE. SUPPORT IS NOT INCLUDED JUST BECAUSE YOU DOWNLOADED IT. WE ARE NOT LIABLE FOR ANY DAMAGE TO YOUR EQUIPMENT, PERSON, OR ANY OTHER PROPERTY DUE TO THE USE OF THIS SOFTWARE. IF YOU DO NOT AGREE TO THESE TERMS THEN DO NOT USE IT.
