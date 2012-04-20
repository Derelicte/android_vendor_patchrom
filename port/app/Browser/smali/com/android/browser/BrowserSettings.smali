.class public Lcom/android/browser/BrowserSettings;
.super Ljava/lang/Object;
.source "BrowserSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserSettings$2;
    }
.end annotation


# static fields
.field private static final USER_AGENTS:[Ljava/lang/String;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private static sFactoryResetUrl:Ljava/lang/String;

.field private static sInitialized:Z

.field private static sInstance:Lcom/android/browser/BrowserSettings;


# instance fields
.field private mAppCachePath:Ljava/lang/String;

.field private mAutofillHandler:Lcom/android/browser/AutofillHandler;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/browser/Controller;

.field private mCustomUserAgents:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/webkit/WebSettings;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFontSizeMult:F

.field private mManagedSettings:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/webkit/WebSettings;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNeedsSharedSync:Z

.field private mPageCacheCapacity:I

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSearchEngine:Lcom/android/browser/search/SearchEngine;

.field private mSetup:Ljava/lang/Runnable;

.field private mWebStorageSizeManager:Lcom/android/browser/WebStorageSizeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 89
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_0 like Mac OS X; en-us) AppleWebKit/532.9 (KHTML, like Gecko) Version/4.0.5 Mobile/8A293 Safari/6531.22.7"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B367 Safari/531.21.10"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Mozilla/5.0 (Linux; U; Android 2.2; en-us; Nexus One Build/FRF91) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Mozilla/5.0 (Linux; U; Android 3.1; en-us; Xoom Build/HMJ25) AppleWebKit/534.13 (KHTML, like Gecko) Version/4.0 Safari/534.13"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Mozilla/5.0 (Linux; U; Android 4.0.1; zh-cn; MI-ONE Plus Build/ITL41D) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/BrowserSettings;->USER_AGENTS:[Ljava/lang/String;

    .line 122
    sput-boolean v3, Lcom/android/browser/BrowserSettings;->sInitialized:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->mNeedsSharedSync:Z

    .line 124
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/browser/BrowserSettings;->mFontSizeMult:F

    .line 127
    iput v1, p0, Lcom/android/browser/BrowserSettings;->mPageCacheCapacity:I

    .line 171
    new-instance v0, Lcom/android/browser/BrowserSettings$1;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserSettings$1;-><init>(Lcom/android/browser/BrowserSettings;)V

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mSetup:Ljava/lang/Runnable;

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    .line 145
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    .line 146
    new-instance v0, Lcom/android/browser/AutofillHandler;

    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/browser/AutofillHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mAutofillHandler:Lcom/android/browser/AutofillHandler;

    .line 147
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mManagedSettings:Ljava/util/LinkedList;

    .line 148
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mCustomUserAgents:Ljava/util/WeakHashMap;

    .line 149
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mAutofillHandler:Lcom/android/browser/AutofillHandler;

    invoke-virtual {v0}, Lcom/android/browser/AutofillHandler;->asyncLoadFromDb()V

    .line 150
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mSetup:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/android/browser/BackgroundHandler;->execute(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/BrowserSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/browser/BrowserSettings;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/browser/BrowserSettings;->mFontSizeMult:F

    return p1
.end method

.method static synthetic access$202(Lcom/android/browser/BrowserSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/browser/BrowserSettings;->mPageCacheCapacity:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/browser/BrowserSettings;Lcom/android/browser/WebStorageSizeManager;)Lcom/android/browser/WebStorageSizeManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/browser/BrowserSettings;->mWebStorageSizeManager:Lcom/android/browser/WebStorageSizeManager;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->getAppCachePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/BrowserSettings;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/BrowserSettings;)Landroid/webkit/WebSettings$TextSize;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->getTextSize()Landroid/webkit/WebSettings$TextSize;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/browser/BrowserSettings;->sFactoryResetUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    sput-object p0, Lcom/android/browser/BrowserSettings;->sFactoryResetUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    sput-boolean p0, Lcom/android/browser/BrowserSettings;->sInitialized:Z

    return p0
.end method

.method public static getAdjustedMinimumFontSize(I)I
    .locals 1
    .parameter "rawValue"

    .prologue
    .line 549
    add-int/lit8 p0, p0, 0x1

    .line 550
    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    .line 551
    add-int/lit8 p0, p0, 0x3

    .line 553
    :cond_0
    return p0
