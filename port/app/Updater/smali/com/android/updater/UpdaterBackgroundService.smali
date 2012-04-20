.class public Lcom/android/updater/UpdaterBackgroundService;
.super Landroid/app/Service;
.source "UpdaterBackgroundService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/updater/UpdaterBackgroundService$1;,
        Lcom/android/updater/UpdaterBackgroundService$UpdateCheckTask;,
        Lcom/android/updater/UpdaterBackgroundService$UploadInstallAppTask;,
        Lcom/android/updater/UpdaterBackgroundService$UploadUsageAppTask;,
        Lcom/android/updater/UpdaterBackgroundService$UpdateActiveTask;,
        Lcom/android/updater/UpdaterBackgroundService$UploadVersionTask;
    }
.end annotation


# static fields
.field private static sSystemWhiteAppSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPref:Lcom/android/updater/utils/Preferences;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 86
    const/16 v2, 0xc

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.miui.camera"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.android.gallery"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "com.miui.player"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "com.android.launcher"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "com.miui.notes"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "com.android.calendar"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "com.android.email"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "com.android.fileexplorer"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "com.android.contacts"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "com.android.mms"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "com.android.browser"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "com.xiaomi.market"

    aput-object v3, v1, v2

    .line 89
    .local v1, systemWhiteAppList:[Ljava/lang/String;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lcom/android/updater/UpdaterBackgroundService;->sSystemWhiteAppSet:Ljava/util/HashSet;

    .line 90
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 91
    sget-object v2, Lcom/android/updater/UpdaterBackgroundService;->sSystemWhiteAppSet:Ljava/util/HashSet;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 370
    return-void
.end method

.method static synthetic access$400(Lcom/android/updater/UpdaterBackgroundService;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/updater/UpdaterBackgroundService;->upload(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/updater/UpdaterBackgroundService;)Lcom/android/updater/utils/Preferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/updater/UpdaterBackgroundService;->mPref:Lcom/android/updater/utils/Preferences;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/updater/UpdaterBackgroundService;->sSystemWhiteAppSet:Ljava/util/HashSet;

    return-object v0
.end method

.method private upload(Ljava/lang/String;Z)Z
    .locals 9
    .parameter "url"
    .parameter "isHttPost"

    .prologue
    .line 342
    const/4 v2, 0x0

    .line 343
    .local v2, success:Z
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    .line 344
    .local v6, uploadVersionUri:Ljava/net/URI;
    const/4 v4, 0x0

    .line 345
    .local v4, uploadReq:Lorg/apache/http/client/methods/HttpUriRequest;
    if-eqz p2, :cond_0

    .line 346
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    .end local v4           #uploadReq:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-direct {v4, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 351
    .restart local v4       #uploadReq:Lorg/apache/http/client/methods/HttpUriRequest;
    :goto_0
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 352
    .local v0, httpParameters:Lorg/apache/http/params/HttpParams;
    const/16 v7, 0xbb8

    invoke-static {v0, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 353
    const/16 v7, 0x1388

    invoke-static {v0, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 355
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 356
    .local v3, uploadHttpClient:Lorg/apache/http/client/HttpClient;
    const-string v7, "Cache-Control"

    const-string v8, "no-cache"

    invoke-interface {v4, v7, v8}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :try_start_0
    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 359
    .local v5, uploadResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 360
    .local v1, response:I
    const/16 v7, 0xc8

    if-ne v1, v7, :cond_1

    const/4 v2, 0x1

    .line 364
    .end local v1           #response:I
    .end local v5           #uploadResponse:Lorg/apache/http/HttpResponse;
    :goto_1
    return v2

    .line 348
    .end local v0           #httpParameters:Lorg/apache/http/params/HttpParams;
    .end local v3           #uploadHttpClient:Lorg/apache/http/client/HttpClient;
    :cond_0
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    .end local v4           #uploadReq:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-direct {v4, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .restart local v4       #uploadReq:Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_0

    .line 360
    .restart local v0       #httpParameters:Lorg/apache/http/params/HttpParams;
    .restart local v1       #response:I
    .restart local v3       #uploadHttpClient:Lorg/apache/http/client/HttpClient;
    .restart local v5       #uploadResponse:Lorg/apache/http/HttpResponse;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 362
    .end local v1           #response:I
    .end local v5           #uploadResponse:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v7

    goto :goto_1

    .line 361
    :catch_1
    move-exception v7

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 99
    new-instance v0, Lcom/android/updater/utils/Preferences;

    invoke-direct {v0, p0}, Lcom/android/updater/utils/Preferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/updater/UpdaterBackgroundService;->mPref:Lcom/android/updater/utils/Preferences;

    .line 100
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v2, 0x0

    .line 109
    if-nez p1, :cond_0

    .line 110
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v2

    .line 141
    :goto_0
    return v2

    .line 113
    :cond_0
    const-string v3, "command"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, command:Ljava/lang/String;
    const-string v3, "check_update"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 116
    const-string v3, "check_type"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 124
    .local v0, checkType:I
    invoke-static {p0}, Lcom/android/updater/utils/SysUtils;->isConnectivityActive(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 125
    iget-object v2, p0, Lcom/android/updater/UpdaterBackgroundService;->mPref:Lcom/android/updater/utils/Preferences;

    invoke-virtual {v2, v0}, Lcom/android/updater/utils/Preferences;->setCheckType(I)V

    .line 141
    .end local v0           #checkType:I
    :cond_1
    :goto_1
    const/4 v2, 0x2

    goto :goto_0

    .line 127
    .restart local v0       #checkType:I
    :cond_2
    invoke-static {p0}, Lcom/android/updater/utils/SysUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p0}, Lcom/android/updater/utils/SysUtils;->isCheckUpdateOnlyWifiAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0}, Lcom/android/updater/utils/SysUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    :cond_3
    new-instance v3, Lcom/android/updater/UpdaterBackgroundService$UpdateCheckTask;

    invoke-direct {v3, p0, p0, v0}, Lcom/android/updater/UpdaterBackgroundService$UpdateCheckTask;-><init>(Lcom/android/updater/UpdaterBackgroundService;Landroid/content/Context;I)V

    check-cast v2, [Ljava/lang/Void;

    invoke-virtual {v3, v2}, Lcom/android/updater/UpdaterBackgroundService$UpdateCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 132
    .end local v0           #checkType:I
    :cond_4
    const-string v3, "upload_version"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 133
    new-instance v3, Lcom/android/updater/UpdaterBackgroundService$UploadVersionTask;

    invoke-direct {v3, p0, v2}, Lcom/android/updater/UpdaterBackgroundService$UploadVersionTask;-><init>(Lcom/android/updater/UpdaterBackgroundService;Lcom/android/updater/UpdaterBackgroundService$1;)V

    check-cast v2, [Ljava/lang/Void;

    invoke-virtual {v3, v2}, Lcom/android/updater/UpdaterBackgroundService$UploadVersionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 134
    :cond_5
    const-string v3, "upload_install_app"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 135
    new-instance v3, Lcom/android/updater/UpdaterBackgroundService$UploadInstallAppTask;

    invoke-direct {v3, p0, v2}, Lcom/android/updater/UpdaterBackgroundService$UploadInstallAppTask;-><init>(Lcom/android/updater/UpdaterBackgroundService;Lcom/android/updater/UpdaterBackgroundService$1;)V

    check-cast v2, [Ljava/lang/Void;

    invoke-virtual {v3, v2}, Lcom/android/updater/UpdaterBackgroundService$UploadInstallAppTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 136
    :cond_6
    const-string v3, "upload_usage_app"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 137
    new-instance v3, Lcom/android/updater/UpdaterBackgroundService$UploadUsageAppTask;

    invoke-direct {v3, p0, v2}, Lcom/android/updater/UpdaterBackgroundService$UploadUsageAppTask;-><init>(Lcom/android/updater/UpdaterBackgroundService;Lcom/android/updater/UpdaterBackgroundService$1;)V

    check-cast v2, [Ljava/lang/Void;

    invoke-virtual {v3, v2}, Lcom/android/updater/UpdaterBackgroundService$UploadUsageAppTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 138
    :cond_7
    const-string v3, "upload_active"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    new-instance v3, Lcom/android/updater/UpdaterBackgroundService$UpdateActiveTask;

    invoke-direct {v3, p0, v2}, Lcom/android/updater/UpdaterBackgroundService$UpdateActiveTask;-><init>(Lcom/android/updater/UpdaterBackgroundService;Lcom/android/updater/UpdaterBackgroundService$1;)V

    check-cast v2, [Ljava/lang/Void;

    invoke-virtual {v3, v2}, Lcom/android/updater/UpdaterBackgroundService$UpdateActiveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method
