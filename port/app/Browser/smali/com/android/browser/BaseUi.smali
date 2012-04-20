.class public abstract Lcom/android/browser/BaseUi;
.super Ljava/lang/Object;
.source "BaseUi.java"

# interfaces
.implements Lcom/android/browser/UI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BaseUi$FullscreenHolder;
    }
.end annotation


# static fields
.field protected static final COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

.field protected static final COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field protected mActiveTab:Lcom/android/browser/Tab;

.field mActivity:Landroid/app/Activity;

.field private mActivityPaused:Z

.field protected mContentView:Landroid/widget/FrameLayout;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field protected mCustomViewContainer:Landroid/widget/FrameLayout;

.field private mDefaultVideoPoster:Landroid/graphics/Bitmap;

.field private mErrorConsoleContainer:Landroid/widget/LinearLayout;

.field protected mFullscreenContainer:Landroid/widget/FrameLayout;

.field protected mGenericFavicon:Landroid/graphics/drawable/Drawable;

.field protected mHandler:Landroid/os/Handler;

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLockIconMixed:Landroid/graphics/drawable/Drawable;

.field private mLockIconSecure:Landroid/graphics/drawable/Drawable;

.field private mNavigationBar:Lcom/android/browser/NavigationBarBase;

.field private mOriginalOrientation:I

.field private mStopToast:Landroid/widget/Toast;

.field mTabControl:Lcom/android/browser/TabControl;

.field protected mTitleBar:Lcom/android/browser/TitleBar;

.field mUiController:Lcom/android/browser/UiController;

.field private mUrlBarAutoShowManager:Lcom/android/browser/UrlBarAutoShowManager;

.field protected mUseQuickControls:Z

.field private mVideoProgressView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 69
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/android/browser/BaseUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    .line 74
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lcom/android/browser/BaseUi;->COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/UiController;)V
    .locals 6
    .parameter "browser"
    .parameter "controller"

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    .line 811
    new-instance v2, Lcom/android/browser/BaseUi$2;

    invoke-direct {v2, p0}, Lcom/android/browser/BaseUi$2;-><init>(Lcom/android/browser/BaseUi;)V

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mHandler:Landroid/os/Handler;

    .line 118
    iput-object p1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    .line 119
    iput-object p2, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    .line 120
    invoke-interface {p2}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mTabControl:Lcom/android/browser/TabControl;

    .line 121
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 122
    .local v1, res:Landroid/content/res/Resources;
    const-string v2, "input_method"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 124
    const v2, 0x7f020071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mLockIconSecure:Landroid/graphics/drawable/Drawable;

    .line 125
    const v2, 0x7f020072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mLockIconMixed:Landroid/graphics/drawable/Drawable;

    .line 126
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 128
    .local v0, frameLayout:Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040017

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 130
    const v2, 0x7f0d0045

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    .line 132
    const v2, 0x7f0d0041

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    .line 134
    const v2, 0x7f0d0043

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    .line 136
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->useFullscreen()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/browser/BaseUi;->setFullscreen(Z)V

    .line 137
    const v2, 0x7f020014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mGenericFavicon:Landroid/graphics/drawable/Drawable;

    .line 139
    new-instance v2, Lcom/android/browser/TitleBar;

    iget-object v3, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    iget-object v5, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-direct {v2, v3, v4, p0, v5}, Lcom/android/browser/TitleBar;-><init>(Landroid/content/Context;Lcom/android/browser/UiController;Lcom/android/browser/BaseUi;Landroid/widget/FrameLayout;)V

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    .line 141
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/android/browser/TitleBar;->setProgress(I)V

    .line 142
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v2}, Lcom/android/browser/TitleBar;->getNavigationBar()Lcom/android/browser/NavigationBarBase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    .line 143
    new-instance v2, Lcom/android/browser/UrlBarAutoShowManager;

    invoke-direct {v2, p0}, Lcom/android/browser/UrlBarAutoShowManager;-><init>(Lcom/android/browser/BaseUi;)V

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mUrlBarAutoShowManager:Lcom/android/browser/UrlBarAutoShowManager;

    .line 144
    return-void
.end method

.method private cancelStopToast()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mStopToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mStopToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BaseUi;->mStopToast:Landroid/widget/Toast;

    .line 151
    :cond_0
    return-void
.end method

