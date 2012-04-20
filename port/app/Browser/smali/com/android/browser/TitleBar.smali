.class public Lcom/android/browser/TitleBar;
.super Landroid/widget/RelativeLayout;
.source "TitleBar.java"


# instance fields
.field private mAutoLogin:Lcom/android/browser/AutologinBar;

.field protected mBaseUi:Lcom/android/browser/BaseUi;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private mHideTileBarAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mInLoad:Z

.field protected mNavBar:Lcom/android/browser/NavigationBarBase;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field protected mParent:Landroid/widget/FrameLayout;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private mProgress:Lcom/android/browser/PageProgressView;

.field protected mShowing:Z
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field protected mSkipTitleBarAnimations:Z
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private mSnapshotBar:Lcom/android/browser/SnapshotBar;

.field protected mTitleBarAnimator:Landroid/animation/Animator;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private mUiController:Lcom/android/browser/UiController;

.field protected mUseQuickControls:Z
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/browser/UiController;Lcom/android/browser/BaseUi;Landroid/widget/FrameLayout;)V
    .locals 1
    .parameter "context"
    .parameter "controller"
    .parameter "ui"
    .parameter "parent"

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 198
    new-instance v0, Lcom/android/browser/TitleBar$1;

    invoke-direct {v0, p0}, Lcom/android/browser/TitleBar$1;-><init>(Lcom/android/browser/TitleBar;)V

    iput-object v0, p0, Lcom/android/browser/TitleBar;->mHideTileBarAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 75
    iput-object p2, p0, Lcom/android/browser/TitleBar;->mUiController:Lcom/android/browser/UiController;

    .line 76
    iput-object p3, p0, Lcom/android/browser/TitleBar;->mBaseUi:Lcom/android/browser/BaseUi;

    .line 77
    iput-object p4, p0, Lcom/android/browser/TitleBar;->mParent:Landroid/widget/FrameLayout;

    .line 78
    invoke-direct {p0, p1}, Lcom/android/browser/TitleBar;->initLayout(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/TitleBar;)Lcom/android/browser/AutologinBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    return-object v0
.end method

.method private inAutoLogin()Z
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    invoke-virtual {v0}, Lcom/android/browser/AutologinBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inflateAutoLoginBar()V
    .locals 2

    .prologue
    .line 90
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    if-eqz v1, :cond_0

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_0
    const v1, 0x7f0d0092

    invoke-virtual {p0, v1}, Lcom/android/browser/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 95
    .local v0, stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/browser/AutologinBar;

    iput-object v1, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    .line 96
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    invoke-virtual {v1, p0}, Lcom/android/browser/AutologinBar;->setTitleBar(Lcom/android/browser/TitleBar;)V

    goto :goto_0
.end method

.method private inflateSnapshotBar()V
    .locals 2

    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mSnapshotBar:Lcom/android/browser/SnapshotBar;

    if-eqz v1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    const v1, 0x7f0d0091

    invoke-virtual {p0, v1}, Lcom/android/browser/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 105
    .local v0, stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/browser/SnapshotBar;

    iput-object v1, p0, Lcom/android/browser/TitleBar;->mSnapshotBar:Lcom/android/browser/SnapshotBar;

    .line 106
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mSnapshotBar:Lcom/android/browser/SnapshotBar;

    invoke-virtual {v1, p0}, Lcom/android/browser/SnapshotBar;->setTitleBar(Lcom/android/browser/TitleBar;)V

    goto :goto_0
.end method

.method private initLayout(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 82
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 83
    .local v0, factory:Landroid/view/LayoutInflater;
    const v1, 0x7f04003c

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 84
    const v1, 0x7f0d0093

    invoke-virtual {p0, v1}, Lcom/android/browser/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/browser/PageProgressView;

    iput-object v1, p0, Lcom/android/browser/TitleBar;->mProgress:Lcom/android/browser/PageProgressView;

    .line 85
    const v1, 0x7f0d0090

    invoke-virtual {p0, v1}, Lcom/android/browser/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/browser/NavigationBarBase;

    iput-object v1, p0, Lcom/android/browser/TitleBar;->mNavBar:Lcom/android/browser/NavigationBarBase;

    .line 86
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mNavBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v1, p0}, Lcom/android/browser/NavigationBarBase;->setTitleBar(Lcom/android/browser/TitleBar;)V

    .line 87
    return-void
.end method

.method private makeLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 368
    iget-boolean v0, p0, Lcom/android/browser/TitleBar;->mUseQuickControls:Z

    if-eqz v0, :cond_0

    .line 369
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 372
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v0, v2, v1, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    goto :goto_0
.end method


