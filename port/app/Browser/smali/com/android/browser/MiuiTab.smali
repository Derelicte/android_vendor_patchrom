.class public Lcom/android/browser/MiuiTab;
.super Lcom/android/browser/Tab;
.source "MiuiTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/MiuiTab$ReadingChromeClient;,
        Lcom/android/browser/MiuiTab$ReadingClient;,
        Lcom/android/browser/MiuiTab$MiuiMainWebViewClient;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private mIsShowingMiuiHome:Z

.field private mMiuiHomeSelectedTabPosition:I

.field mReadingController:Lcom/android/browser/reading/ReadingModeController;

.field mReadingWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/android/browser/MiuiTab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/browser/MiuiTab;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/browser/WebViewController;Landroid/os/Bundle;)V
    .locals 1
    .parameter "wvcontroller"
    .parameter "state"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/browser/Tab;-><init>(Lcom/android/browser/WebViewController;Landroid/os/Bundle;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/MiuiTab;->mIsShowingMiuiHome:Z

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/browser/MiuiTab;->mMiuiHomeSelectedTabPosition:I

    .line 43
    return-void
.end method

.method constructor <init>(Lcom/android/browser/WebViewController;Landroid/webkit/WebView;)V
    .locals 1
    .parameter "wvcontroller"
    .parameter "w"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/browser/Tab;-><init>(Lcom/android/browser/WebViewController;Landroid/webkit/WebView;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/MiuiTab;->mIsShowingMiuiHome:Z

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/browser/MiuiTab;->mMiuiHomeSelectedTabPosition:I

    .line 39
    return-void
.end method

.method constructor <init>(Lcom/android/browser/WebViewController;Landroid/webkit/WebView;Landroid/os/Bundle;)V
    .locals 1
    .parameter "wvcontroller"
    .parameter "w"
    .parameter "state"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/Tab;-><init>(Lcom/android/browser/WebViewController;Landroid/webkit/WebView;Landroid/os/Bundle;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/MiuiTab;->mIsShowingMiuiHome:Z

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/browser/MiuiTab;->mMiuiHomeSelectedTabPosition:I

    .line 47
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/browser/MiuiTab;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/MiuiTab;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/browser/MiuiTab;->setShowingMiuiHome(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/browser/MiuiTab;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/android/browser/MiuiTab;->mIsShowingMiuiHome:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/browser/MiuiTab;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/browser/MiuiTab;->isReadingModeEnabled()Z

    move-result v0

    return v0
.end method

.method private isReadingModeEnabled()Z
    .locals 1

    .prologue
    .line 324
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getReadingModeEnabled()Z

    move-result v0

    return v0
.end method

.method private setShowingMiuiHome(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/android/browser/MiuiTab;->mIsShowingMiuiHome:Z

    .line 220
    return-void
.end method


# virtual methods
.method canEnterReadingMode()Z
    .locals 1

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/android/browser/MiuiTab;->isShowingMiuiHome()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/browser/MiuiTab;->mInPageLoad:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/browser/MiuiTab;->isReadingModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/MiuiTab;->mReadingController:Lcom/android/browser/reading/ReadingModeController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/MiuiTab;->mReadingController:Lcom/android/browser/reading/ReadingModeController;

    invoke-virtual {v0}, Lcom/android/browser/reading/ReadingModeController;->isReadingModeDataAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic canGoBack()Z
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/android/browser/Tab;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic canGoForward()Z
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/android/browser/Tab;->canGoForward()Z

    move-result v0

    return v0
.end method

.method protected capture()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/browser/MiuiTab;->mMainView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/MiuiTab;->mCapture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/MiuiTab;->isShowingMiuiHome()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/browser/MiuiTab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0}, Lcom/android/browser/WebViewController;->getMiuiHome()Lcom/android/browser/MiuiHome;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/MiuiHome;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    invoke-virtual {p0}, Lcom/android/browser/MiuiTab;->captureMiuiHome()V

    goto :goto_0

    .line 169
    :cond_2
    invoke-super {p0}, Lcom/android/browser/Tab;->capture()V

    goto :goto_0
.end method

.method protected captureMiuiHome()V
    .locals 9

    .prologue
    .line 174
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/android/browser/MiuiTab;->mCapture:Landroid/graphics/Bitmap;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 175
    .local v0, c:Landroid/graphics/Canvas;
    iget-object v7, p0, Lcom/android/browser/MiuiTab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v7}, Lcom/android/browser/WebViewController;->getMiuiHome()Lcom/android/browser/MiuiHome;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/browser/MiuiHome;->getScrollX()I

    move-result v1

    .line 176
    .local v1, left:I
    iget-object v7, p0, Lcom/android/browser/MiuiTab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v7}, Lcom/android/browser/WebViewController;->getMiuiHome()Lcom/android/browser/MiuiHome;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/browser/MiuiHome;->getScrollY()I

    move-result v5

    .line 177
    .local v5, top:I
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 178
    .local v3, state:I
    neg-int v7, v1

    int-to-float v7, v7

    neg-int v8, v5

    int-to-float v8, v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 179
    iget v7, p0, Lcom/android/browser/MiuiTab;->mCaptureWidth:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/browser/MiuiTab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v8}, Lcom/android/browser/WebViewController;->getMiuiHome()Lcom/android/browser/MiuiHome;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/browser/MiuiHome;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v2, v7, v8

    .line 180
    .local v2, scale:F
    int-to-float v7, v1

    int-to-float v8, v5

    invoke-virtual {v0, v2, v2, v7, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 181
    const/high16 v7, -0x100

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 182
    iget-object v7, p0, Lcom/android/browser/MiuiTab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v7}, Lcom/android/browser/WebViewController;->getMiuiHome()Lcom/android/browser/MiuiHome;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/browser/MiuiHome;->draw(Landroid/graphics/Canvas;)V

    .line 183
    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 185
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 186
    iget-object v7, p0, Lcom/android/browser/MiuiTab;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x2a

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 187
    invoke-virtual {p0}, Lcom/android/browser/MiuiTab;->persistThumbnail()V

    .line 188
    iget-object v7, p0, Lcom/android/browser/MiuiTab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v7}, Lcom/android/browser/WebViewController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v4

    .line 189
    .local v4, tc:Lcom/android/browser/TabControl;
    if-eqz v4, :cond_0

    .line 190
    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getOnThumbnailUpdatedListener()Lcom/android/browser/TabControl$OnThumbnailUpdatedListener;

    move-result-object v6

    .line 192
    .local v6, updateListener:Lcom/android/browser/TabControl$OnThumbnailUpdatedListener;
    if-eqz v6, :cond_0

    .line 193
    invoke-interface {v6, p0}, Lcom/android/browser/TabControl$OnThumbnailUpdatedListener;->onThumbnailUpdated(Lcom/android/browser/Tab;)V

    .line 196
    .end local v6           #updateListener:Lcom/android/browser/TabControl$OnThumbnailUpdatedListener;
    :cond_0
    return-void
