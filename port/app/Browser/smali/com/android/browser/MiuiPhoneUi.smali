.class public Lcom/android/browser/MiuiPhoneUi;
.super Lcom/android/browser/BaseUi;
.source "MiuiPhoneUi.java"


# instance fields
.field private mActionBarHeight:I

.field protected mContentContainer:Landroid/widget/FrameLayout;

.field protected mContentMask:Lcom/android/browser/view/MaskFrameLayout;

.field mExtendedMenuOpen:Z

.field private mIsShowingReader:Z

.field protected mMiuiHome:Lcom/android/browser/MiuiHome;

.field protected mMiuiHomeContainer:Landroid/widget/FrameLayout;

.field private mNavScreen:Lcom/android/browser/MiuiNavScreen;

.field private mNavigationBar:Lcom/android/browser/MiuiNavigationBarPhone;

.field mOptionsMenuOpen:Z

.field private mOrientation:I

.field private mPieControl:Lcom/android/browser/MiuiPieControlPhone;

.field protected mQuickControlContainer:Landroid/widget/FrameLayout;

.field private mUseFullScreen:Z

.field protected mVerticalLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/UiController;)V
    .locals 6
    .parameter "browser"
    .parameter "controller"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BaseUi;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;)V

    .line 77
    iget-object v2, p0, Lcom/android/browser/MiuiPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 79
    .local v0, frameLayout:Landroid/widget/FrameLayout;
    const v2, 0x7f0d0042

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/browser/MiuiPhoneUi;->mVerticalLayout:Landroid/widget/LinearLayout;

    .line 80
    const v2, 0x7f0d0044

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/browser/MiuiPhoneUi;->mContentContainer:Landroid/widget/FrameLayout;

    .line 81
    const v2, 0x7f0d0046

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/browser/MiuiPhoneUi;->mMiuiHomeContainer:Landroid/widget/FrameLayout;

    .line 82
    const v2, 0x7f0d0047

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/browser/MiuiPhoneUi;->mQuickControlContainer:Landroid/widget/FrameLayout;

    .line 84
    const v2, 0x7f0d0048

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/browser/view/MaskFrameLayout;

    iput-object v2, p0, Lcom/android/browser/MiuiPhoneUi;->mContentMask:Lcom/android/browser/view/MaskFrameLayout;

    .line 87
    new-instance v2, Lcom/android/browser/MiuiTitleBar;

    iget-object v3, p0, Lcom/android/browser/MiuiPhoneUi;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/browser/MiuiPhoneUi;->mUiController:Lcom/android/browser/UiController;

    iget-object v5, p0, Lcom/android/browser/MiuiPhoneUi;->mContentContainer:Landroid/widget/FrameLayout;

    invoke-direct {v2, v3, v4, p0, v5}, Lcom/android/browser/MiuiTitleBar;-><init>(Landroid/content/Context;Lcom/android/browser/UiController;Lcom/android/browser/BaseUi;Landroid/widget/FrameLayout;)V

    iput-object v2, p0, Lcom/android/browser/MiuiPhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    .line 88
    iget-object v2, p0, Lcom/android/browser/MiuiPhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/android/browser/TitleBar;->setProgress(I)V

    .line 89
    iget-object v2, p0, Lcom/android/browser/MiuiPhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v2}, Lcom/android/browser/TitleBar;->getNavigationBar()Lcom/android/browser/NavigationBarBase;

    move-result-object v2

    check-cast v2, Lcom/android/browser/MiuiNavigationBarPhone;

    iput-object v2, p0, Lcom/android/browser/MiuiPhoneUi;->mNavigationBar:Lcom/android/browser/MiuiNavigationBarPhone;

    .line 91
    new-instance v2, Lcom/android/browser/MiuiHome;

    iget-object v3, p0, Lcom/android/browser/MiuiPhoneUi;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/browser/MiuiPhoneUi;->mUiController:Lcom/android/browser/UiController;

    iget-object v5, p0, Lcom/android/browser/MiuiPhoneUi;->mMiuiHomeContainer:Landroid/widget/FrameLayout;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/browser/MiuiHome;-><init>(Landroid/content/Context;Lcom/android/browser/UiController;Landroid/widget/FrameLayout;)V

    iput-object v2, p0, Lcom/android/browser/MiuiPhoneUi;->mMiuiHome:Lcom/android/browser/MiuiHome;

    .line 93
    iget-object v2, p0, Lcom/android/browser/MiuiPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/browser/MiuiPhoneUi;->mOrientation:I

    .line 94
    invoke-direct {p0}, Lcom/android/browser/MiuiPhoneUi;->onOrientationChanged()V

    .line 96
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->useQuickControls()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/browser/MiuiPhoneUi;->setUseQuickControls(Z)V

    .line 97
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 98
    .local v1, heightValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10102eb

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 100
    iget v2, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, p0, Lcom/android/browser/MiuiPhoneUi;->mActionBarHeight:I

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/MiuiPhoneUi;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/browser/MiuiPhoneUi;->finishAnimationIn()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/MiuiPhoneUi;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/browser/MiuiPhoneUi;->finishAnimateOut()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/browser/MiuiPhoneUi;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/browser/MiuiPhoneUi;->hideContentMask()V

    return-void