# virtual methods
.method cancelTitleBarAnimation(Z)V
    .locals 1
    .parameter "reset"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mTitleBarAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mTitleBarAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/TitleBar;->mTitleBarAnimator:Landroid/animation/Animator;

    .line 193
    :cond_0
    if-eqz p1, :cond_1

    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/TitleBar;->setTranslationY(F)V

    .line 196
    :cond_1
    return-void
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .parameter "focused"
    .parameter "dir"

    .prologue
    .line 380
    const/16 v0, 0x82

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 383
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentWebView()Landroid/webkit/WebView;
    .locals 2

    .prologue
    .line 343
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 344
    .local v0, t:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 347
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEmbeddedHeight()I
    .locals 2

    .prologue
    .line 265
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mNavBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v1}, Lcom/android/browser/NavigationBarBase;->getHeight()I

    move-result v0

    .line 266
    .local v0, height:I
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    invoke-virtual {v1}, Lcom/android/browser/AutologinBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    invoke-virtual {v1}, Lcom/android/browser/AutologinBar;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 269
    :cond_0
    return v0
.end method

.method public getNavigationBar()Lcom/android/browser/NavigationBarBase;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mNavBar:Lcom/android/browser/NavigationBarBase;

    return-object v0
.end method

.method public getProgressView()Lcom/android/browser/PageProgressView;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mProgress:Lcom/android/browser/PageProgressView;

    return-object v0
.end method

.method public getUi()Lcom/android/browser/BaseUi;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mBaseUi:Lcom/android/browser/BaseUi;

    return-object v0
.end method

.method public getUiController()Lcom/android/browser/UiController;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mUiController:Lcom/android/browser/UiController;

    return-object v0
.end method

.method public getVisibleTitleHeight()I
    .locals 3
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 226
    iget-object v2, p0, Lcom/android/browser/TitleBar;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v2}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 227
    .local v0, tab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 228
    .local v1, webview:Landroid/webkit/WebView;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v2

    :goto_1
    return v2

    .line 227
    .end local v1           #webview:Landroid/webkit/WebView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 228
    .restart local v1       #webview:Landroid/webkit/WebView;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method hide()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 165
    iget-boolean v1, p0, Lcom/android/browser/TitleBar;->mUseQuickControls:Z

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 181
    :goto_0
    iput-boolean v5, p0, Lcom/android/browser/TitleBar;->mShowing:Z

    .line 182
    return-void

    .line 168
    :cond_0
    iget-boolean v1, p0, Lcom/android/browser/TitleBar;->mSkipTitleBarAnimations:Z

    if-nez v1, :cond_1

    .line 169
    invoke-virtual {p0, v5}, Lcom/android/browser/TitleBar;->cancelTitleBarAnimation(Z)V

    .line 170
    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->getVisibleTitleHeight()I

    move-result v0

    .line 171
    .local v0, visibleHeight:I
    const-string v1, "translationY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->getTranslationY()F

    move-result v3

    aput v3, v2, v5

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->getEmbeddedHeight()I

    move-result v4

    neg-int v4, v4

    add-int/2addr v4, v0

    int-to-float v4, v4

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/TitleBar;->mTitleBarAnimator:Landroid/animation/Animator;

    .line 174
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mTitleBarAnimator:Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/browser/TitleBar;->mHideTileBarAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 175
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mTitleBarAnimator:Landroid/animation/Animator;

    invoke-virtual {p0, v1}, Lcom/android/browser/TitleBar;->setupTitleBarAnimator(Landroid/animation/Animator;)V

    .line 176
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mTitleBarAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 178
    .end local v0           #visibleHeight:I
    :cond_1
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1, v5}, Lcom/android/browser/BaseUi;->setTitleGravity(I)V

    goto :goto_0
.end method

.method public hideAutoLogin(Z)V
    .locals 3
    .parameter "animate"

    .prologue
    const/16 v2, 0x8

    .line 297
    iget-boolean v1, p0, Lcom/android/browser/TitleBar;->mUseQuickControls:Z

    if-eqz v1, :cond_1

    .line 298
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1}, Lcom/android/browser/BaseUi;->hideTitleBar()V

    .line 299
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    invoke-virtual {v1, v2}, Lcom/android/browser/AutologinBar;->setVisibility(I)V

    .line 300
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1}, Lcom/android/browser/BaseUi;->refreshWebView()V

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    if-eqz p1, :cond_2

    .line 303
    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 305
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v1, Lcom/android/browser/TitleBar$2;

    invoke-direct {v1, p0}, Lcom/android/browser/TitleBar$2;-><init>(Lcom/android/browser/TitleBar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 320
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    invoke-virtual {v1, v0}, Lcom/android/browser/AutologinBar;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 321
    .end local v0           #anim:Landroid/view/animation/Animation;
    :cond_2
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    invoke-virtual {v1}, Lcom/android/browser/AutologinBar;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    invoke-virtual {v1, v2}, Lcom/android/browser/AutologinBar;->setVisibility(I)V

    .line 323
    iget-object v1, p0, Lcom/android/browser/TitleBar;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1}, Lcom/android/browser/BaseUi;->refreshWebView()V

    goto :goto_0
