.class public Lcom/rigol/scope/MainActivity;
.super Lcom/rigol/scope/BaseActivity;
.source "MainActivity.java"


# static fields
.field private static final GUARD_SERVICE_ACTION:Ljava/lang/String; = "com.rigol.watchdog.Watchdog"


# instance fields
.field private final MSG_QUICK_POWER_OFF:I

.field private final MSG_QUICK_POWER_ON:I

.field private final PROP_QUICK_POWER_OFF:Ljava/lang/String;

.field private final PROP_QUICK_POWER_ON:Ljava/lang/String;

.field private bConnectLauncher:Z

.field private binding:Lcom/rigol/scope/databinding/ActivityMainBinding;

.field executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final guardListener:Lcom/rigol/iguardservice/IGuardListener$Stub;

.field private final handler:Landroid/os/Handler;

.field private final heartbeat:Ljava/lang/Runnable;

.field private im:Landroid/hardware/input/InputManager;

.field private injectInputEventMethod:Ljava/lang/reflect/Method;

.field private ioParam:Lcom/rigol/scope/data/IOParam;

.field private isShowMainActivity:Z

.field private lastPosition:I

.field private final mGuardConn:Landroid/content/ServiceConnection;

.field private mGuardService:Lcom/rigol/iguardservice/IGuardService;

.field private final mHandler:Landroid/os/Handler;

.field private miniScreenPresentation:Lcom/rigol/scope/views/presentation/MiniScreenPresentation;

.field private motorPresentation:Lcom/rigol/scope/views/presentation/MotorPresentation;

.field private optionParam:Lcom/rigol/scope/data/OptionParam;

.field private screenFlipPopupView:Lcom/rigol/scope/views/baseview/BasePopupView;

.field private sharedParam:Lcom/rigol/scope/data/SharedParam;

.field private showMainContent:Landroidx/databinding/ObservableBoolean;

.field private updatePopupView:Lcom/rigol/scope/views/UpdatePopupView;

.field private updateUIViewModel:Lcom/rigol/scope/viewmodels/UpdateUIViewModel;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 130
    invoke-direct {p0}, Lcom/rigol/scope/BaseActivity;-><init>()V

    .line 135
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/rigol/scope/MainActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/rigol/scope/MainActivity;->bConnectLauncher:Z

    const/4 v1, 0x0

    .line 146
    iput-object v1, p0, Lcom/rigol/scope/MainActivity;->updatePopupView:Lcom/rigol/scope/views/UpdatePopupView;

    .line 148
    iput-object v1, p0, Lcom/rigol/scope/MainActivity;->screenFlipPopupView:Lcom/rigol/scope/views/baseview/BasePopupView;

    const/4 v2, -0x1

    .line 149
    iput v2, p0, Lcom/rigol/scope/MainActivity;->lastPosition:I

    .line 151
    iput-object v1, p0, Lcom/rigol/scope/MainActivity;->sharedParam:Lcom/rigol/scope/data/SharedParam;

    .line 153
    iput-object v1, p0, Lcom/rigol/scope/MainActivity;->ioParam:Lcom/rigol/scope/data/IOParam;

    .line 155
    iput-object v1, p0, Lcom/rigol/scope/MainActivity;->optionParam:Lcom/rigol/scope/data/OptionParam;

    .line 157
    iput-object v1, p0, Lcom/rigol/scope/MainActivity;->im:Landroid/hardware/input/InputManager;

    .line 163
    iput-object v1, p0, Lcom/rigol/scope/MainActivity;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 165
    new-instance v1, Landroidx/databinding/ObservableBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/rigol/scope/MainActivity;->showMainContent:Landroidx/databinding/ObservableBoolean;

    .line 167
    iput-boolean v0, p0, Lcom/rigol/scope/MainActivity;->isShowMainActivity:Z

    const-string v1, "persist.rigol.quick_power_on"

    .line 169
    iput-object v1, p0, Lcom/rigol/scope/MainActivity;->PROP_QUICK_POWER_ON:Ljava/lang/String;

    const-string v1, "persist.rigol.quick_power_off"

    .line 170
    iput-object v1, p0, Lcom/rigol/scope/MainActivity;->PROP_QUICK_POWER_OFF:Ljava/lang/String;

    .line 172
    new-instance v1, Lcom/rigol/scope/MainActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/rigol/scope/MainActivity$1;-><init>(Lcom/rigol/scope/MainActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/rigol/scope/MainActivity;->handler:Landroid/os/Handler;

    .line 636
    iput v0, p0, Lcom/rigol/scope/MainActivity;->MSG_QUICK_POWER_ON:I

    .line 637
    iput v2, p0, Lcom/rigol/scope/MainActivity;->MSG_QUICK_POWER_OFF:I

    .line 775
    new-instance v0, Lcom/rigol/scope/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/rigol/scope/MainActivity$5;-><init>(Lcom/rigol/scope/MainActivity;)V

    iput-object v0, p0, Lcom/rigol/scope/MainActivity;->heartbeat:Ljava/lang/Runnable;

    .line 826
    new-instance v0, Lcom/rigol/scope/MainActivity$6;

    invoke-direct {v0, p0}, Lcom/rigol/scope/MainActivity$6;-><init>(Lcom/rigol/scope/MainActivity;)V

    iput-object v0, p0, Lcom/rigol/scope/MainActivity;->mGuardConn:Landroid/content/ServiceConnection;

    .line 882
    new-instance v0, Lcom/rigol/scope/MainActivity$7;

    invoke-direct {v0, p0}, Lcom/rigol/scope/MainActivity$7;-><init>(Lcom/rigol/scope/MainActivity;)V

    iput-object v0, p0, Lcom/rigol/scope/MainActivity;->guardListener:Lcom/rigol/iguardservice/IGuardListener$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/rigol/scope/MainActivity;)Landroidx/databinding/ObservableBoolean;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/rigol/scope/MainActivity;->showMainContent:Landroidx/databinding/ObservableBoolean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/rigol/scope/MainActivity;)Landroid/hardware/input/InputManager;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/rigol/scope/MainActivity;->im:Landroid/hardware/input/InputManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/rigol/scope/MainActivity;)Lcom/rigol/scope/views/UpdatePopupView;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/rigol/scope/MainActivity;->updatePopupView:Lcom/rigol/scope/views/UpdatePopupView;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/rigol/scope/MainActivity;Lcom/rigol/scope/views/UpdatePopupView;)Lcom/rigol/scope/views/UpdatePopupView;
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/rigol/scope/MainActivity;->updatePopupView:Lcom/rigol/scope/views/UpdatePopupView;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/rigol/scope/MainActivity;)Lcom/rigol/scope/views/baseview/BasePopupView;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/rigol/scope/MainActivity;->screenFlipPopupView:Lcom/rigol/scope/views/baseview/BasePopupView;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/rigol/scope/MainActivity;Lcom/rigol/scope/views/baseview/BasePopupView;)Lcom/rigol/scope/views/baseview/BasePopupView;
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/rigol/scope/MainActivity;->screenFlipPopupView:Lcom/rigol/scope/views/baseview/BasePopupView;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/rigol/scope/MainActivity;)I
    .locals 0

    .line 130
    iget p0, p0, Lcom/rigol/scope/MainActivity;->lastPosition:I

    return p0