.end method

.method private finishAnimateOut()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 549
    iget-object v0, p0, Lcom/android/browser/MiuiPhoneUi;->mTabControl:Lcom/android/browser/TabControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->setOnThumbnailUpdatedListener(Lcom/android/browser/TabControl$OnThumbnailUpdatedListener;)V

    .line 550
    iget-object v0, p0, Lcom/android/browser/MiuiPhoneUi;->mNavScreen:Lcom/android/browser/MiuiNavScreen;

    invoke-virtual {v0, v2}, Lcom/android/browser/MiuiNavScreen;->setVisibility(I)V

    .line 551
    iget-object v0, p0, Lcom/android/browser/MiuiPhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 552
    iget-object v0, p0, Lcom/android/browser/MiuiPhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 553
    return-void
.end method

.method private finishAnimationIn()V
    .locals 2

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/android/browser/MiuiPhoneUi;->showingNavScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/browser/MiuiPhoneUi;->mNavScreen:Lcom/android/browser/MiuiNavScreen;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/browser/MiuiNavScreen;->sendAccessibilityEvent(I)V

    .line 482
    iget-object v0, p0, Lcom/android/browser/MiuiPhoneUi;->mTabControl:Lcom/android/browser/TabControl;

    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mNavScreen:Lcom/android/browser/MiuiNavScreen;

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->setOnThumbnailUpdatedListener(Lcom/android/browser/TabControl$OnThumbnailUpdatedListener;)V

    .line 484
    :cond_0
    return-void
.end method

.method private hideContentMask()V
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/browser/MiuiPhoneUi;->mContentMask:Lcom/android/browser/view/MaskFrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/browser/view/MaskFrameLayout;->setVisibility(I)V

    .line 496
    return-void
.end method

.method private onOrientationChanged()V
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lcom/android/browser/MiuiPhoneUi;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/browser/MiuiPhoneUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->getActionBarController()Lcom/android/browser/ActionBarController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mVerticalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/android/browser/ActionBarController;->attach(Landroid/view/ViewGroup;)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget v0, p0, Lcom/android/browser/MiuiPhoneUi;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/browser/MiuiPhoneUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->getActionBarController()Lcom/android/browser/ActionBarController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->getNavigationBar()Lcom/android/browser/NavigationBarBase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/ActionBarController;->attach(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method private showContentMask()V
    .locals 3

    .prologue
    .line 487
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mContentMask:Lcom/android/browser/view/MaskFrameLayout;

    invoke-virtual {v1}, Lcom/android/browser/view/MaskFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 488
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->getVisibleTitleHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 489
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mContentMask:Lcom/android/browser/view/MaskFrameLayout;

    invoke-virtual {v1, v0}, Lcom/android/browser/view/MaskFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 490
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mContentMask:Lcom/android/browser/view/MaskFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/browser/view/MaskFrameLayout;->setVisibility(I)V

    .line 491
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mContentMask:Lcom/android/browser/view/MaskFrameLayout;

    invoke-virtual {v1}, Lcom/android/browser/view/MaskFrameLayout;->bringToFront()V

    .line 492
    return-void
.end method

.method private showingNavScreen()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/browser/MiuiPhoneUi;->mNavScreen:Lcom/android/browser/MiuiNavScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/MiuiPhoneUi;->mNavScreen:Lcom/android/browser/MiuiNavScreen;

    invoke-virtual {v0}, Lcom/android/browser/MiuiNavScreen;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected attachTabToContentView(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 259
    invoke-super {p0, p1}, Lcom/android/browser/BaseUi;->attachTabToContentView(Lcom/android/browser/Tab;)V

    move-object v0, p1

    .line 261
    check-cast v0, Lcom/android/browser/MiuiTab;

    invoke-virtual {v0}, Lcom/android/browser/MiuiTab;->isShowingMiuiHome()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0, p1}, Lcom/android/browser/MiuiPhoneUi;->showMiuiHome(Lcom/android/browser/Tab;)V

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/browser/MiuiPhoneUi;->hideMiuiHome(Lcom/android/browser/Tab;)V

    goto :goto_0
.end method

.method public dispatchKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "code"
    .parameter "event"

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public editUrl(Z)V
    .locals 2
    .parameter "clearInput"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/browser/MiuiPhoneUi;->mUseQuickControls:Z

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/browser/MiuiPhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setShowProgressOnly(Z)V

    .line 131
    :cond_0
    invoke-super {p0, p1}, Lcom/android/browser/BaseUi;->editUrl(Z)V

    .line 132
    return-void
.end method

.method public getMiuiHome()Lcom/android/browser/MiuiHome;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/browser/MiuiPhoneUi;->mMiuiHome:Lcom/android/browser/MiuiHome;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 214
    invoke-super {p0, p1}, Lcom/android/browser/BaseUi;->handleMessage(Landroid/os/Message;)V

    .line 215
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/browser/MiuiPhoneUi;->mNavScreen:Lcom/android/browser/MiuiNavScreen;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Lcom/android/browser/MiuiNavScreen;

    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/browser/MiuiPhoneUi;->mUiController:Lcom/android/browser/UiController;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/browser/MiuiNavScreen;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;Lcom/android/browser/MiuiPhoneUi;)V

    iput-object v0, p0, Lcom/android/browser/MiuiPhoneUi;->mNavScreen:Lcom/android/browser/MiuiNavScreen;

    .line 218
    iget-object v0, p0, Lcom/android/browser/MiuiPhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mNavScreen:Lcom/android/browser/MiuiNavScreen;

    sget-object v2, Lcom/android/browser/MiuiPhoneUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    iget-object v0, p0, Lcom/android/browser/MiuiPhoneUi;->mNavScreen:Lcom/android/browser/MiuiNavScreen;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/browser/MiuiNavScreen;->setVisibility(I)V

    .line 222
    :cond_0
    return-void