.end method

.method public isEditingUrl()Z
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mNavBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v0}, Lcom/android/browser/NavigationBarBase;->isEditingUrl()Z

    move-result v0

    return v0
.end method

.method public isInLoad()Z
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/android/browser/TitleBar;->mInLoad:Z

    return v0
.end method

.method isShowing()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/android/browser/TitleBar;->mShowing:Z

    return v0
.end method

.method public onTabDataChanged(Lcom/android/browser/Tab;)V
    .locals 3
    .parameter "tab"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 387
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mSnapshotBar:Lcom/android/browser/SnapshotBar;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mSnapshotBar:Lcom/android/browser/SnapshotBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/SnapshotBar;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 391
    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isSnapshot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    invoke-direct {p0}, Lcom/android/browser/TitleBar;->inflateSnapshotBar()V

    .line 393
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mSnapshotBar:Lcom/android/browser/SnapshotBar;

    invoke-virtual {v0, v1}, Lcom/android/browser/SnapshotBar;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mNavBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v0, v2}, Lcom/android/browser/NavigationBarBase;->setVisibility(I)V

    .line 401
    :goto_0
    return-void

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mSnapshotBar:Lcom/android/browser/SnapshotBar;

    if-eqz v0, :cond_2

    .line 397
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mSnapshotBar:Lcom/android/browser/SnapshotBar;

    invoke-virtual {v0, v2}, Lcom/android/browser/SnapshotBar;->setVisibility(I)V

    .line 399
    :cond_2
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mNavBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v0, v1}, Lcom/android/browser/NavigationBarBase;->setVisibility(I)V

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 4
    .parameter "newProgress"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 235
    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mProgress:Lcom/android/browser/PageProgressView;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/android/browser/PageProgressView;->setProgress(I)V

    .line 237
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mProgress:Lcom/android/browser/PageProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/browser/PageProgressView;->setVisibility(I)V

    .line 238
    iput-boolean v2, p0, Lcom/android/browser/TitleBar;->mInLoad:Z

    .line 239
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mNavBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v0}, Lcom/android/browser/NavigationBarBase;->onProgressStopped()V

    .line 241
    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->isEditingUrl()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->wantsToBeVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->hide()V

    .line 243
    iget-boolean v0, p0, Lcom/android/browser/TitleBar;->mUseQuickControls:Z

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0, v2}, Lcom/android/browser/TitleBar;->setShowProgressOnly(Z)V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-boolean v0, p0, Lcom/android/browser/TitleBar;->mInLoad:Z

    if-nez v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mProgress:Lcom/android/browser/PageProgressView;

    invoke-virtual {v0, v2}, Lcom/android/browser/PageProgressView;->setVisibility(I)V

    .line 250
    iput-boolean v3, p0, Lcom/android/browser/TitleBar;->mInLoad:Z

    .line 251
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mNavBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v0}, Lcom/android/browser/NavigationBarBase;->onProgressStarted()V

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mProgress:Lcom/android/browser/PageProgressView;

    mul-int/lit16 v1, p1, 0x2710

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/browser/PageProgressView;->setProgress(I)V

    .line 255
    iget-boolean v0, p0, Lcom/android/browser/TitleBar;->mShowing:Z

    if-nez v0, :cond_0

    .line 256
    iget-boolean v0, p0, Lcom/android/browser/TitleBar;->mUseQuickControls:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->isEditingUrl()Z

    move-result v0

    if-nez v0, :cond_3

    .line 257
    invoke-virtual {p0, v3}, Lcom/android/browser/TitleBar;->setShowProgressOnly(Z)V

    .line 259
    :cond_3
    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->show()V

    goto :goto_0
.end method

.method setShowProgressOnly(Z)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 123
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->wantsToBeVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mNavBar:Lcom/android/browser/NavigationBarBase;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/browser/NavigationBarBase;->setVisibility(I)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mNavBar:Lcom/android/browser/NavigationBarBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/NavigationBarBase;->setVisibility(I)V

    goto :goto_0
.end method