.method private updateLockIconImage(Lcom/android/browser/Tab$SecurityState;)V
    .locals 2
    .parameter "securityState"

    .prologue
    .line 593
    const/4 v0, 0x0

    .line 594
    .local v0, d:Landroid/graphics/drawable/Drawable;
    sget-object v1, Lcom/android/browser/Tab$SecurityState;->SECURITY_STATE_SECURE:Lcom/android/browser/Tab$SecurityState;

    if-ne p1, v1, :cond_1

    .line 595
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mLockIconSecure:Landroid/graphics/drawable/Drawable;

    .line 602
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v1, v0}, Lcom/android/browser/NavigationBarBase;->setLock(Landroid/graphics/drawable/Drawable;)V

    .line 603
    return-void

    .line 596
    :cond_1
    sget-object v1, Lcom/android/browser/Tab$SecurityState;->SECURITY_STATE_MIXED:Lcom/android/browser/Tab$SecurityState;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/android/browser/Tab$SecurityState;->SECURITY_STATE_BAD_CERTIFICATE:Lcom/android/browser/Tab$SecurityState;

    if-ne p1, v1, :cond_0

    .line 600
    :cond_2
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mLockIconMixed:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public addTab(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 237
    return-void
.end method

.method public attachSubWindow(Landroid/view/View;)V
    .locals 2
    .parameter "container"

    .prologue
    .line 421
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    sget-object v1, Lcom/android/browser/BaseUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    return-void
.end method

.method public attachTab(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 297
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->attachTabToContentView(Lcom/android/browser/Tab;)V

    .line 298
    return-void
.end method

.method protected attachTabToContentView(Lcom/android/browser/Tab;)V
    .locals 6
    .parameter "tab"

    .prologue
    .line 301
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    if-nez v4, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getViewContainer()Landroid/view/View;

    move-result-object v0

    .line 305
    .local v0, container:Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 308
    .local v1, mainView:Landroid/webkit/WebView;
    const v4, 0x7f0d0087

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 310
    .local v3, wrapper:Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 311
    .local v2, parent:Landroid/view/ViewGroup;
    if-eq v2, v3, :cond_4

    .line 312
    if-eqz v2, :cond_2

    .line 313
    const-string v4, "BaseUi"

    const-string v5, "mMainView already has a parent in attachTabToContentView!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 317
    :cond_2
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 322
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #parent:Landroid/view/ViewGroup;
    check-cast v2, Landroid/view/ViewGroup;

    .line 323
    .restart local v2       #parent:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    if-eq v2, v4, :cond_5

    .line 324
    if-eqz v2, :cond_3

    .line 325
    const-string v4, "BaseUi"

    const-string v5, "mContainer already has a parent in attachTabToContentView!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 329
    :cond_3
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    sget-object v5, Lcom/android/browser/BaseUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v4, v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    :goto_2
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v4, p1}, Lcom/android/browser/UiController;->attachSubWindow(Lcom/android/browser/Tab;)V

    goto :goto_0

    .line 319
    :cond_4
    const-string v4, "BaseUi"

    const-string v5, "mMainView is already attached to wrapper in attachTabToContentView!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 331
    :cond_5
    const-string v4, "BaseUi"

    const-string v5, "mContainer is already attached to content in attachTabToContentView!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public bookmarkedStatusHasChanged(Lcom/android/browser/Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 214
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isBookmarkedSite()Z

    move-result v0

    .line 216
    .local v0, isBookmark:Z
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v1, v0}, Lcom/android/browser/NavigationBarBase;->setCurrentUrlIsBookmark(Z)V

    .line 218
    .end local v0           #isBookmark:Z
    :cond_0
    return-void
.end method

