.class public final synthetic Lcom/rigol/scope/-$$Lambda$MainActivity$fullScreenOnClick;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic fs$0:Lcom/rigol/scope/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/rigol/scope/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rigol/scope/-$$Lambda$MainActivity$fullScreenOnClick;->fs$0:Lcom/rigol/scope/MainActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/rigol/scope/-$$Lambda$MainActivity$fullScreenOnClick;->fs$0:Lcom/rigol/scope/MainActivity;

    invoke-virtual {v0, p1}, Lcom/rigol/scope/MainActivity;->fullScreen(Landroid/view/View;)V

    return-void
.end method
