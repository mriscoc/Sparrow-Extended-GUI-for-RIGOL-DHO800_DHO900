.class public Lcom/rigol/scope/views/startMenu/StartMenuPopupView;
.super Lcom/rigol/scope/views/baseview/BasePopupView;
.source "StartMenuPopupView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rigol/scope/views/startMenu/StartMenuPopupView$StartMenuItemDecoration;,
        Lcom/rigol/scope/views/startMenu/StartMenuPopupView$Callback;
    }
.end annotation


# instance fields
.field private final functionAdapter:Lcom/rigol/scope/adapters/StartMenuFunctionAdapter;

.field private optionParam:Lcom/rigol/scope/data/OptionParam;


# direct methods
.method public constructor <init>()V
    .locals 6

    const v0, 0x7f110053

    .line 66
    invoke-direct {p0, v0}, Lcom/rigol/scope/views/baseview/BasePopupView;-><init>(I)V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/rigol/scope/views/startMenu/StartMenuPopupView;->optionParam:Lcom/rigol/scope/data/OptionParam;

    .line 69
    iget-object v0, p0, Lcom/rigol/scope/views/startMenu/StartMenuPopupView;->context:Landroid/content/Context;

    .line 70
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/rigol/scope/databinding/PopupviewStartMenuBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/rigol/scope/databinding/PopupviewStartMenuBinding;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/rigol/scope/databinding/PopupviewStartMenuBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/rigol/scope/views/startMenu/StartMenuPopupView;->setContentView(Landroid/view/View;)V

    .line 74
    const-class v1, Lcom/rigol/scope/viewmodels/OptionViewModel;

    invoke-static {v1}, Lcom/rigol/scope/utilities/ContextUtil;->getAppViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/rigol/scope/viewmodels/OptionViewModel;

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v1}, Lcom/rigol/scope/viewmodels/OptionViewModel;->getLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    new-instance v3, Lcom/rigol/scope/views/startMenu/-$$Lambda$StartMenuPopupView$uv78CI5M7uhHjEIjzZcufo6HhRI;

    invoke-direct {v3, p0}, Lcom/rigol/scope/views/startMenu/-$$Lambda$StartMenuPopupView$uv78CI5M7uhHjEIjzZcufo6HhRI;-><init>(Lcom/rigol/scope/views/startMenu/StartMenuPopupView;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    const v1, 0x7f030056

    .line 81
    invoke-static {v1}, Lcom/rigol/scope/utilities/ViewUtil;->getList(I)Ljava/util/List;

    move-result-object v1

    .line 82
    sget v2, Lcom/rigol/scope/utilities/ViewUtil;->serialize:I

    sget-object v3, Lcom/rigol/scope/cil/ServiceEnum$ProductSeries;->SERIES_800:Lcom/rigol/scope/cil/ServiceEnum$ProductSeries;

    iget v3, v3, Lcom/rigol/scope/cil/ServiceEnum$ProductSeries;->value1:I

    const/16 v4, 0x31

    const/16 v5, 0xc

    if-ne v2, v3, :cond_1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rigol/scope/data/MappingObject;

    invoke-virtual {v2}, Lcom/rigol/scope/data/MappingObject;->getValue()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 83
    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

# Force UPA item in the startmenu; MRISCOC
    .line 86
    :cond_1
    # invoke-static {}, Lcom/rigol/scope/utilities/ViewUtil;->checkModel()Z

    # move-result v2

    # if-eqz v2, :cond_2

    # invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    # move-result-object v2

    # check-cast v2, Lcom/rigol/scope/data/MappingObject;

    # invoke-virtual {v2}, Lcom/rigol/scope/data/MappingObject;->getValue()I

    # move-result v2

    # if-ne v2, v4, :cond_2

    # .line 87
    # invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    # .line 90
    # :cond_2
    # invoke-static {}, Lcom/rigol/scope/utilities/ViewUtil;->checkModelEDU()Z

    # move-result v2

    # if-eqz v2, :cond_3

    # const/16 v2, 0xa

    # invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    # move-result-object v3

    # check-cast v3, Lcom/rigol/scope/data/MappingObject;

    # invoke-virtual {v3}, Lcom/rigol/scope/data/MappingObject;->getValue()I

    # move-result v3

    # const/16 v4, 0xe

    # if-ne v3, v4, :cond_3

    # .line 91
    # invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    # .line 94
    # :cond_3
# ---------------------------------
    new-instance v2, Lcom/rigol/scope/views/startMenu/StartMenuPopupView$StartMenuItemDecoration;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/rigol/scope/views/startMenu/StartMenuPopupView$StartMenuItemDecoration;-><init>(IZ)V

    .line 95
    iget-object v3, v0, Lcom/rigol/scope/databinding/PopupviewStartMenuBinding;->list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 98
    new-instance v3, Lcom/rigol/scope/adapters/StartMenuFunctionAdapter;

    iget-object v4, p0, Lcom/rigol/scope/views/startMenu/StartMenuPopupView;->context:Landroid/content/Context;

    const v5, 0x7f0d0060

    invoke-direct {v3, v4, v1, v5}, Lcom/rigol/scope/adapters/StartMenuFunctionAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v3, p0, Lcom/rigol/scope/views/startMenu/StartMenuPopupView;->functionAdapter:Lcom/rigol/scope/adapters/StartMenuFunctionAdapter;

    .line 99
    new-instance v4, Lcom/rigol/scope/views/startMenu/StartMenuPopupView$1;

    invoke-direct {v4, p0, v1}, Lcom/rigol/scope/views/startMenu/StartMenuPopupView$1;-><init>(Lcom/rigol/scope/views/startMenu/StartMenuPopupView;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/rigol/scope/adapters/StartMenuFunctionAdapter;->setOnItemGestureDetectorListener(Lcom/rigol/scope/adapters/OnItemGestureDetectorListener;)V

    .line 148
    iget-object v0, v0, Lcom/rigol/scope/databinding/PopupviewStartMenuBinding;->list:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/rigol/scope/views/startMenu/StartMenuPopupView;->functionAdapter:Lcom/rigol/scope/adapters/StartMenuFunctionAdapter;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 151
    const-class v0, Lcom/rigol/scope/viewmodels/SharedViewModel;

    invoke-static {v0}, Lcom/rigol/scope/utilities/ContextUtil;->getAppViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/rigol/scope/viewmodels/SharedViewModel;

    if-eqz v0, :cond_4

    .line 153
    iget-object v0, v0, Lcom/rigol/scope/viewmodels/SharedViewModel;->hasUpdate:Landroidx/lifecycle/MutableLiveData;

    iget-object v3, p0, Lcom/rigol/scope/views/startMenu/StartMenuPopupView;->context:Landroid/content/Context;

    check-cast v3, Landroidx/lifecycle/LifecycleOwner;

    new-instance v4, Lcom/rigol/scope/views/startMenu/-$$Lambda$StartMenuPopupView$_w6UfaHTvAR86zYm-AtQMaOeSls;

    invoke-direct {v4, p0, v1, v2}, Lcom/rigol/scope/views/startMenu/-$$Lambda$StartMenuPopupView$_w6UfaHTvAR86zYm-AtQMaOeSls;-><init>(Lcom/rigol/scope/views/startMenu/StartMenuPopupView;Ljava/util/List;Lcom/rigol/scope/views/startMenu/StartMenuPopupView$StartMenuItemDecoration;)V

    invoke-virtual {v0, v3, v4}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 171
    :cond_4
    const-class v0, Lcom/rigol/scope/viewmodels/SyncDataViewModel;

    invoke-static {v0}, Lcom/rigol/scope/utilities/ContextUtil;->getAppViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/rigol/scope/viewmodels/SyncDataViewModel;

    if-eqz v0, :cond_5

    const/16 v1, 0x24

    const/16 v2, 0x2b07

    .line 173
    invoke-virtual {v0, v1, v2}, Lcom/rigol/scope/viewmodels/SyncDataViewModel;->get(II)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/rigol/scope/views/startMenu/StartMenuPopupView;->context:Landroid/content/Context;

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/rigol/scope/views/startMenu/-$$Lambda$StartMenuPopupView$psbdUwrwXPlmLmvLQLSAqGAc2SQ;

    invoke-direct {v2, p0}, Lcom/rigol/scope/views/startMenu/-$$Lambda$StartMenuPopupView$psbdUwrwXPlmLmvLQLSAqGAc2SQ;-><init>(Lcom/rigol/scope/views/startMenu/StartMenuPopupView;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_5
    return-void
.end method

.method static synthetic access$000(Lcom/rigol/scope/views/startMenu/StartMenuPopupView;)Lcom/rigol/scope/data/OptionParam;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/rigol/scope/views/startMenu/StartMenuPopupView;->optionParam:Lcom/rigol/scope/data/OptionParam;

    return-object p0
.end method

.method static synthetic access$100(Lcom/rigol/scope/views/startMenu/StartMenuPopupView;)Landroid/content/Context;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/rigol/scope/views/startMenu/StartMenuPopupView;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method protected findAnchor()Landroid/view/View;
    .locals 1

    .line 269
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/rigol/scope/MainActivity;

    if-eqz v0, :cond_0

    .line 270
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/rigol/scope/MainActivity;

    invoke-virtual {v0}, Lcom/rigol/scope/MainActivity;->getSettingsBarFragment()Lcom/rigol/scope/SettingsBarFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rigol/scope/SettingsBarFragment;->getBinding()Lcom/rigol/scope/databinding/FragmentSettingsBarBinding;

    move-result-object v0

    .line 271
    iget-object v0, v0, Lcom/rigol/scope/databinding/FragmentSettingsBarBinding;->starterLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic lambda$new$0$StartMenuPopupView(Lcom/rigol/scope/data/OptionParam;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/rigol/scope/views/startMenu/StartMenuPopupView;->optionParam:Lcom/rigol/scope/data/OptionParam;

    return-void
.end method

.method public synthetic lambda$new$1$StartMenuPopupView(Ljava/util/List;Lcom/rigol/scope/views/startMenu/StartMenuPopupView$StartMenuItemDecoration;Lcom/rigol/scope/data/TwoTuple;)V
    .locals 3

    if-eqz p3, :cond_1

    const/4 v0, 0x0

    .line 156
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 157
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rigol/scope/data/MappingObject;

    .line 158
    invoke-virtual {v1}, Lcom/rigol/scope/data/MappingObject;->getValue()I

    move-result v1

    sget-object v2, Lcom/rigol/scope/cil/ServiceEnum$Function;->FUN_UPDATE:Lcom/rigol/scope/cil/ServiceEnum$Function;

    iget v2, v2, Lcom/rigol/scope/cil/ServiceEnum$Function;->value1:I

    if-ne v1, v2, :cond_0

    .line 159
    invoke-virtual {p2, v0}, Lcom/rigol/scope/views/startMenu/StartMenuPopupView$StartMenuItemDecoration;->setUpdateItemPosition(I)V

    .line 160
    invoke-virtual {p3}, Lcom/rigol/scope/data/TwoTuple;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/rigol/scope/views/startMenu/StartMenuPopupView$StartMenuItemDecoration;->setShowUpdatePoint(Z)V

    .line 161
    iget-object p1, p0, Lcom/rigol/scope/views/startMenu/StartMenuPopupView;->functionAdapter:Lcom/rigol/scope/adapters/StartMenuFunctionAdapter;

    invoke-virtual {p1}, Lcom/rigol/scope/adapters/StartMenuFunctionAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public synthetic lambda$new$2$StartMenuPopupView(Ljava/lang/Object;)V
    .locals 0

    .line 174
    iget-object p1, p0, Lcom/rigol/scope/views/startMenu/StartMenuPopupView;->functionAdapter:Lcom/rigol/scope/adapters/StartMenuFunctionAdapter;

    invoke-virtual {p1}, Lcom/rigol/scope/adapters/StartMenuFunctionAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onLocaleChanged()V
    .locals 2

    .line 181
    invoke-super {p0}, Lcom/rigol/scope/views/baseview/BasePopupView;->onLocaleChanged()V

    .line 182
    iget-object v0, p0, Lcom/rigol/scope/views/startMenu/StartMenuPopupView;->functionAdapter:Lcom/rigol/scope/adapters/StartMenuFunctionAdapter;

    if-eqz v0, :cond_0

    const v0, 0x7f030056

    .line 183
    invoke-static {v0}, Lcom/rigol/scope/utilities/ViewUtil;->getList(I)Ljava/util/List;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/rigol/scope/views/startMenu/StartMenuPopupView;->functionAdapter:Lcom/rigol/scope/adapters/StartMenuFunctionAdapter;

    invoke-virtual {v1, v0}, Lcom/rigol/scope/adapters/StartMenuFunctionAdapter;->setItems(Ljava/util/List;)V

    .line 185
    iget-object v0, p0, Lcom/rigol/scope/views/startMenu/StartMenuPopupView;->functionAdapter:Lcom/rigol/scope/adapters/StartMenuFunctionAdapter;

    invoke-virtual {v0}, Lcom/rigol/scope/adapters/StartMenuFunctionAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
