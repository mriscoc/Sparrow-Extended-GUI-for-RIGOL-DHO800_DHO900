.class public Lcom/rigol/scope/databinding/ActivityMainBindingImpl;
.super Lcom/rigol/scope/databinding/ActivityMainBinding;
.source "ActivityMainBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView3:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0a069a

    const/4 v2, 0x5

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0a080a

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0b2c

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0a052c

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 31
    sget-object v0, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

# Add fullScreenIcon object; MRISCOC
    const/16 v2, 0xa
#---------------------------

    invoke-static {p1, p2, v2, v0, v1}, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
# Add fullScreenIcon object; MRISCOC
    .locals 14
    # move-object v12, p0
#---------------------------

    const/16 v0, 0x8

    .line 34
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroidx/fragment/app/FragmentContainerView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroidx/fragment/app/FragmentContainerView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

# Add fullScreenIcon object; MRISCOC
    const/16 v0, 0x9 # binding_9 Fullscreen_icon
    aget-object v0, p3, v0
    move-object v12, v0
    check-cast v12, Landroid/widget/ImageView;
#---------------------------

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroidx/fragment/app/FragmentContainerView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroidx/fragment/app/FragmentContainerView;

    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

# Add fullScreenIcon object; MRISCOC
    move-object/from16 v2, p2   # move from higher register MRISCOC
    invoke-direct/range {v0 .. v12}, Lcom/rigol/scope/databinding/ActivityMainBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/fragment/app/FragmentContainerView;Landroid/widget/ImageView;Landroidx/fragment/app/FragmentContainerView;Landroid/widget/ImageView;Landroidx/fragment/app/FragmentContainerView;Landroidx/fragment/app/FragmentContainerView;Landroid/widget/ImageView;)V
    move-object v12, p0 # restore original use of v12 ; MRISCOC
#---------------------------

    const-wide/16 v0, -0x1

    .line 220
    iput-wide v0, v12, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    .line 44
    iget-object v0, v12, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->mainLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 45
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v12, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->mboundView3:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 46
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 47
    iget-object v0, v12, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->progress:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 48
    iget-object v0, v12, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->resultsBar:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentContainerView;->setTag(Ljava/lang/Object;)V

    .line 49
    iget-object v0, v12, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->resultsBarIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

# Add fullScreenIcon object; MRISCOC
    iget-object v0, v12, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->fullScreenIcon:Landroid/widget/ImageView;
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
    move-object/from16 v0, p2   # move from higger to lower register MRISCOC
    invoke-virtual {p0, v0}, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->setRootTag(Landroid/view/View;)V # Just use a lower register MRISCOC