.end method

.method public hideMiuiHome(Lcom/android/browser/Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/browser/MiuiPhoneUi;->mMiuiHome:Lcom/android/browser/MiuiHome;

    if-nez v0, :cond_0

    .line 611
    :goto_0
    return-void

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/android/browser/MiuiPhoneUi;->mMiuiHome:Lcom/android/browser/MiuiHome;

    invoke-virtual {v0}, Lcom/android/browser/MiuiHome;->hide()V

    .line 606
    iget-object v0, p0, Lcom/android/browser/MiuiPhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    check-cast v0, Lcom/android/browser/MiuiTitleBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/MiuiTitleBar;->setMiuiHomeShowing(Z)V

    .line 609
    const-string v0, "PhoneUi"

    const-string v1, "hide MIUI home"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method hideNavScreen(IZ)V
    .locals 6
    .parameter "position"
    .parameter "animate"

    .prologue
    const/4 v5, 0x0

    .line 498
    invoke-direct {p0}, Lcom/android/browser/MiuiPhoneUi;->showingNavScreen()Z

    move-result v3

    if-nez v3, :cond_0

    .line 546
    :goto_0
    return-void

    .line 500
    :cond_0
    iget-object v3, p0, Lcom/android/browser/MiuiPhoneUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v3}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v1

    .line 502
    .local v1, tab:Lcom/android/browser/Tab;
    if-eqz v1, :cond_1

    if-nez p2, :cond_4

    .line 503
    :cond_1
    if-eqz v1, :cond_3

    .line 504
    invoke-virtual {p0, v1}, Lcom/android/browser/MiuiPhoneUi;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 509
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/browser/MiuiPhoneUi;->hideContentMask()V

    .line 510
    invoke-direct {p0}, Lcom/android/browser/MiuiPhoneUi;->finishAnimateOut()V

    goto :goto_0

    .line 505
    :cond_3
    iget-object v3, p0, Lcom/android/browser/MiuiPhoneUi;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 507
    iget-object v3, p0, Lcom/android/browser/MiuiPhoneUi;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/browser/MiuiPhoneUi;->setActiveTab(Lcom/android/browser/Tab;)V

    goto :goto_1

    .line 514
    :cond_4
    iget-object v3, p0, Lcom/android/browser/MiuiPhoneUi;->mNavScreen:Lcom/android/browser/MiuiNavScreen;

    invoke-virtual {v3, p1}, Lcom/android/browser/MiuiNavScreen;->getTabView(I)Lcom/android/browser/NavTabView;

    move-result-object v2

    .line 515
    .local v2, tabview:Lcom/android/browser/NavTabView;
    if-nez v2, :cond_6

    .line 516
    iget-object v3, p0, Lcom/android/browser/MiuiPhoneUi;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v3

    if-lez v3, :cond_5

    .line 518
    iget-object v3, p0, Lcom/android/browser/MiuiPhoneUi;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/browser/MiuiPhoneUi;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 520
    :cond_5
    invoke-direct {p0}, Lcom/android/browser/MiuiPhoneUi;->hideContentMask()V

    .line 521
    invoke-direct {p0}, Lcom/android/browser/MiuiPhoneUi;->finishAnimateOut()V

    goto :goto_0

    .line 525
    :cond_6
    iget-object v3, p0, Lcom/android/browser/MiuiPhoneUi;->mUiController:Lcom/android/browser/UiController;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/browser/UiController;->setBlockEvents(Z)V

    .line 526
    iget-object v3, p0, Lcom/android/browser/MiuiPhoneUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v3, v1}, Lcom/android/browser/UiController;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 528
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v3, p0, Lcom/android/browser/MiuiPhoneUi;->mNavScreen:Lcom/android/browser/MiuiNavScreen;

    invoke-virtual {v3}, Lcom/android/browser/MiuiNavScreen;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v5, v5, v5, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 529
    .local v0, ta:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 530
    new-instance v3, Lcom/android/browser/MiuiPhoneUi$2;

    invoke-direct {v3, p0}, Lcom/android/browser/MiuiPhoneUi$2;-><init>(Lcom/android/browser/MiuiPhoneUi;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 545
    iget-object v3, p0, Lcom/android/browser/MiuiPhoneUi;->mNavScreen:Lcom/android/browser/MiuiNavScreen;

    invoke-virtual {v3, v0}, Lcom/android/browser/MiuiNavScreen;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public isWebShowing()Z
    .locals 1

    .prologue
    .line 433
    invoke-super {p0}, Lcom/android/browser/BaseUi;->isWebShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/browser/MiuiPhoneUi;->showingNavScreen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsRestoreAllTabs()Z
    .locals 1

    .prologue
    .line 557
    const/4 v0, 0x0

    return v0
.end method

.method public onActionModeFinished(Z)V
    .locals 2
    .parameter "inLoad"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/browser/MiuiPhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 366
    if-eqz p1, :cond_1

    .line 367
    iget-boolean v0, p0, Lcom/android/browser/MiuiPhoneUi;->mUseQuickControls:Z

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/browser/MiuiPhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setShowProgressOnly(Z)V

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/MiuiPhoneUi;->showTitleBar()V

    .line 372
    :cond_1
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/android/browser/MiuiPhoneUi;->isEditingUrl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/android/browser/MiuiPhoneUi;->hideTitleBar()V

    .line 361
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/browser/MiuiPhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/MiuiPhoneUi;->mActionBarHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method public onBackKey()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 136
    invoke-direct {p0}, Lcom/android/browser/MiuiPhoneUi;->showingNavScreen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mNavScreen:Lcom/android/browser/MiuiNavScreen;

    iget-object v2, p0, Lcom/android/browser/MiuiPhoneUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/browser/MiuiNavScreen;->close(I)V

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    invoke-super {p0}, Lcom/android/browser/BaseUi;->onBackKey()Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    iget-boolean v2, p0, Lcom/android/browser/MiuiPhoneUi;->mIsShowingReader:Z

    if-eqz v2, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/android/browser/MiuiPhoneUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/android/browser/MiuiPhoneUi;->showReader(Lcom/android/browser/Tab;Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 151
    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 115
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/browser/MiuiPhoneUi;->mOrientation:I

    if-eq v0, v1, :cond_0

    .line 116
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/browser/MiuiPhoneUi;->mOrientation:I

    .line 117
    invoke-direct {p0}, Lcom/android/browser/MiuiPhoneUi;->onOrientationChanged()V

    .line 119
    :cond_0
    return-void
.end method

.method public onContextMenuClosed(Landroid/view/Menu;Z)V
    .locals 0
    .parameter "menu"
    .parameter "inLoad"

    .prologue
    .line 347
    if-eqz p2, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/android/browser/MiuiPhoneUi;->showTitleBar()V

    .line 350
    :cond_0
    return-void
.end method

.method public onContextMenuCreated(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/android/browser/MiuiPhoneUi;->hideTitleBar()V

    .line 343
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/browser/MiuiPhoneUi;->hideTitleBar()V

    .line 124
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 332
    invoke-direct {p0}, Lcom/android/browser/MiuiPhoneUi;->showingNavScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d00cb

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d00cc

    if-eq v0, v1, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/browser/MiuiPhoneUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/android/browser/MiuiPhoneUi;->hideNavScreen(IZ)V

    .line 337
    :cond_0
    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/browser/MiuiPhoneUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {p0, v0, p1}, Lcom/android/browser/MiuiPhoneUi;->updateMenuState(Lcom/android/browser/Tab;Landroid/view/Menu;)V

    .line 295
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Lcom/android/browser/Tab;)V
    .locals 4
    .parameter "tab"

    .prologue
    const/16 v3, 0x64

    .line 187
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getLoadProgress()I

    move-result v0

    .line 189
    .local v0, progress:I
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v0}, Lcom/android/browser/TitleBar;->setProgress(I)V

    .line 190
    if-ne v0, v3, :cond_3

    .line 191
    iget-boolean v1, p0, Lcom/android/browser/MiuiPhoneUi;->mOptionsMenuOpen:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/browser/MiuiPhoneUi;->mExtendedMenuOpen:Z

    if-nez v1, :cond_1

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/MiuiPhoneUi;->suggestHideTitleBar()V

    .line 193
    iget-boolean v1, p0, Lcom/android/browser/MiuiPhoneUi;->mUseQuickControls:Z

    if-eqz v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/browser/TitleBar;->setShowProgressOnly(Z)V

    .line 207
    .end local v0           #progress:I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mNavScreen:Lcom/android/browser/MiuiNavScreen;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/browser/MiuiPhoneUi;->getTitleBar()Lcom/android/browser/TitleBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->getHeight()I

    move-result v1

    if-lez v1, :cond_2

    .line 208
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 210
    :cond_2
    return-void

    .line 198
    .restart local v0       #progress:I
    :cond_3
    iget-boolean v1, p0, Lcom/android/browser/MiuiPhoneUi;->mOptionsMenuOpen:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/browser/MiuiPhoneUi;->mExtendedMenuOpen:Z

    if-eqz v1, :cond_1

    .line 199
    :cond_4
    iget-boolean v1, p0, Lcom/android/browser/MiuiPhoneUi;->mUseQuickControls:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->isEditingUrl()Z

    move-result v1

    if-nez v1, :cond_5

    .line 200
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/browser/TitleBar;->setShowProgressOnly(Z)V

    .line 201
    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Lcom/android/browser/MiuiPhoneUi;->setTitleGravity(I)V

    .line 203
    :cond_5
    invoke-virtual {p0}, Lcom/android/browser/MiuiPhoneUi;->showTitleBar()V

    goto :goto_0
.end method

.method public onTabDataChanged(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/android/browser/BaseUi;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 157
    iget-object v0, p0, Lcom/android/browser/MiuiPhoneUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->getActionBarController()Lcom/android/browser/ActionBarController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/browser/ActionBarController;->onTabChanged(Lcom/android/browser/Tab;)V

    .line 158
    return-void
.end method

.method protected removeTabFromContentView(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 270
    invoke-super {p0, p1}, Lcom/android/browser/BaseUi;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    move-object v0, p1

    .line 272
    check-cast v0, Lcom/android/browser/MiuiTab;

    invoke-virtual {v0}, Lcom/android/browser/MiuiTab;->isShowingMiuiHome()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0, p1}, Lcom/android/browser/MiuiPhoneUi;->hideMiuiHome(Lcom/android/browser/Tab;)V

    .line 275
    :cond_0
    return-void
.end method

.method public setActiveTab(Lcom/android/browser/Tab;)V
    .locals 4
    .parameter "tab"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 226
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v2}, Lcom/android/browser/TitleBar;->cancelTitleBarAnimation(Z)V

    .line 227
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v2}, Lcom/android/browser/TitleBar;->setSkipTitleBarAnimations(Z)V

    .line 228
    invoke-super {p0, p1}, Lcom/android/browser/BaseUi;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 229
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BrowserWebView;

    .line 232
    .local v0, view:Lcom/android/browser/BrowserWebView;
    if-nez v0, :cond_0

    .line 233
    const-string v1, "PhoneUi"

    const-string v2, "active tab with no webview detected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-boolean v1, p0, Lcom/android/browser/MiuiPhoneUi;->mUseQuickControls:Z

    if-eqz v1, :cond_2

    .line 238
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mPieControl:Lcom/android/browser/MiuiPieControlPhone;

    iget-object v2, p0, Lcom/android/browser/MiuiPhoneUi;->mQuickControlContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/android/browser/MiuiPieControlPhone;->forceToTop(Landroid/widget/FrameLayout;)V

    .line 245
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isInVoiceSearchMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 246
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getVoiceDisplayTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getVoiceSearchResults()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/browser/MiuiPhoneUi;->showVoiceTitleBar(Ljava/lang/String;Ljava/util/List;)V

    .line 251
    :goto_2
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mNavigationBar:Lcom/android/browser/MiuiNavigationBarPhone;

    invoke-virtual {v1, v3}, Lcom/android/browser/MiuiNavigationBarPhone;->onStateChanged(I)V

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/browser/MiuiPhoneUi;->updateLockIconToLatest(Lcom/android/browser/Tab;)V

    .line 253
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 254
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v3}, Lcom/android/browser/TitleBar;->setSkipTitleBarAnimations(Z)V

    goto :goto_0

    .line 241
    :cond_2
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 242
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserWebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    goto :goto_1

    .line 248
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/browser/MiuiPhoneUi;->revertVoiceTitleBar(Lcom/android/browser/Tab;)V

    goto :goto_2