.end method

.method private getAppCachePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mAppCachePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    const-string v1, "appcache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mAppCachePath:Ljava/lang/String;

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mAppCachePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getFactoryResetHomeUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 376
    invoke-static {}, Lcom/android/browser/BrowserSettings;->requireInitialization()V

    .line 377
    sget-object v0, Lcom/android/browser/BrowserSettings;->sFactoryResetUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/android/browser/BrowserSettings;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/android/browser/BrowserSettings;->sInstance:Lcom/android/browser/BrowserSettings;

    return-object v0
.end method

.method public static getPreloadAlwaysPreferenceString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 871
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreloadOnWifiOnlyPreferenceString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 867
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getRawTextZoom(I)I
    .locals 1
    .parameter "percent"

    .prologue
    .line 562
    add-int/lit8 v0, p0, -0x64

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private getTextSize()Landroid/webkit/WebSettings$TextSize;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 584
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "text_size"

    const-string v3, "NORMAL"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, textSize:Ljava/lang/String;
    invoke-static {v0}, Landroid/webkit/WebSettings$TextSize;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$TextSize;

    move-result-object v1

    return-object v1
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 136
    new-instance v0, Lcom/android/browser/BrowserSettings;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserSettings;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/browser/BrowserSettings;->sInstance:Lcom/android/browser/BrowserSettings;

    .line 137
    return-void
.end method

.method private static requireInitialization()V
    .locals 2

    .prologue
    .line 234
    const-class v1, Lcom/android/browser/BrowserSettings;

    monitor-enter v1

    .line 235
    :goto_0
    :try_start_0
    sget-boolean v0, Lcom/android/browser/BrowserSettings;->sInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 237
    :try_start_1
    const-class v0, Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    goto :goto_0

    .line 241
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 242
    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private syncManagedSettings()V
    .locals 5

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->syncSharedSettings()V

    .line 343
    iget-object v4, p0, Lcom/android/browser/BrowserSettings;->mManagedSettings:Ljava/util/LinkedList;

    monitor-enter v4

    .line 344
    :try_start_0
    iget-object v3, p0, Lcom/android/browser/BrowserSettings;->mManagedSettings:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 345
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/webkit/WebSettings;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 346
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 347
    .local v1, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/webkit/WebSettings;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebSettings;

    .line 348
    .local v2, settings:Landroid/webkit/WebSettings;
    if-nez v2, :cond_0

    .line 349
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 354
    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/webkit/WebSettings;>;>;"
    .end local v1           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/webkit/WebSettings;>;"
    .end local v2           #settings:Landroid/webkit/WebSettings;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 352
    .restart local v0       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/webkit/WebSettings;>;>;"
    .restart local v1       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/webkit/WebSettings;>;"
    .restart local v2       #settings:Landroid/webkit/WebSettings;
    :cond_0
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/browser/BrowserSettings;->syncSetting(Landroid/webkit/WebSettings;)V

    goto :goto_0

    .line 354
    .end local v1           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/webkit/WebSettings;>;"
    .end local v2           #settings:Landroid/webkit/WebSettings;
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    return-void
.end method