.method setSkipTitleBarAnimations(Z)V
    .locals 0
    .parameter "skip"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/android/browser/TitleBar;->mSkipTitleBarAnimations:Z

    .line 132
    return-void
.end method

.method public setUseQuickControls(Z)V
    .locals 1
    .parameter "use"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/browser/TitleBar;->mUseQuickControls:Z

    .line 119
    invoke-direct {p0}, Lcom/android/browser/TitleBar;->makeLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/TitleBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    return-void
.end method

.method setupTitleBarAnimator(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animator"

    .prologue
    .line 135
    iget-object v2, p0, Lcom/android/browser/TitleBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 136
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0e0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 137
    .local v0, duration:I
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x4020

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 139
    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 140
    return-void
.end method

.method show()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 143
    iget-boolean v2, p0, Lcom/android/browser/TitleBar;->mUseQuickControls:Z

    if-eqz v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/android/browser/TitleBar;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 161
    :goto_0
    iput-boolean v6, p0, Lcom/android/browser/TitleBar;->mShowing:Z

    .line 162
    return-void

    .line 146
    :cond_0
    iget-boolean v2, p0, Lcom/android/browser/TitleBar;->mSkipTitleBarAnimations:Z

    if-nez v2, :cond_2

    .line 147
    invoke-virtual {p0, v5}, Lcom/android/browser/TitleBar;->cancelTitleBarAnimation(Z)V

    .line 148
    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->getVisibleTitleHeight()I

    move-result v1

    .line 149
    .local v1, visibleHeight:I
    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->getEmbeddedHeight()I

    move-result v2

    neg-int v2, v2

    add-int/2addr v2, v1

    int-to-float v0, v2

    .line 150
    .local v0, startPos:F
    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->getTranslationY()F

    move-result v2

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->getTranslationY()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 153
    :cond_1
    const-string v2, "translationY"

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v0, v3, v5

    aput v4, v3, v6

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/TitleBar;->mTitleBarAnimator:Landroid/animation/Animator;

    .line 156
    iget-object v2, p0, Lcom/android/browser/TitleBar;->mTitleBarAnimator:Landroid/animation/Animator;

    invoke-virtual {p0, v2}, Lcom/android/browser/TitleBar;->setupTitleBarAnimator(Landroid/animation/Animator;)V

    .line 157
    iget-object v2, p0, Lcom/android/browser/TitleBar;->mTitleBarAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 159
    .end local v0           #startPos:F
    .end local v1           #visibleHeight:I
    :cond_2
    iget-object v2, p0, Lcom/android/browser/TitleBar;->mBaseUi:Lcom/android/browser/BaseUi;

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Lcom/android/browser/BaseUi;->setTitleGravity(I)V

    goto :goto_0
.end method

.method public showAutoLogin(Z)V
    .locals 3
    .parameter "animate"

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/android/browser/TitleBar;->mUseQuickControls:Z

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v0}, Lcom/android/browser/BaseUi;->showTitleBar()V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    if-nez v0, :cond_1

    .line 287
    invoke-direct {p0}, Lcom/android/browser/TitleBar;->inflateAutoLoginBar()V

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/AutologinBar;->setVisibility(I)V

    .line 290
    if-eqz p1, :cond_2

    .line 291
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    invoke-virtual {p0}, Lcom/android/browser/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f05

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/AutologinBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 294
    :cond_2
    return-void
.end method

.method public updateAutoLogin(Lcom/android/browser/Tab;Z)V
    .locals 1
    .parameter "tab"
    .parameter "animate"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    if-nez v0, :cond_1

    .line 274
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getDeviceAccountLogin()Lcom/android/browser/DeviceAccountLogin;

    move-result-object v0

    if-nez v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/TitleBar;->inflateAutoLoginBar()V

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/android/browser/TitleBar;->mAutoLogin:Lcom/android/browser/AutologinBar;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/AutologinBar;->updateAutoLogin(Lcom/android/browser/Tab;Z)V

    goto :goto_0
.end method

.method public useQuickControls()Z
    .locals 1

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/android/browser/TitleBar;->mUseQuickControls:Z

    return v0
.end method

.method public wantsToBeVisible()Z
    .locals 1

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/android/browser/TitleBar;->inAutoLogin()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/TitleBar;->mSnapshotBar:Lcom/android/browser/SnapshotBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/browser/TitleBar;->mSnapshotBar:Lcom/android/browser/SnapshotBar;

    invoke-virtual {v0}, Lcom/android/browser/SnapshotBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/browser/TitleBar;->mSnapshotBar:Lcom/android/browser/SnapshotBar;

    invoke-virtual {v0}, Lcom/android/browser/SnapshotBar;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