.end method

.method public setFullscreen(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/browser/MiuiPhoneUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->getActionBarController()Lcom/android/browser/ActionBarController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/browser/ActionBarController;->setUseFullScreen(Z)V

    .line 426
    iput-boolean p1, p0, Lcom/android/browser/MiuiPhoneUi;->mUseFullScreen:Z

    .line 428
    invoke-super {p0, p1}, Lcom/android/browser/BaseUi;->setFullscreen(Z)V

    .line 429
    return-void
.end method

.method protected setTitleGravity(I)V
    .locals 2
    .parameter "gravity"

    .prologue
    .line 376
    iget-boolean v1, p0, Lcom/android/browser/MiuiPhoneUi;->mUseQuickControls:Z

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 379
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 380
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v0}, Lcom/android/browser/TitleBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-super {p0, p1}, Lcom/android/browser/BaseUi;->setTitleGravity(I)V

    goto :goto_0
.end method

.method protected setUrlTitle(Lcom/android/browser/Tab;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 279
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, url:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, title:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/browser/Tab;->inPageLoad()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
    :cond_0
    move-object v0, v1

    .line 284
    :cond_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isInVoiceSearchMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 288
    :cond_2
    :goto_0
    return-void

    .line 285
    :cond_3
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 286
    iget-object v2, p0, Lcom/android/browser/MiuiPhoneUi;->mNavigationBar:Lcom/android/browser/MiuiNavigationBarPhone;

    invoke-virtual {v2, v0}, Lcom/android/browser/MiuiNavigationBarPhone;->setDisplayTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setUseQuickControls(Z)V
    .locals 5
    .parameter "useQuickControls"

    .prologue
    const/4 v4, 0x0

    .line 388
    iput-boolean p1, p0, Lcom/android/browser/MiuiPhoneUi;->mUseQuickControls:Z

    .line 389
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    iget-boolean v2, p0, Lcom/android/browser/MiuiPhoneUi;->mUseQuickControls:Z

    invoke-virtual {v1, v2}, Lcom/android/browser/TitleBar;->setUseQuickControls(Z)V

    .line 390
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->getActionBarController()Lcom/android/browser/ActionBarController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/browser/ActionBarController;->setUseQuickControls(Z)V

    .line 391
    if-eqz p1, :cond_2

    .line 392
    new-instance v1, Lcom/android/browser/MiuiPieControlPhone;

    iget-object v2, p0, Lcom/android/browser/MiuiPhoneUi;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/browser/MiuiPhoneUi;->mUiController:Lcom/android/browser/UiController;

    invoke-direct {v1, v2, v3, p0}, Lcom/android/browser/MiuiPieControlPhone;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;Lcom/android/browser/MiuiPhoneUi;)V

    iput-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mPieControl:Lcom/android/browser/MiuiPieControlPhone;

    .line 393
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mPieControl:Lcom/android/browser/MiuiPieControlPhone;

    iget-object v2, p0, Lcom/android/browser/MiuiPhoneUi;->mQuickControlContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/android/browser/MiuiPieControlPhone;->attachToContainer(Landroid/widget/FrameLayout;)V

    .line 394
    invoke-virtual {p0}, Lcom/android/browser/MiuiPhoneUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 395
    .local v0, web:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 396
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mMiuiHome:Lcom/android/browser/MiuiHome;

    if-eqz v1, :cond_1

    .line 400
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mMiuiHome:Lcom/android/browser/MiuiHome;

    invoke-virtual {v1, v4}, Lcom/android/browser/MiuiHome;->setPaddingTop(I)V

    .line 420
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/browser/MiuiPhoneUi;->updateUrlBarAutoShowManagerTarget()V

    .line 421
    return-void

    .line 403
    .end local v0           #web:Landroid/webkit/WebView;
    :cond_2
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mPieControl:Lcom/android/browser/MiuiPieControlPhone;

    if-eqz v1, :cond_3

    .line 404
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mPieControl:Lcom/android/browser/MiuiPieControlPhone;

    iget-object v2, p0, Lcom/android/browser/MiuiPhoneUi;->mQuickControlContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/android/browser/MiuiPieControlPhone;->removeFromContainer(Landroid/widget/FrameLayout;)V

    .line 406
    :cond_3
    invoke-virtual {p0}, Lcom/android/browser/MiuiPhoneUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 407
    .restart local v0       #web:Landroid/webkit/WebView;
    if-eqz v0, :cond_5

    .line 409
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 410
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/browser/MiuiPhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 412
    :cond_4
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 414
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/browser/MiuiPhoneUi;->setTitleGravity(I)V

    .line 416
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mMiuiHome:Lcom/android/browser/MiuiHome;

    if-eqz v1, :cond_1

    .line 417
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mMiuiHome:Lcom/android/browser/MiuiHome;

    iget-object v2, p0, Lcom/android/browser/MiuiPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/browser/MiuiHome;->setPaddingTop(I)V

    goto :goto_0