.method private syncSetting(Landroid/webkit/WebSettings;)V
    .locals 4
    .parameter "settings"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->enableGeolocation()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 250
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->enableJavascript()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 251
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->enableLightTouch()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 252
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->enableNavDump()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setNavDump(Z)V

    .line 253
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isSkiaHardwareAccelerated()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setHardwareAccelSkiaEnabled(Z)V

    .line 254
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->enableVisualIndicator()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setShowVisualIndicator(Z)V

    .line 255
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getDefaultTextEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getMinimumFontSize()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 258
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getMinimumFontSize()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    .line 259
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->forceEnableUserScalable()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setForceUserScalable(Z)V

    .line 260
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getPluginState()Landroid/webkit/WebSettings$PluginState;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getTextZoom()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 262
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getDoubleTapZoom()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setDoubleTapZoom(I)V

    .line 263
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isAutofillEnabled()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setAutoFillEnabled(Z)V

    .line 264
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->blockPopupWindows()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 266
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->loadImages()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 267
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->loadPageInOverviewMode()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 268
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->rememberPasswords()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 269
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->saveFormdata()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 270
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isWideViewport()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 271
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getAutoFillProfile()Landroid/webkit/WebSettings$AutoFillProfile;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setAutoFillProfile(Landroid/webkit/WebSettings$AutoFillProfile;)V

    .line 273
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mCustomUserAgents:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 274
    .local v0, ua:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 275
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 280
    :goto_1
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->useInvertedRendering()Z

    move-result v1

    .line 281
    .local v1, useInverted:Z
    const-string v3, "inverted"

    if-eqz v1, :cond_4

    const-string v2, "true"

    :goto_2
    invoke-virtual {p1, v3, v2}, Landroid/webkit/WebSettings;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    if-eqz v1, :cond_0

    .line 284
    const-string v2, "inverted_contrast"

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getInvertedContrast()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/webkit/WebSettings;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 289
    const-string v3, "enable_cpu_upload_path"

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->enableCpuUploadPath()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "true"

    :goto_3
    invoke-virtual {p1, v3, v2}, Landroid/webkit/WebSettings;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_1
    return-void

    .line 265
    .end local v0           #ua:Ljava/lang/String;
    .end local v1           #useInverted:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 277
    .restart local v0       #ua:Ljava/lang/String;
    :cond_3
    sget-object v2, Lcom/android/browser/BrowserSettings;->USER_AGENTS:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getUserAgent()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_1

    .line 281
    .restart local v1       #useInverted:Z
    :cond_4
    const-string v2, "false"

    goto :goto_2

    .line 289
    :cond_5
    const-string v2, "false"

    goto :goto_3
.end method

.method private syncSharedSettings()V
    .locals 2

    .prologue
    .line 334
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserSettings;->mNeedsSharedSync:Z

    .line 335
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->acceptCookies()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 336
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->enableJavascriptConsole()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/Controller;->setShouldShowErrorConsole(Z)V

    .line 339
    :cond_0
    return-void
.end method

.method private syncStaticSettings(Landroid/webkit/WebSettings;)V
    .locals 4
    .parameter "settings"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 299
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 300
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 301
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getPageCacheCapacity()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setPageCacheCapacity(I)V

    .line 304
    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 306
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 309
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setEnableSmoothTransition(Z)V

    .line 316
    const-string v0, "use_minimal_memory"

    const-string v1, "false"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebSettings;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 321
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 322
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 323
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 324
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setWorkersEnabled(Z)V

    .line 327
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getWebStorageSizeManager()Lcom/android/browser/WebStorageSizeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/WebStorageSizeManager;->getAppCacheMaxSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 328
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->getAppCachePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    const-string v1, "databases"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    const-string v1, "geolocation"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method private updateSearchEngine(Z)V
    .locals 3
    .parameter "force"

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getSearchEngineName()Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, searchEngineName:Ljava/lang/String;
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    invoke-interface {v2}, Lcom/android/browser/search/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 420
    :cond_0
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    if-eqz v2, :cond_2

    .line 421
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    invoke-interface {v2}, Lcom/android/browser/search/SearchEngine;->supportsVoiceSearch()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 425
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v2}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 426
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v2}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/Tab;->revertVoiceSearchMode()V

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 429
    .end local v0           #i:I
    :cond_1
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    invoke-interface {v2}, Lcom/android/browser/search/SearchEngine;->close()V

    .line 431
    :cond_2
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/browser/search/SearchEngines;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/android/browser/search/SearchEngine;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    .line 433
    :cond_3
    return-void
.end method


# virtual methods
.method public acceptCookies()Z
    .locals 3

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "accept_cookies"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public autofitPages()Z
    .locals 3

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "autofit_pages"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public blockPopupWindows()Z
    .locals 3

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "block_popup_windows"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public clearCache()V
    .locals 2

    .prologue
    .line 458
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebIconDatabase;->removeAllIcons()V

    .line 459
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    if-eqz v1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 461
    .local v0, current:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 462
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 465
    .end local v0           #current:Landroid/webkit/WebView;
    :cond_0
    return-void
.end method

.method public clearCookies()V
    .locals 1

    .prologue
    .line 468
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 469
    return-void
.end method

.method public clearDatabases()V
    .locals 1

    .prologue
    .line 494
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebStorage;->deleteAllData()V

    .line 495
    return-void
.end method