.end method

.method public bridge synthetic clearBackStackWhenItemAdded(Ljava/util/regex/Pattern;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/android/browser/Tab;->clearBackStackWhenItemAdded(Ljava/util/regex/Pattern;)V

    return-void
.end method

.method public bridge synthetic compressBitmap(Landroid/graphics/Bitmap;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/android/browser/Tab;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    return-object v0
.end method

.method createReadingWebView()V
    .locals 4

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/browser/MiuiTab;->mReadingWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/browser/MiuiTab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0}, Lcom/android/browser/WebViewController;->getWebViewFactory()Lcom/android/browser/WebViewFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/browser/WebViewFactory;->createWebView(Z)Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/MiuiTab;->mReadingWebView:Landroid/webkit/WebView;

    .line 330
    iget-object v0, p0, Lcom/android/browser/MiuiTab;->mReadingWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/browser/MiuiTab$ReadingClient;

    iget-object v2, p0, Lcom/android/browser/MiuiTab;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v3, p0, Lcom/android/browser/MiuiTab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/browser/MiuiTab$ReadingClient;-><init>(Lcom/android/browser/MiuiTab;Landroid/webkit/WebViewClient;Lcom/android/browser/WebViewController;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 331
    iget-object v0, p0, Lcom/android/browser/MiuiTab;->mReadingWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/browser/MiuiTab$ReadingChromeClient;

    iget-object v2, p0, Lcom/android/browser/MiuiTab;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-direct {v1, p0, v2}, Lcom/android/browser/MiuiTab$ReadingChromeClient;-><init>(Lcom/android/browser/MiuiTab;Landroid/webkit/WebChromeClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 333
    :cond_0
    return-void
.end method

.method public bridge synthetic createSnapshotValues()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/android/browser/Tab;->createSnapshotValues()Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lcom/android/browser/MiuiTab;->mReadingController:Lcom/android/browser/reading/ReadingModeController;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/browser/MiuiTab;->mReadingController:Lcom/android/browser/reading/ReadingModeController;

    invoke-virtual {v0}, Lcom/android/browser/reading/ReadingModeController;->destroy()V

    .line 110
    iput-object v1, p0, Lcom/android/browser/MiuiTab;->mReadingController:Lcom/android/browser/reading/ReadingModeController;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/browser/MiuiTab;->mReadingWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/browser/MiuiTab;->mReadingWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 115
    iput-object v1, p0, Lcom/android/browser/MiuiTab;->mReadingWebView:Landroid/webkit/WebView;

    .line 118
    :cond_1
    invoke-super {p0}, Lcom/android/browser/Tab;->destroy()V

    .line 119
    return-void
.end method

.method enterReadingMode()V
    .locals 2

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/android/browser/MiuiTab;->isReadingModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/android/browser/MiuiTab;->mReadingWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    .line 350
    invoke-virtual {p0}, Lcom/android/browser/MiuiTab;->createReadingWebView()V

    .line 351
    iget-object v0, p0, Lcom/android/browser/MiuiTab;->mReadingController:Lcom/android/browser/reading/ReadingModeController;

    iget-object v1, p0, Lcom/android/browser/MiuiTab;->mReadingWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/android/browser/reading/ReadingModeController;->setReaderView(Landroid/webkit/WebView;)V

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/android/browser/MiuiTab;->mReadingWebView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/ReadingMode.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/android/browser/MiuiTab;->mWebViewController:Lcom/android/browser/WebViewController;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/browser/WebViewController;->showReader(Lcom/android/browser/Tab;Z)V

    goto :goto_0
.end method

.method getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/browser/MiuiTab;->mIsShowingMiuiHome:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/browser/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getId()J
    .locals 2

    .prologue
    .line 22
    invoke-super {p0}, Lcom/android/browser/Tab;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getMainWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/android/browser/MiuiTab$MiuiMainWebViewClient;

    invoke-direct {v0, p0}, Lcom/android/browser/MiuiTab$MiuiMainWebViewClient;-><init>(Lcom/android/browser/MiuiTab;)V

    return-object v0
.end method

.method getMiuiHomeSelectedTabPosition()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/android/browser/MiuiTab;->mMiuiHomeSelectedTabPosition:I

    return v0
.end method

.method getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/browser/MiuiTab;->mIsShowingMiuiHome:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/browser/Tab;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getParent()Lcom/android/browser/Tab;
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/android/browser/Tab;->getParent()Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method public getReaderWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/browser/MiuiTab;->mReadingWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public bridge synthetic getScreenshot()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/android/browser/Tab;->getScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/browser/MiuiTab;->mIsShowingMiuiHome:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/browser/MiuiTab;->mIsShowingMiuiHome:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getVoiceDisplayTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/android/browser/Tab;->getVoiceDisplayTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVoiceSearchResults()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/android/browser/Tab;->getVoiceSearchResults()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic goBack()V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Lcom/android/browser/Tab;->goBack()V

    return-void
.end method

.method public bridge synthetic goForward()V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Lcom/android/browser/Tab;->goForward()V

    return-void
.end method

.method public bridge synthetic isBookmarkedSite()Z
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/android/browser/Tab;->isBookmarkedSite()Z

    move-result v0

    return v0
.end method

.method public isFromDefaultBookmarks()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 199
    iget-boolean v4, p0, Lcom/android/browser/MiuiTab;->mIsShowingMiuiHome:Z

    if-eqz v4, :cond_0

    move v4, v5

    .line 210
    :goto_0
    return v4

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/MiuiTab;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/browser/MiuiTab;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, originalUrl:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/browser/MiuiTab;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {}, Lcom/android/browser/util/LanguageUtil;->isInternationalVersion()Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x7f080068

    :goto_1
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, bookmarks:[Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_2
    array-length v4, v0

    if-ge v1, v4, :cond_4

    .line 206
    aget-object v4, v0, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    aget-object v4, v0, v1

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 207
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 203
    .end local v0           #bookmarks:[Ljava/lang/String;
    .end local v1           #i:I
    :cond_2
    const v4, 0x7f08006a

    goto :goto_1

    .line 205
    .restart local v0       #bookmarks:[Ljava/lang/String;
    .restart local v1       #i:I
    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_4
    move v4, v5

    .line 210
    goto :goto_0
.end method

.method public bridge synthetic isInVoiceSearchMode()Z
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/android/browser/Tab;->isInVoiceSearchMode()Z

    move-result v0

    return v0
.end method

.method isShowingMiuiHome()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/android/browser/MiuiTab;->mIsShowingMiuiHome:Z

    return v0
.end method

.method public bridge synthetic isSnapshot()Z
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/android/browser/Tab;->isSnapshot()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-super {p0, p1, p2}, Lcom/android/browser/Tab;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-super {p0, p1, p2}, Lcom/android/browser/Tab;->onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V

    return-void
.end method

.method public bridge synthetic refreshIdAfterPreload()V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Lcom/android/browser/Tab;->refreshIdAfterPreload()V

    return-void
.end method

.method protected restoreState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "b"

    .prologue
    .line 156
    if-eqz p1, :cond_0

    .line 157
    const-string v0, "isShowingMiuiHome"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/browser/MiuiTab;->mIsShowingMiuiHome:Z

    .line 159
    :cond_0
    invoke-super {p0, p1}, Lcom/android/browser/Tab;->restoreState(Landroid/os/Bundle;)V

    .line 160
    return-void
.end method

.method public bridge synthetic revertVoiceSearchMode()V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Lcom/android/browser/Tab;->revertVoiceSearchMode()V

    return-void
.end method

.method public saveState()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 147
    invoke-super {p0}, Lcom/android/browser/Tab;->saveState()Landroid/os/Bundle;

    move-result-object v0

    .line 148
    .local v0, ret:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 149
    iget-object v1, p0, Lcom/android/browser/MiuiTab;->mSavedState:Landroid/os/Bundle;

    const-string v2, "isShowingMiuiHome"

    iget-boolean v3, p0, Lcom/android/browser/MiuiTab;->mIsShowingMiuiHome:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 151
    :cond_0
    return-object v0
.end method

.method public bridge synthetic setController(Lcom/android/browser/WebViewController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/android/browser/Tab;->setController(Lcom/android/browser/WebViewController;)V

    return-void
.end method

.method setMiuiHomeSelectedTabPosition(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 223
    iput p1, p0, Lcom/android/browser/MiuiTab;->mMiuiHomeSelectedTabPosition:I

    .line 224
    return-void
.end method

.method setWebView(Landroid/webkit/WebView;)V
    .locals 2
    .parameter "w"

    .prologue
    .line 94
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 95
    check-cast v0, Lcom/android/browser/MiuiBrowserWebView;

    invoke-virtual {v0, p0}, Lcom/android/browser/MiuiBrowserWebView;->setOwner(Lcom/android/browser/Tab;)V

    .line 98
    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/browser/MiuiTab;->isReadingModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    new-instance v0, Lcom/android/browser/reading/ReadingModeController;

    iget-object v1, p0, Lcom/android/browser/MiuiTab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v1}, Lcom/android/browser/WebViewController;->getWebViewFactory()Lcom/android/browser/WebViewFactory;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/browser/reading/ReadingModeController;-><init>(Lcom/android/browser/WebViewFactory;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/android/browser/MiuiTab;->mReadingController:Lcom/android/browser/reading/ReadingModeController;

    .line 103
    :cond_1
    invoke-super {p0, p1}, Lcom/android/browser/Tab;->setWebView(Landroid/webkit/WebView;)V

    .line 104
    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/android/browser/Tab;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic updateBookmarkedStatus()V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Lcom/android/browser/Tab;->updateBookmarkedStatus()V

    return-void
.end method

.method public bridge synthetic updateShouldCaptureThumbnails()V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Lcom/android/browser/Tab;->updateShouldCaptureThumbnails()V

    return-void
.end method

.method public bridge synthetic voiceSearchSourceIsGoogle()Z
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/android/browser/Tab;->voiceSearchSourceIsGoogle()Z

    move-result v0

    return v0
.end method