.end method

.method public shouldCaptureThumbnails()Z
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x1

    return v0
.end method

.method public showMiuiHome(Lcom/android/browser/Tab;)V
    .locals 5
    .parameter "tab"

    .prologue
    const/4 v4, 0x1

    .line 581
    if-nez p1, :cond_1

    .line 582
    const-string v0, "PhoneUi"

    const-string v1, "Error: show MIUI home for null tab"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 586
    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/android/browser/MiuiPhoneUi;->mActiveTab:Lcom/android/browser/Tab;

    if-eq p1, v0, :cond_2

    .line 587
    const-string v0, "PhoneUi"

    const-string v1, "show miui home warning. tab:%h mActiveTab:%h"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget-object v3, p0, Lcom/android/browser/MiuiPhoneUi;->mActiveTab:Lcom/android/browser/Tab;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_2
    iget-object v0, p0, Lcom/android/browser/MiuiPhoneUi;->mMiuiHome:Lcom/android/browser/MiuiHome;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/android/browser/MiuiPhoneUi;->mMiuiHome:Lcom/android/browser/MiuiHome;

    invoke-virtual {v0}, Lcom/android/browser/MiuiHome;->show()V

    .line 593
    iget-object v0, p0, Lcom/android/browser/MiuiPhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    check-cast v0, Lcom/android/browser/MiuiTitleBar;

    invoke-virtual {v0, v4}, Lcom/android/browser/MiuiTitleBar;->setMiuiHomeShowing(Z)V

    .line 594
    iget-object v0, p0, Lcom/android/browser/MiuiPhoneUi;->mMiuiHome:Lcom/android/browser/MiuiHome;

    check-cast p1, Lcom/android/browser/MiuiTab;

    .end local p1
    invoke-virtual {p1}, Lcom/android/browser/MiuiTab;->getMiuiHomeSelectedTabPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/MiuiHome;->select(I)V

    .line 597
    const-string v0, "PhoneUi"

    const-string v1, "show MIUI home"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showNavScreen()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 443
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mUiController:Lcom/android/browser/UiController;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/browser/UiController;->setBlockEvents(Z)V

    .line 444
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mNavScreen:Lcom/android/browser/MiuiNavScreen;

    if-nez v1, :cond_0

    .line 445
    new-instance v1, Lcom/android/browser/MiuiNavScreen;

    iget-object v2, p0, Lcom/android/browser/MiuiPhoneUi;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/browser/MiuiPhoneUi;->mUiController:Lcom/android/browser/UiController;

    invoke-direct {v1, v2, v3, p0}, Lcom/android/browser/MiuiNavScreen;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;Lcom/android/browser/MiuiPhoneUi;)V

    iput-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mNavScreen:Lcom/android/browser/MiuiNavScreen;

    .line 446
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/browser/MiuiPhoneUi;->mNavScreen:Lcom/android/browser/MiuiNavScreen;

    sget-object v3, Lcom/android/browser/MiuiPhoneUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    :goto_0
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->capture()V

    .line 454
    invoke-direct {p0}, Lcom/android/browser/MiuiPhoneUi;->showContentMask()V

    .line 456
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 457
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 459
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mNavScreen:Lcom/android/browser/MiuiNavScreen;

    invoke-virtual {v1}, Lcom/android/browser/MiuiNavScreen;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v4, v4, v1, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 460
    .local v0, ta:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 461
    new-instance v1, Lcom/android/browser/MiuiPhoneUi$1;

    invoke-direct {v1, p0}, Lcom/android/browser/MiuiPhoneUi$1;-><init>(Lcom/android/browser/MiuiPhoneUi;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 475
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mNavScreen:Lcom/android/browser/MiuiNavScreen;

    invoke-virtual {v1, v0}, Lcom/android/browser/MiuiNavScreen;->startAnimation(Landroid/view/animation/Animation;)V

    .line 476
    return-void

    .line 448
    .end local v0           #ta:Landroid/view/animation/TranslateAnimation;
    :cond_0
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mNavScreen:Lcom/android/browser/MiuiNavScreen;

    invoke-virtual {v1, v5}, Lcom/android/browser/MiuiNavScreen;->setVisibility(I)V

    .line 449
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mNavScreen:Lcom/android/browser/MiuiNavScreen;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Lcom/android/browser/MiuiNavScreen;->setAlpha(F)V

    .line 450
    iget-object v1, p0, Lcom/android/browser/MiuiPhoneUi;->mNavScreen:Lcom/android/browser/MiuiNavScreen;

    invoke-virtual {v1}, Lcom/android/browser/MiuiNavScreen;->refreshAdapter()V

    goto :goto_0
.end method

.method public showReader(Lcom/android/browser/Tab;Z)V
    .locals 3
    .parameter "tab"
    .parameter "show"

    .prologue
    .line 162
    iput-boolean p2, p0, Lcom/android/browser/MiuiPhoneUi;->mIsShowingReader:Z

    .line 163
    check-cast p1, Lcom/android/browser/MiuiTab;

    .end local p1
    invoke-virtual {p1}, Lcom/android/browser/MiuiTab;->getReaderWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 164
    .local v1, readerView:Landroid/webkit/WebView;
    if-eqz p2, :cond_1

    .line 166
    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 167
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/android/browser/MiuiPhoneUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 174
    .end local v0           #parent:Landroid/view/ViewGroup;
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v2, p0, Lcom/android/browser/MiuiPhoneUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public showWeb(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 438
    invoke-super {p0, p1}, Lcom/android/browser/BaseUi;->showWeb(Z)V

    .line 439
    iget-object v0, p0, Lcom/android/browser/MiuiPhoneUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/browser/MiuiPhoneUi;->hideNavScreen(IZ)V

    .line 440
    return-void
.end method

.method public updateMenuState(Lcom/android/browser/Tab;Landroid/view/Menu;)V
    .locals 8
    .parameter "tab"
    .parameter "menu"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 300
    const v5, 0x7f0d00c1

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 301
    .local v1, bm:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 302
    invoke-direct {p0}, Lcom/android/browser/MiuiPhoneUi;->showingNavScreen()Z

    move-result v5

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lcom/android/browser/MiuiPhoneUi;->mUseFullScreen:Z

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcom/android/browser/MiuiPhoneUi;->mUseQuickControls:Z

    if-nez v5, :cond_7

    move v5, v6

    :goto_0
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 304
    :cond_0
    const v5, 0x7f0d00c2

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 305
    .local v0, abm:Landroid/view/MenuItem;
    if-eqz v0, :cond_2

    .line 306
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/android/browser/Tab;->isSnapshot()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-direct {p0}, Lcom/android/browser/MiuiPhoneUi;->showingNavScreen()Z

    move-result v5

    if-nez v5, :cond_8

    move-object v5, p1

    check-cast v5, Lcom/android/browser/MiuiTab;

    invoke-virtual {v5}, Lcom/android/browser/MiuiTab;->isShowingMiuiHome()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {p1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/browser/MiuiPhoneUi;->mUseQuickControls:Z

    if-eqz v5, :cond_8

    :cond_1
    move v5, v6

    :goto_1
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 310
    :cond_2
    const v5, 0x7f0d00cd

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 311
    .local v3, info:Landroid/view/MenuItem;
    if-eqz v3, :cond_3

    .line 312
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 314
    :cond_3
    const v5, 0x7f0d00bf

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 315
    .local v4, newtab:Landroid/view/MenuItem;
    if-eqz v4, :cond_4

    .line 316
    iget-boolean v5, p0, Lcom/android/browser/MiuiPhoneUi;->mUseFullScreen:Z

    if-eqz v5, :cond_9

    move v5, v6

    :goto_2
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 318
    :cond_4
    const v5, 0x7f0d00c0

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 319
    .local v2, incognito:Landroid/view/MenuItem;
    if-eqz v2, :cond_5

    .line 320
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 322
    :cond_5
    invoke-direct {p0}, Lcom/android/browser/MiuiPhoneUi;->showingNavScreen()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 323
    const v5, 0x7f0d00c3

    invoke-interface {p2, v5, v7}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 324
    const v5, 0x7f0d00c8

    invoke-interface {p2, v5, v7}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 325
    const v5, 0x7f0d00bc

    invoke-interface {p2, v5, v7}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 326
    const v5, 0x7f0d00ca

    invoke-interface {p2, v5, v7}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 328
    :cond_6
    return-void

    .end local v0           #abm:Landroid/view/MenuItem;
    .end local v2           #incognito:Landroid/view/MenuItem;
    .end local v3           #info:Landroid/view/MenuItem;
    .end local v4           #newtab:Landroid/view/MenuItem;
    :cond_7
    move v5, v7

    .line 302
    goto :goto_0

    .restart local v0       #abm:Landroid/view/MenuItem;
    :cond_8
    move v5, v7

    .line 306
    goto :goto_1

    .restart local v3       #info:Landroid/view/MenuItem;
    .restart local v4       #newtab:Landroid/view/MenuItem;
    :cond_9
    move v5, v7

    .line 316
    goto :goto_2
.end method