.method public clearFormData()V
    .locals 2

    .prologue
    .line 478
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewDatabase;->clearFormData()V

    .line 479
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    if-eqz v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 481
    .local v0, currentTopView:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    .line 485
    .end local v0           #currentTopView:Landroid/webkit/WebView;
    :cond_0
    return-void
.end method

.method public clearHistory()V
    .locals 2

    .prologue
    .line 472
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 473
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/provider/Browser;->clearHistory(Landroid/content/ContentResolver;)V

    .line 474
    invoke-static {v0}, Landroid/provider/Browser;->clearSearches(Landroid/content/ContentResolver;)V

    .line 475
    return-void
.end method

.method public clearLocationAccess()V
    .locals 1

    .prologue
    .line 498
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/GeolocationPermissions;->clearAll()V

    .line 499
    return-void
.end method

.method public clearPasswords()V
    .locals 2

    .prologue
    .line 488
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    .line 489
    .local v0, db:Landroid/webkit/WebViewDatabase;
    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearUsernamePassword()V

    .line 490
    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearHttpAuthUsernamePassword()V

    .line 491
    return-void
.end method

.method public enableCpuUploadPath()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 752
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 755
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enable_cpu_upload_path"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public enableGeolocation()Z
    .locals 3

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "enable_geolocation"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public enableJavascript()Z
    .locals 3

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "enable_javascript"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public enableJavascriptConsole()Z
    .locals 3

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    const/4 v0, 0x0

    .line 762
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "javascript_console"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public enableLightTouch()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 794
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 797
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enable_light_touch"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public enableNavDump()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 801
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 804
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enable_nav_dump"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public enableVisualIndicator()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 745
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 748
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enable_visual_indicator"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public forceEnableUserScalable()Z
    .locals 3

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "force_userscalable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getAdjustedDoubleTapZoom(I)I
    .locals 2
    .parameter "rawValue"

    .prologue
    .line 566
    add-int/lit8 v0, p1, -0x5

    mul-int/lit8 p1, v0, 0x5

    .line 567
    add-int/lit8 v0, p1, 0x64

    int-to-float v0, v0

    iget v1, p0, Lcom/android/browser/BrowserSettings;->mFontSizeMult:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getAdjustedTextZoom(I)I
    .locals 2
    .parameter "rawValue"

    .prologue
    .line 557
    add-int/lit8 v0, p1, -0xa

    mul-int/lit8 p1, v0, 0x5

    .line 558
    add-int/lit8 v0, p1, 0x64

    int-to-float v0, v0

    iget v1, p0, Lcom/android/browser/BrowserSettings;->mFontSizeMult:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getAutoFillProfile()Landroid/webkit/WebSettings$AutoFillProfile;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mAutofillHandler:Lcom/android/browser/AutofillHandler;

    invoke-virtual {v0}, Lcom/android/browser/AutofillHandler;->waitForLoad()V

    .line 513
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mAutofillHandler:Lcom/android/browser/AutofillHandler;

    invoke-virtual {v0}, Lcom/android/browser/AutofillHandler;->getAutoFillProfile()Landroid/webkit/WebSettings$AutoFillProfile;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPreloadSetting()Ljava/lang/String;
    .locals 2

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "browser_default_preload_setting"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 880
    if-nez v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 883
    :cond_0
    return-object v0
.end method

.method public getDefaultTextEncoding()Ljava/lang/String;
    .locals 3

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "default_text_encoding"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;
    .locals 4

    .prologue
    .line 642
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "default_zoom"

    const-string v3, "MEDIUM"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, zoom:Ljava/lang/String;
    invoke-static {v0}, Landroid/webkit/WebSettings$ZoomDensity;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v1

    return-object v1
.end method

.method public getDoubleTapZoom()I
    .locals 4

    .prologue
    .line 608
    invoke-static {}, Lcom/android/browser/BrowserSettings;->requireInitialization()V

    .line 609
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "double_tap_zoom"

    const/4 v3, 0x5

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 610
    .local v0, doubleTapZoom:I
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserSettings;->getAdjustedDoubleTapZoom(I)I

    move-result v1

    return v1
.end method

