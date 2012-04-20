.class public Lcom/miui/supermarket/util/SuperMarketUtil;
.super Ljava/lang/Object;
.source "SuperMarketUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoFactory;,
        Lcom/miui/supermarket/util/SuperMarketUtil$InfoTypeFactory;,
        Lcom/miui/supermarket/util/SuperMarketUtil$UserInfoCache;,
        Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoCache;,
        Lcom/miui/supermarket/util/SuperMarketUtil$PostableStringObject;,
        Lcom/miui/supermarket/util/SuperMarketUtil$PostableObject;,
        Lcom/miui/supermarket/util/SuperMarketUtil$DownloadAppItem;
    }
.end annotation


# static fields
.field public static ERROR_TYPE_NOT_PASS_VERIFICATION:I

.field private static mInstalledAppsUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/supermarket/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstalledAppsUpdatesRetrieved:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0x191

    sput v0, Lcom/miui/supermarket/util/SuperMarketUtil;->ERROR_TYPE_NOT_PASS_VERIFICATION:I

    .line 703
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/supermarket/util/SuperMarketUtil;->mInstalledAppsUpdates:Ljava/util/ArrayList;

    .line 733
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/supermarket/util/SuperMarketUtil;->mInstalledAppsUpdatesRetrieved:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    return-void
.end method