.end method

.method static synthetic access$1202(Lcom/rigol/scope/MainActivity;I)I
    .locals 0

    .line 130
    iput p1, p0, Lcom/rigol/scope/MainActivity;->lastPosition:I

    return p1
.end method

.method static synthetic access$1300(Lcom/rigol/scope/MainActivity;)Lcom/rigol/scope/views/presentation/MotorPresentation;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/rigol/scope/MainActivity;->motorPresentation:Lcom/rigol/scope/views/presentation/MotorPresentation;

    return-object p0
.end method

.method static synthetic access$200(Lcom/rigol/scope/MainActivity;)Ljava/lang/reflect/Method;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/rigol/scope/MainActivity;->injectInputEventMethod:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic access$300(Lcom/rigol/scope/MainActivity;)Z
    .locals 0

    .line 130
    iget-boolean p0, p0, Lcom/rigol/scope/MainActivity;->bConnectLauncher:Z

    return p0
.end method

.method static synthetic access$302(Lcom/rigol/scope/MainActivity;Z)Z
    .locals 0

    .line 130
    iput-boolean p1, p0, Lcom/rigol/scope/MainActivity;->bConnectLauncher:Z

    return p1
.end method

.method static synthetic access$400(Lcom/rigol/scope/MainActivity;)Landroid/content/ServiceConnection;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/rigol/scope/MainActivity;->mGuardConn:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$500(Lcom/rigol/scope/MainActivity;)Lcom/rigol/iguardservice/IGuardService;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/rigol/scope/MainActivity;->mGuardService:Lcom/rigol/iguardservice/IGuardService;

    return-object p0
.end method

.method static synthetic access$502(Lcom/rigol/scope/MainActivity;Lcom/rigol/iguardservice/IGuardService;)Lcom/rigol/iguardservice/IGuardService;
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/rigol/scope/MainActivity;->mGuardService:Lcom/rigol/iguardservice/IGuardService;

    return-object p1
.end method

.method static synthetic access$600(Lcom/rigol/scope/MainActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/rigol/scope/MainActivity;->heartbeat:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/rigol/scope/MainActivity;)Landroid/os/Handler;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/rigol/scope/MainActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/rigol/scope/MainActivity;)Lcom/rigol/iguardservice/IGuardListener$Stub;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/rigol/scope/MainActivity;->guardListener:Lcom/rigol/iguardservice/IGuardListener$Stub;

    return-object p0
.end method