.method public getExitOnClosingLastTabEnabled()Z
    .locals 3
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "exit_on_closing_last_tab_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getHomePage()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "homepage"

    const-string v2, "content://com.android.browser.home/res/raw/miui_home"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInvertedContrast()F
    .locals 4

    .prologue
    .line 835
    const/high16 v0, 0x3f80

    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "inverted_contrast"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4120

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getJsEngineFlags()Ljava/lang/String;
    .locals 3

    .prologue
    .line 808
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 809
    const-string v0, ""

    .line 811
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "js_engine_flags"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;
    .locals 2

    .prologue
    .line 381
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 382
    .local v0, layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->autofitPages()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isSmallScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 387
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 396
    :cond_1
    :goto_0
    return-object v0

    .line 389
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isNormalLayout()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 390
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    goto :goto_0

    .line 392
    :cond_3
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    goto :goto_0
.end method

.method public getMinimumFontSize()I
    .locals 4

    .prologue
    .line 589
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "min_font_size"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 590
    .local v0, minFont:I
    invoke-static {v0}, Lcom/android/browser/BrowserSettings;->getAdjustedMinimumFontSize(I)I

    move-result v1

    return v1
.end method

.method public getPageCacheCapacity()I
    .locals 1

    .prologue
    .line 400
    invoke-static {}, Lcom/android/browser/BrowserSettings;->requireInitialization()V

    .line 401
    iget v0, p0, Lcom/android/browser/BrowserSettings;->mPageCacheCapacity:I

    return v0
.end method

.method public getPluginState()Landroid/webkit/WebSettings$PluginState;
    .locals 4

    .prologue
    .line 636
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "plugin_state"

    const-string v3, "ON"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, state:Ljava/lang/String;
    invoke-static {v0}, Landroid/webkit/WebSettings$PluginState;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$PluginState;

    move-result-object v1

    return-object v1
.end method

.method public getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getPreloadEnabled()Ljava/lang/String;
    .locals 3

    .prologue
    .line 887
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "preload_when"

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getDefaultPreloadSetting()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReadingModeEnabled()Z
    .locals 3
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "reading_mode_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSearchEngine()Lcom/android/browser/search/SearchEngine;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    if-nez v0, :cond_0

    .line 437
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserSettings;->updateSearchEngine(Z)V

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    return-object v0
.end method

.method public getSearchEngineName()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "search_engine"

    const-string v2, "baidu"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextZoom()I
    .locals 4

    .prologue
    .line 598
    invoke-static {}, Lcom/android/browser/BrowserSettings;->requireInitialization()V

    .line 599
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "text_zoom"

    const/16 v3, 0xa

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 600
    .local v0, textZoom:I
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserSettings;->getAdjustedTextZoom(I)I

    move-result v1

    return v1
.end method

.method public getUserAgent()I
    .locals 3
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "user_agent"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getWebStorageSizeManager()Lcom/android/browser/WebStorageSizeManager;
    .locals 1

    .prologue
    .line 405
    invoke-static {}, Lcom/android/browser/BrowserSettings;->requireInitialization()V

    .line 406
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mWebStorageSizeManager:Lcom/android/browser/WebStorageSizeManager;

    return-object v0
.end method