.method public static checkNecessaryUpdates(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 697
    invoke-static {}, Lcom/miui/supermarket/util/SuperMarketUtil;->isInstalledAppsUpdatesRetrieved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 698
    invoke-static {p0}, Lcom/miui/supermarket/util/SuperMarketUtil;->getInstalledAppsUpdatesFromServer(Landroid/content/Context;)Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    .line 700
    :cond_0
    sget-object v0, Lcom/miui/supermarket/util/SuperMarketUtil;->mInstalledAppsUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static combineHttpURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "httpPath"
    .parameter "httpFile"

    .prologue
    .line 608
    const/4 v0, 0x0

    .line 609
    .local v0, fullPath:Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 610
    :cond_0
    move-object v0, p1

    .line 619
    :goto_0
    return-object v0

    .line 611
    :cond_1
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 613
    :cond_2
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 616
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static downloadOneApp(Landroid/app/DownloadManager;Lcom/miui/supermarket/util/SuperMarketUtil$DownloadAppItem;)V
    .locals 4
    .parameter "manager"
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 77
    iget-object v2, p1, Lcom/miui/supermarket/util/SuperMarketUtil$DownloadAppItem;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 78
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/app/MiuiDownloadManager$Request;

    invoke-direct {v0, v1}, Landroid/app/MiuiDownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 79
    .local v0, request:Landroid/app/MiuiDownloadManager$Request;
    invoke-virtual {v0, v3}, Landroid/app/MiuiDownloadManager$Request;->setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;

    .line 80
    const-string v2, "application/apk-ota"

    invoke-virtual {v0, v2}, Landroid/app/MiuiDownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 81
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/MiuiDownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 82
    iget-object v2, p1, Lcom/miui/supermarket/util/SuperMarketUtil$DownloadAppItem;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/MiuiDownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 83
    invoke-virtual {v0, v3}, Landroid/app/MiuiDownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 84
    iget-object v2, p1, Lcom/miui/supermarket/util/SuperMarketUtil$DownloadAppItem;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/MiuiDownloadManager$Request;->setAppData(Ljava/lang/String;)Landroid/app/MiuiDownloadManager$Request;

    .line 85
    invoke-virtual {p0, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    .line 86
    return-void
.end method

.method public static getAppInfo(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Lcom/miui/supermarket/AppInfo;
    .locals 5
    .parameter "context"
    .parameter "pkgInfo"

    .prologue
    .line 655
    const/4 v0, 0x0

    .line 656
    .local v0, appInfo:Lcom/miui/supermarket/AppInfo;
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 657
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 659
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Lcom/miui/supermarket/AppInfo;

    .end local v0           #appInfo:Lcom/miui/supermarket/AppInfo;
    invoke-direct {v0}, Lcom/miui/supermarket/AppInfo;-><init>()V

    .line 660
    .restart local v0       #appInfo:Lcom/miui/supermarket/AppInfo;
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v3, v0, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    .line 661
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/supermarket/AppInfo;->displayName:Ljava/lang/String;

    .line 662
    iget v3, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/supermarket/AppInfo;->versionCode:Ljava/lang/String;

    .line 663
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v3, v0, Lcom/miui/supermarket/AppInfo;->displayVersion:Ljava/lang/String;

    .line 664
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/supermarket/AppInfo;->iconName:Ljava/lang/String;

    .line 665
    iget-object v3, v0, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/miui/supermarket/util/SuperMarketUtil;->getPkgSize(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, v0, Lcom/miui/supermarket/AppInfo;->size:I

    .line 667
    iget-object v3, v0, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoCache;->query(Ljava/lang/String;)Lcom/miui/supermarket/AppInfo;

    move-result-object v1

    .line 668
    .local v1, cachedInfo:Lcom/miui/supermarket/AppInfo;
    if-eqz v1, :cond_0

    .line 669
    iget-object v3, v1, Lcom/miui/supermarket/AppInfo;->statistics:Lcom/miui/supermarket/AppInfo$CommentStatistics;

    iput-object v3, v0, Lcom/miui/supermarket/AppInfo;->statistics:Lcom/miui/supermarket/AppInfo$CommentStatistics;

    .line 673
    .end local v1           #cachedInfo:Lcom/miui/supermarket/AppInfo;
    .end local v2           #packageManager:Landroid/content/pm/PackageManager;
    :cond_0
    return-object v0
.end method

.method public static getAppServerPathFromURL(Ljava/lang/String;Lcom/miui/supermarket/util/SuperMarketUtil$DownloadAppItem;)Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;
    .locals 7
    .parameter "urlString"
    .parameter "item"

    .prologue
    .line 519
    sget-object v3, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->OK:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    .line 521
    .local v3, respCode:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;
    :try_start_0
    invoke-static {p0}, Lcom/miui/supermarket/util/SuperMarketUtil;->getJsonFromURL(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 522
    .local v2, obj:Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/miui/supermarket/util/SuperMarketUtil;->getResponseCode(Lorg/json/JSONObject;)Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    move-result-object v3

    .line 523
    sget-object v4, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->OK:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    if-ne v3, v4, :cond_0

    .line 524
    const-string v4, "exist"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 525
    .local v1, exist:Z
    if-eqz v1, :cond_0

    .line 526
    const-string v4, "url"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/miui/supermarket/util/SuperMarketUtil$DownloadAppItem;->url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    .end local v1           #exist:Z
    .end local v2           #obj:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    const-string v4, "SuperMarketUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAppServerPathFromURL, appServerPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/miui/supermarket/util/SuperMarketUtil$DownloadAppItem;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    return-object v3

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/supermarket/util/ServerResponseUtil;->exception2Code(Ljava/lang/Exception;)Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    move-result-object v3

    goto :goto_0
.end method

.method private static getInfoFromURL(Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 17
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v6, 0x0

    .line 154
    .local v6, romException:Z
    const/4 v12, 0x0

    .line 155
    .local v12, romResponseEntity:Lorg/apache/http/HttpEntity;
    const-string v14, "SuperMarketUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "uri: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :try_start_0
    invoke-static/range {p0 .. p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 159
    .local v1, RomUpdateServerUri:Ljava/net/URI;
    new-instance v10, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v10, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 160
    .local v10, romReq:Lorg/apache/http/client/methods/HttpUriRequest;
    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 161
    .local v4, httpParameters:Lorg/apache/http/params/HttpParams;
    const/16 v14, 0x1770

    invoke-static {v4, v14}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 162
    const/16 v14, 0x1388

    invoke-static {v4, v14}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 163
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v7, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 164
    .local v7, romHttpClient:Lorg/apache/http/client/HttpClient;
    const-string v14, "Cache-Control"

    const-string v15, "no-cache"

    invoke-interface {v10, v14, v15}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-interface {v7, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 167
    .local v11, romResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    .line 168
    .local v13, romServerResponse:I
    const/16 v14, 0xc8

    if-eq v13, v14, :cond_0

    .line 169
    const/4 v6, 0x1

    .line 172
    :cond_0
    if-nez v6, :cond_1

    .line 173
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v12

    .line 183
    .end local v1           #RomUpdateServerUri:Ljava/net/URI;
    .end local v4           #httpParameters:Lorg/apache/http/params/HttpParams;
    .end local v7           #romHttpClient:Lorg/apache/http/client/HttpClient;
    .end local v10           #romReq:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v11           #romResponse:Lorg/apache/http/HttpResponse;
    .end local v13           #romServerResponse:I
    :cond_1
    :goto_0
    if-nez v6, :cond_5

    .line 185
    :try_start_1
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v15, 0x800

    invoke-direct {v9, v14, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 187
    .local v9, romLineReader:Ljava/io/BufferedReader;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 189
    .local v5, romBuf:Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, romLine:Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 190
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 196
    .end local v5           #romBuf:Ljava/lang/StringBuffer;
    .end local v8           #romLine:Ljava/lang/String;
    .end local v9           #romLineReader:Ljava/io/BufferedReader;
    :catchall_0
    move-exception v14

    if-eqz v12, :cond_2

    .line 197
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_2
    throw v14

    .line 174
    :catch_0
    move-exception v2

    .line 175
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v14, "SuperMarketUtil"

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    const/4 v6, 0x1

    .line 180
    goto :goto_0

    .line 177
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    .line 178
    .local v3, ex:Ljava/net/MalformedURLException;
    const-string v14, "SuperMarketUtil"

    invoke-virtual {v3}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    const/4 v6, 0x1

    goto :goto_0

    .line 192
    .end local v3           #ex:Ljava/net/MalformedURLException;
    .restart local v5       #romBuf:Ljava/lang/StringBuffer;
    .restart local v8       #romLine:Ljava/lang/String;
    .restart local v9       #romLineReader:Ljava/io/BufferedReader;
    :cond_3
    :try_start_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    if-eqz v12, :cond_4

    .line 197
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 199
    .end local v5           #romBuf:Ljava/lang/StringBuffer;
    .end local v8           #romLine:Ljava/lang/String;
    .end local v9           #romLineReader:Ljava/io/BufferedReader;
    :cond_4
    :goto_2
    return-object v5

    .line 196
    :cond_5
    if-eqz v12, :cond_6

    .line 197
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 199
    :cond_6
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private static getInfoListFromJson(Lorg/json/JSONObject;Ljava/lang/String;Lcom/miui/supermarket/util/SuperMarketUtil$InfoTypeFactory;Ljava/util/ArrayList;)V
    .locals 8
    .parameter "mainJSONObject"
    .parameter "listKey"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "F::",
            "Lcom/miui/supermarket/util/SuperMarketUtil$InfoTypeFactory",
            "<TT;>;>(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "TF;",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 471
    .local p2, factory:Lcom/miui/supermarket/util/SuperMarketUtil$InfoTypeFactory;,"TF;"
    .local p3, infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    const-string v7, "url"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, appIconUrl:Ljava/lang/String;
    const-string v7, "uurl"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 473
    .local v6, userIconUrl:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 474
    .local v4, jsonList:Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 475
    .local v5, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 476
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 477
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 478
    .local v3, itemObj:Lorg/json/JSONObject;
    invoke-interface {p2, v3, v0, v6}, Lcom/miui/supermarket/util/SuperMarketUtil$InfoTypeFactory;->create(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 479
    .local v2, info:Ljava/lang/Object;,"TT;"
    if-eqz v2, :cond_0

    .line 480
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    .end local v2           #info:Ljava/lang/Object;,"TT;"
    .end local v3           #itemObj:Lorg/json/JSONObject;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 484
    :cond_1
    return-void
.end method

.method public static getInfoListFromURL(Ljava/lang/String;Ljava/lang/String;Lcom/miui/supermarket/util/SuperMarketUtil$InfoTypeFactory;Ljava/util/ArrayList;)Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;
    .locals 4
    .parameter "urlString"
    .parameter "listKey"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "F::",
            "Lcom/miui/supermarket/util/SuperMarketUtil$InfoTypeFactory",
            "<TT;>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TF;",
            "Ljava/util/ArrayList",
            "<TT;>;)",
            "Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;"
        }
    .end annotation

    .prologue
    .line 492
    .local p2, factory:Lcom/miui/supermarket/util/SuperMarketUtil$InfoTypeFactory;,"TF;"
    .local p3, infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    sget-object v2, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->OK:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    .line 494
    .local v2, respCode:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;
    :try_start_0
    invoke-static {p0}, Lcom/miui/supermarket/util/SuperMarketUtil;->getJsonFromURL(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 495
    .local v1, mainJSONObject:Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/miui/supermarket/util/SuperMarketUtil;->getResponseCode(Lorg/json/JSONObject;)Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    move-result-object v2

    .line 496
    sget-object v3, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->OK:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    if-ne v2, v3, :cond_0

    .line 497
    invoke-static {v1, p1, p2, p3}, Lcom/miui/supermarket/util/SuperMarketUtil;->getInfoListFromJson(Lorg/json/JSONObject;Ljava/lang/String;Lcom/miui/supermarket/util/SuperMarketUtil$InfoTypeFactory;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    .end local v1           #mainJSONObject:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/supermarket/util/ServerResponseUtil;->exception2Code(Ljava/lang/Exception;)Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    move-result-object v2

    goto :goto_0
.end method

.method public static getInstalledAppInfoList(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/supermarket/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 636
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 637
    .local v4, installedApps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/supermarket/AppInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 638
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 639
    .local v3, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 640
    .local v2, info:Landroid/content/pm/PackageInfo;
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_0

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    .line 646
    invoke-static {p0, v2}, Lcom/miui/supermarket/util/SuperMarketUtil;->getAppInfo(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Lcom/miui/supermarket/AppInfo;

    move-result-object v0

    .line 647
    .local v0, appInfo:Lcom/miui/supermarket/AppInfo;
    if-eqz v0, :cond_0

    .line 648
    iget-object v6, v0, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 651
    .end local v0           #appInfo:Lcom/miui/supermarket/AppInfo;
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    :cond_1
    return-object v4
.end method

.method public static getInstalledAppsUpdates()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/supermarket/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 705
    sget-object v0, Lcom/miui/supermarket/util/SuperMarketUtil;->mInstalledAppsUpdates:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getInstalledAppsUpdatesFromServer(Landroid/content/Context;)Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;
    .locals 9
    .parameter "context"

    .prologue
    .line 709
    invoke-static {p0}, Lcom/miui/supermarket/util/SuperMarketUtil;->getInstalledPackages(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v3

    .line 711
    .local v3, installedApps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 712
    .local v0, appInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/supermarket/AppInfo;>;"
    invoke-static {p0}, Lcom/miui/supermarket/util/URLHelper;->getNecessaryAppsURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "AppList"

    invoke-static {}, Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoFactory;->getInstance()Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoFactory;

    move-result-object v8

    invoke-static {v6, v7, v8, v0}, Lcom/miui/supermarket/util/SuperMarketUtil;->getInfoListFromURL(Ljava/lang/String;Ljava/lang/String;Lcom/miui/supermarket/util/SuperMarketUtil$InfoTypeFactory;Ljava/util/ArrayList;)Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    move-result-object v5

    .line 719
    .local v5, resp:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;
    sget-object v6, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->OK:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    if-ne v5, v6, :cond_0

    .line 720
    const/4 v6, 0x1

    sput-boolean v6, Lcom/miui/supermarket/util/SuperMarketUtil;->mInstalledAppsUpdatesRetrieved:Z

    .line 724
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/supermarket/AppInfo;

    .line 725
    .local v2, info:Lcom/miui/supermarket/AppInfo;
    iget-object v4, v2, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    .line 726
    .local v4, pkgName:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v2, Lcom/miui/supermarket/AppInfo;->versionCode:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 727
    sget-object v6, Lcom/miui/supermarket/util/SuperMarketUtil;->mInstalledAppsUpdates:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 730
    .end local v2           #info:Lcom/miui/supermarket/AppInfo;
    .end local v4           #pkgName:Ljava/lang/String;
    :cond_2
    return-object v5
.end method

.method public static getInstalledPackages(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v3, installedApps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 91
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 92
    .local v2, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 93
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget v6, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 95
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :cond_0
    return-object v3
.end method

.method private static getJsonFromURL(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .parameter "urlString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-static {p0}, Lcom/miui/supermarket/util/SuperMarketUtil;->getInfoFromURL(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 204
    .local v0, buf:Ljava/lang/StringBuffer;
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static getLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 125
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 126
    .local v0, launchIntent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/miui/supermarket/util/SuperMarketUtil;->hasIntentActivities(Landroid/content/pm/PackageManager;Landroid/content/Intent;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 130
    :cond_0
    return-object v0
.end method

.method private static getNumberText(Landroid/content/Context;II)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "resId"
    .parameter "size"

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, str:Ljava/lang/String;
    if-lez p2, :cond_0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    :cond_0
    return-object v0
.end method

.method public static getPkgInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 2
    .parameter "context"
    .parameter "pkgName"
    .parameter "flags"

    .prologue
    .line 685
    const/4 v0, 0x0

    .line 686
    .local v0, info:Landroid/content/pm/PackageInfo;
    if-eqz p0, :cond_0

    .line 688
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 693
    :cond_0
    :goto_0
    return-object v0

    .line 689
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getPkgSize(Landroid/content/Context;Ljava/lang/String;)J
    .locals 3
    .parameter "context"
    .parameter "pkgName"

    .prologue
    .line 677
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 681
    .local v0, packageManager:Landroid/content/pm/PackageManager;
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private static getResponseCode(Lorg/json/JSONObject;)Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;
    .locals 4
    .parameter "obj"

    .prologue
    .line 138
    if-nez p0, :cond_0

    .line 139
    sget-object v2, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->IVALID_RESPONSE_DATA:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    .line 149
    :goto_0
    return-object v2

    .line 142
    :cond_0
    const/4 v1, 0x0

    .line 144
    .local v1, error:Ljava/lang/String;
    :try_start_0
    const-string v2, "error"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 149
    :goto_1
    invoke-static {v1}, Lcom/miui/supermarket/util/ServerResponseUtil;->str2Code(Ljava/lang/String;)Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    move-result-object v2

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "SuperMarketUtil"

    const-string v3, "error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static hasIntentActivities(Landroid/content/pm/PackageManager;Landroid/content/Intent;I)Z
    .locals 2
    .parameter "pm"
    .parameter "intent"
    .parameter "flags"

    .prologue
    .line 118
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 119
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isInstalledAppsUpdatesRetrieved()Z
    .locals 1

    .prologue
    .line 735
    sget-boolean v0, Lcom/miui/supermarket/util/SuperMarketUtil;->mInstalledAppsUpdatesRetrieved:Z

    return v0
.end method

.method public static postInfoToGetInfoList(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/supermarket/util/SuperMarketUtil$InfoTypeFactory;Ljava/util/ArrayList;)Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;
    .locals 4
    .parameter "urlString"
    .parameter
    .parameter "listKey"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "F::",
            "Lcom/miui/supermarket/util/SuperMarketUtil$InfoTypeFactory",
            "<TT;>;>(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/supermarket/util/SuperMarketUtil$PostableObject;",
            ">;",
            "Ljava/lang/String;",
            "TF;",
            "Ljava/util/ArrayList",
            "<TT;>;)",
            "Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;"
        }
    .end annotation

    .prologue
    .line 593
    .local p1, formList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/supermarket/util/SuperMarketUtil$PostableObject;>;"
    .local p3, factory:Lcom/miui/supermarket/util/SuperMarketUtil$InfoTypeFactory;,"TF;"
    .local p4, infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    sget-object v2, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->OK:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    .line 595
    .local v2, respCode:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;
    :try_start_0
    invoke-static {p0, p1}, Lcom/miui/supermarket/util/SuperMarketUtil;->postInfoToGetJson(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONObject;

    move-result-object v1

    .line 596
    .local v1, mainJSONObject:Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/miui/supermarket/util/SuperMarketUtil;->getResponseCode(Lorg/json/JSONObject;)Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    move-result-object v2

    .line 597
    sget-object v3, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->OK:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    if-ne v2, v3, :cond_0

    .line 598
    invoke-static {v1, p2, p3, p4}, Lcom/miui/supermarket/util/SuperMarketUtil;->getInfoListFromJson(Lorg/json/JSONObject;Ljava/lang/String;Lcom/miui/supermarket/util/SuperMarketUtil$InfoTypeFactory;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    .end local v1           #mainJSONObject:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/miui/supermarket/util/ServerResponseUtil;->exception2Code(Ljava/lang/Exception;)Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    move-result-object v2

    goto :goto_0
.end method

.method private static postInfoToGetJson(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONObject;
    .locals 15
    .parameter "urlString"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/supermarket/util/SuperMarketUtil$PostableObject;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 287
    .local p1, formList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/supermarket/util/SuperMarketUtil$PostableObject;>;"
    const-string v12, "SuperMarketUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "postInfoToGetJson, url = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v8, 0x0

    .line 290
    .local v8, ret:Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 292
    .local v1, conn:Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 293
    .local v11, url:Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 294
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 295
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 296
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 297
    const-string v12, "POST"

    invoke-virtual {v1, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 298
    const-string v12, "Connection"

    const-string v13, "Keep-Alive"

    invoke-virtual {v1, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v12, "Content-Type"

    const-string v13, "multipart/form-data;boundary=*****"

    invoke-virtual {v1, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 303
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v2, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 305
    .local v2, dos:Ljava/io/DataOutputStream;
    const-string v12, "--*****\r\n"

    invoke-virtual {v2, v12}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 307
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 308
    .local v4, formSize:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 309
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/supermarket/util/SuperMarketUtil$PostableObject;

    invoke-virtual {v12, v2}, Lcom/miui/supermarket/util/SuperMarketUtil$PostableObject;->write(Ljava/io/DataOutputStream;)V

    .line 308
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 313
    :cond_0
    const-string v12, "--*****--\r\n"

    invoke-virtual {v2, v12}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 316
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 319
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 320
    .local v10, romBuf:Ljava/lang/StringBuffer;
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 322
    .local v7, rd:Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, line:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 323
    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 331
    .end local v2           #dos:Ljava/io/DataOutputStream;
    .end local v4           #formSize:I
    .end local v5           #i:I
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #rd:Ljava/io/BufferedReader;
    .end local v10           #romBuf:Ljava/lang/StringBuffer;
    .end local v11           #url:Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 332
    .local v3, ex:Ljava/net/MalformedURLException;
    :goto_2
    :try_start_1
    const-string v12, "SuperMarketUtil"

    invoke-virtual {v3}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    if-eqz v1, :cond_1

    .line 337
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 341
    .end local v3           #ex:Ljava/net/MalformedURLException;
    :cond_1
    :goto_3
    return-object v8

    .line 325
    .restart local v2       #dos:Ljava/io/DataOutputStream;
    .restart local v4       #formSize:I
    .restart local v5       #i:I
    .restart local v6       #line:Ljava/lang/String;
    .restart local v7       #rd:Ljava/io/BufferedReader;
    .restart local v10       #romBuf:Ljava/lang/StringBuffer;
    .restart local v11       #url:Ljava/net/URL;
    :cond_2
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 327
    new-instance v9, Lorg/json/JSONObject;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    .line 328
    .end local v8           #ret:Lorg/json/JSONObject;
    .local v9, ret:Lorg/json/JSONObject;
    if-eqz v1, :cond_3

    .line 329
    :try_start_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    .line 336
    :cond_3
    if-eqz v1, :cond_5

    .line 337
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v8, v9

    .end local v9           #ret:Lorg/json/JSONObject;
    .restart local v8       #ret:Lorg/json/JSONObject;
    goto :goto_3

    .line 333
    .end local v2           #dos:Ljava/io/DataOutputStream;
    .end local v4           #formSize:I
    .end local v5           #i:I
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #rd:Ljava/io/BufferedReader;
    .end local v10           #romBuf:Ljava/lang/StringBuffer;
    .end local v11           #url:Ljava/net/URL;
    :catch_1
    move-exception v3

    .line 334
    .local v3, ex:Ljava/lang/OutOfMemoryError;
    :goto_4
    :try_start_4
    const-string v12, "SuperMarketUtil"

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 336
    if-eqz v1, :cond_1

    .line 337
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    .line 336
    .end local v3           #ex:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v12

    :goto_5
    if-eqz v1, :cond_4

    .line 337
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw v12

    .line 336
    .end local v8           #ret:Lorg/json/JSONObject;
    .restart local v2       #dos:Ljava/io/DataOutputStream;
    .restart local v4       #formSize:I
    .restart local v5       #i:I
    .restart local v6       #line:Ljava/lang/String;
    .restart local v7       #rd:Ljava/io/BufferedReader;
    .restart local v9       #ret:Lorg/json/JSONObject;
    .restart local v10       #romBuf:Ljava/lang/StringBuffer;
    .restart local v11       #url:Ljava/net/URL;
    :catchall_1
    move-exception v12

    move-object v8, v9

    .end local v9           #ret:Lorg/json/JSONObject;
    .restart local v8       #ret:Lorg/json/JSONObject;
    goto :goto_5

    .line 333
    .end local v8           #ret:Lorg/json/JSONObject;
    .restart local v9       #ret:Lorg/json/JSONObject;
    :catch_2
    move-exception v3

    move-object v8, v9

    .end local v9           #ret:Lorg/json/JSONObject;
    .restart local v8       #ret:Lorg/json/JSONObject;
    goto :goto_4

    .line 331
    .end local v8           #ret:Lorg/json/JSONObject;
    .restart local v9       #ret:Lorg/json/JSONObject;
    :catch_3
    move-exception v3

    move-object v8, v9

    .end local v9           #ret:Lorg/json/JSONObject;
    .restart local v8       #ret:Lorg/json/JSONObject;
    goto :goto_2

    .end local v8           #ret:Lorg/json/JSONObject;
    .restart local v9       #ret:Lorg/json/JSONObject;
    :cond_5
    move-object v8, v9

    .end local v9           #ret:Lorg/json/JSONObject;
    .restart local v8       #ret:Lorg/json/JSONObject;
    goto :goto_3
.end method

.method public static resetInstalledAppsUpdates()V
    .locals 1

    .prologue
    .line 739
    sget-object v0, Lcom/miui/supermarket/util/SuperMarketUtil;->mInstalledAppsUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 740
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/supermarket/util/SuperMarketUtil;->mInstalledAppsUpdatesRetrieved:Z

    .line 741
    return-void
.end method

.method public static setNumberMenuItemAppearance(Landroid/content/Context;Landroid/view/MenuItem;II)V
    .locals 1
    .parameter "context"
    .parameter "item"
    .parameter "resId"
    .parameter "size"

    .prologue
    .line 99
    invoke-static {p0, p2, p3}, Lcom/miui/supermarket/util/SuperMarketUtil;->getNumberText(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, text:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 101
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 103
    :cond_0
    return-void
.end method

.method public static showNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 754
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 755
    new-instance v1, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p4, p3, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 756
    const/16 v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 757
    const/4 v2, 0x1

    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 758
    if-nez p1, :cond_0

    .line 759
    new-instance p1, Landroid/content/Intent;

    const-class v2, Lcom/miui/supermarket/MainTabActivity;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 761
    :cond_0
    const/4 v2, 0x0

    const/high16 v3, 0x4000

    invoke-static {p0, v2, p1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 762
    invoke-virtual {v1, p0, p2, p3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 763
    invoke-virtual {v0, p4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 764
    return-void
.end method
