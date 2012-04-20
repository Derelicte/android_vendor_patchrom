.class public Lcom/android/browser/reading/ReadingModeController;
.super Ljava/lang/Object;
.source "ReadingModeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/reading/ReadingModeController$ReadingData;,
        Lcom/android/browser/reading/ReadingModeController$ReadingDataRunnable;,
        Lcom/android/browser/reading/ReadingModeController$ReadingJSInterface;,
        Lcom/android/browser/reading/ReadingModeController$BackgroundWebViewClient;
    }
.end annotation


# static fields
.field private static LOGTAG:Ljava/lang/String;


# instance fields
.field mBackgroundProvider:Lcom/android/browser/reading/ReadingModePageDataProvider;

.field private mBackgroundView:Lcom/android/browser/MiuiBrowserWebView;

.field private mBaseUrl:Ljava/lang/String;

.field private mCanceled:Z

.field mForegroundProvider:Lcom/android/browser/reading/ReadingModePageDataProvider;

.field private mLoadOriginalPage:Z

.field private mNextUrl:Ljava/lang/String;

.field mPageDataProvider:Lcom/android/browser/reading/ReadingModePageDataProvider;

.field private mPriviousTitle:Ljava/lang/String;

.field private mReadPages:I

.field private mReaderView:Lcom/android/browser/MiuiBrowserWebView;

.field private mReadingData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/reading/ReadingModeController$ReadingData;",
            ">;"
        }
    .end annotation
.end field

.field private mRetry:I

.field private mRule:Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;

.field private mRuleProvider:Lcom/android/browser/reading/ReadingModeRuleProvider;

.field private mShowReading:Z

.field private mView:Lcom/android/browser/MiuiBrowserWebView;

.field private mWebViewFactory:Lcom/android/browser/WebViewFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/android/browser/reading/ReadingModeController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/browser/reading/ReadingModeController;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/browser/WebViewFactory;Landroid/webkit/WebView;)V
    .locals 2
    .parameter "webViewFactory"
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mReadingData:Ljava/util/ArrayList;

    .line 45
    iput-boolean v1, p0, Lcom/android/browser/reading/ReadingModeController;->mCanceled:Z

    .line 47
    iput v1, p0, Lcom/android/browser/reading/ReadingModeController;->mRetry:I

    .line 48
    iput v1, p0, Lcom/android/browser/reading/ReadingModeController;->mReadPages:I

    .line 51
    new-instance v0, Lcom/android/browser/reading/ReadingModePageDataProvider;

    invoke-direct {v0, p0}, Lcom/android/browser/reading/ReadingModePageDataProvider;-><init>(Lcom/android/browser/reading/ReadingModeController;)V

    iput-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mForegroundProvider:Lcom/android/browser/reading/ReadingModePageDataProvider;

    .line 53
    new-instance v0, Lcom/android/browser/reading/ReadingModePageDataProvider;

    invoke-direct {v0, p0}, Lcom/android/browser/reading/ReadingModePageDataProvider;-><init>(Lcom/android/browser/reading/ReadingModeController;)V

    iput-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mBackgroundProvider:Lcom/android/browser/reading/ReadingModePageDataProvider;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mPageDataProvider:Lcom/android/browser/reading/ReadingModePageDataProvider;

    .line 60
    iput-object p1, p0, Lcom/android/browser/reading/ReadingModeController;->mWebViewFactory:Lcom/android/browser/WebViewFactory;

    .line 61
    check-cast p2, Lcom/android/browser/MiuiBrowserWebView;

    .end local p2
    iput-object p2, p0, Lcom/android/browser/reading/ReadingModeController;->mView:Lcom/android/browser/MiuiBrowserWebView;

    .line 62
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mForegroundProvider:Lcom/android/browser/reading/ReadingModePageDataProvider;

    iget-object v1, p0, Lcom/android/browser/reading/ReadingModeController;->mView:Lcom/android/browser/MiuiBrowserWebView;

    invoke-virtual {v0, v1}, Lcom/android/browser/reading/ReadingModePageDataProvider;->init(Lcom/android/browser/MiuiBrowserWebView;)V

    .line 63
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/browser/reading/ReadingModeController;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/browser/reading/ReadingModeController;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mReadingData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/browser/reading/ReadingModeController;)Lcom/android/browser/MiuiBrowserWebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mReaderView:Lcom/android/browser/MiuiBrowserWebView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/browser/reading/ReadingModeController;)Lcom/android/browser/MiuiBrowserWebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mView:Lcom/android/browser/MiuiBrowserWebView;

    return-object v0
