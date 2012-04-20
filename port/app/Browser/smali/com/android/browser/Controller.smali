.class public Lcom/android/browser/Controller;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Lcom/android/browser/UiController;
.implements Lcom/android/browser/WebViewController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/Controller$SelectText;,
        Lcom/android/browser/Controller$Download;,
        Lcom/android/browser/Controller$Copy;,
        Lcom/android/browser/Controller$PruneThumbnails;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final WINDOW_SHORTCUT_ID_ARRAY:[I
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private static sThumbnailBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field protected mActivity:Landroid/app/Activity;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field protected mActivityPaused:Z
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private mAutoFillSetupMessage:Landroid/os/Message;

.field private mBlockEvents:Z

.field private mBookmarksObserver:Landroid/database/ContentObserver;

.field private mCachedMenu:Landroid/view/Menu;

.field private mConfigChanged:Z

.field private mCrashRecoveryHandler:Lcom/android/browser/CrashRecoveryHandler;

.field private mCurrentMenuState:I

.field private mExtendedMenuOpen:Z

.field private mFactory:Lcom/android/browser/WebViewFactory;

.field protected mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private mIntentHandler:Lcom/android/browser/IntentHandler;

.field private mLoadStopped:Z

.field protected mMenuIsDown:Z
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private mMenuState:I

.field private mNetworkHandler:Lcom/android/browser/NetworkStateHandler;

.field private mOldMenuState:I

.field private mOptionsMenuOpen:Z

.field private mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

.field protected mSettings:Lcom/android/browser/BrowserSettings;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private mShouldShowErrorConsole:Z

.field private mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

.field protected mTabControl:Lcom/android/browser/TabControl;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field protected mUi:Lcom/android/browser/UI;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private mUploadHandler:Lcom/android/browser/UploadHandler;

.field private mUrlHandler:Lcom/android/browser/UrlHandler;

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const-class v0, Lcom/android/browser/Controller;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/browser/Controller;->$assertionsDisabled:Z

    .line 145
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/browser/Controller;->WINDOW_SHORTCUT_ID_ARRAY:[I

    return-void

    .line 108
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 145
    nop

    :array_0
    .array-data 0x4
        0xdat 0x0t 0xdt 0x7ft
        0xdbt 0x0t 0xdt 0x7ft
        0xdct 0x0t 0xdt 0x7ft
        0xddt 0x0t 0xdt 0x7ft
        0xdet 0x0t 0xdt 0x7ft
        0xdft 0x0t 0xdt 0x7ft
        0xe0t 0x0t 0xdt 0x7ft
        0xe1t 0x0t 0xdt 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 4
    .parameter "browser"
    .parameter "preloadCrashState"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/Controller;->mCurrentMenuState:I

    .line 190
    const v0, 0x7f0d00bb

    iput v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    .line 191
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/Controller;->mOldMenuState:I

    .line 222
    iput-boolean v3, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    .line 242
    iput-object p1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    .line 243
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    .line 244
    invoke-virtual {p0}, Lcom/android/browser/Controller;->createTabControl()Lcom/android/browser/TabControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    .line 245
    iget-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0, p0}, Lcom/android/browser/BrowserSettings;->setController(Lcom/android/browser/Controller;)V

    .line 246
    invoke-static {p0}, Lcom/android/browser/CrashRecoveryHandler;->initialize(Lcom/android/browser/Controller;)Lcom/android/browser/CrashRecoveryHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/Controller;->mCrashRecoveryHandler:Lcom/android/browser/CrashRecoveryHandler;

    .line 247
    if-eqz p2, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/browser/Controller;->mCrashRecoveryHandler:Lcom/android/browser/CrashRecoveryHandler;

    invoke-virtual {v0}, Lcom/android/browser/CrashRecoveryHandler;->preloadCrashState()V

    .line 250
    :cond_0
    new-instance v0, Lcom/android/browser/MiuiBrowserWebViewFactory;

    invoke-direct {v0, p1}, Lcom/android/browser/MiuiBrowserWebViewFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mFactory:Lcom/android/browser/WebViewFactory;

    .line 252
    new-instance v0, Lcom/android/browser/UrlHandler;

    invoke-direct {v0, p0}, Lcom/android/browser/UrlHandler;-><init>(Lcom/android/browser/Controller;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mUrlHandler:Lcom/android/browser/UrlHandler;

    .line 253
    new-instance v0, Lcom/android/browser/IntentHandler;

    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/browser/IntentHandler;-><init>(Landroid/app/Activity;Lcom/android/browser/Controller;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mIntentHandler:Lcom/android/browser/IntentHandler;

    .line 254
    new-instance v0, Lcom/android/browser/PageDialogsHandler;

    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/browser/PageDialogsHandler;-><init>(Landroid/content/Context;Lcom/android/browser/Controller;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

    .line 256
    invoke-virtual {p0}, Lcom/android/browser/Controller;->startHandler()V

    .line 257
    new-instance v0, Lcom/android/browser/Controller$1;

    iget-object v1, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/browser/Controller$1;-><init>(Lcom/android/browser/Controller;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mBookmarksObserver:Landroid/database/ContentObserver;

    .line 267
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/browser/Controller;->mBookmarksObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 270
    new-instance v0, Lcom/android/browser/NetworkStateHandler;

    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/browser/NetworkStateHandler;-><init>(Landroid/app/Activity;Lcom/android/browser/Controller;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mNetworkHandler:Lcom/android/browser/NetworkStateHandler;

    .line 272
    new-instance v0, Lcom/android/browser/SystemAllowGeolocationOrigins;

    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/browser/SystemAllowGeolocationOrigins;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

    .line 274
    iget-object v0, p0, Lcom/android/browser/Controller;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

    invoke-virtual {v0}, Lcom/android/browser/SystemAllowGeolocationOrigins;->start()V

    .line 276
    invoke-direct {p0}, Lcom/android/browser/Controller;->openIconDatabase()V

    .line 277
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/Controller;Landroid/os/Bundle;Landroid/content/Intent;JZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 108
    invoke-direct/range {p0 .. p6}, Lcom/android/browser/Controller;->onPreloginFinished(Landroid/os/Bundle;Landroid/content/Intent;JZZ)V

    return-void
.end method

.method private createNewTab(ZZZ)Lcom/android/browser/Tab;
    .locals 2
    .parameter "incognito"
    .parameter "setActive"
    .parameter "useCurrent"

    .prologue
    .line 2360
    const/4 v0, 0x0

    .line 2361
    .local v0, tab:Lcom/android/browser/Tab;
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2362
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1, p1}, Lcom/android/browser/TabControl;->createNewTab(Z)Lcom/android/browser/Tab;

    move-result-object v0

    .line 2363
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->addTab(Lcom/android/browser/Tab;)V

    .line 2364
    if-eqz p2, :cond_0

    .line 2365
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 2375
    :cond_0
    :goto_0
    return-object v0

    .line 2368
    :cond_1
    if-eqz p3, :cond_2

    .line 2369
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2370
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/Controller;->reuseTab(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V

    goto :goto_0

    .line 2372
    :cond_2
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1}, Lcom/android/browser/UI;->showMaxTabsWarning()V

    goto :goto_0
.end method

.method static createScreenshot(Landroid/webkit/WebView;II)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "view"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v9, 0x0

    .line 1982
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    move-object v5, v9

    .line 2019
    .end local p0
    :goto_0
    return-object v5

    .line 1989
    .restart local p0
    :cond_1
    const/4 v3, 0x2

    .line 1990
    .local v3, filter_scale:I
    mul-int/lit8 v7, p1, 0x2

    .line 1991
    .local v7, scaledWidth:I
    mul-int/lit8 v6, p2, 0x2

    .line 1992
    .local v6, scaledHeight:I
    sget-object v8, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_2

    sget-object v8, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-ne v8, v7, :cond_2

    sget-object v8, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-eq v8, v6, :cond_4

    .line 1994
    :cond_2
    sget-object v8, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_3

    .line 1995
    sget-object v8, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 1996
    sput-object v9, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 1998
    :cond_3
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    sput-object v8, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 2001
    :cond_4
    new-instance v0, Landroid/graphics/Canvas;

    sget-object v8, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2002
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v1

    .line 2003
    .local v1, contentWidth:I
    int-to-float v8, v7

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScale()F

    move-result v10

    int-to-float v11, v1

    mul-float/2addr v10, v11

    div-float v4, v8, v10

    .line 2004
    .local v4, overviewScale:F
    instance-of v8, p0, Lcom/android/browser/BrowserWebView;

    if-eqz v8, :cond_5

    move-object v8, p0

    .line 2005
    check-cast v8, Lcom/android/browser/BrowserWebView;

    invoke-virtual {v8}, Lcom/android/browser/BrowserWebView;->getTitleHeight()I

    move-result v8

    neg-int v2, v8

    .line 2006
    .local v2, dy:I
    const/4 v8, 0x0

    int-to-float v10, v2

    mul-float/2addr v10, v4

    invoke-virtual {v0, v8, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2009
    .end local v2           #dy:I
    :cond_5
    invoke-virtual {v0, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 2011
    instance-of v8, p0, Lcom/android/browser/BrowserWebView;

    if-eqz v8, :cond_6

    .line 2012
    check-cast p0, Lcom/android/browser/BrowserWebView;

    .end local p0
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserWebView;->drawContent(Landroid/graphics/Canvas;)V

    .line 2016
    :goto_1
    sget-object v8, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    const/4 v10, 0x1

    invoke-static {v8, p1, p2, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2018
    .local v5, ret:Landroid/graphics/Bitmap;
    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 2014
    .end local v5           #ret:Landroid/graphics/Bitmap;
    .restart local p0
    :cond_6
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method static getDesiredThumbnailHeight(Landroid/content/Context;)I
    .locals 2
    .parameter

    .prologue
    .line 1977
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method static getDesiredThumbnailWidth(Landroid/content/Context;)I
    .locals 2
    .parameter

    .prologue
    .line 1966
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method private getNextTab()Lcom/android/browser/Tab;
    .locals 3

    .prologue
    .line 2598
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method private getPrevTab()Lcom/android/browser/Tab;
    .locals 3

    .prologue
    .line 2607
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method private maybeUpdateFavicon(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "tab"
    .parameter "originalUrl"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 1082
    if-nez p4, :cond_1

    .line 1089
    :cond_0
    :goto_0
    return-void

    .line 1085
    :cond_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lcom/android/browser/Bookmarks;->updateFavicon(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private onPreloginFinished(Landroid/os/Bundle;Landroid/content/Intent;JZZ)V
    .locals 16
    .parameter "icicle"
    .parameter "intent"
    .parameter "currentTabId"
    .parameter "restoreIncognitoTabs"
    .parameter "fromCrash"

    .prologue
    .line 324
    const-wide/16 v1, -0x1

    cmp-long v1, p3, v1

    if-nez v1, :cond_6

    .line 325
    new-instance v1, Lcom/android/browser/Controller$PruneThumbnails;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/browser/Controller$PruneThumbnails;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v1}, Lcom/android/browser/BackgroundHandler;->execute(Ljava/lang/Runnable;)V

    .line 326
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 331
    .local v7, extra:Landroid/os/Bundle;
    invoke-static/range {p2 .. p2}, Lcom/android/browser/IntentHandler;->getUrlDataFromIntent(Landroid/content/Intent;)Lcom/android/browser/IntentHandler$UrlData;

    move-result-object v14

    .line 332
    .local v14, urlData:Lcom/android/browser/IntentHandler$UrlData;
    const/4 v12, 0x0

    .line 333
    .local v12, t:Lcom/android/browser/Tab;
    invoke-virtual {v14}, Lcom/android/browser/IntentHandler$UrlData;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/Controller;->openTabToHomePage()Lcom/android/browser/Tab;

    move-result-object v12

    .line 338
    :goto_0
    if-eqz v12, :cond_0

    .line 339
    const-string v1, "com.android.browser.application_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/android/browser/Tab;->setAppId(Ljava/lang/String;)V

    .line 341
    :cond_0
    invoke-virtual {v12}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v15

    .line 342
    .local v15, webView:Landroid/webkit/WebView;
    if-eqz v7, :cond_1

    .line 343
    const-string v1, "browser.initialZoomLevel"

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 344
    .local v11, scale:I
    if-lez v11, :cond_1

    const/16 v1, 0x3e8

    if-gt v11, v1, :cond_1

    .line 345
    invoke-virtual {v15, v11}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 348
    .end local v11           #scale:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getTabs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/browser/UI;->updateTabs(Ljava/util/List;)V

    .line 372
    .end local v7           #extra:Landroid/os/Bundle;
    .end local v12           #t:Lcom/android/browser/Tab;
    .end local v14           #urlData:Lcom/android/browser/IntentHandler$UrlData;
    .end local v15           #webView:Landroid/webkit/WebView;
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/Controller;->getSettings()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getJsEngineFlags()Ljava/lang/String;

    move-result-object v9

    .line 373
    .local v9, jsFlags:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/Controller;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/webkit/WebView;->setJsFlags(Ljava/lang/String;)V

    .line 376
    :cond_3
    const-string v1, "show_bookmarks"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 377
    sget-object v1, Lcom/android/browser/UI$ComboViews;->Bookmarks:Lcom/android/browser/UI$ComboViews;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/browser/Controller;->bookmarksOrHistoryPicker(Lcom/android/browser/UI$ComboViews;)V

    .line 379
    :cond_4
    return-void

    .line 336
    .end local v9           #jsFlags:Ljava/lang/String;
    .restart local v7       #extra:Landroid/os/Bundle;
    .restart local v12       #t:Lcom/android/browser/Tab;
    .restart local v14       #urlData:Lcom/android/browser/IntentHandler$UrlData;
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/browser/Controller;->openTab(Lcom/android/browser/IntentHandler$UrlData;)Lcom/android/browser/Tab;

    move-result-object v12

    goto :goto_0

    .line 350
    .end local v7           #extra:Landroid/os/Bundle;
    .end local v12           #t:Lcom/android/browser/Tab;
    .end local v14           #urlData:Lcom/android/browser/IntentHandler$UrlData;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v2}, Lcom/android/browser/UI;->needsRestoreAllTabs()Z

    move-result v6

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/browser/TabControl;->restoreState(Landroid/os/Bundle;JZZ)V

    .line 352
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getTabs()Ljava/util/List;

    move-result-object v13

    .line 353
    .local v13, tabs:Ljava/util/List;,"Ljava/util/List<Lcom/android/browser/Tab;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 354
    .local v10, restoredTabs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/browser/Tab;

    .line 355
    .restart local v12       #t:Lcom/android/browser/Tab;
    invoke-virtual {v12}, Lcom/android/browser/Tab;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 357
    .end local v12           #t:Lcom/android/browser/Tab;
    :cond_7
    new-instance v1, Lcom/android/browser/Controller$PruneThumbnails;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v10}, Lcom/android/browser/Controller$PruneThumbnails;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v1}, Lcom/android/browser/BackgroundHandler;->execute(Ljava/lang/Runnable;)V

    .line 358
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_8

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/Controller;->openTabToHomePage()Lcom/android/browser/Tab;

    .line 361
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1, v13}, Lcom/android/browser/UI;->updateTabs(Ljava/util/List;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 367
    if-eqz p1, :cond_9

    if-eqz p6, :cond_2

    .line 368
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller;->mIntentHandler:Lcom/android/browser/IntentHandler;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/android/browser/IntentHandler;->onNewIntent(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method private openIconDatabase()V
    .locals 2

    .prologue
    .line 477
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    .line 478
    .local v0, instance:Landroid/webkit/WebIconDatabase;
    new-instance v1, Lcom/android/browser/Controller$3;

    invoke-direct {v1, p0, v0}, Lcom/android/browser/Controller$3;-><init>(Lcom/android/browser/Controller;Landroid/webkit/WebIconDatabase;)V

    invoke-static {v1}, Lcom/android/browser/BackgroundHandler;->execute(Ljava/lang/Runnable;)V

    .line 485
    return-void
.end method

.method private resumeWebViewTimers(Lcom/android/browser/Tab;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 723
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inPageLoad()Z

    move-result v0

    .line 724
    .local v0, inLoad:Z
    iget-boolean v2, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 725
    :cond_1
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 726
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 727
    .local v1, w:Landroid/webkit/WebView;
    invoke-static {}, Lcom/android/browser/WebViewTimersControl;->getInstance()Lcom/android/browser/WebViewTimersControl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/browser/WebViewTimersControl;->onBrowserActivityResume(Landroid/webkit/WebView;)V

    .line 729
    .end local v1           #w:Landroid/webkit/WebView;
    :cond_2
    return-void
.end method

.method static final sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "c"
    .parameter "title"
    .parameter "url"
    .parameter "favicon"
    .parameter "screenshot"

    .prologue
    .line 603
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 604
    .local v0, send:Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 607
    const-string v1, "share_favicon"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 608
    const-string v1, "share_screenshot"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 610
    const v1, 0x7f0c0068

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :goto_0
    return-void

    .line 612
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showPreloadedTab(Lcom/android/browser/IntentHandler$UrlData;)Lcom/android/browser/Tab;
    .locals 6
    .parameter "urlData"

    .prologue
    const/4 v2, 0x0

    .line 2277
    invoke-virtual {p1}, Lcom/android/browser/IntentHandler$UrlData;->isPreloaded()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2301
    :goto_0
    return-object v2

    .line 2280
    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/IntentHandler$UrlData;->getPreloadedTab()Lcom/android/browser/PreloadedTabControl;

    move-result-object v3

    .line 2281
    .local v3, tabControl:Lcom/android/browser/PreloadedTabControl;
    invoke-virtual {p1}, Lcom/android/browser/IntentHandler$UrlData;->getSearchBoxQueryToSubmit()Ljava/lang/String;

    move-result-object v1

    .line 2282
    .local v1, sbQuery:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2283
    iget-object v4, p1, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/browser/IntentHandler$UrlData;->mHeaders:Ljava/util/Map;

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/browser/PreloadedTabControl;->searchBoxSubmit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2285
    invoke-virtual {v3}, Lcom/android/browser/PreloadedTabControl;->destroy()V

    goto :goto_0

    .line 2290
    :cond_1
    iget-object v4, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2291
    iget-object v4, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/browser/TabControl;->getLeastUsedTab(Lcom/android/browser/Tab;)Lcom/android/browser/Tab;

    move-result-object v0

    .line 2292
    .local v0, leastUsed:Lcom/android/browser/Tab;
    if-eqz v0, :cond_2

    .line 2293
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->closeTab(Lcom/android/browser/Tab;)V

    .line 2296
    .end local v0           #leastUsed:Lcom/android/browser/Tab;
    :cond_2
    invoke-virtual {v3}, Lcom/android/browser/PreloadedTabControl;->getTab()Lcom/android/browser/Tab;

    move-result-object v2

    .line 2297
    .local v2, t:Lcom/android/browser/Tab;
    invoke-virtual {v2}, Lcom/android/browser/Tab;->refreshIdAfterPreload()V

    .line 2298
    iget-object v4, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4, v2}, Lcom/android/browser/TabControl;->addPreloadedTab(Lcom/android/browser/Tab;)V

    .line 2299
    invoke-virtual {p0, v2}, Lcom/android/browser/Controller;->addTab(Lcom/android/browser/Tab;)V

    .line 2300
    invoke-virtual {p0, v2}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    goto :goto_0
.end method

.method private updateInLoadMenuItems(Landroid/view/Menu;Lcom/android/browser/Tab;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1449
    if-nez p1, :cond_1

    .line 1460
    :cond_0
    :goto_0
    return-void

    .line 1452
    :cond_1
    const v0, 0x7f0d00bd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1453
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/browser/Tab;->inPageLoad()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0d00e5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1456
    :goto_1
    if-eqz v0, :cond_0

    .line 1457
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1458
    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 1453
    :cond_2
    const v0, 0x7f0d00e6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public activateVoiceSearchMode(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
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
    .line 1126
    .local p2, results:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1, p2}, Lcom/android/browser/UI;->showVoiceTitleBar(Ljava/lang/String;Ljava/util/List;)V

    .line 1127
    return-void
.end method

.method protected addTab(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 2201
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->addTab(Lcom/android/browser/Tab;)V

    .line 2202
    return-void
.end method

.method public addToBookmarks()V
    .locals 0

    .prologue
    .line 2825
    return-void
.end method

.method public attachSubWindow(Lcom/android/browser/Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 2270
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2271
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getSubViewContainer()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->attachSubWindow(Landroid/view/View;)V

    .line 2272
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 2274
    :cond_0
    return-void
.end method

.method public bookmarkedStatusHasChanged(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->bookmarkedStatusHasChanged(Lcom/android/browser/Tab;)V

    .line 1095
    return-void
.end method

.method public bookmarksOrHistoryPicker(Lcom/android/browser/UI$ComboViews;)V
    .locals 3
    .parameter

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1241
    :goto_0
    return-void

    .line 1233
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/Controller;->isInCustomActionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1234
    invoke-virtual {p0}, Lcom/android/browser/Controller;->endActionMode()V

    .line 1236
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1238
    const-string v2, "disable_new_window"

    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1240
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1, v1}, Lcom/android/browser/UI;->showComboView(Lcom/android/browser/UI$ComboViews;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1238
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public closeCurrentTab()V
    .locals 1

    .prologue
    .line 2411
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->closeCurrentTab(Z)V

    .line 2412
    return-void
.end method

.method protected closeCurrentTab(Z)V
    .locals 5
    .parameter "andQuit"

    .prologue
    .line 2415
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 2416
    iget-object v3, p0, Lcom/android/browser/Controller;->mCrashRecoveryHandler:Lcom/android/browser/CrashRecoveryHandler;

    invoke-virtual {v3}, Lcom/android/browser/CrashRecoveryHandler;->clearState()V

    .line 2417
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/browser/TabControl;->removeTab(Lcom/android/browser/Tab;)Z

    .line 2418
    iget-object v3, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 2437
    :cond_0
    :goto_0
    return-void

    .line 2421
    :cond_1
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2422
    .local v0, current:Lcom/android/browser/Tab;
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentPosition()I

    move-result v2

    .line 2423
    .local v2, pos:I
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getParent()Lcom/android/browser/Tab;

    move-result-object v1

    .line 2424
    .local v1, newTab:Lcom/android/browser/Tab;
    if-nez v1, :cond_2

    .line 2425
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v1

    .line 2426
    if-nez v1, :cond_2

    .line 2427
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v1

    .line 2430
    :cond_2
    if-eqz p1, :cond_3

    .line 2431
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3, v1}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    .line 2432
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->closeTab(Lcom/android/browser/Tab;)V

    goto :goto_0

    .line 2433
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/browser/Controller;->switchToTab(Lcom/android/browser/Tab;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2435
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->closeTab(Lcom/android/browser/Tab;)V

    goto :goto_0
.end method

.method protected closeEmptyTab()V
    .locals 2

    .prologue
    .line 2221
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2222
    .local v0, current:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v1

    if-nez v1, :cond_0

    .line 2224
    invoke-virtual {p0}, Lcom/android/browser/Controller;->closeCurrentTab()V

    .line 2226
    :cond_0
    return-void
.end method

.method public closeTab(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 2445
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2446
    invoke-virtual {p0}, Lcom/android/browser/Controller;->closeCurrentTab()V

    .line 2450
    :goto_0
    return-void

    .line 2448
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->removeTab(Lcom/android/browser/Tab;)V

    goto :goto_0
.end method

.method protected copy(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "text"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 619
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 621
    .local v0, cm:Landroid/content/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 622
    return-void
.end method

.method public createBookmarkCurrentPageIntent(Z)Landroid/content/Intent;
    .locals 5
    .parameter

    .prologue
    .line 1921
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 1922
    if-nez v1, :cond_0

    .line 1923
    const/4 v0, 0x0

    .line 1948
    :goto_0
    return-object v0

    .line 1925
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/browser/AddBookmarkPage;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1927
    const-string v2, "url"

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1928
    const-string v2, "title"

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1929
    invoke-virtual {v1}, Landroid/webkit/WebView;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v2

    .line 1930
    if-eqz v2, :cond_1

    .line 1931
    const-string v3, "touch_icon_url"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1932
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 1933
    if-eqz v2, :cond_1

    .line 1934
    const-string v3, "user_agent"

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1938
    :cond_1
    const-string v2, "thumbnail"

    iget-object v3, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/browser/Controller;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/android/browser/Controller;->getDesiredThumbnailHeight(Landroid/content/Context;)I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/android/browser/Controller;->createScreenshot(Landroid/webkit/WebView;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1941
    const-string v2, "favicon"

    invoke-virtual {v1}, Landroid/webkit/WebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1942
    if-eqz p1, :cond_2

    .line 1943
    const-string v1, "check_for_dupe"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1947
    :cond_2
    const-string v1, "gravity"

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public createNewSnapshotTab(JZ)Lcom/android/browser/SnapshotTab;
    .locals 2
    .parameter "snapshotId"
    .parameter "setActive"

    .prologue
    .line 2380
    const/4 v0, 0x0

    .line 2381
    .local v0, tab:Lcom/android/browser/SnapshotTab;
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2382
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1, p1, p2}, Lcom/android/browser/TabControl;->createSnapshotTab(J)Lcom/android/browser/SnapshotTab;

    move-result-object v0

    .line 2383
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->addTab(Lcom/android/browser/Tab;)V

    .line 2384
    if-eqz p3, :cond_0

    .line 2385
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 2390
    :cond_0
    :goto_0
    return-object v0

    .line 2388
    :cond_1
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1}, Lcom/android/browser/UI;->showMaxTabsWarning()V

    goto :goto_0
.end method

.method public createSubWindow(Lcom/android/browser/Tab;)V
    .locals 4
    .parameter "tab"

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/android/browser/Controller;->endActionMode()V

    .line 426
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 427
    .local v0, mainView:Landroid/webkit/WebView;
    iget-object v3, p0, Lcom/android/browser/Controller;->mFactory:Lcom/android/browser/WebViewFactory;

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v3, v2}, Lcom/android/browser/WebViewFactory;->createWebView(Z)Landroid/webkit/WebView;

    move-result-object v1

    .line 430
    .local v1, subView:Landroid/webkit/WebView;
    iget-object v2, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v2, p1, v1}, Lcom/android/browser/UI;->createSubWindow(Lcom/android/browser/Tab;Landroid/webkit/WebView;)V

    .line 431
    return-void

    .line 427
    .end local v1           #subView:Landroid/webkit/WebView;
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v2

    goto :goto_0
.end method

.method protected createTabControl()Lcom/android/browser/TabControl;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 237
    new-instance v0, Lcom/android/browser/TabControl;

    invoke-direct {v0, p0}, Lcom/android/browser/TabControl;-><init>(Lcom/android/browser/Controller;)V

    return-object v0
.end method

.method didUserStopLoading()Z
    .locals 1

    .prologue
    .line 807
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mLoadStopped:Z

    return v0
.end method

.method public dismissSubWindow(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 2252
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->removeSubWindow(Lcom/android/browser/Tab;)V

    .line 2254
    invoke-virtual {p1}, Lcom/android/browser/Tab;->dismissSubWindow()V

    .line 2255
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 2256
    .local v0, wv:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 2257
    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 2259
    :cond_0
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 2810
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mBlockEvents:Z

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2794
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mBlockEvents:Z

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2798
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mBlockEvents:Z

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 2802
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mBlockEvents:Z

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 2806
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mBlockEvents:Z

    return v0
.end method

.method doStart(Landroid/os/Bundle;Landroid/content/Intent;Z)V
    .locals 12
    .parameter "icicle"
    .parameter "intent"
    .parameter "fromCrash"

    .prologue
    .line 292
    if-eqz p1, :cond_1

    const-string v0, "lastActiveDate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    move-object v8, v0

    .line 294
    .local v8, lastActiveDate:Ljava/util/Calendar;
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 295
    .local v9, today:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 296
    .local v10, yesterday:Ljava/util/Calendar;
    const/4 v0, 0x5

    const/4 v1, -0x1

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 298
    if-eqz v8, :cond_2

    invoke-virtual {v8, v10}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v6, 0x1

    .line 303
    .local v6, restoreIncognitoTabs:Z
    :goto_1
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1, v6}, Lcom/android/browser/TabControl;->canRestoreState(Landroid/os/Bundle;Z)J

    move-result-wide v4

    .line 306
    .local v4, currentTabId:J
    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-nez v0, :cond_0

    .line 310
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 313
    :cond_0
    iget-object v11, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/android/browser/Controller$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/browser/Controller$2;-><init>(Lcom/android/browser/Controller;Landroid/os/Bundle;Landroid/content/Intent;JZZ)V

    invoke-static {v11, v0}, Lcom/android/browser/GoogleAccountLogin;->startLoginIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 320
    return-void

    .line 292
    .end local v4           #currentTabId:J
    .end local v6           #restoreIncognitoTabs:Z
    .end local v8           #lastActiveDate:Ljava/util/Calendar;
    .end local v9           #today:Ljava/util/Calendar;
    .end local v10           #yesterday:Ljava/util/Calendar;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 298
    .restart local v8       #lastActiveDate:Ljava/util/Calendar;
    .restart local v9       #today:Ljava/util/Calendar;
    .restart local v10       #yesterday:Ljava/util/Calendar;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public doUpdateVisitedHistory(Lcom/android/browser/Tab;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 970
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 971
    :cond_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    .line 973
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    const-string v3, "about:"

    const/4 v5, 0x6

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 977
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/browser/DataController;->getInstance(Landroid/content/Context;)Lcom/android/browser/DataController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/browser/DataController;->updateVisitedHistory(Ljava/lang/String;)V

    .line 978
    iget-object v0, p0, Lcom/android/browser/Controller;->mCrashRecoveryHandler:Lcom/android/browser/CrashRecoveryHandler;

    invoke-virtual {v0}, Lcom/android/browser/CrashRecoveryHandler;->backupState()V

    goto :goto_0
.end method

.method public editUrl()V
    .locals 2

    .prologue
    .line 1109
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mOptionsMenuOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 1110
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->editUrl(Z)V

    .line 1111
    return-void
.end method

.method public endActionMode()V
    .locals 1

    .prologue
    .line 1889
    iget-object v0, p0, Lcom/android/browser/Controller;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1890
    iget-object v0, p0, Lcom/android/browser/Controller;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1892
    :cond_0
    return-void
.end method

.method public getActionBarController()Lcom/android/browser/ActionBarController;
    .locals 1

    .prologue
    .line 2824
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getCurrentTab()Lcom/android/browser/Tab;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTopWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getMaxTabs()I
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMiuiHome()Lcom/android/browser/MiuiHome;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 2819
    const/4 v0, 0x0

    return-object v0
.end method

.method getSettings()Lcom/android/browser/BrowserSettings;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    return-object v0
.end method

.method public getTabControl()Lcom/android/browser/TabControl;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    return-object v0
.end method

.method public getTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/Tab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getTabs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUi()Lcom/android/browser/UI;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 983
    .local p1, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    new-instance v0, Lcom/android/browser/Controller$5;

    invoke-direct {v0, p0, p1}, Lcom/android/browser/Controller$5;-><init>(Lcom/android/browser/Controller;Landroid/webkit/ValueCallback;)V

    .line 994
    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;[Ljava/lang/String;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 995
    return-void
.end method

.method public getWebViewFactory()Lcom/android/browser/WebViewFactory;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/browser/Controller;->mFactory:Lcom/android/browser/WebViewFactory;

    return-object v0
.end method

.method goBackOnePageOrQuit()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2514
    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2515
    .local v0, current:Lcom/android/browser/Tab;
    if-nez v0, :cond_0

    .line 2523
    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 2550
    :goto_0
    return-void

    .line 2526
    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/Tab;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2527
    invoke-virtual {v0}, Lcom/android/browser/Tab;->goBack()V

    goto :goto_0

    .line 2531
    :cond_1
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getParent()Lcom/android/browser/Tab;

    move-result-object v1

    .line 2532
    .local v1, parent:Lcom/android/browser/Tab;
    if-eqz v1, :cond_2

    .line 2533
    invoke-virtual {p0, v1}, Lcom/android/browser/Controller;->switchToTab(Lcom/android/browser/Tab;)Z

    .line 2535
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->closeTab(Lcom/android/browser/Tab;)V

    goto :goto_0

    .line 2537
    :cond_2
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getAppId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/android/browser/Tab;->closeOnBack()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2538
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/browser/Controller;->closeCurrentTab(Z)V

    .line 2547
    :cond_4
    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    goto :goto_0
.end method

.method protected goLive()V
    .locals 3
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 1747
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1748
    .local v0, t:Lcom/android/browser/Tab;
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/Tab;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 1749
    return-void
.end method

.method public handleNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->isWebShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->showWeb(Z)V

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mIntentHandler:Lcom/android/browser/IntentHandler;

    invoke-virtual {v0, p1}, Lcom/android/browser/IntentHandler;->onNewIntent(Landroid/content/Intent;)V

    .line 640
    return-void
.end method

.method public hideAutoLogin(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 1070
    sget-boolean v0, Lcom/android/browser/Controller;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->hideAutoLogin(Lcom/android/browser/Tab;)V

    .line 1072
    return-void
.end method

.method public hideCustomView()V
    .locals 1

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->isCustomViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->onHideCustomView()V

    .line 1159
    iget v0, p0, Lcom/android/browser/Controller;->mOldMenuState:I

    iput v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    .line 1160
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/Controller;->mOldMenuState:I

    .line 1161
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1163
    :cond_0
    return-void
.end method

.method public hideMiuiHome(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 2821
    return-void
.end method

.method protected isActivityPaused()Z
    .locals 1

    .prologue
    .line 771
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    return v0
.end method

.method public isInCustomActionMode()Z
    .locals 1

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/android/browser/Controller;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInLoad()Z
    .locals 2

    .prologue
    .line 1905
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1906
    .local v0, tab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/browser/Tab;->inPageLoad()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMenuDown()Z
    .locals 1

    .prologue
    .line 2764
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mMenuIsDown:Z

    return v0
.end method

.method public loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;)V
    .locals 1
    .parameter "tab"
    .parameter "url"

    .prologue
    .line 2474
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/browser/Controller;->loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/util/Map;)V

    .line 2475
    return-void
.end method

.method protected loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .parameter "tab"
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/browser/Tab;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2478
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 2479
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 2480
    invoke-virtual {p1, p2, p3}, Lcom/android/browser/Tab;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 2481
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onProgressChanged(Lcom/android/browser/Tab;)V

    .line 2483
    :cond_0
    return-void
.end method

.method protected loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V
    .locals 2
    .parameter "t"
    .parameter "data"

    .prologue
    .line 2492
    if-eqz p2, :cond_0

    .line 2493
    iget-object v0, p2, Lcom/android/browser/IntentHandler$UrlData;->mVoiceIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 2494
    iget-object v0, p2, Lcom/android/browser/IntentHandler$UrlData;->mVoiceIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/android/browser/Tab;->activateVoiceSearchMode(Landroid/content/Intent;)V

    .line 2501
    :cond_0
    :goto_0
    return-void

    .line 2495
    :cond_1
    invoke-virtual {p2}, Lcom/android/browser/IntentHandler$UrlData;->isPreloaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2498
    iget-object v0, p2, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/browser/IntentHandler$UrlData;->mHeaders:Ljava/util/Map;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/browser/Controller;->loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected loadUrlFromContext(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 2454
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2455
    .local v0, tab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 2457
    .local v1, view:Landroid/webkit/WebView;
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 2458
    invoke-static {p1}, Lcom/android/browser/UrlUtils;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2459
    invoke-virtual {v1}, Landroid/webkit/WebView;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2460
    invoke-virtual {p0, v0, p1}, Lcom/android/browser/Controller;->loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;)V

    .line 2463
    :cond_0
    return-void

    .line 2455
    .end local v1           #view:Landroid/webkit/WebView;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public loadUrlFromMiuiHome(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 2823
    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1899
    invoke-virtual {p0}, Lcom/android/browser/Controller;->isInCustomActionMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1902
    :goto_0
    return-void

    .line 1900
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-virtual {p0}, Lcom/android/browser/Controller;->isInLoad()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->onActionModeFinished(Z)V

    .line 1901
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/Controller;->mActionMode:Landroid/view/ActionMode;

    goto :goto_0
.end method

.method onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 1873
    iput-object p1, p0, Lcom/android/browser/Controller;->mActionMode:Landroid/view/ActionMode;

    .line 1874
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1167
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1220
    :goto_0
    return-void

    .line 1168
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1219
    :cond_1
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    goto :goto_0

    .line 1170
    :pswitch_1
    if-ne p2, v3, :cond_1

    if-eqz p3, :cond_1

    .line 1171
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1172
    const-string v1, "privacy_clear_history"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1173
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->removeParentChildRelationShips()V

    goto :goto_1

    .line 1179
    :pswitch_2
    iget-object v0, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    if-eqz v0, :cond_1

    .line 1180
    iget-object v0, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    invoke-virtual {v0, p2, p3}, Lcom/android/browser/UploadHandler;->onResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 1186
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getSettings()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getAutoFillProfile()Landroid/webkit/WebSettings$AutoFillProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1187
    iget-object v0, p0, Lcom/android/browser/Controller;->mAutoFillSetupMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/Controller;->mAutoFillSetupMessage:Landroid/os/Message;

    goto :goto_1

    .line 1192
    :pswitch_4
    if-eqz p3, :cond_1

    if-ne p2, v3, :cond_1

    .line 1195
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, v2}, Lcom/android/browser/UI;->showWeb(Z)V

    .line 1196
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1197
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1198
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1199
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/Controller;->loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;)V

    goto :goto_1

    .line 1200
    :cond_2
    const-string v0, "open_all"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1201
    const-string v0, "open_all"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1203
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1204
    array-length v6, v5

    move v3, v2

    move-object v4, v0

    :goto_2
    if-ge v3, v6, :cond_1

    aget-object v7, v5, v3

    .line 1205
    iget-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->openInBackground()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p0, v7, v4, v0, v1}, Lcom/android/browser/Controller;->openTab(Ljava/lang/String;Lcom/android/browser/Tab;ZZ)Lcom/android/browser/Tab;

    move-result-object v4

    .line 1204
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_3
    move v0, v2

    .line 1205
    goto :goto_3

    .line 1208
    :cond_4
    const-string v0, "snapshot_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1209
    const-string v0, "snapshot_id"

    const-wide/16 v2, -0x1

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1211
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 1212
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/browser/Controller;->createNewSnapshotTab(JZ)Lcom/android/browser/SnapshotTab;

    goto/16 :goto_1

    .line 1168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onBackKey()V
    .locals 2

    .prologue
    .line 1247
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1}, Lcom/android/browser/UI;->onBackKey()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1248
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentSubWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 1249
    .local v0, subwindow:Landroid/webkit/WebView;
    if-eqz v0, :cond_2

    .line 1250
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1251
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 1259
    .end local v0           #subwindow:Landroid/webkit/WebView;
    :cond_0
    :goto_0
    return-void

    .line 1253
    .restart local v0       #subwindow:Landroid/webkit/WebView;
    :cond_1
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/browser/Controller;->dismissSubWindow(Lcom/android/browser/Tab;)V

    goto :goto_0

    .line 1256
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/Controller;->goBackOnePageOrQuit()V

    goto :goto_0
.end method

.method protected onConfgurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 627
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/Controller;->mConfigChanged:Z

    .line 628
    iget-object v0, p0, Lcom/android/browser/Controller;->mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/browser/Controller;->mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

    invoke-virtual {v0, p1}, Lcom/android/browser/PageDialogsHandler;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 632
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1758
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    const v2, 0x7f0d00fe

    if-ne v1, v2, :cond_1

    .line 1786
    :cond_0
    :goto_0
    return v0

    .line 1762
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 1763
    const/4 v1, 0x1

    .line 1764
    sparse-switch v2, :sswitch_data_0

    .line 1784
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 1769
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v3

    .line 1770
    if-eqz v3, :cond_0

    .line 1774
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1776
    const-string v5, "webview"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1777
    iget-object v5, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x66

    invoke-virtual {v5, v6, v2, v0, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1779
    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->requestFocusNodeHref(Landroid/os/Message;)V

    move v0, v1

    .line 1780
    goto :goto_0

    .line 1764
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0024 -> :sswitch_0
        0x7f0d00f4 -> :sswitch_0
        0x7f0d00f5 -> :sswitch_0
    .end sparse-switch
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-virtual {p0}, Lcom/android/browser/Controller;->isInLoad()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/browser/UI;->onContextMenuClosed(Landroid/view/Menu;Z)V

    .line 1838
    return-void
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x8

    const/4 v6, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1279
    instance-of v0, p2, Lcom/android/browser/TitleBar;

    if-eqz v0, :cond_1

    .line 1441
    :cond_0
    :goto_0
    return-void

    .line 1282
    :cond_1
    instance-of v0, p2, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1285
    check-cast p2, Landroid/webkit/WebView;

    .line 1286
    invoke-virtual {p2}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    .line 1287
    if-eqz v0, :cond_0

    .line 1291
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v3

    .line 1292
    if-nez v3, :cond_2

    .line 1293
    const-string v0, "Controller"

    const-string v1, "We should not show context menu when nothing is touched"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1297
    :cond_2
    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    .line 1305
    iget-object v4, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    .line 1306
    const v5, 0x7f100003

    invoke-virtual {v4, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1309
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v4

    .line 1310
    const v5, 0x7f0d00e7

    if-ne v3, v8, :cond_9

    move v0, v1

    :goto_1
    invoke-interface {p1, v5, v0}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1312
    const v5, 0x7f0d00eb

    const/4 v0, 0x4

    if-ne v3, v0, :cond_a

    move v0, v1

    :goto_2
    invoke-interface {p1, v5, v0}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1314
    const v5, 0x7f0d00ee

    const/4 v0, 0x3

    if-ne v3, v0, :cond_b

    move v0, v1

    :goto_3
    invoke-interface {p1, v5, v0}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1316
    const v5, 0x7f0d00f6

    const/4 v0, 0x5

    if-eq v3, v0, :cond_3

    if-ne v3, v7, :cond_c

    :cond_3
    move v0, v1

    :goto_4
    invoke-interface {p1, v5, v0}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1319
    const v5, 0x7f0d00f1

    if-eq v3, v6, :cond_4

    if-ne v3, v7, :cond_d

    :cond_4
    move v0, v1

    :goto_5
    invoke-interface {p1, v5, v0}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1322
    if-eq v3, v6, :cond_5

    if-eq v3, v8, :cond_5

    const/4 v0, 0x4

    if-eq v3, v0, :cond_5

    const/4 v0, 0x3

    if-ne v3, v0, :cond_6

    :cond_5
    move v2, v1

    .line 1326
    :cond_6
    const v0, 0x7f0d00fb

    invoke-interface {p1, v0, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1327
    if-eqz v2, :cond_7

    .line 1328
    const v0, 0x7f0d00fc

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/Controller$SelectText;

    invoke-direct {v1, p2}, Lcom/android/browser/Controller$SelectText;-><init>(Landroid/webkit/WebView;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1332
    :cond_7
    packed-switch v3, :pswitch_data_0

    .line 1436
    :pswitch_0
    const-string v0, "Controller"

    const-string v1, "We should not get here."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    :cond_8
    :goto_6
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onContextMenuCreated(Landroid/view/Menu;)V

    goto/16 :goto_0

    :cond_9
    move v0, v2

    .line 1310
    goto :goto_1

    :cond_a
    move v0, v2

    .line 1312
    goto :goto_2

    :cond_b
    move v0, v2

    .line 1314
    goto :goto_3

    :cond_c
    move v0, v2

    .line 1316
    goto :goto_4

    :cond_d
    move v0, v2

    .line 1319
    goto :goto_5

    .line 1334
    :pswitch_1
    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1335
    const v0, 0x7f0d00e8

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1338
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1339
    const-string v1, "phone"

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1340
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1341
    const v1, 0x7f0d00e9

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1343
    const v0, 0x7f0d00ea

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/Controller$Copy;

    invoke-direct {v1, p0, v4}, Lcom/android/browser/Controller$Copy;-><init>(Lcom/android/browser/Controller;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_6

    .line 1349
    :pswitch_2
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1350
    const v0, 0x7f0d00ec

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mailto:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1353
    const v0, 0x7f0d00ed

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/Controller$Copy;

    invoke-direct {v1, p0, v4}, Lcom/android/browser/Controller$Copy;-><init>(Lcom/android/browser/Controller;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 1359
    :pswitch_3
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1360
    const v0, 0x7f0d00ef

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "geo:0,0?q="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1364
    const v0, 0x7f0d00f0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/Controller$Copy;

    invoke-direct {v1, p0, v4}, Lcom/android/browser/Controller$Copy;-><init>(Lcom/android/browser/Controller;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 1371
    :pswitch_4
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1373
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v1

    .line 1374
    const v0, 0x7f0d00f2

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1376
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getSettings()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->openInBackground()Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x7f0c005c

    :goto_7
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1379
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1380
    if-eqz v1, :cond_e

    .line 1381
    if-ne v7, v3, :cond_11

    .line 1382
    new-instance v0, Lcom/android/browser/Controller$6;

    invoke-direct {v0, p0, p2}, Lcom/android/browser/Controller$6;-><init>(Lcom/android/browser/Controller;Landroid/webkit/WebView;)V

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1411
    :cond_e
    :goto_8
    if-eq v3, v6, :cond_8

    .line 1416
    :pswitch_5
    const/4 v0, 0x5

    if-ne v3, v0, :cond_f

    .line 1417
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1419
    :cond_f
    const v0, 0x7f0d00f9

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/Controller$8;

    invoke-direct {v1, p0, v4}, Lcom/android/browser/Controller$8;-><init>(Lcom/android/browser/Controller;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1427
    const v0, 0x7f0d00f7

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/Controller$Download;

    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v3

    invoke-direct {v1, v2, v4, v3}, Lcom/android/browser/Controller$Download;-><init>(Landroid/app/Activity;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1430
    const v0, 0x7f0d00fa

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/WallpaperHandler;

    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v4}, Lcom/android/browser/WallpaperHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 1376
    :cond_10
    const v0, 0x7f0c005b

    goto :goto_7

    .line 1398
    :cond_11
    new-instance v0, Lcom/android/browser/Controller$7;

    invoke-direct {v0, p0, v4}, Lcom/android/browser/Controller$7;-><init>(Lcom/android/browser/Controller;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_8

    .line 1332
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 1269
    iget v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1270
    const/4 v0, 0x0

    .line 1274
    :goto_0
    return v0

    .line 1272
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1273
    const v1, 0x7f100002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1274
    const/4 v0, 0x1

    goto :goto_0
.end method

.method onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 749
    iget-object v1, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    invoke-virtual {v1}, Lcom/android/browser/UploadHandler;->handled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 750
    iget-object v1, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/browser/UploadHandler;->onResult(ILandroid/content/Intent;)V

    .line 751
    iput-object v3, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    .line 753
    :cond_0
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    if-nez v1, :cond_1

    .line 768
    :goto_0
    return-void

    .line 754
    :cond_1
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1}, Lcom/android/browser/UI;->onDestroy()V

    .line 756
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 757
    .local v0, t:Lcom/android/browser/Tab;
    if-eqz v0, :cond_2

    .line 758
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 759
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->removeTab(Lcom/android/browser/Tab;)V

    .line 761
    :cond_2
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/Controller;->mBookmarksObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 763
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->destroy()V

    .line 764
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebIconDatabase;->close()V

    .line 766
    iget-object v1, p0, Lcom/android/browser/Controller;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

    invoke-virtual {v1}, Lcom/android/browser/SystemAllowGeolocationOrigins;->stop()V

    .line 767
    iput-object v3, p0, Lcom/android/browser/Controller;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

    goto :goto_0
.end method

.method public onDownloadStart(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .parameter "tab"
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "contentLength"

    .prologue
    .line 1029
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    .line 1030
    .local v6, w:Landroid/webkit/WebView;
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v5

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/browser/DownloadHandler;->onDownloadStart(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1032
    invoke-virtual {v6}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v0

    if-nez v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1037
    invoke-virtual {p0}, Lcom/android/browser/Controller;->goBackOnePageOrQuit()V

    .line 1043
    :cond_0
    :goto_0
    return-void

    .line 1040
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->closeTab(Lcom/android/browser/Tab;)V

    goto :goto_0
.end method

.method public onFavicon(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "tab"
    .parameter "view"
    .parameter "icon"

    .prologue
    .line 936
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 937
    invoke-virtual {p2}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/android/browser/Controller;->maybeUpdateFavicon(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 938
    return-void
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 2619
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    .line 2622
    .local v1, noModifiers:Z
    if-nez v1, :cond_2

    const/16 v7, 0x52

    if-eq v7, p1, :cond_0

    const/16 v7, 0x71

    if-eq v7, p1, :cond_0

    const/16 v7, 0x72

    if-ne v7, p1, :cond_2

    .line 2626
    :cond_0
    iput-boolean v6, p0, Lcom/android/browser/Controller;->mMenuIsDown:Z

    .line 2729
    :cond_1
    :goto_0
    return v5

    .line 2630
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v4

    .line 2631
    .local v4, webView:Landroid/webkit/WebView;
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v3

    .line 2632
    .local v3, tab:Lcom/android/browser/Tab;
    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 2634
    const/16 v5, 0x1000

    invoke-virtual {p2, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    .line 2635
    .local v0, ctrl:Z
    invoke-virtual {p2, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    .line 2637
    .local v2, shift:Z
    sparse-switch p1, :sswitch_data_0

    .line 2729
    :cond_3
    iget-object v5, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v5, p1, p2}, Lcom/android/browser/UI;->dispatchKey(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_0

    .line 2639
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2640
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2642
    invoke-direct {p0}, Lcom/android/browser/Controller;->getPrevTab()Lcom/android/browser/Tab;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/browser/Controller;->switchToTab(Lcom/android/browser/Tab;)Z

    :goto_1
    move v5, v6

    .line 2647
    goto :goto_0

    .line 2645
    :cond_4
    invoke-direct {p0}, Lcom/android/browser/Controller;->getNextTab()Lcom/android/browser/Tab;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/browser/Controller;->switchToTab(Lcom/android/browser/Tab;)Z

    goto :goto_1

    .line 2654
    :sswitch_1
    if-eqz v2, :cond_6

    .line 2655
    invoke-virtual {p0}, Lcom/android/browser/Controller;->pageUp()V

    :cond_5
    :goto_2
    move v5, v6

    .line 2659
    goto :goto_0

    .line 2656
    :cond_6
    if-eqz v1, :cond_5

    .line 2657
    invoke-virtual {p0}, Lcom/android/browser/Controller;->pageDown()V

    goto :goto_2

    .line 2661
    :sswitch_2
    if-eqz v1, :cond_3

    .line 2662
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    move v5, v6

    .line 2663
    goto :goto_0

    .line 2665
    :sswitch_3
    if-eqz v1, :cond_3

    .line 2666
    invoke-virtual {v3}, Lcom/android/browser/Tab;->goForward()V

    move v5, v6

    .line 2667
    goto :goto_0

    .line 2669
    :sswitch_4
    if-eqz v0, :cond_3

    .line 2670
    invoke-virtual {v3}, Lcom/android/browser/Tab;->goBack()V

    move v5, v6

    .line 2671
    goto :goto_0

    .line 2675
    :sswitch_5
    if-eqz v0, :cond_3

    .line 2676
    invoke-virtual {v3}, Lcom/android/browser/Tab;->goForward()V

    move v5, v6

    .line 2677
    goto :goto_0

    .line 2681
    :sswitch_6
    if-eqz v0, :cond_3

    .line 2682
    invoke-virtual {v4}, Landroid/webkit/WebView;->selectAll()V

    move v5, v6

    .line 2683
    goto :goto_0

    .line 2688
    :sswitch_7
    if-eqz v0, :cond_3

    .line 2689
    invoke-virtual {v4}, Landroid/webkit/WebView;->copySelection()Z

    move v5, v6

    .line 2690
    goto :goto_0

    .line 2712
    :sswitch_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2713
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2714
    invoke-virtual {p0}, Lcom/android/browser/Controller;->openIncognitoTab()Lcom/android/browser/Tab;

    :goto_3
    move v5, v6

    .line 2718
    goto/16 :goto_0

    .line 2716
    :cond_7
    invoke-virtual {p0}, Lcom/android/browser/Controller;->openTabToHomePage()Lcom/android/browser/Tab;

    goto :goto_3

    .line 2637
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x15 -> :sswitch_4
        0x16 -> :sswitch_5
        0x1d -> :sswitch_6
        0x1f -> :sswitch_7
        0x30 -> :sswitch_8
        0x3d -> :sswitch_0
        0x3e -> :sswitch_1
        0x7d -> :sswitch_3
    .end sparse-switch
.end method

.method onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2733
    packed-switch p1, :pswitch_data_0

    .line 2741
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2735
    :pswitch_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->isWebShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2736
    sget-object v0, Lcom/android/browser/UI$ComboViews;->History:Lcom/android/browser/UI$ComboViews;

    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->bookmarksOrHistoryPicker(Lcom/android/browser/UI$ComboViews;)V

    .line 2737
    const/4 v0, 0x1

    goto :goto_0

    .line 2733
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 2745
    const/16 v1, 0x52

    if-ne v1, p1, :cond_1

    .line 2746
    iput-boolean v0, p0, Lcom/android/browser/Controller;->mMenuIsDown:Z

    .line 2747
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2748
    invoke-virtual {p0}, Lcom/android/browser/Controller;->onMenuKey()Z

    move-result v0

    .line 2760
    :cond_0
    :goto_0
    return v0

    .line 2751
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2752
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2754
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2755
    invoke-virtual {p0}, Lcom/android/browser/Controller;->onBackKey()V

    .line 2756
    const/4 v0, 0x1

    goto :goto_0

    .line 2752
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onLowMemory()V
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->freeMemory()V

    .line 776
    return-void
.end method

.method protected onMenuKey()Z
    .locals 1

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->onMenuKey()Z

    move-result v0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3
    .parameter "featureId"
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1804
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mOptionsMenuOpen:Z

    if-eqz v0, :cond_2

    .line 1805
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mConfigChanged:Z

    if-eqz v0, :cond_0

    .line 1809
    iput-boolean v1, p0, Lcom/android/browser/Controller;->mConfigChanged:Z

    .line 1828
    :goto_0
    return v2

    .line 1811
    :cond_0
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mExtendedMenuOpen:Z

    if-nez v0, :cond_1

    .line 1812
    iput-boolean v2, p0, Lcom/android/browser/Controller;->mExtendedMenuOpen:Z

    .line 1813
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->onExtendedMenuOpened()V

    goto :goto_0

    .line 1817
    :cond_1
    iput-boolean v1, p0, Lcom/android/browser/Controller;->mExtendedMenuOpen:Z

    .line 1818
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-virtual {p0}, Lcom/android/browser/Controller;->isInLoad()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->onExtendedMenuClosed(Z)V

    goto :goto_0

    .line 1823
    :cond_2
    iput-boolean v2, p0, Lcom/android/browser/Controller;->mOptionsMenuOpen:Z

    .line 1824
    iput-boolean v1, p0, Lcom/android/browser/Controller;->mConfigChanged:Z

    .line 1825
    iput-boolean v1, p0, Lcom/android/browser/Controller;->mExtendedMenuOpen:Z

    .line 1826
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->onOptionsMenuOpened()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1550
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1742
    :cond_0
    :goto_0
    return v0

    .line 1553
    :cond_1
    iget-boolean v2, p0, Lcom/android/browser/Controller;->mMenuIsDown:Z

    if-eqz v2, :cond_2

    .line 1558
    iput-boolean v0, p0, Lcom/android/browser/Controller;->mMenuIsDown:Z

    .line 1560
    :cond_2
    iget-object v2, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v2, p1}, Lcom/android/browser/UI;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 1562
    goto :goto_0

    .line 1564
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1598
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/browser/Controller;->isInLoad()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1599
    invoke-virtual {p0}, Lcom/android/browser/Controller;->stopLoading()V

    :cond_4
    :goto_1
    move v0, v1

    .line 1742
    goto :goto_0

    .line 1567
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/browser/Controller;->openTabToHomePage()Lcom/android/browser/Tab;

    goto :goto_1

    .line 1571
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/browser/Controller;->openIncognitoTab()Lcom/android/browser/Tab;

    goto :goto_1

    .line 1575
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/browser/Controller;->editUrl()V

    goto :goto_1

    .line 1579
    :pswitch_5
    sget-object v0, Lcom/android/browser/UI$ComboViews;->Bookmarks:Lcom/android/browser/UI$ComboViews;

    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->bookmarksOrHistoryPicker(Lcom/android/browser/UI$ComboViews;)V

    goto :goto_1

    .line 1583
    :pswitch_6
    sget-object v0, Lcom/android/browser/UI$ComboViews;->History:Lcom/android/browser/UI$ComboViews;

    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->bookmarksOrHistoryPicker(Lcom/android/browser/UI$ComboViews;)V

    goto :goto_1

    .line 1587
    :pswitch_7
    sget-object v0, Lcom/android/browser/UI$ComboViews;->Snapshots:Lcom/android/browser/UI$ComboViews;

    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->bookmarksOrHistoryPicker(Lcom/android/browser/UI$ComboViews;)V

    goto :goto_1

    .line 1591
    :pswitch_8
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->createBookmarkCurrentPageIntent(Z)Landroid/content/Intent;

    move-result-object v0

    .line 1592
    if-eqz v0, :cond_4

    .line 1593
    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1601
    :cond_5
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_1

    .line 1606
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/Tab;->goBack()V

    goto :goto_1

    .line 1610
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/Tab;->goForward()V

    goto :goto_1

    .line 1615
    :pswitch_b
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentSubWindow()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1616
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->dismissSubWindow(Lcom/android/browser/Tab;)V

    goto :goto_1

    .line 1619
    :cond_6
    invoke-virtual {p0}, Lcom/android/browser/Controller;->closeCurrentTab()V

    goto :goto_1

    .line 1623
    :pswitch_c
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1624
    iget-object v2, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/browser/Controller;->loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;)V

    goto :goto_1

    .line 1628
    :pswitch_d
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/browser/BrowserPreferencesPage;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1629
    const-string v2, "currentPage"

    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1631
    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x3

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 1635
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->showFindDialog(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    .line 1639
    :pswitch_f
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v2

    .line 1640
    if-eqz v2, :cond_4

    .line 1641
    iget-object v3, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1642
    invoke-virtual {v2}, Lcom/android/browser/Tab;->createSnapshotValues()Landroid/content/ContentValues;

    move-result-object v4

    .line 1643
    if-eqz v4, :cond_7

    .line 1644
    new-instance v5, Lcom/android/browser/Controller$9;

    invoke-direct {v5, p0, v3, v4}, Lcom/android/browser/Controller$9;-><init>(Lcom/android/browser/Controller;Landroid/content/ContentResolver;Landroid/content/ContentValues;)V

    new-array v3, v1, [Lcom/android/browser/Tab;

    aput-object v2, v3, v0

    invoke-virtual {v5, v3}, Lcom/android/browser/Controller$9;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 1669
    :cond_7
    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c0057

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1675
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/browser/Controller;->showPageInfo()V

    goto/16 :goto_1

    .line 1679
    :pswitch_11
    invoke-virtual {p0}, Lcom/android/browser/Controller;->goLive()V

    move v0, v1

    .line 1680
    goto/16 :goto_0

    .line 1683
    :pswitch_12
    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v2

    .line 1684
    if-eqz v2, :cond_0

    .line 1687
    invoke-virtual {p0, v2}, Lcom/android/browser/Controller;->shareCurrentPage(Lcom/android/browser/Tab;)V

    goto/16 :goto_1

    .line 1691
    :pswitch_13
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->debugDump()V

    goto/16 :goto_1

    .line 1695
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->dumpV8Counters()V

    goto/16 :goto_1

    .line 1699
    :pswitch_15
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomIn()Z

    goto/16 :goto_1

    .line 1703
    :pswitch_16
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomOut()Z

    goto/16 :goto_1

    .line 1707
    :pswitch_17
    invoke-virtual {p0}, Lcom/android/browser/Controller;->viewDownloads()V

    goto/16 :goto_1

    .line 1711
    :pswitch_18
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 1712
    iget-object v2, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v2, v0}, Lcom/android/browser/BrowserSettings;->toggleDesktopUseragent(Landroid/webkit/WebView;)V

    .line 1713
    invoke-virtual {v0}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1725
    :pswitch_19
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 1726
    :goto_2
    sget-object v3, Lcom/android/browser/Controller;->WINDOW_SHORTCUT_ID_ARRAY:[I

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 1727
    sget-object v3, Lcom/android/browser/Controller;->WINDOW_SHORTCUT_ID_ARRAY:[I

    aget v3, v3, v0

    if-ne v3, v2, :cond_8

    .line 1728
    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2, v0}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    .line 1729
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v2

    if-eq v0, v2, :cond_4

    .line 1731
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->switchToTab(Lcom/android/browser/Tab;)Z

    goto/16 :goto_1

    .line 1726
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1564
    :pswitch_data_0
    .packed-switch 0x7f0d00bd
        :pswitch_1
        :pswitch_a
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_12
        :pswitch_e
        :pswitch_18
        :pswitch_f
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_10
        :pswitch_d
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_c
        :pswitch_15
        :pswitch_16
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_9
        :pswitch_4
        :pswitch_b
    .end packed-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 1832
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/Controller;->mOptionsMenuOpen:Z

    .line 1833
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-virtual {p0}, Lcom/android/browser/Controller;->isInLoad()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->onOptionsMenuClosed(Z)V

    .line 1834
    return-void
.end method

.method public onPageFinished(Lcom/android/browser/Tab;)V
    .locals 4
    .parameter "tab"

    .prologue
    const/16 v3, 0x6c

    const/4 v2, 0x0

    .line 856
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 857
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/browser/Tab;->isSnapshot()Z

    move-result v0

    if-nez v0, :cond_2

    .line 863
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/Controller;->didUserStopLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-nez v0, :cond_2

    .line 865
    :cond_1
    iget-object v0, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 866
    iget-object v0, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 874
    :cond_2
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->pauseWebViewTimers(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 875
    invoke-virtual {p0}, Lcom/android/browser/Controller;->releaseWakeLock()V

    .line 883
    :cond_3
    invoke-static {}, Lcom/android/browser/Performance;->tracePageFinished()V

    .line 884
    return-void
.end method

.method public onPageStarted(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "tab"
    .parameter "view"
    .parameter "favicon"

    .prologue
    const/4 v3, 0x0

    .line 819
    iget-object v1, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 823
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->resetSync()V

    .line 825
    iget-object v1, p0, Lcom/android/browser/Controller;->mNetworkHandler:Lcom/android/browser/NetworkStateHandler;

    invoke-virtual {v1}, Lcom/android/browser/NetworkStateHandler;->isNetworkUp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 826
    invoke-virtual {p2, v3}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    .line 833
    :cond_0
    iget-boolean v1, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    if-eqz v1, :cond_1

    .line 834
    invoke-direct {p0, p1}, Lcom/android/browser/Controller;->resumeWebViewTimers(Lcom/android/browser/Tab;)V

    .line 836
    :cond_1
    iput-boolean v3, p0, Lcom/android/browser/Controller;->mLoadStopped:Z

    .line 837
    invoke-virtual {p0}, Lcom/android/browser/Controller;->endActionMode()V

    .line 839
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1, p1}, Lcom/android/browser/UI;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 841
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 843
    .local v0, url:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p3}, Lcom/android/browser/Controller;->maybeUpdateFavicon(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 845
    invoke-static {v0}, Lcom/android/browser/Performance;->tracePageStart(Ljava/lang/String;)V

    .line 852
    return-void
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 643
    iget-object v2, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v2}, Lcom/android/browser/UI;->isCustomViewShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 644
    invoke-virtual {p0}, Lcom/android/browser/Controller;->hideCustomView()V

    .line 646
    :cond_0
    iget-boolean v2, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    if-eqz v2, :cond_2

    .line 647
    const-string v2, "Controller"

    const-string v3, "BrowserActivity is already paused."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_1
    :goto_0
    return-void

    .line 650
    :cond_2
    iput-boolean v4, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    .line 651
    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 652
    .local v1, tab:Lcom/android/browser/Tab;
    if-eqz v1, :cond_4

    .line 653
    invoke-virtual {v1}, Lcom/android/browser/Tab;->pause()V

    .line 654
    invoke-virtual {p0, v1}, Lcom/android/browser/Controller;->pauseWebViewTimers(Lcom/android/browser/Tab;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 655
    iget-object v2, p0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_3

    .line 656
    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 658
    .local v0, pm:Landroid/os/PowerManager;
    const-string v2, "Browser"

    invoke-virtual {v0, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 660
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_3
    iget-object v2, p0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 661
    iget-object v2, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6b

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x493e0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 665
    :cond_4
    iget-object v2, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v2}, Lcom/android/browser/UI;->onPause()V

    .line 666
    iget-object v2, p0, Lcom/android/browser/Controller;->mNetworkHandler:Lcom/android/browser/NetworkStateHandler;

    invoke-virtual {v2}, Lcom/android/browser/NetworkStateHandler;->onPause()V

    .line 668
    invoke-static {}, Landroid/webkit/WebView;->disablePlatformNotifications()V

    .line 669
    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/browser/NfcHandler;->unregister(Landroid/app/Activity;)V

    .line 670
    sget-object v2, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 671
    sget-object v2, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 672
    const/4 v2, 0x0

    sput-object v2, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0d00d5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x7f0d00bb

    .line 1463
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/browser/Controller;->updateInLoadMenuItems(Landroid/view/Menu;Lcom/android/browser/Tab;)V

    .line 1466
    iput-object p1, p0, Lcom/android/browser/Controller;->mCachedMenu:Landroid/view/Menu;

    .line 1470
    iget v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    packed-switch v0, :pswitch_data_0

    .line 1479
    iget v0, p0, Lcom/android/browser/Controller;->mCurrentMenuState:I

    iget v1, p0, Lcom/android/browser/Controller;->mMenuState:I

    if-eq v0, v1, :cond_0

    .line 1480
    invoke-interface {p1, v2, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1481
    invoke-interface {p1, v2, v4}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1482
    invoke-interface {p1, v5, v4}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1484
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/browser/Controller;->updateMenuState(Lcom/android/browser/Tab;Landroid/view/Menu;)V

    .line 1487
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    iput v0, p0, Lcom/android/browser/Controller;->mCurrentMenuState:I

    .line 1488
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 1472
    :pswitch_0
    iget v0, p0, Lcom/android/browser/Controller;->mCurrentMenuState:I

    iget v1, p0, Lcom/android/browser/Controller;->mMenuState:I

    if-eq v0, v1, :cond_1

    .line 1473
    invoke-interface {p1, v2, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1474
    invoke-interface {p1, v2, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1475
    invoke-interface {p1, v5, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_0

    .line 1470
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onProgressChanged(Lcom/android/browser/Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 888
    iget-object v1, p0, Lcom/android/browser/Controller;->mCrashRecoveryHandler:Lcom/android/browser/CrashRecoveryHandler;

    invoke-virtual {v1}, Lcom/android/browser/CrashRecoveryHandler;->backupState()V

    .line 889
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getLoadProgress()I

    move-result v0

    .line 891
    .local v0, newProgress:I
    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 892
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 900
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inPageLoad()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 901
    iget-object v1, p0, Lcom/android/browser/Controller;->mCachedMenu:Landroid/view/Menu;

    invoke-direct {p0, v1, p1}, Lcom/android/browser/Controller;->updateInLoadMenuItems(Landroid/view/Menu;Lcom/android/browser/Tab;)V

    .line 912
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1, p1}, Lcom/android/browser/UI;->onProgressChanged(Lcom/android/browser/Tab;)V

    .line 913
    return-void

    .line 904
    :cond_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inPageLoad()Z

    move-result v1

    if-nez v1, :cond_0

    .line 909
    iget-object v1, p0, Lcom/android/browser/Controller;->mCachedMenu:Landroid/view/Menu;

    invoke-direct {p0, v1, p1}, Lcom/android/browser/Controller;->updateInLoadMenuItems(Landroid/view/Menu;Lcom/android/browser/Tab;)V

    goto :goto_0
.end method

.method public onReceivedHttpAuthRequest(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "tab"
    .parameter "view"
    .parameter "handler"
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 1001
    const/4 v3, 0x0

    .line 1002
    .local v3, username:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1004
    .local v1, password:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/webkit/HttpAuthHandler;->useHttpAuthUsernamePassword()Z

    move-result v2

    .line 1007
    .local v2, reuseHttpAuthUsernamePassword:Z
    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 1008
    invoke-virtual {p2, p4, p5}, Landroid/webkit/WebView;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1009
    .local v0, credentials:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 1010
    const/4 v4, 0x0

    aget-object v3, v0, v4

    .line 1011
    const/4 v4, 0x1

    aget-object v1, v0, v4

    .line 1015
    .end local v0           #credentials:[Ljava/lang/String;
    :cond_0
    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 1016
    invoke-virtual {p3, v3, v1}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    :goto_0
    return-void

    .line 1018
    :cond_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p3}, Landroid/webkit/HttpAuthHandler;->suppressDialog()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1019
    iget-object v4, p0, Lcom/android/browser/Controller;->mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

    invoke-virtual {v4, p1, p3, p4, p5}, Lcom/android/browser/PageDialogsHandler;->showHttpAuthentication(Lcom/android/browser/Tab;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1021
    :cond_2
    invoke-virtual {p3}, Landroid/webkit/HttpAuthHandler;->cancel()V

    goto :goto_0
.end method

.method public onReceivedTitle(Lcom/android/browser/Tab;Ljava/lang/String;)V
    .locals 3
    .parameter "tab"
    .parameter "title"

    .prologue
    .line 922
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1, p1}, Lcom/android/browser/UI;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 923
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    .line 924
    .local v0, pageUrl:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0xc350

    if-lt v1, v2, :cond_1

    .line 932
    :cond_0
    :goto_0
    return-void

    .line 929
    :cond_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 930
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/browser/DataController;->getInstance(Landroid/content/Context;)Lcom/android/browser/DataController;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/android/browser/DataController;->updateHistoryTitle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method onResume()V
    .locals 3

    .prologue
    .line 692
    iget-boolean v1, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    if-nez v1, :cond_0

    .line 693
    const-string v1, "Controller"

    const-string v2, "BrowserActivity is already resumed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :goto_0
    return-void

    .line 696
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    .line 697
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 698
    .local v0, current:Lcom/android/browser/Tab;
    if-eqz v0, :cond_1

    .line 699
    invoke-virtual {v0}, Lcom/android/browser/Tab;->resume()V

    .line 700
    invoke-direct {p0, v0}, Lcom/android/browser/Controller;->resumeWebViewTimers(Lcom/android/browser/Tab;)V

    .line 702
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/Controller;->releaseWakeLock()V

    .line 704
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1}, Lcom/android/browser/UI;->onResume()V

    .line 705
    iget-object v1, p0, Lcom/android/browser/Controller;->mNetworkHandler:Lcom/android/browser/NetworkStateHandler;

    invoke-virtual {v1}, Lcom/android/browser/NetworkStateHandler;->onResume()V

    .line 706
    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V

    .line 707
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p0}, Lcom/android/browser/NfcHandler;->register(Landroid/app/Activity;Lcom/android/browser/Controller;)V

    goto :goto_0
.end method

.method onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabControl;->saveState(Landroid/os/Bundle;)V

    .line 685
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 687
    const-string v0, "lastActiveDate"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 689
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    .line 2779
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->editUrl(Z)V

    .line 2780
    const/4 v0, 0x1

    return v0
.end method

.method public onSetWebView(Lcom/android/browser/Tab;Landroid/webkit/WebView;)V
    .locals 1
    .parameter "tab"
    .parameter "view"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1, p2}, Lcom/android/browser/UI;->onSetWebView(Lcom/android/browser/Tab;Landroid/webkit/WebView;)V

    .line 421
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 958
    invoke-virtual {p0}, Lcom/android/browser/Controller;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 959
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 960
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 965
    :cond_0
    :goto_0
    return-void

    .line 962
    :cond_1
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method public onUpdatedSecurityState(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 918
    return-void
.end method

.method public onUserCanceledSsl(Lcom/android/browser/Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 2506
    invoke-virtual {p1}, Lcom/android/browser/Tab;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2507
    invoke-virtual {p1}, Lcom/android/browser/Tab;->goBack()V

    .line 2511
    :goto_0
    return-void

    .line 2509
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/browser/Tab;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "acceptType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1953
    .local p1, uploadMsg:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    new-instance v0, Lcom/android/browser/UploadHandler;

    invoke-direct {v0, p0}, Lcom/android/browser/UploadHandler;-><init>(Lcom/android/browser/Controller;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    .line 1954
    iget-object v0, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/UploadHandler;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    .line 1955
    return-void
.end method

.method public openIncognitoTab()Lcom/android/browser/Tab;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2324
    const-string v0, "browser:incognito"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/android/browser/Controller;->openTab(Ljava/lang/String;ZZZ)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method public openTab(Lcom/android/browser/IntentHandler$UrlData;)Lcom/android/browser/Tab;
    .locals 3
    .parameter "urlData"

    .prologue
    const/4 v2, 0x1

    .line 2307
    invoke-direct {p0, p1}, Lcom/android/browser/Controller;->showPreloadedTab(Lcom/android/browser/IntentHandler$UrlData;)Lcom/android/browser/Tab;

    move-result-object v0

    .line 2308
    .local v0, tab:Lcom/android/browser/Tab;
    if-nez v0, :cond_0

    .line 2309
    const/4 v1, 0x0

    invoke-direct {p0, v1, v2, v2}, Lcom/android/browser/Controller;->createNewTab(ZZZ)Lcom/android/browser/Tab;

    move-result-object v0

    .line 2310
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/browser/IntentHandler$UrlData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2311
    invoke-virtual {p0, v0, p1}, Lcom/android/browser/Controller;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V

    .line 2314
    :cond_0
    return-object v0
.end method

.method public openTab(Ljava/lang/String;Lcom/android/browser/Tab;ZZ)Lcom/android/browser/Tab;
    .locals 6
    .parameter "url"
    .parameter "parent"
    .parameter "setActive"
    .parameter "useCurrent"

    .prologue
    .line 2336
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/Controller;->openTab(Ljava/lang/String;ZZZLcom/android/browser/Tab;)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public openTab(Ljava/lang/String;ZZZ)Lcom/android/browser/Tab;
    .locals 6
    .parameter "url"
    .parameter "incognito"
    .parameter "setActive"
    .parameter "useCurrent"

    .prologue
    .line 2330
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/Controller;->openTab(Ljava/lang/String;ZZZLcom/android/browser/Tab;)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method public openTab(Ljava/lang/String;ZZZLcom/android/browser/Tab;)Lcom/android/browser/Tab;
    .locals 1
    .parameter "url"
    .parameter "incognito"
    .parameter "setActive"
    .parameter "useCurrent"
    .parameter "parent"

    .prologue
    .line 2342
    invoke-direct {p0, p2, p3, p4}, Lcom/android/browser/Controller;->createNewTab(ZZZ)Lcom/android/browser/Tab;

    move-result-object v0

    .line 2343
    .local v0, tab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_1

    .line 2344
    if-eqz p5, :cond_0

    if-eq p5, v0, :cond_0

    .line 2345
    invoke-virtual {p5, v0}, Lcom/android/browser/Tab;->addChildTab(Lcom/android/browser/Tab;)V

    .line 2347
    :cond_0
    if-eqz p1, :cond_1

    .line 2348
    invoke-virtual {p0, v0, p1}, Lcom/android/browser/Controller;->loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;)V

    .line 2351
    :cond_1
    return-object v0
.end method

.method public openTabToHomePage()Lcom/android/browser/Tab;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2319
    iget-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/android/browser/Controller;->openTab(Ljava/lang/String;ZZZ)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method protected pageDown()V
    .locals 2

    .prologue
    .line 1104
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->pageDown(Z)Z

    .line 1105
    return-void
.end method

.method protected pageUp()V
    .locals 2

    .prologue
    .line 1100
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->pageUp(Z)Z

    .line 1101
    return-void
.end method

.method protected pauseWebViewTimers(Lcom/android/browser/Tab;)Z
    .locals 3
    .parameter "tab"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 738
    if-nez p1, :cond_0

    .line 745
    :goto_0
    return v0

    .line 740
    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inPageLoad()Z

    move-result v1

    if-nez v1, :cond_1

    .line 741
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 742
    invoke-static {}, Lcom/android/browser/WebViewTimersControl;->getInstance()Lcom/android/browser/WebViewTimersControl;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/browser/WebViewTimersControl;->onBrowserActivityPause(Landroid/webkit/WebView;)V

    goto :goto_0

    .line 745
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected releaseWakeLock()V
    .locals 2
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 714
    iget-object v0, p0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 716
    :cond_0
    return-void
.end method

.method public removeSubWindow(Lcom/android/browser/Tab;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 2263
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2264
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getSubViewContainer()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->removeSubWindow(Landroid/view/View;)V

    .line 2266
    :cond_0
    return-void
.end method

.method protected removeTab(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 2205
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->removeTab(Lcom/android/browser/Tab;)V

    .line 2206
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabControl;->removeTab(Lcom/android/browser/Tab;)Z

    .line 2207
    iget-object v0, p0, Lcom/android/browser/Controller;->mCrashRecoveryHandler:Lcom/android/browser/CrashRecoveryHandler;

    invoke-virtual {v0}, Lcom/android/browser/CrashRecoveryHandler;->backupState()V

    .line 2208
    return-void
.end method

.method protected reuseTab(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V
    .locals 1
    .parameter "appTab"
    .parameter "urlData"

    .prologue
    .line 2230
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 2233
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->detachTab(Lcom/android/browser/Tab;)V

    .line 2235
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabControl;->recreateWebView(Lcom/android/browser/Tab;)V

    .line 2237
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->attachTab(Lcom/android/browser/Tab;)V

    .line 2238
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2239
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->switchToTab(Lcom/android/browser/Tab;)Z

    .line 2240
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/Controller;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V

    .line 2247
    :goto_0
    return-void

    .line 2244
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 2245
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/Controller;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V

    goto :goto_0
.end method

.method public revertVoiceSearchMode(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->revertVoiceTitleBar(Lcom/android/browser/Tab;)V

    .line 1131
    return-void
.end method

.method public setActiveTab(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 2213
    if-eqz p1, :cond_0

    .line 2214
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    .line 2216
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 2218
    :cond_0
    return-void
.end method

.method public setBlockEvents(Z)V
    .locals 0
    .parameter "block"

    .prologue
    .line 2790
    iput-boolean p1, p0, Lcom/android/browser/Controller;->mBlockEvents:Z

    .line 2791
    return-void
.end method

.method protected setShouldShowErrorConsole(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 784
    iget-boolean v1, p0, Lcom/android/browser/Controller;->mShouldShowErrorConsole:Z

    if-ne p1, v1, :cond_1

    .line 795
    :cond_0
    :goto_0
    return-void

    .line 788
    :cond_1
    iput-boolean p1, p0, Lcom/android/browser/Controller;->mShouldShowErrorConsole:Z

    .line 789
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 790
    .local v0, t:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    .line 794
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1, v0, p1}, Lcom/android/browser/UI;->setShouldShowErrorConsole(Lcom/android/browser/Tab;Z)V

    goto :goto_0
.end method

.method setUi(Lcom/android/browser/UI;)V
    .locals 0
    .parameter "ui"

    .prologue
    .line 444
    iput-object p1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    .line 445
    return-void
.end method

.method public setupAutoFill(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 2771
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/browser/BrowserPreferencesPage;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2772
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/browser/AutoFillSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2774
    iput-object p1, p0, Lcom/android/browser/Controller;->mAutoFillSetupMessage:Landroid/os/Message;

    .line 2775
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2776
    return-void
.end method

.method public shareCurrentPage()V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->shareCurrentPage(Lcom/android/browser/Tab;)V

    .line 575
    return-void
.end method

.method protected shareCurrentPage(Lcom/android/browser/Tab;)V
    .locals 7
    .parameter "tab"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 579
    if-eqz p1, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/browser/Controller;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v5

    iget-object v6, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/android/browser/Controller;->getDesiredThumbnailHeight(Landroid/content/Context;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/browser/Controller;->createScreenshot(Landroid/webkit/WebView;II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/browser/Controller;->sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 586
    :cond_0
    return-void
.end method

.method public shouldCaptureThumbnails()Z
    .locals 1

    .prologue
    .line 2785
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->shouldCaptureThumbnails()Z

    move-result v0

    return v0
.end method

.method public shouldOverrideKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 947
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mMenuIsDown:Z

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/Window;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 952
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Lcom/android/browser/Tab;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "tab"
    .parameter "view"
    .parameter "url"

    .prologue
    .line 942
    iget-object v0, p0, Lcom/android/browser/Controller;->mUrlHandler:Lcom/android/browser/UrlHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/browser/UrlHandler;->shouldOverrideUrlLoading(Lcom/android/browser/Tab;Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldShowErrorConsole()Z
    .locals 1

    .prologue
    .line 780
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mShouldShowErrorConsole:Z

    return v0
.end method

.method public showAutoLogin(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 1063
    sget-boolean v0, Lcom/android/browser/Controller;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1065
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->showAutoLogin(Lcom/android/browser/Tab;)V

    .line 1066
    return-void
.end method

.method public showCustomView(Lcom/android/browser/Tab;Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1
    .parameter "tab"
    .parameter "view"
    .parameter "requestedOrientation"
    .parameter "callback"

    .prologue
    .line 1140
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->isCustomViewShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1142
    invoke-interface {p4}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 1152
    :cond_0
    :goto_0
    return-void

    .line 1145
    :cond_1
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p2, p3, p4}, Lcom/android/browser/UI;->showCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 1148
    iget v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    iput v0, p0, Lcom/android/browser/Controller;->mOldMenuState:I

    .line 1149
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    .line 1150
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public showMiuiHome(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 2820
    return-void
.end method

.method public showPageInfo()V
    .locals 4

    .prologue
    .line 1753
    iget-object v0, p0, Lcom/android/browser/Controller;->mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/browser/PageDialogsHandler;->showPageInfo(Lcom/android/browser/Tab;ZLjava/lang/String;)V

    .line 1754
    return-void
.end method

.method public showReader(Lcom/android/browser/Tab;Z)V
    .locals 0
    .parameter "tab"
    .parameter "show"

    .prologue
    .line 2822
    return-void
.end method

.method public showSslCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/android/browser/Controller;->mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/browser/PageDialogsHandler;->showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 1059
    return-void
.end method

.method start(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 3
    .parameter "icicle"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 280
    const-string v1, "no-crash-recovery"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 281
    .local v0, noCrashRecovery:Z
    if-nez p1, :cond_0

    if-eqz v0, :cond_1

    .line 282
    :cond_0
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/browser/Controller;->doStart(Landroid/os/Bundle;Landroid/content/Intent;Z)V

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v1, p0, Lcom/android/browser/Controller;->mCrashRecoveryHandler:Lcom/android/browser/CrashRecoveryHandler;

    invoke-virtual {v1, p2}, Lcom/android/browser/CrashRecoveryHandler;->startRecovery(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected startHandler()V
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 489
    new-instance v0, Lcom/android/browser/Controller$4;

    invoke-direct {v0, p0}, Lcom/android/browser/Controller$4;-><init>(Lcom/android/browser/Controller;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    .line 565
    return-void
.end method

.method public startVoiceSearch()V
    .locals 3

    .prologue
    .line 1114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1115
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "web_search"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1117
    const-string v1, "calling_package"

    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1119
    const-string v1, "android.speech.extras.SEND_APPLICATION_ID_EXTRA"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1120
    const-string v1, "android.speech.extra.WEB_SEARCH_ONLY"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1121
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1122
    return-void
.end method

.method public stopLoading()V
    .locals 3

    .prologue
    .line 799
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/browser/Controller;->mLoadStopped:Z

    .line 800
    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 801
    .local v0, tab:Lcom/android/browser/Tab;
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 802
    .local v1, w:Landroid/webkit/WebView;
    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 803
    iget-object v2, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v2, v0}, Lcom/android/browser/UI;->onPageStopped(Lcom/android/browser/Tab;)V

    .line 804
    return-void
.end method

.method public supportsVoiceSearch()Z
    .locals 2

    .prologue
    .line 1134
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getSettings()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getSearchEngine()Lcom/android/browser/search/SearchEngine;

    move-result-object v0

    .line 1135
    .local v0, searchEngine:Lcom/android/browser/search/SearchEngine;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/browser/search/SearchEngine;->supportsVoiceSearch()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public switchToTab(Lcom/android/browser/Tab;)Z
    .locals 2
    .parameter "tab"

    .prologue
    .line 2401
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2402
    .local v0, currentTab:Lcom/android/browser/Tab;
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    .line 2403
    :cond_0
    const/4 v1, 0x0

    .line 2406
    :goto_0
    return v1

    .line 2405
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 2406
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public updateMenuState(Lcom/android/browser/Tab;Landroid/view/Menu;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1493
    .line 1498
    if-eqz p1, :cond_6

    .line 1499
    invoke-virtual {p1}, Lcom/android/browser/Tab;->canGoBack()Z

    move-result v6

    .line 1500
    invoke-virtual {p1}, Lcom/android/browser/Tab;->canGoForward()Z

    move-result v5

    .line 1501
    iget-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1502
    iget-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/browser/BrowserSettings;->hasDesktopUseragent(Landroid/webkit/WebView;)Z

    move-result v3

    .line 1503
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isSnapshot()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1505
    :goto_0
    const v7, 0x7f0d00e2

    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 1506
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1508
    const v6, 0x7f0d00d7

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 1509
    if-nez v4, :cond_2

    move v4, v1

    :goto_1
    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1511
    const v4, 0x7f0d00be

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1512
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1514
    invoke-virtual {p0}, Lcom/android/browser/Controller;->isInLoad()Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f0d00e5

    :goto_2
    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1516
    const v5, 0x7f0d00bd

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1517
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 1518
    invoke-interface {v4}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1519
    invoke-interface {v4}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1521
    :cond_0
    const v4, 0x7f0d00bc

    invoke-interface {p2, v4, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1524
    iget-object v4, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1525
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1526
    const-string v6, "text/plain"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1527
    const/high16 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 1529
    const v5, 0x7f0d00c4

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v4, :cond_4

    move v4, v1

    :goto_3
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1531
    iget-object v4, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v4}, Lcom/android/browser/BrowserSettings;->enableNavDump()Z

    move-result v4

    .line 1532
    const v5, 0x7f0d00d0

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1533
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1534
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1536
    iget-object v4, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v4}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v4

    .line 1537
    const v5, 0x7f0d00d1

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1538
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1539
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1540
    const v4, 0x7f0d00c6

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1541
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1542
    const v3, 0x7f0d00c3

    invoke-interface {p2, v3, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1543
    const v3, 0x7f0d00c8

    if-nez v0, :cond_5

    :goto_4
    invoke-interface {p2, v3, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1544
    const v0, 0x7f0d00ca

    invoke-interface {p2, v0, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1546
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1, p2}, Lcom/android/browser/UI;->updateMenuState(Lcom/android/browser/Tab;Landroid/view/Menu;)V

    .line 1547
    return-void

    :cond_1
    move v0, v2

    .line 1503
    goto/16 :goto_0

    :cond_2
    move v4, v2

    .line 1509
    goto/16 :goto_1

    .line 1514
    :cond_3
    const v4, 0x7f0d00e6

    goto/16 :goto_2

    :cond_4
    move v4, v2

    .line 1529
    goto :goto_3

    :cond_5
    move v1, v2

    .line 1543
    goto :goto_4

    :cond_6
    move v0, v2

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    goto/16 :goto_0
.end method

.method protected updateScreenshot(Lcom/android/browser/Tab;)V
    .locals 7
    .parameter "tab"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 2029
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    .line 2030
    .local v6, view:Landroid/webkit/WebView;
    if-nez v6, :cond_1

    .line 2083
    :cond_0
    :goto_0
    return-void

    .line 2034
    :cond_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 2035
    .local v4, url:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v3

    .line 2037
    .local v3, originalUrl:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2044
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/browser/Tab;->isBookmarkedSite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2048
    :cond_2
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/browser/Controller;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/browser/Controller;->getDesiredThumbnailHeight(Landroid/content/Context;)I

    move-result v1

    invoke-static {v6, v0, v1}, Lcom/android/browser/Controller;->createScreenshot(Landroid/webkit/WebView;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2050
    .local v5, bm:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_0

    .line 2054
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2055
    .local v2, cr:Landroid/content/ContentResolver;
    new-instance v0, Lcom/android/browser/Controller$10;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/Controller$10;-><init>(Lcom/android/browser/Controller;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/Controller$10;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method viewDownloads()V
    .locals 2

    .prologue
    .line 1857
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1858
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1859
    return-void
.end method