#---------------------------

    .line 52
    invoke-virtual {p0}, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeSharedParam(Lcom/rigol/scope/data/SharedParam;I)Z
    .locals 4

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 119
    monitor-enter p0

    .line 120
    :try_start_0
    iget-wide v0, p0, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    .line 121
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x345

    if-ne p2, v0, :cond_1

    .line 125
    monitor-enter p0

    .line 126
    :try_start_1
    iget-wide v0, p0, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    .line 127
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeShowMainContent(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2

    if-nez p2, :cond_0

    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    iget-wide p1, p0, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    .line 136
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected executeBindings()V
    .locals 17

    move-object/from16 v1, p0

    .line 145
    monitor-enter p0

    .line 146
    :try_start_0
    iget-wide v2, v1, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 147
    iput-wide v4, v1, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    .line 148
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    iget-object v0, v1, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->mSharedParam:Lcom/rigol/scope/data/SharedParam;

    const/4 v6, 0x0

    .line 155
    iget-object v7, v1, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->mShowMainContent:Landroidx/databinding/ObservableBoolean;

    const-wide/16 v8, 0xd

    and-long v10, v2, v8

    cmp-long v10, v10, v4

    const/16 v11, 0x8

    const/4 v12, 0x0

    if-eqz v10, :cond_5

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/rigol/scope/data/SharedParam;->getShowResultBar()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v12

    :goto_0
    if-eqz v10, :cond_2

    if-eqz v0, :cond_1

    const-wide/16 v13, 0x20

    or-long/2addr v2, v13

    const-wide/16 v13, 0x80

    goto :goto_1

    :cond_1
    const-wide/16 v13, 0x10

    or-long/2addr v2, v13

    const-wide/16 v13, 0x40

    :goto_1
    or-long/2addr v2, v13

    .line 178
    :cond_2
    iget-object v6, v1, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->resultsBarIcon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v0, :cond_3

    const v10, 0x7f0804ce

    goto :goto_2

    :cond_3
    const v10, 0x7f0804cf

    :goto_2
    invoke-static {v6, v10}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v0, v11

    goto :goto_4

    :cond_5
    :goto_3
    move v0, v12

    :goto_4
    const-wide/16 v13, 0xa

    and-long v15, v2, v13

    cmp-long v10, v15, v4

    if-eqz v10, :cond_a

    if-eqz v7, :cond_6

    .line 188
    invoke-virtual {v7}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v7

    goto :goto_5

    :cond_6
    move v7, v12

    :goto_5
    if-eqz v10, :cond_8

    if-eqz v7, :cond_7

    const-wide/16 v15, 0x200

    goto :goto_6

    :cond_7
    const-wide/16 v15, 0x100

    :goto_6
    or-long/2addr v2, v15

    :cond_8
    if-eqz v7, :cond_9

    goto :goto_7

    :cond_9
    move v11, v12

    :goto_7
    move v12, v11

    :cond_a
    and-long v10, v2, v13

    cmp-long v7, v10, v4

    if-eqz v7, :cond_b

    .line 207
    iget-object v7, v1, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->mboundView3:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v7, v12}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 208
    iget-object v7, v1, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->progress:Landroid/widget/ImageView;

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b
    and-long/2addr v2, v8

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    .line 213
    iget-object v2, v1, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->resultsBar:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentContainerView;->setVisibility(I)V

    .line 214
    iget-object v0, v1, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->resultsBarIcon:Landroid/widget/ImageView;

    invoke-static {v0, v6}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_c
    return-void

    :catchall_0
    move-exception v0

    .line 148
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    iget-wide v0, p0, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 67
    monitor-exit p0

    return v0

    .line 69
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 57
    monitor-enter p0

    const-wide/16 v0, 0x8

    .line 58
    :try_start_0
    iput-wide v0, p0, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    .line 59
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-virtual {p0}, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 59
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 113
    :cond_0
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->onChangeShowMainContent(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 111
    :cond_1
    check-cast p2, Lcom/rigol/scope/data/SharedParam;

    invoke-direct {p0, p2, p3}, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->onChangeSharedParam(Lcom/rigol/scope/data/SharedParam;I)Z

    move-result p1

    return p1
.end method

.method public setSharedParam(Lcom/rigol/scope/data/SharedParam;)V
    .locals 4

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, v0, p1}, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    .line 90
    iput-object p1, p0, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->mSharedParam:Lcom/rigol/scope/data/SharedParam;

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-wide v0, p0, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    .line 93
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x33b

    .line 94
    invoke-virtual {p0, p1}, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->notifyPropertyChanged(I)V

    .line 95
    invoke-super {p0}, Lcom/rigol/scope/databinding/ActivityMainBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 93
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setShowMainContent(Landroidx/databinding/ObservableBoolean;)V
    .locals 4

    const/4 v0, 0x1

    .line 98
    invoke-virtual {p0, v0, p1}, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    .line 99
    iput-object p1, p0, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->mShowMainContent:Landroidx/databinding/ObservableBoolean;

    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    iget-wide v0, p0, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    .line 102
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x341

    .line 103
    invoke-virtual {p0, p1}, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->notifyPropertyChanged(I)V

    .line 104
    invoke-super {p0}, Lcom/rigol/scope/databinding/ActivityMainBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 102
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x33b

    if-ne v0, p1, :cond_0

    .line 77
    check-cast p2, Lcom/rigol/scope/data/SharedParam;

    invoke-virtual {p0, p2}, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->setSharedParam(Lcom/rigol/scope/data/SharedParam;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x341

    if-ne v0, p1, :cond_1

    .line 80
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p0, p2}, Lcom/rigol/scope/databinding/ActivityMainBindingImpl;->setShowMainContent(Landroidx/databinding/ObservableBoolean;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