.method public hasDesktopUseragent(Landroid/webkit/WebView;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 531
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mCustomUserAgents:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public homepageUseLocalContent()Z
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 686
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->useMostVisitedHomepage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->useMiuiHomepage()Z

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

.method public isAutofillEnabled()Z
    .locals 3

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "autofill_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDebugEnabled()Z
    .locals 3

    .prologue
    .line 443
    invoke-static {}, Lcom/android/browser/BrowserSettings;->requireInitialization()V

    .line 444
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "debug_menu"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHardwareAccelerated()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 722
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 725
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enable_hardware_accel"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isNormalLayout()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 780
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 783
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "normal_layout"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isSkiaHardwareAccelerated()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 729
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 732
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enable_hardware_accel_skia"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isSmallScreen()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 766
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 769
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "small_screen"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isTracing()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 787
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 790
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enable_tracing"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isWideViewport()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 773
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 776
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "wide_viewport"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public loadImages()Z
    .locals 3

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "load_images"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public loadPageInOverviewMode()Z
    .locals 3

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "load_page"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 360
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->syncManagedSettings()V

    .line 361
    const-string v0, "search_engine"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-direct {p0, v1}, Lcom/android/browser/BrowserSettings;->updateSearchEngine(Z)V

    .line 364
    :cond_0
    const-string v0, "fullscreen"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 365
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getUi()Lcom/android/browser/UI;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getUi()Lcom/android/browser/UI;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->useFullscreen()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->setFullscreen(Z)V

    .line 373
    :cond_1
    :goto_0
    return-void

    .line 368
    :cond_2
    const-string v0, "enable_quick_controls"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getUi()Lcom/android/browser/UI;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getUi()Lcom/android/browser/UI;

    move-result-object v0

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->setUseQuickControls(Z)V

    goto :goto_0
.end method

.method public openInBackground()Z
    .locals 3

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "open_in_background"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public rememberPasswords()Z
    .locals 3

    .prologue
    .line 859
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "remember_passwords"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public resetDefaultPreferences()V
    .locals 6

    .prologue
    .line 503
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "last_autologin_time"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 504
    .local v0, gal:J
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "last_autologin_time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 508
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->syncManagedSettings()V

    .line 509
    return-void
.end method

.method public saveFormdata()Z
    .locals 3

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "save_formdata"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAutoFillProfile(Landroid/webkit/WebSettings$AutoFillProfile;Landroid/os/Message;)V
    .locals 1
    .parameter "profile"
    .parameter "msg"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mAutofillHandler:Lcom/android/browser/AutofillHandler;

    invoke-virtual {v0}, Lcom/android/browser/AutofillHandler;->waitForLoad()V

    .line 518
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mAutofillHandler:Lcom/android/browser/AutofillHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/AutofillHandler;->setAutoFillProfile(Landroid/webkit/WebSettings$AutoFillProfile;Landroid/os/Message;)V

    .line 523
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->syncManagedSettings()V

    .line 524
    return-void
.end method

.method public setAutofillEnabled(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "autofill_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 715
    return-void
.end method

.method public setController(Lcom/android/browser/Controller;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    .line 155
    sget-boolean v0, Lcom/android/browser/BrowserSettings;->sInitialized:Z

    if-eqz v0, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->syncSharedSettings()V

    .line 158
    :cond_0
    return-void
.end method

.method public setDebugEnabled(Z)V
    .locals 3
    .parameter "value"

    .prologue
    .line 448
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 449
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "debug_menu"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 450
    if-nez p1, :cond_0

    .line 452
    const-string v1, "enable_hardware_accel_skia"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 454
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 455
    return-void
.end method

.method public setHomePage(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "homepage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 677
    return-void
.end method

.method public setTextZoom(I)V
    .locals 3
    .parameter "percent"

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "text_zoom"

    invoke-static {p1}, Lcom/android/browser/BrowserSettings;->getRawTextZoom(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 605
    return-void
.end method

.method public showSecurityWarnings()Z
    .locals 3

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "show_security_warnings"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public startManagingSettings(Landroid/webkit/WebSettings;)V
    .locals 3
    .parameter "settings"

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->mNeedsSharedSync:Z

    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->syncSharedSettings()V

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mManagedSettings:Ljava/util/LinkedList;

    monitor-enter v1

    .line 165
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserSettings;->syncStaticSettings(Landroid/webkit/WebSettings;)V

    .line 166
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserSettings;->syncSetting(Landroid/webkit/WebSettings;)V

    .line 167
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mManagedSettings:Ljava/util/LinkedList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 168
    monitor-exit v1

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toggleDebugSettings()V
    .locals 1

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserSettings;->setDebugEnabled(Z)V

    .line 528
    return-void

    .line 527
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toggleDesktopUseragent(Landroid/webkit/WebView;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 535
    if-nez p1, :cond_0

    .line 546
    :goto_0
    return-void

    .line 538
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 539
    .local v0, settings:Landroid/webkit/WebSettings;
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mCustomUserAgents:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 540
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mCustomUserAgents:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    sget-object v1, Lcom/android/browser/BrowserSettings;->USER_AGENTS:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getUserAgent()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_0

    .line 543
    :cond_1
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mCustomUserAgents:Ljava/util/WeakHashMap;

    const-string v2, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const-string v1, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public useFullscreen()Z
    .locals 3

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "fullscreen"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public useInvertedRendering()Z
    .locals 3

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "inverted"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public useMiuiHomepage()Z
    .locals 2
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 681
    const-string v0, "content://com.android.browser.home/res/raw/miui_home"

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public useMostVisitedHomepage()Z
    .locals 2

    .prologue
    .line 823
    const-string v0, "content://com.android.browser.home/"

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public useQuickControls()Z
    .locals 3

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "enable_quick_controls"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