.method static synthetic access$900(Lcom/rigol/scope/MainActivity;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/rigol/scope/MainActivity;->setPackageName()V

    return-void
.end method

.method private getInputManager()Landroid/hardware/input/InputManager;
    .locals 5

    const/4 v0, 0x0

    .line 1074
    :try_start_0
    const-class v1, Landroid/hardware/input/InputManager;

    const-string v2, "getInstance"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 1075
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 1081
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 1079
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 1077
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private injectMotionEvent(Landroid/hardware/input/InputManager;Ljava/lang/reflect/Method;IIJJFFF)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide/from16 v0, p5

    move-wide/from16 v2, p7

    move/from16 v4, p4

    move/from16 v5, p9

    move/from16 v6, p10

    move/from16 v7, p11

    .line 1111
    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    move/from16 v1, p3

    .line 1113
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 1114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    move-object v0, p1

    move-object/from16 v2, p2

    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$onCreate$10()V
    .locals 3

    const-string v0, "StandBy"

    .line 631
    invoke-static {v0}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Init All PopupWindow"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 632
    invoke-static {}, Lcom/rigol/scope/utilities/PopupViewManager;->getInstance()Lcom/rigol/scope/utilities/PopupViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rigol/scope/utilities/PopupViewManager;->addAll()V

    return-void
.end method

.method private saveLog()V
    .locals 2

    .line 800
    iget-object v0, p0, Lcom/rigol/scope/MainActivity;->mGuardService:Lcom/rigol/iguardservice/IGuardService;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, ""

    .line 802
    invoke-interface {v0, v1}, Lcom/rigol/iguardservice/IGuardService;->saveLog(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 804
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private setIsKeyInput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1118
    iget-boolean v0, p0, Lcom/rigol/scope/MainActivity;->isShowMainActivity:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rigol/scope/MainActivity;->mGuardService:Lcom/rigol/iguardservice/IGuardService;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1119
    invoke-interface {v0, v1}, Lcom/rigol/iguardservice/IGuardService;->setLocked(Z)V

    :cond_0
    return-void
.end method

.method private setPackageName()V
    .locals 2

    .line 763
    iget-object v0, p0, Lcom/rigol/scope/MainActivity;->mGuardService:Lcom/rigol/iguardservice/IGuardService;

    if-eqz v0, :cond_0

    .line 767
    :try_start_0
    invoke-virtual {p0}, Lcom/rigol/scope/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/rigol/iguardservice/IGuardService;->setPackageName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 770
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public checkNewVersion()V
    .locals 2

    .line 639
    iget-object v0, p0, Lcom/rigol/scope/MainActivity;->mGuardService:Lcom/rigol/iguardservice/IGuardService;

    if-eqz v0, :cond_0

    .line 640
    const-class v0, Lcom/rigol/scope/viewmodels/UtilityViewModel;

    invoke-static {v0}, Lcom/rigol/scope/utilities/ContextUtil;->getAppViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/rigol/scope/viewmodels/UtilityViewModel;

    if-eqz v0, :cond_0

    .line 642
    invoke-virtual {v0}, Lcom/rigol/scope/viewmodels/UtilityViewModel;->getLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rigol/scope/data/UtilityParam;

    if-eqz v0, :cond_0

    .line 644
    invoke-virtual {v0}, Lcom/rigol/scope/data/UtilityParam;->getSerial()Ljava/lang/String;

    move-result-object v0

    .line 646
    :try_start_0
    iget-object v1, p0, Lcom/rigol/scope/MainActivity;->mGuardService:Lcom/rigol/iguardservice/IGuardService;

    invoke-interface {v1, v0}, Lcom/rigol/iguardservice/IGuardService;->checkNewVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 648
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1049
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1054
    invoke-static {p0}, Lcom/rigol/scope/utilities/ScreenSaverUtil;->getInstance(Lcom/rigol/scope/MainActivity;)Lcom/rigol/scope/utilities/ScreenSaverUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rigol/scope/utilities/ScreenSaverUtil;->onStop()V

    goto :goto_0

    .line 1051
    :cond_0
    invoke-static {p0}, Lcom/rigol/scope/utilities/ScreenSaverUtil;->getInstance(Lcom/rigol/scope/MainActivity;)Lcom/rigol/scope/utilities/ScreenSaverUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rigol/scope/utilities/ScreenSaverUtil;->OnStart()V

    .line 1057
    :goto_0
    invoke-super {p0, p1}, Lcom/rigol/scope/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getBinding()Lcom/rigol/scope/databinding/ActivityMainBinding;
    .locals 1

    .line 1061
    iget-object v0, p0, Lcom/rigol/scope/MainActivity;->binding:Lcom/rigol/scope/databinding/ActivityMainBinding;

    return-object v0
.end method

.method public getNavigationBarFragment()Lcom/rigol/scope/NavigationBarFragment;
    .locals 2

    .line 703
    invoke-virtual {p0}, Lcom/rigol/scope/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a0690

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 704
    instance-of v1, v0, Lcom/rigol/scope/NavigationBarFragment;

    if-eqz v1, :cond_0

    .line 705
    check-cast v0, Lcom/rigol/scope/NavigationBarFragment;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResultBarFragment()Lcom/rigol/scope/ResultsBarFragment;
    .locals 2

    .line 728
    invoke-virtual {p0}, Lcom/rigol/scope/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a07ac

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 729
    instance-of v1, v0, Lcom/rigol/scope/ResultsBarFragment;

    if-eqz v1, :cond_0

    .line 730
    check-cast v0, Lcom/rigol/scope/ResultsBarFragment;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSettingsBarFragment()Lcom/rigol/scope/SettingsBarFragment;
    .locals 2

    .line 712
    invoke-virtual {p0}, Lcom/rigol/scope/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a07fe

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 713
    instance-of v1, v0, Lcom/rigol/scope/SettingsBarFragment;

    if-eqz v1, :cond_0

    .line 714
    check-cast v0, Lcom/rigol/scope/SettingsBarFragment;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWaveformFragment()Lcom/rigol/scope/WaveformFragment;
    .locals 2

    .line 720
    invoke-virtual {p0}, Lcom/rigol/scope/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a0b20

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 721
    instance-of v1, v0, Lcom/rigol/scope/WaveformFragment;

    if-eqz v1, :cond_0

    .line 722
    check-cast v0, Lcom/rigol/scope/WaveformFragment;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isMiniScreenShowing()Z
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/rigol/scope/MainActivity;->miniScreenPresentation:Lcom/rigol/scope/views/presentation/MiniScreenPresentation;

    if-eqz v0, :cond_0

    .line 664
    invoke-virtual {v0}, Lcom/rigol/scope/views/presentation/MiniScreenPresentation;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMotorShowing()Z
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/rigol/scope/MainActivity;->motorPresentation:Lcom/rigol/scope/views/presentation/MotorPresentation;

    if-eqz v0, :cond_0

    .line 657
    invoke-virtual {v0}, Lcom/rigol/scope/views/presentation/MotorPresentation;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$onCreate$0$MainActivity()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/rigol/scope/MainActivity;->showMainContent:Landroidx/databinding/ObservableBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method public synthetic lambda$onCreate$1$MainActivity(Lcom/rigol/scope/data/IOParam;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/rigol/scope/MainActivity;->ioParam:Lcom/rigol/scope/data/IOParam;

    return-void
.end method

.method public synthetic lambda$onCreate$2$MainActivity(Lcom/rigol/scope/data/OptionParam;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/rigol/scope/MainActivity;->optionParam:Lcom/rigol/scope/data/OptionParam;

    return-void
.end method

.method public synthetic lambda$onCreate$3$MainActivity(Landroid/view/KeyEvent;)V
    .locals 4

    .line 358
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Lcom/rigol/scope/utilities/KeyCodeUtil;->getPanelKey(I)I

    move-result v0

    .line 359
    invoke-static {}, Lcom/rigol/scope/utilities/PopupViewManager;->getInstance()Lcom/rigol/scope/utilities/PopupViewManager;

    move-result-object v1

    const-class v2, Lcom/rigol/scope/views/measure/MeasurePopupView;

    invoke-virtual {v1, v2}, Lcom/rigol/scope/utilities/PopupViewManager;->isShowing(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    invoke-static {}, Lcom/rigol/scope/utilities/PopupViewManager;->getInstance()Lcom/rigol/scope/utilities/PopupViewManager;

    move-result-object v1

    const-class v2, Lcom/rigol/scope/views/measure/MeasurePopupView;

    invoke-virtual {v1, v2}, Lcom/rigol/scope/utilities/PopupViewManager;->get(Ljava/lang/Class;)Lcom/rigol/scope/views/baseview/BasePopupView;

    move-result-object v1

    .line 361
    instance-of v2, v1, Lcom/rigol/scope/views/measure/MeasurePopupView;

    if-eqz v2, :cond_0

    .line 362
    invoke-virtual {v1, v0, p1}, Lcom/rigol/scope/views/baseview/BasePopupView;->onPanelKeyUp(ILandroid/view/KeyEvent;)V

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/rigol/scope/MainActivity;->motorPresentation:Lcom/rigol/scope/views/presentation/MotorPresentation;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/rigol/scope/views/presentation/MotorPresentation;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x846

    if-ne v0, v1, :cond_1

    .line 369
    iget-object v1, p0, Lcom/rigol/scope/MainActivity;->motorPresentation:Lcom/rigol/scope/views/presentation/MotorPresentation;

    iget-boolean v1, v1, Lcom/rigol/scope/views/presentation/MotorPresentation;->isScreenPresentationReady:Z

    if-eqz v1, :cond_3

    .line 370
    iget-object v1, p0, Lcom/rigol/scope/MainActivity;->motorPresentation:Lcom/rigol/scope/views/presentation/MotorPresentation;

    invoke-virtual {v1}, Lcom/rigol/scope/views/presentation/MotorPresentation;->notifyMotorRotateForward()V

    .line 371
    iget-object v1, p0, Lcom/rigol/scope/MainActivity;->mGuardService:Lcom/rigol/iguardservice/IGuardService;

    if-eqz v1, :cond_3

    .line 373
    :try_start_0
    invoke-interface {v1}, Lcom/rigol/iguardservice/IGuardService;->setMotorForward()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 375
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x1046

    if-ne v0, v1, :cond_2

    .line 382
    iget-object v1, p0, Lcom/rigol/scope/MainActivity;->motorPresentation:Lcom/rigol/scope/views/presentation/MotorPresentation;

    iget-boolean v1, v1, Lcom/rigol/scope/views/presentation/MotorPresentation;->isScreenPresentationReady:Z

    if-eqz v1, :cond_3

    .line 383
    iget-object v1, p0, Lcom/rigol/scope/MainActivity;->motorPresentation:Lcom/rigol/scope/views/presentation/MotorPresentation;

    invoke-virtual {v1}, Lcom/rigol/scope/views/presentation/MotorPresentation;->notifyMotorRotateReversal()V

    .line 384
    iget-object v1, p0, Lcom/rigol/scope/MainActivity;->mGuardService:Lcom/rigol/iguardservice/IGuardService;

    if-eqz v1, :cond_3

    .line 386
    :try_start_1
    invoke-interface {v1}, Lcom/rigol/iguardservice/IGuardService;->setMotorReverse()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 388
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x48

    if-ne v0, v1, :cond_3

    .line 395
    iget-object v1, p0, Lcom/rigol/scope/MainActivity;->motorPresentation:Lcom/rigol/scope/views/presentation/MotorPresentation;

    iget-boolean v1, v1, Lcom/rigol/scope/views/presentation/MotorPresentation;->isScreenPresentationReady:Z

    if-eqz v1, :cond_3

    .line 396
    iget-object v1, p0, Lcom/rigol/scope/MainActivity;->motorPresentation:Lcom/rigol/scope/views/presentation/MotorPresentation;

    invoke-virtual {v1}, Lcom/rigol/scope/views/presentation/MotorPresentation;->notifyMotorResetToDefalut()V

    .line 397
    iget-object v1, p0, Lcom/rigol/scope/MainActivity;->mGuardService:Lcom/rigol/iguardservice/IGuardService;

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    .line 399
    :try_start_2
    invoke-interface {v1, v2, v3}, Lcom/rigol/iguardservice/IGuardService;->setMotorPos(IZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    .line 401
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_3
    :goto_0
    const/16 v1, 0x42

    if-ne v0, v1, :cond_5

    .line 411
    iget-object p1, p0, Lcom/rigol/scope/MainActivity;->motorPresentation:Lcom/rigol/scope/views/presentation/MotorPresentation;

    if-eqz p1, :cond_a

    .line 412
    invoke-virtual {p1}, Lcom/rigol/scope/views/presentation/MotorPresentation;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 413
    iget-object p1, p0, Lcom/rigol/scope/MainActivity;->motorPresentation:Lcom/rigol/scope/views/presentation/MotorPresentation;

    invoke-virtual {p1}, Lcom/rigol/scope/views/presentation/MotorPresentation;->dismiss()V

    goto :goto_1

    .line 415
    :cond_4
    iget-object p1, p0, Lcom/rigol/scope/MainActivity;->motorPresentation:Lcom/rigol/scope/views/presentation/MotorPresentation;

    invoke-virtual {p1}, Lcom/rigol/scope/views/presentation/MotorPresentation;->show()V

    goto :goto_1

    :cond_5
    const/16 v1, 0x11

    if-ne v0, v1, :cond_6

    goto :goto_1

    :cond_6
    const/16 v1, 0xc

    if-ne v0, v1, :cond_7

    goto :goto_1

    :cond_7
    const/16 v1, 0x61

    if-ne v0, v1, :cond_8

    .line 440
    invoke-static {}, Lcom/rigol/scope/utilities/PopupViewManager;->getInstance()Lcom/rigol/scope/utilities/PopupViewManager;

    move-result-object p1

    const-class v0, Lcom/rigol/scope/views/alert/AppSwitchPopupView;

    invoke-virtual {p1, v0}, Lcom/rigol/scope/utilities/PopupViewManager;->toggle(Ljava/lang/Class;)V

    goto :goto_1

    :cond_8
    const/16 v1, 0x52

    if-ne v0, v1, :cond_9

    .line 444
    invoke-static {}, Lcom/rigol/scope/utilities/ViewUtil;->quickAction()V

    goto :goto_1

    :cond_9
    const/16 v1, 0xba

    if-ne v0, v1, :cond_a

    .line 446
    invoke-virtual {p0}, Lcom/rigol/scope/MainActivity;->getPanelKeyViewModel()Lcom/rigol/scope/viewmodels/PanelKeyViewModel;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/rigol/scope/viewmodels/PanelKeyViewModel;->abText(Landroid/view/KeyEvent;I)V

    :cond_a
    :goto_1
    return-void
.end method

.method public synthetic lambda$onCreate$4$MainActivity(Ljava/lang/Object;)V
    .locals 0

    .line 470
    iget-object p1, p0, Lcom/rigol/scope/MainActivity;->mGuardService:Lcom/rigol/iguardservice/IGuardService;

    if-eqz p1, :cond_0

    .line 472
    :try_start_0
    invoke-interface {p1}, Lcom/rigol/iguardservice/IGuardService;->setMotorForward()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 474
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$onCreate$5$MainActivity(Ljava/lang/Object;)V
    .locals 0

    .line 481
    iget-object p1, p0, Lcom/rigol/scope/MainActivity;->mGuardService:Lcom/rigol/iguardservice/IGuardService;

    if-eqz p1, :cond_0

    .line 483
    :try_start_0
    invoke-interface {p1}, Lcom/rigol/iguardservice/IGuardService;->setMotorReverse()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 485
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$onCreate$6$MainActivity(Ljava/lang/Object;)V
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/rigol/scope/MainActivity;->mGuardService:Lcom/rigol/iguardservice/IGuardService;

    if-eqz v0, :cond_0

    .line 494
    :try_start_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/rigol/iguardservice/IGuardService;->setMotorPos(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 496
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$onCreate$7$MainActivity(Ljava/lang/Object;)V
    .locals 0

    .line 503
    iget-object p1, p0, Lcom/rigol/scope/MainActivity;->mGuardService:Lcom/rigol/iguardservice/IGuardService;

    if-eqz p1, :cond_0

    .line 505
    :try_start_0
    invoke-interface {p1}, Lcom/rigol/iguardservice/IGuardService;->setMotorRecovery()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 507
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$onCreate$8$MainActivity(Lcom/rigol/scope/data/SharedParam;)V
    .locals 1

    .line 514
    iput-object p1, p0, Lcom/rigol/scope/MainActivity;->sharedParam:Lcom/rigol/scope/data/SharedParam;

    .line 517
    iget-object v0, p0, Lcom/rigol/scope/MainActivity;->binding:Lcom/rigol/scope/databinding/ActivityMainBinding;

    invoke-virtual {v0, p1}, Lcom/rigol/scope/databinding/ActivityMainBinding;->setSharedParam(Lcom/rigol/scope/data/SharedParam;)V

    .line 520
    new-instance v0, Lcom/rigol/scope/MainActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/rigol/scope/MainActivity$4;-><init>(Lcom/rigol/scope/MainActivity;Lcom/rigol/scope/data/SharedParam;)V

    invoke-virtual {p1, v0}, Lcom/rigol/scope/data/SharedParam;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    return-void
.end method

.method public synthetic lambda$onCreate$9$MainActivity(Landroid/view/View;)V
    .locals 2

    .line 566
    iget-object p1, p0, Lcom/rigol/scope/MainActivity;->sharedParam:Lcom/rigol/scope/data/SharedParam;

    if-eqz p1, :cond_1

    .line 567
    iget-object p1, p0, Lcom/rigol/scope/MainActivity;->binding:Lcom/rigol/scope/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/rigol/scope/databinding/ActivityMainBinding;->resultsBar:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentContainerView;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 568
    iget-object p1, p0, Lcom/rigol/scope/MainActivity;->sharedParam:Lcom/rigol/scope/data/SharedParam;

    invoke-virtual {p1, v0}, Lcom/rigol/scope/data/SharedParam;->setShowResultBar(Z)V

    .line 569
    iget-object p1, p0, Lcom/rigol/scope/MainActivity;->sharedParam:Lcom/rigol/scope/data/SharedParam;

    invoke-virtual {p1, v1}, Lcom/rigol/scope/data/SharedParam;->setClosedResultBar(Z)V

    goto :goto_0

    .line 571
    :cond_0
    iget-object p1, p0, Lcom/rigol/scope/MainActivity;->sharedParam:Lcom/rigol/scope/data/SharedParam;

    invoke-virtual {p1, v1}, Lcom/rigol/scope/data/SharedParam;->setShowResultBar(Z)V

    .line 572
    iget-object p1, p0, Lcom/rigol/scope/MainActivity;->sharedParam:Lcom/rigol/scope/data/SharedParam;

    invoke-virtual {p1, v0}, Lcom/rigol/scope/data/SharedParam;->setClosedResultBar(Z)V

    :cond_1
    :goto_0
    return-void
.end method

# Add fullScreenIcon object; Toggle visibility of navigationBar and settingsBar; MRISCOC
.method public fullScreen(Landroid/view/View;)V
    .locals 4
    iget-object p1, p0, Lcom/rigol/scope/MainActivity;->binding:Lcom/rigol/scope/databinding/ActivityMainBinding;
    iget-object v0, p1, Lcom/rigol/scope/databinding/ActivityMainBinding;->navigationBar:Landroidx/fragment/app/FragmentContainerView;
    iget-object v1, p1, Lcom/rigol/scope/databinding/ActivityMainBinding;->settingsBar:Landroidx/fragment/app/FragmentContainerView;
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentContainerView;->getVisibility()I
    move-result v3

    if-nez v3, :fs_make_visible

    const/16 v3, 0x8
    goto :fs_apply

:fs_make_visible
    const/4 v3, 0x0

:fs_apply
    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentContainerView;->setVisibility(I)V
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentContainerView;->setVisibility(I)V
    return-void
.end method
#---------------------------

.method public locked(Z)V
    .locals 1

    .line 670
    const-class v0, Lcom/rigol/scope/viewmodels/UtilityViewModel;

    invoke-static {v0}, Lcom/rigol/scope/utilities/ContextUtil;->getAppViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/rigol/scope/viewmodels/UtilityViewModel;

    if-eqz v0, :cond_0

    .line 672
    invoke-virtual {v0}, Lcom/rigol/scope/viewmodels/UtilityViewModel;->getLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rigol/scope/data/UtilityParam;

    if-eqz v0, :cond_0

    .line 674
    invoke-virtual {v0, p1}, Lcom/rigol/scope/data/UtilityParam;->setLockKeyboard(Z)V

    .line 677
    :cond_0
    invoke-virtual {p0}, Lcom/rigol/scope/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/rigol/scope/utilities/ViewUtil;->lock(Landroid/view/Window;Z)V

    .line 678
    iget-object v0, p0, Lcom/rigol/scope/MainActivity;->motorPresentation:Lcom/rigol/scope/views/presentation/MotorPresentation;

    if-eqz v0, :cond_1

    .line 679
    invoke-virtual {v0}, Lcom/rigol/scope/views/presentation/MotorPresentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/rigol/scope/utilities/ViewUtil;->lock(Landroid/view/Window;Z)V

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/rigol/scope/MainActivity;->miniScreenPresentation:Lcom/rigol/scope/views/presentation/MiniScreenPresentation;

    if-eqz v0, :cond_2

    .line 682
    invoke-virtual {v0}, Lcom/rigol/scope/views/presentation/MiniScreenPresentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/rigol/scope/utilities/ViewUtil;->lock(Landroid/view/Window;Z)V

    :cond_2
    if-eqz p1, :cond_3

    .line 686
    invoke-static {}, Lcom/rigol/scope/utilities/PopupViewManager;->getInstance()Lcom/rigol/scope/utilities/PopupViewManager;

    move-result-object p1

    const-class v0, Lcom/rigol/scope/views/UtilityPopupView;

    invoke-virtual {p1, v0}, Lcom/rigol/scope/utilities/PopupViewManager;->dismiss(Ljava/lang/Class;)V

    :cond_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v1, p0

    .line 221
    invoke-super/range {p0 .. p1}, Lcom/rigol/scope/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/rigol/scope/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 257
    invoke-static {}, Lcom/rigol/scope/cil/API;->getInstance()Lcom/rigol/scope/cil/API;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/rigol/scope/cil/API;->UI_StartBusiness(I)I

    .line 260
    invoke-static {}, Lcom/rigol/scope/cil/API;->getInstance()Lcom/rigol/scope/cil/API;

    move-result-object v0

    const/16 v3, 0x574a

    const/16 v4, 0xb

    const-string v5, "00.01.04.00.02"

    invoke-virtual {v0, v4, v3, v5}, Lcom/rigol/scope/cil/API;->UI_PostStr(IILjava/lang/String;)I

    .line 262
    new-instance v0, Lcom/rigol/scope/-$$Lambda$MainActivity$V200sj20CupUghpKR2pkFLu3VyQ;

    invoke-direct {v0, v1}, Lcom/rigol/scope/-$$Lambda$MainActivity$V200sj20CupUghpKR2pkFLu3VyQ;-><init>(Lcom/rigol/scope/MainActivity;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string v0, "StandBy"

    .line 265
    invoke-static {v0}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v5, "Read All Data"

    invoke-virtual {v0, v5, v3}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/rigol/scope/MainActivity;->getAppViewModelProvider()Landroidx/lifecycle/ViewModelProvider;

    move-result-object v0

    .line 267
    sget-object v3, Lcom/rigol/scope/utilities/ViewModelManager;->INSTANCE:Lcom/rigol/scope/utilities/ViewModelManager;

    invoke-virtual {v3, v0}, Lcom/rigol/scope/utilities/ViewModelManager;->readAll(Landroidx/lifecycle/ViewModelProvider;)V

    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/rigol/scope/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "launch_default"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/rigol/scope/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-array v3, v5, [Ljava/lang/Object;

    .line 274
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    const-string v6, "launchParam:%s"

    invoke-static {v6, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    invoke-static {v0}, Lcom/rigol/scope/cil/API;->getInstance(I)Lcom/rigol/scope/cil/API;

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "has no launchParam"

    .line 277
    invoke-static {v3, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    invoke-static {}, Lcom/rigol/scope/cil/API;->getInstance()Lcom/rigol/scope/cil/API;

    .line 282
    :goto_0
    invoke-static {}, Lcom/rigol/scope/cil/API;->getInstance()Lcom/rigol/scope/cil/API;

    move-result-object v0

    const/16 v3, 0x574e

    invoke-virtual {v0, v4, v3}, Lcom/rigol/scope/cil/API;->UI_QueryInt32(II)I

    move-result v0

    sput v0, Lcom/rigol/scope/utilities/ViewUtil;->serialize:I

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/rigol/scope/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/rigol/scope/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/rigol/scope/databinding/ActivityMainBinding;

    move-result-object v0

    iput-object v0, v1, Lcom/rigol/scope/MainActivity;->binding:Lcom/rigol/scope/databinding/ActivityMainBinding;

    .line 285
    iget-object v3, v1, Lcom/rigol/scope/MainActivity;->showMainContent:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v0, v3}, Lcom/rigol/scope/databinding/ActivityMainBinding;->setShowMainContent(Landroidx/databinding/ObservableBoolean;)V

    .line 286
    iget-object v0, v1, Lcom/rigol/scope/MainActivity;->binding:Lcom/rigol/scope/databinding/ActivityMainBinding;

    invoke-virtual {v0}, Lcom/rigol/scope/databinding/ActivityMainBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/rigol/scope/MainActivity;->setContentView(Landroid/view/View;)V

    .line 287
    invoke-static/range {p0 .. p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    const v3, 0x7f080596

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/rigol/scope/MainActivity;->binding:Lcom/rigol/scope/databinding/ActivityMainBinding;

    iget-object v3, v3, Lcom/rigol/scope/databinding/ActivityMainBinding;->progress:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 289
    invoke-direct/range {p0 .. p0}, Lcom/rigol/scope/MainActivity;->getInputManager()Landroid/hardware/input/InputManager;

    move-result-object v0

    iput-object v0, v1, Lcom/rigol/scope/MainActivity;->im:Landroid/hardware/input/InputManager;

    const/4 v3, 0x2

    .line 291
    :try_start_0
    const-class v0, Landroid/view/MotionEvent;

    const-string v4, "obtain"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 292
    const-class v0, Landroid/hardware/input/InputManager;

    const-string v4, "injectInputEvent"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Landroid/view/InputEvent;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, v1, Lcom/rigol/scope/MainActivity;->injectInputEventMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 295
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 298
    :goto_1
    iget-object v0, v1, Lcom/rigol/scope/MainActivity;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/rigol/scope/MainActivity$3;

    invoke-direct {v4, v1}, Lcom/rigol/scope/MainActivity$3;-><init>(Lcom/rigol/scope/MainActivity;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 310
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.rigol.watchdog.Watchdog"

    .line 311
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.rigol.launcher"

    .line 312
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    iget-object v4, v1, Lcom/rigol/scope/MainActivity;->mGuardConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v4, v5}, Lcom/rigol/scope/MainActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/rigol/scope/MainActivity;->bConnectLauncher:Z

    .line 316
    iget-object v0, v1, Lcom/rigol/scope/MainActivity;->mHandler:Landroid/os/Handler;

    iget-object v4, v1, Lcom/rigol/scope/MainActivity;->heartbeat:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/rigol/scope/MainActivity;->getAppViewModelProvider()Landroidx/lifecycle/ViewModelProvider;

    move-result-object v0

    .line 320
    sget-object v4, Lcom/rigol/scope/utilities/ViewModelManager;->INSTANCE:Lcom/rigol/scope/utilities/ViewModelManager;

    invoke-virtual {v4, v0}, Lcom/rigol/scope/utilities/ViewModelManager;->readAll(Landroidx/lifecycle/ViewModelProvider;)V

    .line 322
    const-class v4, Lcom/rigol/scope/viewmodels/IOViewModel;

    invoke-virtual {v0, v4}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v4

    check-cast v4, Lcom/rigol/scope/viewmodels/IOViewModel;

    .line 323
    invoke-virtual {v4}, Lcom/rigol/scope/viewmodels/IOViewModel;->getLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v6

    new-instance v7, Lcom/rigol/scope/-$$Lambda$MainActivity$vz0P1eyugvi-JxBg96YYWZZvhfU;

    invoke-direct {v7, v1}, Lcom/rigol/scope/-$$Lambda$MainActivity$vz0P1eyugvi-JxBg96YYWZZvhfU;-><init>(Lcom/rigol/scope/MainActivity;)V

    invoke-virtual {v6, v1, v7}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 325
    invoke-virtual {v4}, Lcom/rigol/scope/viewmodels/IOViewModel;->getLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rigol/scope/data/IOParam;

    iput-object v4, v1, Lcom/rigol/scope/MainActivity;->ioParam:Lcom/rigol/scope/data/IOParam;

    .line 327
    const-class v4, Lcom/rigol/scope/viewmodels/UtilityViewModel;

    invoke-virtual {v0, v4}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v4

    check-cast v4, Lcom/rigol/scope/viewmodels/UtilityViewModel;

    .line 328
    invoke-virtual {v4}, Lcom/rigol/scope/viewmodels/UtilityViewModel;->getLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rigol/scope/data/UtilityParam;

    .line 329
    iget-object v6, v1, Lcom/rigol/scope/MainActivity;->ioParam:Lcom/rigol/scope/data/IOParam;

    if-eqz v6, :cond_1

    if-eqz v4, :cond_1

    .line 330
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RIGOL_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/rigol/scope/data/UtilityParam;->getSerial()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/rigol/scope/data/IOParam;->saveHostName(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v4}, Lcom/rigol/scope/data/UtilityParam;->getModel()Ljava/lang/String;

    move-result-object v9

    .line 334
    invoke-virtual {v4}, Lcom/rigol/scope/data/UtilityParam;->getSerial()Ljava/lang/String;

    move-result-object v10

    .line 335
    invoke-static {}, Lcom/blankj/utilcode/util/AppUtils;->getAppVersionName()Ljava/lang/String;

    move-result-object v11

    iget-object v4, v1, Lcom/rigol/scope/MainActivity;->ioParam:Lcom/rigol/scope/data/IOParam;

    .line 336
    invoke-virtual {v4}, Lcom/rigol/scope/data/IOParam;->getIpAddress()Ljava/lang/String;

    move-result-object v12

    iget-object v4, v1, Lcom/rigol/scope/MainActivity;->ioParam:Lcom/rigol/scope/data/IOParam;

    .line 337
    invoke-virtual {v4}, Lcom/rigol/scope/data/IOParam;->getMask()Ljava/lang/String;

    move-result-object v13

    iget-object v4, v1, Lcom/rigol/scope/MainActivity;->ioParam:Lcom/rigol/scope/data/IOParam;

    .line 338
    invoke-virtual {v4}, Lcom/rigol/scope/data/IOParam;->getMacAddress()Ljava/lang/String;

    move-result-object v14

    iget-object v4, v1, Lcom/rigol/scope/MainActivity;->ioParam:Lcom/rigol/scope/data/IOParam;

    .line 339
    invoke-virtual {v4}, Lcom/rigol/scope/data/IOParam;->getGateway()Ljava/lang/String;

    move-result-object v15

    iget-object v4, v1, Lcom/rigol/scope/MainActivity;->ioParam:Lcom/rigol/scope/data/IOParam;

    .line 340
    invoke-virtual {v4}, Lcom/rigol/scope/data/IOParam;->isDHCPSelected()Z

    move-result v16

    iget-object v4, v1, Lcom/rigol/scope/MainActivity;->ioParam:Lcom/rigol/scope/data/IOParam;

    .line 341
    invoke-virtual {v4}, Lcom/rigol/scope/data/IOParam;->isAutoSelected()Z

    move-result v17

    const-string v8, "/mnt/tmp/identification"

    .line 332
    invoke-static/range {v8 .. v17}, Lcom/rigol/scope/utilities/ViewUtil;->identification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 344
    :cond_1
    const-class v4, Lcom/rigol/scope/viewmodels/OptionViewModel;

    invoke-virtual {v0, v4}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v4

    check-cast v4, Lcom/rigol/scope/viewmodels/OptionViewModel;

    .line 345
    invoke-virtual {v4}, Lcom/rigol/scope/viewmodels/OptionViewModel;->getLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v4

    new-instance v6, Lcom/rigol/scope/-$$Lambda$MainActivity$R1ArSb0AI-gWg1fzsFaMvNEfOCM;

    invoke-direct {v6, v1}, Lcom/rigol/scope/-$$Lambda$MainActivity$R1ArSb0AI-gWg1fzsFaMvNEfOCM;-><init>(Lcom/rigol/scope/MainActivity;)V

    invoke-virtual {v4, v1, v6}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/rigol/scope/MainActivity;->getUpdateUIViewModel()Lcom/rigol/scope/viewmodels/UpdateUIViewModel;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/rigol/scope/viewmodels/UpdateUIViewModel;->bindAll(Lcom/rigol/scope/BaseActivity;Landroidx/lifecycle/ViewModelProvider;)V

    .line 353
    const-class v0, Lcom/rigol/scope/viewmodels/UpdateUIViewModel;

    invoke-static {v0}, Lcom/rigol/scope/utilities/ContextUtil;->getAppViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/rigol/scope/viewmodels/UpdateUIViewModel;

    iput-object v0, v1, Lcom/rigol/scope/MainActivity;->updateUIViewModel:Lcom/rigol/scope/viewmodels/UpdateUIViewModel;

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/rigol/scope/MainActivity;->getPanelKeyViewModel()Lcom/rigol/scope/viewmodels/PanelKeyViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rigol/scope/viewmodels/PanelKeyViewModel;->getOnKeyUpData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/rigol/scope/-$$Lambda$MainActivity$lYnwMT0nZRgrG-Bz52FVBcnFIjI;

    invoke-direct {v4, v1}, Lcom/rigol/scope/-$$Lambda$MainActivity$lYnwMT0nZRgrG-Bz52FVBcnFIjI;-><init>(Lcom/rigol/scope/MainActivity;)V

    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    const-string v0, "display"

    .line 451
    invoke-virtual {v1, v0}, Lcom/rigol/scope/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 452
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 455
    array-length v4, v0

    if-ne v4, v3, :cond_2

    .line 456
    aget-object v3, v0, v5

    invoke-virtual {v3}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HDMI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 458
    :try_start_1
    new-instance v3, Lcom/rigol/scope/views/presentation/MiniScreenPresentation;

    aget-object v0, v0, v5

    invoke-direct {v3, v1, v0}, Lcom/rigol/scope/views/presentation/MiniScreenPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iput-object v3, v1, Lcom/rigol/scope/MainActivity;->miniScreenPresentation:Lcom/rigol/scope/views/presentation/MiniScreenPresentation;

    .line 460
    invoke-virtual {v3}, Lcom/rigol/scope/views/presentation/MiniScreenPresentation;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 462
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 468
    :cond_2
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/rigol/scope/MainActivity;->getSyncDataViewModel()Lcom/rigol/scope/viewmodels/SyncDataViewModel;

    move-result-object v0

    const-string v3, "_sync_motor_forward"

    invoke-virtual {v0, v3}, Lcom/rigol/scope/viewmodels/SyncDataViewModel;->get(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v3, Lcom/rigol/scope/-$$Lambda$MainActivity$xgbtelrLq9vMyUJHuIs5zGy7epA;

    invoke-direct {v3, v1}, Lcom/rigol/scope/-$$Lambda$MainActivity$xgbtelrLq9vMyUJHuIs5zGy7epA;-><init>(Lcom/rigol/scope/MainActivity;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/rigol/scope/MainActivity;->getSyncDataViewModel()Lcom/rigol/scope/viewmodels/SyncDataViewModel;

    move-result-object v0

    const-string v3, "_sync_motor_reverse"

    invoke-virtual {v0, v3}, Lcom/rigol/scope/viewmodels/SyncDataViewModel;->get(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v3, Lcom/rigol/scope/-$$Lambda$MainActivity$pcTjeobzbyJv10kqTDvTj28sPbc;

    invoke-direct {v3, v1}, Lcom/rigol/scope/-$$Lambda$MainActivity$pcTjeobzbyJv10kqTDvTj28sPbc;-><init>(Lcom/rigol/scope/MainActivity;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/rigol/scope/MainActivity;->getSyncDataViewModel()Lcom/rigol/scope/viewmodels/SyncDataViewModel;

    move-result-object v0

    const-string v3, "_sync_motor_set_position"

    invoke-virtual {v0, v3}, Lcom/rigol/scope/viewmodels/SyncDataViewModel;->get(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v3, Lcom/rigol/scope/-$$Lambda$MainActivity$VMa9ZBISMEstg14x-UKvBu8317s;

    invoke-direct {v3, v1}, Lcom/rigol/scope/-$$Lambda$MainActivity$VMa9ZBISMEstg14x-UKvBu8317s;-><init>(Lcom/rigol/scope/MainActivity;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/rigol/scope/MainActivity;->getSyncDataViewModel()Lcom/rigol/scope/viewmodels/SyncDataViewModel;

    move-result-object v0

    const-string v3, "_sync_motor_recovery"

    invoke-virtual {v0, v3}, Lcom/rigol/scope/viewmodels/SyncDataViewModel;->get(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v3, Lcom/rigol/scope/-$$Lambda$MainActivity$XsXjNhso7wLAMj5evtzld37s1PI;

    invoke-direct {v3, v1}, Lcom/rigol/scope/-$$Lambda$MainActivity$XsXjNhso7wLAMj5evtzld37s1PI;-><init>(Lcom/rigol/scope/MainActivity;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 512
    invoke-virtual/range {p0 .. p0}, Lcom/rigol/scope/MainActivity;->getSharedViewModel()Lcom/rigol/scope/viewmodels/SharedViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rigol/scope/viewmodels/SharedViewModel;->getLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v3, Lcom/rigol/scope/-$$Lambda$MainActivity$rjGDWwom0l-jRn61OqQ31Tbizg0;

    invoke-direct {v3, v1}, Lcom/rigol/scope/-$$Lambda$MainActivity$rjGDWwom0l-jRn61OqQ31Tbizg0;-><init>(Lcom/rigol/scope/MainActivity;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 564
    iget-object v0, v1, Lcom/rigol/scope/MainActivity;->binding:Lcom/rigol/scope/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/rigol/scope/databinding/ActivityMainBinding;->resultsBarIcon:Landroid/widget/ImageView;

    new-instance v3, Lcom/rigol/scope/-$$Lambda$MainActivity$rkhiAE_RKL1N1grFc_z8yPqOpXY;

    invoke-direct {v3, v1}, Lcom/rigol/scope/-$$Lambda$MainActivity$rkhiAE_RKL1N1grFc_z8yPqOpXY;-><init>(Lcom/rigol/scope/MainActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

# fullScreen OnClick; MRISCOC
    iget-object v0, v1, Lcom/rigol/scope/MainActivity;->binding:Lcom/rigol/scope/databinding/ActivityMainBinding;
    iget-object v0, v0, Lcom/rigol/scope/databinding/ActivityMainBinding;->fullScreenIcon:Landroid/widget/ImageView;
    new-instance v3, Lcom/rigol/scope/-$$Lambda$MainActivity$fullScreenOnClick;
    invoke-direct {v3, v1}, Lcom/rigol/scope/-$$Lambda$MainActivity$fullScreenOnClick;-><init>(Lcom/rigol/scope/MainActivity;)V
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
#---------------------------------

    .line 596
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 597
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 598
    new-instance v3, Lcom/rigol/scope/NetChangeReceiver;

    invoke-direct {v3}, Lcom/rigol/scope/NetChangeReceiver;-><init>()V

    invoke-virtual {v1, v3, v0}, Lcom/rigol/scope/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 600
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    .line 601
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 602
    new-instance v4, Lcom/rigol/scope/UsbReceiver;

    invoke-direct {v4}, Lcom/rigol/scope/UsbReceiver;-><init>()V

    invoke-virtual {v1, v4, v0}, Lcom/rigol/scope/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 604
    const-class v0, Lcom/rigol/scope/viewmodels/SharedViewModel;

    invoke-static {v0}, Lcom/rigol/scope/utilities/ContextUtil;->getAppViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/rigol/scope/viewmodels/SharedViewModel;

    if-eqz v0, :cond_5

    .line 606
    invoke-virtual {v0}, Lcom/rigol/scope/viewmodels/SharedViewModel;->getLiveData()Landroidx/lifecycle/LiveData;

    .line 607
    invoke-virtual {v0}, Lcom/rigol/scope/viewmodels/SharedViewModel;->getLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rigol/scope/data/SharedParam;

    if-eqz v0, :cond_5

    .line 609
    sget-object v4, Lcom/rigol/util/DiskUtil;->INSTANCE:Lcom/rigol/util/DiskUtil;

    invoke-virtual {v4}, Lcom/rigol/util/DiskUtil;->hasRemovableDisk()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/rigol/scope/data/SharedParam;->setShowUsb(Z)V

    .line 611
    invoke-virtual {v0}, Lcom/rigol/scope/data/SharedParam;->getShowUsb()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 612
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/rigol/scope/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 615
    :cond_3
    invoke-static {}, Lcom/rigol/scope/utilities/UtilityUtil;->getDiskList()Ljava/util/List;

    move-result-object v3

    .line 616
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_4

    .line 618
    invoke-virtual {v0, v5}, Lcom/rigol/scope/data/SharedParam;->setShowSmb(Z)V

    goto :goto_3

    .line 622
    :cond_4
    invoke-virtual {v0, v2}, Lcom/rigol/scope/data/SharedParam;->setShowSmb(Z)V

    .line 627
    :cond_5
    :goto_3
    iget-object v0, v1, Lcom/rigol/scope/MainActivity;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 630
    iget-object v0, v1, Lcom/rigol/scope/MainActivity;->binding:Lcom/rigol/scope/databinding/ActivityMainBinding;

    invoke-virtual {v0}, Lcom/rigol/scope/databinding/ActivityMainBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    sget-object v2, Lcom/rigol/scope/-$$Lambda$MainActivity$HTEf2qIqF90dzOioGnrQ0kdnys4;->INSTANCE:Lcom/rigol/scope/-$$Lambda$MainActivity$HTEf2qIqF90dzOioGnrQ0kdnys4;

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 811
    invoke-super {p0}, Lcom/rigol/scope/BaseActivity;->onDestroy()V

    .line 812
    iget-object v0, p0, Lcom/rigol/scope/MainActivity;->mGuardConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 813
    invoke-virtual {p0, v0}, Lcom/rigol/scope/MainActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/rigol/scope/MainActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 816
    iget-object v1, p0, Lcom/rigol/scope/MainActivity;->heartbeat:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 818
    :cond_1
    iget-object v0, p0, Lcom/rigol/scope/MainActivity;->motorPresentation:Lcom/rigol/scope/views/presentation/MotorPresentation;

    if-eqz v0, :cond_2

    .line 819
    invoke-virtual {v0}, Lcom/rigol/scope/views/presentation/MotorPresentation;->cancel()V

    .line 821
    :cond_2
    iget-object v0, p0, Lcom/rigol/scope/MainActivity;->miniScreenPresentation:Lcom/rigol/scope/views/presentation/MiniScreenPresentation;

    if-eqz v0, :cond_3

    .line 822
    invoke-virtual {v0}, Lcom/rigol/scope/views/presentation/MiniScreenPresentation;->cancel()V

    :cond_3
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1044
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/rigol/scope/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLocaleChanged()V
    .locals 1

    .line 1066
    invoke-super {p0}, Lcom/rigol/scope/BaseActivity;->onLocaleChanged()V

    .line 1067
    iget-object v0, p0, Lcom/rigol/scope/MainActivity;->miniScreenPresentation:Lcom/rigol/scope/views/presentation/MiniScreenPresentation;

    if-eqz v0, :cond_0

    .line 1068
    invoke-virtual {v0}, Lcom/rigol/scope/views/presentation/MiniScreenPresentation;->onLocaleChanged()V

    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onRestart"

    .line 737
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 738
    invoke-super {p0}, Lcom/rigol/scope/BaseActivity;->onRestart()V

    .line 739
    invoke-static {p0}, Lcom/rigol/scope/utilities/ScreenSaverUtil;->getInstance(Lcom/rigol/scope/MainActivity;)Lcom/rigol/scope/utilities/ScreenSaverUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rigol/scope/utilities/ScreenSaverUtil;->OnStart()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 744
    invoke-super {p0}, Lcom/rigol/scope/BaseActivity;->onResume()V

    .line 746
    invoke-direct {p0}, Lcom/rigol/scope/MainActivity;->setPackageName()V

    .line 748
    iget-object v0, p0, Lcom/rigol/scope/MainActivity;->mGuardService:Lcom/rigol/iguardservice/IGuardService;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 752
    :try_start_0
    invoke-interface {v0, v1}, Lcom/rigol/iguardservice/IGuardService;->setLocked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 755
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public sendMotionEvent(Landroid/hardware/input/InputManager;Ljava/lang/reflect/Method;IJJFF)V
    .locals 14

    .line 1099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, p4

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ,eventTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, p6

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v5, 0x1002

    const/high16 v13, 0x3f800000    # 1.0f

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move/from16 v6, p3

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move/from16 v11, p8

    move/from16 v12, p9

    .line 1101
    :try_start_0
    invoke-direct/range {v2 .. v13}, Lcom/rigol/scope/MainActivity;->injectMotionEvent(Landroid/hardware/input/InputManager;Ljava/lang/reflect/Method;IIJJFFF)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1104
    :goto_0
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :goto_1
    return-void
.end method