.end method

.method static synthetic access$1308(Lcom/android/browser/reading/ReadingModeController;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/android/browser/reading/ReadingModeController;->mReadPages:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/browser/reading/ReadingModeController;->mReadPages:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/browser/reading/ReadingModeController;)Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mRule:Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/reading/ReadingModeController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/browser/reading/ReadingModeController;->mCanceled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/browser/reading/ReadingModeController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/android/browser/reading/ReadingModeController;->mRetry:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/browser/reading/ReadingModeController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/android/browser/reading/ReadingModeController;->mRetry:I

    return p1
.end method

.method static synthetic access$408(Lcom/android/browser/reading/ReadingModeController;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/android/browser/reading/ReadingModeController;->mRetry:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/browser/reading/ReadingModeController;->mRetry:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/browser/reading/ReadingModeController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/browser/reading/ReadingModeController;->getNextPage()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/browser/reading/ReadingModeController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/browser/reading/ReadingModeController;->mLoadOriginalPage:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/browser/reading/ReadingModeController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/android/browser/reading/ReadingModeController;->mLoadOriginalPage:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/browser/reading/ReadingModeController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mNextUrl:Ljava/lang/String;

    return-object v0
.end method

.method private addNewReadingPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "content"
    .parameter "comments"

    .prologue
    .line 176
    iget-object v2, p0, Lcom/android/browser/reading/ReadingModeController;->mReaderView:Lcom/android/browser/MiuiBrowserWebView;

    invoke-virtual {v2}, Lcom/android/browser/MiuiBrowserWebView;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    move-object v0, p1

    .line 182
    .local v0, _title:Ljava/lang/String;
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/browser/reading/ReadingModeController;->mPriviousTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    const/4 v0, 0x0

    .line 185
    :cond_2
    iput-object p1, p0, Lcom/android/browser/reading/ReadingModeController;->mPriviousTitle:Ljava/lang/String;

    .line 188
    invoke-static {p2}, Lcom/android/browser/reading/ReadingModeController;->processImageElements(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "var contentHTML=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\';"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "appendPage();setContent(contentHTML);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, code:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "var titleHTML=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\';"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "setTitle(titleHTML);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    :cond_3
    iget-object v2, p0, Lcom/android/browser/reading/ReadingModeController;->mReaderView:Lcom/android/browser/MiuiBrowserWebView;

    invoke-static {v2, v1}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/MiuiBrowserWebView;Ljava/lang/String;)V

    .line 202
    iget-object v2, p0, Lcom/android/browser/reading/ReadingModeController;->mNextUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/browser/common/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/android/browser/reading/ReadingModeController;->mReaderView:Lcom/android/browser/MiuiBrowserWebView;

    const-string v3, "hideLoading();"

    invoke-static {v2, v3}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/MiuiBrowserWebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private clearData(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 310
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/browser/reading/ReadingModeController;->mReadingData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 311
    iget-object v2, p0, Lcom/android/browser/reading/ReadingModeController;->mReadingData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/reading/ReadingModeController$ReadingData;

    .line 312
    .local v0, data:Lcom/android/browser/reading/ReadingModeController$ReadingData;
    iget-object v2, v0, Lcom/android/browser/reading/ReadingModeController$ReadingData;->url:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 317
    .end local v0           #data:Lcom/android/browser/reading/ReadingModeController$ReadingData;
    :cond_0
    return-void

    .line 315
    .restart local v0       #data:Lcom/android/browser/reading/ReadingModeController$ReadingData;
    :cond_1
    iget-object v2, p0, Lcom/android/browser/reading/ReadingModeController;->mReadingData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method private createBackgroundView()V
    .locals 4

    .prologue
    .line 321
    iget-object v1, p0, Lcom/android/browser/reading/ReadingModeController;->mWebViewFactory:Lcom/android/browser/WebViewFactory;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/browser/WebViewFactory;->createWebView(Z)Landroid/webkit/WebView;

    move-result-object v1

    check-cast v1, Lcom/android/browser/MiuiBrowserWebView;

    iput-object v1, p0, Lcom/android/browser/reading/ReadingModeController;->mBackgroundView:Lcom/android/browser/MiuiBrowserWebView;

    .line 322
    iget-object v1, p0, Lcom/android/browser/reading/ReadingModeController;->mBackgroundView:Lcom/android/browser/MiuiBrowserWebView;

    if-nez v1, :cond_0

    .line 332
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/android/browser/reading/ReadingModeController;->mView:Lcom/android/browser/MiuiBrowserWebView;

    invoke-virtual {v1}, Lcom/android/browser/MiuiBrowserWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgent()I

    move-result v0

    .line 327
    .local v0, userAgent:I
    if-eqz v0, :cond_1

    .line 328
    iget-object v1, p0, Lcom/android/browser/reading/ReadingModeController;->mBackgroundView:Lcom/android/browser/MiuiBrowserWebView;

    invoke-virtual {v1}, Lcom/android/browser/MiuiBrowserWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgent(I)V

    .line 331
    :cond_1
    iget-object v1, p0, Lcom/android/browser/reading/ReadingModeController;->mBackgroundView:Lcom/android/browser/MiuiBrowserWebView;

    new-instance v2, Lcom/android/browser/reading/ReadingModeController$BackgroundWebViewClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/browser/reading/ReadingModeController$BackgroundWebViewClient;-><init>(Lcom/android/browser/reading/ReadingModeController;Lcom/android/browser/reading/ReadingModeController$1;)V

    invoke-virtual {v1, v2}, Lcom/android/browser/MiuiBrowserWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_0
.end method

.method private getNextPage()V
    .locals 5

    .prologue
    .line 335
    iget-object v3, p0, Lcom/android/browser/reading/ReadingModeController;->mNextUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/browser/common/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 353
    :goto_0
    return-void

    .line 341
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/android/browser/reading/ReadingModeController;->mCanceled:Z

    .line 342
    new-instance v0, Ljava/net/URI;

    iget-object v3, p0, Lcom/android/browser/reading/ReadingModeController;->mBaseUrl:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, baseUri:Ljava/net/URI;
    new-instance v2, Ljava/net/URI;

    iget-object v3, p0, Lcom/android/browser/reading/ReadingModeController;->mNextUrl:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 344
    .local v2, nextUri:Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->isAbsolute()Z

    move-result v3

    if-nez v3, :cond_1

    .line 345
    invoke-virtual {v0, v2}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v2

    .line 348
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/browser/reading/ReadingModeController;->getNextPageFromHost(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    .end local v0           #baseUri:Ljava/net/URI;
    .end local v2           #nextUri:Ljava/net/URI;
    :catch_0
    move-exception v1

    .line 351
    .local v1, e:Ljava/net/URISyntaxException;
    sget-object v3, Lcom/android/browser/reading/ReadingModeController;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getNextPageFromHost(Ljava/net/URI;)V
    .locals 2
    .parameter "nextUri"

    .prologue
    .line 356
    sget-object v0, Lcom/android/browser/reading/ReadingModeController;->LOGTAG:Ljava/lang/String;

    const-string v1, "getNextPageFromHost"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mRule:Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;

    if-nez v0, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mNextUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mBackgroundView:Lcom/android/browser/MiuiBrowserWebView;

    if-nez v0, :cond_2

    .line 371
    invoke-direct {p0}, Lcom/android/browser/reading/ReadingModeController;->createBackgroundView()V

    .line 372
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mBackgroundView:Lcom/android/browser/MiuiBrowserWebView;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mBackgroundProvider:Lcom/android/browser/reading/ReadingModePageDataProvider;

    iget-object v1, p0, Lcom/android/browser/reading/ReadingModeController;->mBackgroundView:Lcom/android/browser/MiuiBrowserWebView;

    invoke-virtual {v0, v1}, Lcom/android/browser/reading/ReadingModePageDataProvider;->init(Lcom/android/browser/MiuiBrowserWebView;)V

    .line 380
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mBackgroundProvider:Lcom/android/browser/reading/ReadingModePageDataProvider;

    iput-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mPageDataProvider:Lcom/android/browser/reading/ReadingModePageDataProvider;

    .line 381
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javascript"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mBackgroundView:Lcom/android/browser/MiuiBrowserWebView;

    iget-object v1, p0, Lcom/android/browser/reading/ReadingModeController;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/browser/MiuiBrowserWebView;->loadUrl(Ljava/lang/String;)V

    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/reading/ReadingModeController;->mLoadOriginalPage:Z

    goto :goto_0

    .line 391
    :cond_2
    sget-object v0, Lcom/android/browser/reading/ReadingModeController;->LOGTAG:Ljava/lang/String;

    const-string v1, "logurl from backgroup view"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mBackgroundView:Lcom/android/browser/MiuiBrowserWebView;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/MiuiBrowserWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getRuleProvider()Lcom/android/browser/reading/ReadingModeRuleProvider;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mRuleProvider:Lcom/android/browser/reading/ReadingModeRuleProvider;

    if-nez v0, :cond_1

    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mRuleProvider:Lcom/android/browser/reading/ReadingModeRuleProvider;

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/browser/reading/ReadingModeController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/reading/ReadingModeRuleProvider;->getInstance(Landroid/content/Context;)Lcom/android/browser/reading/ReadingModeRuleProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mRuleProvider:Lcom/android/browser/reading/ReadingModeRuleProvider;

    .line 86
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mRuleProvider:Lcom/android/browser/reading/ReadingModeRuleProvider;

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isInTest()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method private onReadingDataReady(Lcom/android/browser/reading/ReadingModeController$ReadingData;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mReadingData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v0, p1, Lcom/android/browser/reading/ReadingModeController$ReadingData;->nextLink:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mNextUrl:Ljava/lang/String;

    .line 211
    iget-boolean v0, p0, Lcom/android/browser/reading/ReadingModeController;->mShowReading:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p1, Lcom/android/browser/reading/ReadingModeController$ReadingData;->title:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/browser/reading/ReadingModeController$ReadingData;->content:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/browser/reading/ReadingModeController$ReadingData;->comments:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/browser/reading/ReadingModeController;->addNewReadingPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mReadingData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 217
    invoke-direct {p0}, Lcom/android/browser/reading/ReadingModeController;->updateUI()V

    .line 219
    :cond_1
    return-void
.end method

.method public static preprocessWapHTML(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "wapHTML"

    .prologue
    const/4 v8, -0x1

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .local v1, builder:Ljava/lang/StringBuilder;
    const-string v6, "<br( /)?>"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 425
    .local v5, lines:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 426
    .local v4, line:Ljava/lang/String;
    const-string v6, "<a"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v8, :cond_0

    const-string v6, "<button"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v8, :cond_0

    const-string v6, "<form"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 428
    const-string v6, "\'"

    const-string v7, "\""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 429
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    const-string v6, "<br>"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 434
    .end local v4           #line:Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static processImageElements(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "content"

    .prologue
    .line 593
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 594
    const-string v3, ""

    .line 609
    :goto_0
    return-object v3

    .line 596
    :cond_0
    const-string v3, "(<img )|(<IMG )"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 598
    .local v1, parts:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 599
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 601
    aget-object v3, v1, v0

    const-string v4, " onload=\"onImgLoaded(this)\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 602
    const-string v3, "<img "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    :goto_2
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 604
    :cond_1
    const-string v3, "<img onload=\"onImgLoaded(this)\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 609
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private updateUI()V
    .locals 2

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/android/browser/reading/ReadingModeController;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/browser/reading/ReadingModeController$2;

    invoke-direct {v1, p0}, Lcom/android/browser/reading/ReadingModeController$2;-><init>(Lcom/android/browser/reading/ReadingModeController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 514
    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mPageDataProvider:Lcom/android/browser/reading/ReadingModePageDataProvider;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mPageDataProvider:Lcom/android/browser/reading/ReadingModePageDataProvider;

    invoke-virtual {v0}, Lcom/android/browser/reading/ReadingModePageDataProvider;->cancelQuery()V

    .line 103
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/reading/ReadingModeController;->mCanceled:Z

    .line 105
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mBackgroundView:Lcom/android/browser/MiuiBrowserWebView;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mBackgroundView:Lcom/android/browser/MiuiBrowserWebView;

    invoke-virtual {v0}, Lcom/android/browser/MiuiBrowserWebView;->stopLoading()V

    .line 108
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/browser/reading/ReadingModeController;->cancelLoad()V

    .line 68
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mBackgroundView:Lcom/android/browser/MiuiBrowserWebView;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mBackgroundView:Lcom/android/browser/MiuiBrowserWebView;

    invoke-virtual {v0}, Lcom/android/browser/MiuiBrowserWebView;->destroy()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mBackgroundView:Lcom/android/browser/MiuiBrowserWebView;

    .line 72
    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mView:Lcom/android/browser/MiuiBrowserWebView;

    invoke-virtual {v0}, Lcom/android/browser/MiuiBrowserWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public isReadingModeDataAvailable()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mRule:Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mReadingData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReadingDataReady(Lcom/android/browser/reading/ReadingModePageDataProvider;Z)V
    .locals 7
    .parameter "provider"
    .parameter "successful"

    .prologue
    .line 223
    iget-object v4, p0, Lcom/android/browser/reading/ReadingModeController;->mPageDataProvider:Lcom/android/browser/reading/ReadingModePageDataProvider;

    if-eq p1, v4, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    if-eqz p2, :cond_4

    .line 232
    iget-object v4, p0, Lcom/android/browser/reading/ReadingModeController;->mPageDataProvider:Lcom/android/browser/reading/ReadingModePageDataProvider;

    if-eqz v4, :cond_0

    .line 236
    iget-object v4, p0, Lcom/android/browser/reading/ReadingModeController;->mPageDataProvider:Lcom/android/browser/reading/ReadingModePageDataProvider;

    invoke-virtual {v4}, Lcom/android/browser/reading/ReadingModePageDataProvider;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, contentHTML:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/browser/reading/ReadingModeController;->mRule:Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/browser/reading/ReadingModeController;->mRule:Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;

    iget-boolean v4, v4, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->isWapSite:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/browser/reading/ReadingModeController;->mRule:Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;

    iget-boolean v4, v4, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->isWapLike:Z

    if-eqz v4, :cond_3

    .line 238
    :cond_2
    invoke-static {v1}, Lcom/android/browser/reading/ReadingModeController;->preprocessWapHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    :cond_3
    iget-object v4, p0, Lcom/android/browser/reading/ReadingModeController;->mPageDataProvider:Lcom/android/browser/reading/ReadingModePageDataProvider;

    invoke-virtual {v4}, Lcom/android/browser/reading/ReadingModePageDataProvider;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, titleHTML:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/browser/reading/ReadingModeController;->mPageDataProvider:Lcom/android/browser/reading/ReadingModePageDataProvider;

    invoke-virtual {v4}, Lcom/android/browser/reading/ReadingModePageDataProvider;->getComments()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, commentsHTML:Ljava/lang/String;
    new-instance v2, Lcom/android/browser/reading/ReadingModeController$ReadingData;

    invoke-direct {v2}, Lcom/android/browser/reading/ReadingModeController$ReadingData;-><init>()V

    .line 245
    .local v2, data:Lcom/android/browser/reading/ReadingModeController$ReadingData;
    iput-object v1, v2, Lcom/android/browser/reading/ReadingModeController$ReadingData;->content:Ljava/lang/String;

    .line 246
    iput-object v3, v2, Lcom/android/browser/reading/ReadingModeController$ReadingData;->title:Ljava/lang/String;

    .line 247
    iput-object v0, v2, Lcom/android/browser/reading/ReadingModeController$ReadingData;->comments:Ljava/lang/String;

    .line 248
    iget-object v4, p0, Lcom/android/browser/reading/ReadingModeController;->mPageDataProvider:Lcom/android/browser/reading/ReadingModePageDataProvider;

    invoke-virtual {v4}, Lcom/android/browser/reading/ReadingModePageDataProvider;->getNextLink()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/browser/reading/ReadingModeController$ReadingData;->nextLink:Ljava/lang/String;

    .line 249
    iget-object v4, p0, Lcom/android/browser/reading/ReadingModeController;->mPageDataProvider:Lcom/android/browser/reading/ReadingModePageDataProvider;

    invoke-virtual {v4}, Lcom/android/browser/reading/ReadingModePageDataProvider;->getUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/browser/reading/ReadingModeController$ReadingData;->url:Ljava/lang/String;

    .line 250
    iget-object v4, p0, Lcom/android/browser/reading/ReadingModeController;->mPageDataProvider:Lcom/android/browser/reading/ReadingModePageDataProvider;

    invoke-virtual {v4}, Lcom/android/browser/reading/ReadingModePageDataProvider;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/browser/reading/ReadingModeController$ReadingData;->imageUrl:Ljava/lang/String;

    .line 252
    invoke-direct {p0, v2}, Lcom/android/browser/reading/ReadingModeController;->onReadingDataReady(Lcom/android/browser/reading/ReadingModeController$ReadingData;)V

    goto :goto_0

    .line 254
    .end local v0           #commentsHTML:Ljava/lang/String;
    .end local v1           #contentHTML:Ljava/lang/String;
    .end local v2           #data:Lcom/android/browser/reading/ReadingModeController$ReadingData;
    .end local v3           #titleHTML:Ljava/lang/String;
    :cond_4
    iget v4, p0, Lcom/android/browser/reading/ReadingModeController;->mRetry:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_5

    .line 256
    new-instance v4, Lcom/android/browser/reading/ReadingModeController$1;

    invoke-direct {v4, p0}, Lcom/android/browser/reading/ReadingModeController$1;-><init>(Lcom/android/browser/reading/ReadingModeController;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/browser/reading/ReadingModeController$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 286
    :cond_5
    invoke-direct {p0}, Lcom/android/browser/reading/ReadingModeController;->isInTest()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 287
    sget-object v4, Lcom/android/browser/reading/ReadingModeController;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5f53\u524d\u9605\u8bfb\u6a21\u5f0f\u4e0d\u53ef\u7528\uff01:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/browser/reading/ReadingModeController;->mNextUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_6
    iget-object v4, p0, Lcom/android/browser/reading/ReadingModeController;->mReaderView:Lcom/android/browser/MiuiBrowserWebView;

    const-string v5, "showRetry();"

    invoke-static {v4, v5}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/MiuiBrowserWebView;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public queryReadingHTML()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 115
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mForegroundProvider:Lcom/android/browser/reading/ReadingModePageDataProvider;

    iget-object v1, p0, Lcom/android/browser/reading/ReadingModeController;->mView:Lcom/android/browser/MiuiBrowserWebView;

    invoke-virtual {v0, v1}, Lcom/android/browser/reading/ReadingModePageDataProvider;->init(Lcom/android/browser/MiuiBrowserWebView;)V

    .line 116
    iput-boolean v3, p0, Lcom/android/browser/reading/ReadingModeController;->mShowReading:Z

    .line 119
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mView:Lcom/android/browser/MiuiBrowserWebView;

    invoke-virtual {v0}, Lcom/android/browser/MiuiBrowserWebView;->getUrl()Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, url:Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/browser/reading/ReadingModeController;->clearData(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mReadingData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    iput-object v7, p0, Lcom/android/browser/reading/ReadingModeController;->mBaseUrl:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mForegroundProvider:Lcom/android/browser/reading/ReadingModePageDataProvider;

    iput-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mPageDataProvider:Lcom/android/browser/reading/ReadingModePageDataProvider;

    .line 132
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mBackgroundView:Lcom/android/browser/MiuiBrowserWebView;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mBackgroundView:Lcom/android/browser/MiuiBrowserWebView;

    invoke-virtual {v0}, Lcom/android/browser/MiuiBrowserWebView;->destroy()V

    .line 134
    iput-object v2, p0, Lcom/android/browser/reading/ReadingModeController;->mBackgroundView:Lcom/android/browser/MiuiBrowserWebView;

    .line 136
    :cond_0
    iput-object v2, p0, Lcom/android/browser/reading/ReadingModeController;->mNextUrl:Ljava/lang/String;

    .line 138
    invoke-direct {p0}, Lcom/android/browser/reading/ReadingModeController;->getRuleProvider()Lcom/android/browser/reading/ReadingModeRuleProvider;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/browser/reading/ReadingModeRuleProvider;->getRuleFromUrl(Ljava/lang/String;)Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mRule:Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;

    .line 139
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mRule:Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;

    if-nez v0, :cond_1

    .line 141
    sget-object v0, Lcom/android/browser/reading/ReadingModeController;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no rules found for url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    return-void

    .line 144
    :cond_1
    sget-object v0, Lcom/android/browser/reading/ReadingModeController;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rules found for url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iput v3, p0, Lcom/android/browser/reading/ReadingModeController;->mRetry:I

    .line 147
    iget-object v0, p0, Lcom/android/browser/reading/ReadingModeController;->mPageDataProvider:Lcom/android/browser/reading/ReadingModePageDataProvider;

    iget-object v1, p0, Lcom/android/browser/reading/ReadingModeController;->mRule:Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;

    iget-object v1, v1, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->contentPaths:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/browser/reading/ReadingModeController;->mRule:Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;

    iget-object v2, v2, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->titlePaths:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/browser/reading/ReadingModeController;->mRule:Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;

    iget-object v3, v3, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->nextLinkUrls:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/browser/reading/ReadingModeController;->mRule:Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;

    iget-object v4, v4, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->comments:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/browser/reading/ReadingModeController;->mRule:Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;

    iget-object v5, v5, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->firstPage:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/browser/reading/ReadingModeController;->mRule:Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;

    iget-object v6, v6, Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;->ads:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/browser/reading/ReadingModePageDataProvider;->doQuery(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_2
    invoke-direct {p0}, Lcom/android/browser/reading/ReadingModeController;->updateUI()V

    goto :goto_0
.end method

.method public setReaderView(Landroid/webkit/WebView;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 75
    check-cast p1, Lcom/android/browser/MiuiBrowserWebView;

    .end local p1
    iput-object p1, p0, Lcom/android/browser/reading/ReadingModeController;->mReaderView:Lcom/android/browser/MiuiBrowserWebView;

    .line 76
    new-instance v0, Lcom/android/browser/reading/ReadingModeController$ReadingJSInterface;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/browser/reading/ReadingModeController$ReadingJSInterface;-><init>(Lcom/android/browser/reading/ReadingModeController;Lcom/android/browser/reading/ReadingModeController$1;)V

    .line 77
    .local v0, reader:Lcom/android/browser/reading/ReadingModeController$ReadingJSInterface;
    invoke-virtual {v0}, Lcom/android/browser/reading/ReadingModeController$ReadingJSInterface;->doNothing()V

    .line 78
    iget-object v1, p0, Lcom/android/browser/reading/ReadingModeController;->mReaderView:Lcom/android/browser/MiuiBrowserWebView;

    const-string v2, "controller"

    invoke-virtual {v1, v0, v2}, Lcom/android/browser/MiuiBrowserWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public setReadingModeOn()V
    .locals 5

    .prologue
    .line 156
    iget-object v4, p0, Lcom/android/browser/reading/ReadingModeController;->mRule:Lcom/android/browser/reading/ReadingModeRuleProvider$Rule;

    if-nez v4, :cond_1

    .line 171
    :cond_0
    return-void

    .line 159
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/browser/reading/ReadingModeController;->mShowReading:Z

    .line 161
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/browser/reading/ReadingModeController;->mPriviousTitle:Ljava/lang/String;

    .line 162
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/browser/reading/ReadingModeController;->mReadingData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 163
    iget-object v4, p0, Lcom/android/browser/reading/ReadingModeController;->mReadingData:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/reading/ReadingModeController$ReadingData;

    .line 164
    .local v1, data:Lcom/android/browser/reading/ReadingModeController$ReadingData;
    iget-object v0, v1, Lcom/android/browser/reading/ReadingModeController$ReadingData;->content:Ljava/lang/String;

    .line 165
    .local v0, content:Ljava/lang/String;
    iget-object v3, v1, Lcom/android/browser/reading/ReadingModeController$ReadingData;->title:Ljava/lang/String;

    .line 167
    .local v3, title:Ljava/lang/String;
    iget-object v4, v1, Lcom/android/browser/reading/ReadingModeController$ReadingData;->nextLink:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/browser/reading/ReadingModeController;->mNextUrl:Ljava/lang/String;

    .line 169
    iget-object v4, v1, Lcom/android/browser/reading/ReadingModeController$ReadingData;->comments:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v4}, Lcom/android/browser/reading/ReadingModeController;->addNewReadingPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