.method canShowTitleBar()Z
    .locals 1

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->isTitleBarShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->isInCustomActionMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createSubWindow(Lcom/android/browser/Tab;Landroid/webkit/WebView;)V
    .locals 8
    .parameter "tab"
    .parameter "subView"

    .prologue
    const/4 v7, -0x1

    .line 389
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040014

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 391
    .local v3, subViewContainer:Landroid/view/View;
    const v4, 0x7f0d003e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 393
    .local v2, inner:Landroid/view/ViewGroup;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    const v4, 0x7f0d003f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 397
    .local v0, cancel:Landroid/widget/ImageButton;
    move-object v1, p2

    .line 398
    .local v1, cancelSubView:Landroid/webkit/WebView;
    new-instance v4, Lcom/android/browser/BaseUi$1;

    invoke-direct {v4, p0, v1}, Lcom/android/browser/BaseUi$1;-><init>(Lcom/android/browser/BaseUi;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    invoke-virtual {p1, p2}, Lcom/android/browser/Tab;->setSubWebView(Landroid/webkit/WebView;)V

    .line 404
    invoke-virtual {p1, v3}, Lcom/android/browser/Tab;->setSubViewContainer(Landroid/view/View;)V

    .line 405
    return-void
.end method

.method public detachTab(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 293
    return-void
.end method

.method public editUrl(Z)V
    .locals 1
    .parameter "clearInput"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->isInCustomActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->endActionMode()V

    .line 439
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->showTitleBar()V

    .line 440
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/Tab;->isSnapshot()Z

    move-result v0

    if-nez v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v0, p1}, Lcom/android/browser/NavigationBarBase;->startEditingUrl(Z)V

    .line 443
    :cond_1
    return-void
.end method

.method getActiveTab()Lcom/android/browser/Tab;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    return-object v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020033

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BaseUi;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFaviconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "icon"

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x2

    .line 770
    const/4 v2, 0x3

    new-array v6, v2, [Landroid/graphics/drawable/Drawable;

    .line 771
    .local v6, array:[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/drawable/PaintDrawable;

    const/high16 v4, -0x100

    invoke-direct {v3, v4}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    aput-object v3, v6, v2

    .line 772
    new-instance v7, Landroid/graphics/drawable/PaintDrawable;

    const/4 v2, -0x1

    invoke-direct {v7, v2}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 773
    .local v7, p:Landroid/graphics/drawable/PaintDrawable;
    aput-object v7, v6, v1

    .line 774
    if-nez p1, :cond_0

    .line 775
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mGenericFavicon:Landroid/graphics/drawable/Drawable;

    aput-object v2, v6, v8

    .line 779
    :goto_0
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .local v0, d:Landroid/graphics/drawable/LayerDrawable;
    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    .line 780
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    move v1, v8

    move v2, v8

    move v3, v8

    move v4, v8

    move v5, v8

    .line 781
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 782
    return-object v0

    .line 777
    .end local v0           #d:Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v6, v8

    goto :goto_0
.end method

.method protected getMenu()Landroid/view/Menu;
    .locals 3

    .prologue
    .line 747
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 748
    .local v0, menu:Lcom/android/internal/view/menu/MenuBuilder;
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f100002

    invoke-virtual {v1, v2, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 749
    return-object v0
.end method

.method public getMiuiHome()Lcom/android/browser/MiuiHome;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 847
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitleBar()Lcom/android/browser/TitleBar;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 3

    .prologue
    .line 722
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mVideoProgressView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 723
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 724
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040040

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BaseUi;->mVideoProgressView:Landroid/view/View;

    .line 727
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mVideoProgressView:Landroid/view/View;

    return-object v1
.end method

.method protected getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 742
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 822
    return-void
.end method

.method public hideAutoLogin(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 568
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/BaseUi;->updateAutoLogin(Lcom/android/browser/Tab;Z)V

    .line 569
    return-void
.end method

.method public hideMiuiHome(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 853
    return-void
.end method

.method protected hideTitleBar()V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->hide()V

    .line 464
    :cond_0
    return-void
.end method

.method protected isActivityPaused()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/android/browser/BaseUi;->mActivityPaused:Z

    return v0
.end method

.method public isCustomViewShowing()Z
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEditingUrl()Z
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->isEditingUrl()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->inPageLoad()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTitleBarShowing()Z
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isWebShowing()Z
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

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
    .line 232
    const/4 v0, 0x1

    return v0
.end method

.method public onActionModeFinished(Z)V
    .locals 0
    .parameter "inLoad"

    .prologue
    .line 627
    return-void
.end method

.method public onBackKey()Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->hideCustomView()V

    .line 190
    const/4 v0, 0x1

    .line 192
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 178
    return-void
.end method

.method public onContextMenuClosed(Landroid/view/Menu;Z)V
    .locals 0
    .parameter "menu"
    .parameter "inLoad"

    .prologue
    .line 678
    return-void
.end method

.method public onContextMenuCreated(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 674
    return-void
.end method

.method public onExtendedMenuClosed(Z)V
    .locals 0
    .parameter "inLoad"

    .prologue
    .line 670
    return-void
.end method

.method public onExtendedMenuOpened()V
    .locals 0

    .prologue
    .line 657
    return-void
.end method

.method public onHideCustomView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 532
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 542
    :goto_0
    return-void

    .line 534
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/browser/BaseUi;->setFullscreen(Z)V

    .line 535
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 536
    .local v0, decor:Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mFullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 537
    iput-object v2, p0, Lcom/android/browser/BaseUi;->mFullscreenContainer:Landroid/widget/FrameLayout;

    .line 538
    iput-object v2, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    .line 539
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v1}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 541
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/android/browser/BaseUi;->mOriginalOrientation:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onMenuKey()Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 661
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Z)V
    .locals 0
    .parameter "inLoad"

    .prologue
    .line 666
    return-void
.end method

.method public onOptionsMenuOpened()V
    .locals 0

    .prologue
    .line 653
    return-void
.end method

.method public onPageStopped(Lcom/android/browser/Tab;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/android/browser/BaseUi;->cancelStopToast()V

    .line 223
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c0023

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BaseUi;->mStopToast:Landroid/widget/Toast;

    .line 226
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mStopToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 228
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->isCustomViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->onHideCustomView()V

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/BaseUi;->cancelStopToast()V

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BaseUi;->mActivityPaused:Z

    .line 161
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 644
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 164
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/BaseUi;->mActivityPaused:Z

    .line 167
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 168
    .local v0, ct:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0, v0}, Lcom/android/browser/BaseUi;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 171
    :cond_0
    return-void
.end method

.method public onSetWebView(Lcom/android/browser/Tab;Landroid/webkit/WebView;)V
    .locals 6
    .parameter "tab"
    .parameter "webView"

    .prologue
    .line 364
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getViewContainer()Landroid/view/View;

    move-result-object v0

    .line 365
    .local v0, container:Landroid/view/View;
    if-nez v0, :cond_0

    .line 368
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040038

    iget-object v4, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 370
    invoke-virtual {p1, v0}, Lcom/android/browser/Tab;->setViewContainer(Landroid/view/View;)V

    .line 372
    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    if-eq v2, p2, :cond_1

    .line 374
    const v2, 0x7f0d0087

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 376
    .local v1, wrapper:Landroid/widget/FrameLayout;
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 378
    .end local v1           #wrapper:Landroid/widget/FrameLayout;
    :cond_1
    return-void
.end method

.method public onTabDataChanged(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->setUrlTitle(Lcom/android/browser/Tab;)V

    .line 204
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->setFavicon(Lcom/android/browser/Tab;)V

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->updateLockIconToLatest(Lcom/android/browser/Tab;)V

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->updateNavigationState(Lcom/android/browser/Tab;)V

    .line 207
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/TitleBar;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 208
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v0, p1}, Lcom/android/browser/NavigationBarBase;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 209
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->onProgressChanged(Lcom/android/browser/Tab;)V

    .line 210
    return-void
.end method

.method protected refreshWebView()V
    .locals 1

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 430
    .local v0, web:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    .line 433
    :cond_0
    return-void
.end method

.method public removeSubWindow(Landroid/view/View;)V
    .locals 1
    .parameter "subviewContainer"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 413
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->endActionMode()V

    .line 414
    return-void
.end method

.method public removeTab(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    if-ne v0, p1, :cond_0

    .line 285
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    .line 288
    :cond_0
    return-void
.end method

.method protected removeTabFromContentView(Lcom/android/browser/Tab;)V
    .locals 5
    .parameter "tab"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->hideTitleBar()V

    .line 341
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 342
    .local v2, mainView:Landroid/webkit/WebView;
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getViewContainer()Landroid/view/View;

    move-result-object v0

    .line 343
    .local v0, container:Landroid/view/View;
    if-nez v2, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 350
    const v4, 0x7f0d0087

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 352
    .local v3, wrapper:Landroid/widget/FrameLayout;
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 353
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 354
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v4}, Lcom/android/browser/UiController;->endActionMode()V

    .line 355
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v4, p1}, Lcom/android/browser/UiController;->removeSubWindow(Lcom/android/browser/Tab;)V

    .line 356
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/android/browser/Tab;->getErrorConsole(Z)Lcom/android/browser/ErrorConsoleView;

    move-result-object v1

    .line 357
    .local v1, errorConsole:Lcom/android/browser/ErrorConsoleView;
    if-eqz v1, :cond_0

    .line 358
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public revertVoiceTitleBar(Lcom/android/browser/Tab;)V
    .locals 4
    .parameter "tab"

    .prologue
    .line 493
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/browser/NavigationBarBase;->setInVoiceMode(ZLjava/util/List;)V

    .line 494
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v1, v0}, Lcom/android/browser/NavigationBarBase;->setDisplayTitle(Ljava/lang/String;)V

    .line 496
    return-void
.end method

.method public setActiveTab(Lcom/android/browser/Tab;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 242
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {p0, v1}, Lcom/android/browser/BaseUi;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 244
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 245
    .local v0, web:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 246
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 249
    .end local v0           #web:Landroid/webkit/WebView;
    :cond_0
    iput-object p1, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    .line 250
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 251
    .restart local v0       #web:Landroid/webkit/WebView;
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->updateUrlBarAutoShowManagerTarget()V

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->attachTabToContentView(Lcom/android/browser/Tab;)V

    .line 253
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->shouldShowErrorConsole()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/browser/BaseUi;->setShouldShowErrorConsole(Lcom/android/browser/Tab;Z)V

    .line 254
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 255
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->onProgressChanged(Lcom/android/browser/Tab;)V

    .line 256
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/browser/NavigationBarBase;->setIncognitoMode(Z)V

    .line 257
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/browser/BaseUi;->updateAutoLogin(Lcom/android/browser/Tab;Z)V

    .line 258
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v2}, Lcom/android/browser/TitleBar;->getEmbeddedHeight()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/browser/BaseUi;->mUseQuickControls:Z

    if-nez v1, :cond_1

    .line 261
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->showTitleBarForDuration()V

    .line 263
    :cond_1
    return-void
.end method

.method protected setFavicon(Lcom/android/browser/Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 619
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 620
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 621
    .local v0, icon:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v1, v0}, Lcom/android/browser/NavigationBarBase;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 623
    .end local v0           #icon:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public setFullscreen(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v4, 0x0

    .line 753
    iget-object v3, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 754
    .local v1, win:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 755
    .local v2, winParams:Landroid/view/WindowManager$LayoutParams;
    const/16 v0, 0x400

    .line 756
    .local v0, bits:I
    if-eqz p1, :cond_0

    .line 757
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 766
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 767
    return-void

    .line 759
    :cond_0
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, -0x401

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 760
    iget-object v3, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 761
    iget-object v3, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 763
    :cond_1
    iget-object v3, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public setShouldShowErrorConsole(Lcom/android/browser/Tab;Z)V
    .locals 5
    .parameter "tab"
    .parameter "flag"

    .prologue
    .line 684
    if-nez p1, :cond_0

    .line 705
    :goto_0
    return-void

    .line 685
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/browser/Tab;->getErrorConsole(Z)Lcom/android/browser/ErrorConsoleView;

    move-result-object v0

    .line 686
    .local v0, errorConsole:Lcom/android/browser/ErrorConsoleView;
    if-eqz p2, :cond_3

    .line 689
    invoke-virtual {v0}, Lcom/android/browser/ErrorConsoleView;->numberOfErrors()I

    move-result v1

    if-lez v1, :cond_2

    .line 690
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    .line 694
    :goto_1
    invoke-virtual {v0}, Lcom/android/browser/ErrorConsoleView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 695
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 698
    :cond_1
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 692
    :cond_2
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    goto :goto_1

    .line 703
    :cond_3
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected setTitleGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 480
    .local v0, web:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setTitleBarGravity(I)V

    .line 483
    :cond_0
    return-void
.end method

.method protected setUrlTitle(Lcom/android/browser/Tab;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 606
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 607
    .local v1, url:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, title:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 609
    move-object v0, v1

    .line 611
    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isInVoiceSearchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 615
    :cond_1
    :goto_0
    return-void

    .line 612
    :cond_2
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 613
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v2, v1}, Lcom/android/browser/NavigationBarBase;->setDisplayTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showAutoLogin(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 563
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/BaseUi;->updateAutoLogin(Lcom/android/browser/Tab;Z)V

    .line 564
    return-void
.end method

.method public showComboView(Lcom/android/browser/UI$ComboViews;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 500
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/browser/ComboViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 501
    const-string v1, "initial_view"

    invoke-virtual {p1}, Lcom/android/browser/UI$ComboViews;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    const-string v1, "combo_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 503
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 504
    if-eqz v1, :cond_0

    .line 505
    const-string v2, "url"

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    :cond_0
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 508
    return-void
.end method

.method public showCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3
    .parameter "view"
    .parameter "requestedOrientation"
    .parameter "callback"

    .prologue
    .line 514
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 515
    invoke-interface {p3}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 528
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    iput v1, p0, Lcom/android/browser/BaseUi;->mOriginalOrientation:I

    .line 520
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 521
    .local v0, decor:Landroid/widget/FrameLayout;
    new-instance v1, Lcom/android/browser/BaseUi$FullscreenHolder;

    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/browser/BaseUi$FullscreenHolder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/browser/BaseUi;->mFullscreenContainer:Landroid/widget/FrameLayout;

    .line 522
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mFullscreenContainer:Landroid/widget/FrameLayout;

    sget-object v2, Lcom/android/browser/BaseUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mFullscreenContainer:Landroid/widget/FrameLayout;

    sget-object v2, Lcom/android/browser/BaseUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 524
    iput-object p1, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    .line 525
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/browser/BaseUi;->setFullscreen(Z)V

    .line 526
    iput-object p3, p0, Lcom/android/browser/BaseUi;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 527
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public showMaxTabsWarning()V
    .locals 4

    .prologue
    .line 732
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c0146

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 735
    .local v0, warning:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 736
    return-void
.end method

.method public showMiuiHome(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 850
    return-void
.end method

.method public showReader(Lcom/android/browser/Tab;Z)V
    .locals 0
    .parameter "tab"
    .parameter "show"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 844
    return-void
.end method

.method protected showTitleBar()V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 455
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->canShowTitleBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->show()V

    .line 458
    :cond_0
    return-void
.end method

.method protected final showTitleBarForDuration()V
    .locals 2

    .prologue
    .line 802
    const-wide/16 v0, 0x5dc

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BaseUi;->showTitleBarForDuration(J)V

    .line 803
    return-void
.end method

.method protected final showTitleBarForDuration(J)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 806
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->showTitleBar()V

    .line 807
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 808
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 809
    return-void
.end method

.method public showVoiceTitleBar(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .parameter "title"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 487
    .local p2, results:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/android/browser/NavigationBarBase;->setInVoiceMode(ZLjava/util/List;)V

    .line 488
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v0, p1}, Lcom/android/browser/NavigationBarBase;->setDisplayTitle(Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method public showWeb(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->hideCustomView()V

    .line 827
    return-void
.end method

.method public suggestHideTitleBar()V
    .locals 1

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->isEditingUrl()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->wantsToBeVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v0}, Lcom/android/browser/NavigationBarBase;->isMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 797
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->hideTitleBar()V

    .line 799
    :cond_0
    return-void
.end method

.method protected updateAutoLogin(Lcom/android/browser/Tab;Z)V
    .locals 1
    .parameter "tab"
    .parameter "animate"

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/TitleBar;->updateAutoLogin(Lcom/android/browser/Tab;Z)V

    .line 578
    return-void
.end method

.method protected updateLockIconToLatest(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 584
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getSecurityState()Lcom/android/browser/Tab$SecurityState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BaseUi;->updateLockIconImage(Lcom/android/browser/Tab$SecurityState;)V

    .line 587
    :cond_0
    return-void
.end method

.method public updateMenuState(Lcom/android/browser/Tab;Landroid/view/Menu;)V
    .locals 0
    .parameter "tab"
    .parameter "menu"

    .prologue
    .line 649
    return-void
.end method

.method protected updateNavigationState(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 574
    return-void
.end method

.method public updateTabs(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/Tab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, tabs:Ljava/util/List;,"Ljava/util/List<Lcom/android/browser/Tab;>;"
    return-void
.end method

.method protected updateUrlBarAutoShowManagerTarget()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 266
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {v2}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 267
    .local v0, web:Landroid/webkit/WebView;
    :goto_0
    iget-boolean v2, p0, Lcom/android/browser/BaseUi;->mUseQuickControls:Z

    if-nez v2, :cond_1

    instance-of v2, v0, Lcom/android/browser/BrowserWebView;

    if-eqz v2, :cond_1

    .line 268
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mUrlBarAutoShowManager:Lcom/android/browser/UrlBarAutoShowManager;

    check-cast v0, Lcom/android/browser/BrowserWebView;

    .end local v0           #web:Landroid/webkit/WebView;
    invoke-virtual {v1, v0}, Lcom/android/browser/UrlBarAutoShowManager;->setTarget(Lcom/android/browser/BrowserWebView;)V

    .line 272
    :goto_1
    return-void

    :cond_0
    move-object v0, v1

    .line 266
    goto :goto_0

    .line 270
    .restart local v0       #web:Landroid/webkit/WebView;
    :cond_1
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mUrlBarAutoShowManager:Lcom/android/browser/UrlBarAutoShowManager;

    invoke-virtual {v2, v1}, Lcom/android/browser/UrlBarAutoShowManager;->setTarget(Lcom/android/browser/BrowserWebView;)V

    goto :goto_1
.end method
