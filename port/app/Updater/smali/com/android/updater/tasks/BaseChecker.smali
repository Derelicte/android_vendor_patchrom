.class public abstract Lcom/android/updater/tasks/BaseChecker;
.super Ljava/lang/Object;
.source "BaseChecker.java"


# instance fields
.field protected final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/updater/tasks/BaseChecker;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method


# virtual methods
.method protected checkUpdates(Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 14
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 34
    const/4 v2, 0x0

    .line 35
    .local v2, exception:Z
    const/4 v10, 0x0

    .line 37
    .local v10, romResponseEntity:Lorg/apache/http/HttpEntity;
    :try_start_0
    const-string v12, "BaseChecker"

    invoke-static {v12, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 39
    .local v0, RomUpdateServerUri:Ljava/net/URI;
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 40
    .local v8, romReq:Lorg/apache/http/client/methods/HttpUriRequest;
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 41
    .local v3, httpParameters:Lorg/apache/http/params/HttpParams;
    const/16 v12, 0xbb8

    invoke-static {v3, v12}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 42
    const/16 v12, 0x1388

    invoke-static {v3, v12}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 43
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 44
    .local v6, romHttpClient:Lorg/apache/http/client/HttpClient;
    const-string v12, "Cache-Control"

    const-string v13, "no-cache"

    invoke-interface {v8, v12, v13}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-interface {v6, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 46
    .local v9, romResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    .line 47
    .local v11, serverResponse:I
    const/16 v12, 0xc8

    if-eq v11, v12, :cond_2

    .line 48
    const/4 v2, 0x1

    .line 50
    const/16 v12, 0x191

    if-ne v11, v12, :cond_2

    .line 51
    new-instance v12, Lorg/apache/http/auth/AuthenticationException;

    invoke-direct {v12}, Lorg/apache/http/auth/AuthenticationException;-><init>()V

    throw v12
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v0           #RomUpdateServerUri:Ljava/net/URI;
    .end local v3           #httpParameters:Lorg/apache/http/params/HttpParams;
    .end local v6           #romHttpClient:Lorg/apache/http/client/HttpClient;
    .end local v8           #romReq:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v9           #romResponse:Lorg/apache/http/HttpResponse;
    .end local v11           #serverResponse:I
    :catch_0
    move-exception v1

    .line 57
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x1

    .line 61
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    if-nez v2, :cond_5

    .line 62
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v13, 0x800

    invoke-direct {v4, v12, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 64
    .local v4, lineReader:Ljava/io/BufferedReader;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 66
    .local v5, romBuf:Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, romLine:Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 67
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 73
    .end local v4           #lineReader:Ljava/io/BufferedReader;
    .end local v5           #romBuf:Ljava/lang/StringBuffer;
    .end local v7           #romLine:Ljava/lang/String;
    :catchall_0
    move-exception v12

    if-eqz v10, :cond_1

    .line 74
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_1
    throw v12

    .line 54
    .restart local v0       #RomUpdateServerUri:Ljava/net/URI;
    .restart local v3       #httpParameters:Lorg/apache/http/params/HttpParams;
    .restart local v6       #romHttpClient:Lorg/apache/http/client/HttpClient;
    .restart local v8       #romReq:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v9       #romResponse:Lorg/apache/http/HttpResponse;
    .restart local v11       #serverResponse:I
    :cond_2
    if-nez v2, :cond_0

    .line 55
    :try_start_2
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v10

    goto :goto_0

    .line 69
    .end local v0           #RomUpdateServerUri:Ljava/net/URI;
    .end local v3           #httpParameters:Lorg/apache/http/params/HttpParams;
    .end local v6           #romHttpClient:Lorg/apache/http/client/HttpClient;
    .end local v8           #romReq:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v9           #romResponse:Lorg/apache/http/HttpResponse;
    .end local v11           #serverResponse:I
    .restart local v4       #lineReader:Ljava/io/BufferedReader;
    .restart local v5       #romBuf:Ljava/lang/StringBuffer;
    .restart local v7       #romLine:Ljava/lang/String;
    :cond_3
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    if-eqz v10, :cond_4

    .line 74
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 76
    .end local v4           #lineReader:Ljava/io/BufferedReader;
    .end local v5           #romBuf:Ljava/lang/StringBuffer;
    .end local v7           #romLine:Ljava/lang/String;
    :cond_4
    :goto_2
    return-object v5

    .line 73
    :cond_5
    if-eqz v10, :cond_6

    .line 74
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 76
    :cond_6
    const/4 v5, 0x0

    goto :goto_2
.end method
