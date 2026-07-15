.class public abstract Lcom/rigol/scope/databinding/ActivityMainBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ActivityMainBinding.java"


# instance fields
.field public final imageLogo:Landroid/widget/ImageView;

.field protected mSharedParam:Lcom/rigol/scope/data/SharedParam;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mShowMainContent:Landroidx/databinding/ObservableBoolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final mainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final navigationBar:Landroidx/fragment/app/FragmentContainerView;

.field public final progress:Landroid/widget/ImageView;

.field public final resultsBar:Landroidx/fragment/app/FragmentContainerView;

.field public final resultsBarIcon:Landroid/widget/ImageView;

.field public final settingsBar:Landroidx/fragment/app/FragmentContainerView;

.field public final waveform:Landroidx/fragment/app/FragmentContainerView;

# Add fullScreenIcon object; MRISCOC
.field public final fullScreenIcon:Landroid/widget/ImageView;
#---------------------------

# direct methods
# Add fullScreenIcon object; MRISCOC
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/fragment/app/FragmentContainerView;Landroid/widget/ImageView;Landroidx/fragment/app/FragmentContainerView;Landroid/widget/ImageView;Landroidx/fragment/app/FragmentContainerView;Landroidx/fragment/app/FragmentContainerView;Landroid/widget/ImageView;)V
#---------------------------
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 57
    iput-object p4, p0, Lcom/rigol/scope/databinding/ActivityMainBinding;->imageLogo:Landroid/widget/ImageView;

    .line 58
    iput-object p5, p0, Lcom/rigol/scope/databinding/ActivityMainBinding;->mainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 59
    iput-object p6, p0, Lcom/rigol/scope/databinding/ActivityMainBinding;->navigationBar:Landroidx/fragment/app/FragmentContainerView;

    .line 60
    iput-object p7, p0, Lcom/rigol/scope/databinding/ActivityMainBinding;->progress:Landroid/widget/ImageView;

    .line 61
    iput-object p8, p0, Lcom/rigol/scope/databinding/ActivityMainBinding;->resultsBar:Landroidx/fragment/app/FragmentContainerView;

    .line 62
    iput-object p9, p0, Lcom/rigol/scope/databinding/ActivityMainBinding;->resultsBarIcon:Landroid/widget/ImageView;

    .line 63
    iput-object p10, p0, Lcom/rigol/scope/databinding/ActivityMainBinding;->settingsBar:Landroidx/fragment/app/FragmentContainerView;

    .line 64
    iput-object p11, p0, Lcom/rigol/scope/databinding/ActivityMainBinding;->waveform:Landroidx/fragment/app/FragmentContainerView;

# Add fullScreenIcon object; MRISCOC
    iput-object p12, p0, Lcom/rigol/scope/databinding/ActivityMainBinding;->fullScreenIcon:Landroid/widget/ImageView;
#---------------------------

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/rigol/scope/databinding/ActivityMainBinding;
    .locals 1

    .line 121
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/rigol/scope/databinding/ActivityMainBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/rigol/scope/databinding/ActivityMainBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/rigol/scope/databinding/ActivityMainBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d001e

    .line 133
    invoke-static {p1, p0, v0}, Lcom/rigol/scope/databinding/ActivityMainBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/rigol/scope/databinding/ActivityMainBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/rigol/scope/databinding/ActivityMainBinding;
    .locals 1

    .line 103
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/rigol/scope/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/rigol/scope/databinding/ActivityMainBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/rigol/scope/databinding/ActivityMainBinding;
    .locals 1

    .line 84
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/rigol/scope/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/rigol/scope/databinding/ActivityMainBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/rigol/scope/databinding/ActivityMainBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d001e

    .line 98
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/rigol/scope/databinding/ActivityMainBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/rigol/scope/databinding/ActivityMainBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d001e

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 117
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/rigol/scope/databinding/ActivityMainBinding;

    return-object p0
.end method


# virtual methods
.method public getSharedParam()Lcom/rigol/scope/data/SharedParam;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/rigol/scope/databinding/ActivityMainBinding;->mSharedParam:Lcom/rigol/scope/data/SharedParam;

    return-object v0
.end method

.method public getShowMainContent()Landroidx/databinding/ObservableBoolean;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/rigol/scope/databinding/ActivityMainBinding;->mShowMainContent:Landroidx/databinding/ObservableBoolean;

    return-object v0
.end method

.method public abstract setSharedParam(Lcom/rigol/scope/data/SharedParam;)V
.end method

.method public abstract setShowMainContent(Landroidx/databinding/ObservableBoolean;)V
.end method
