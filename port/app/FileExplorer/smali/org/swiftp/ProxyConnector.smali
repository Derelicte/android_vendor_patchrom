.class public Lorg/swiftp/ProxyConnector;
.super Ljava/lang/Thread;
.source "ProxyConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftp/ProxyConnector$State;
    }
.end annotation


# instance fields
.field private commandSocket:Ljava/net/Socket;

.field private ftpServerService:Lcom/android/fileexplorer/FTPServerService;

.field private hostname:Ljava/lang/String;

.field private inputStream:Ljava/io/InputStream;

.field private myLog:Lorg/swiftp/MyLog;

.field private out:Ljava/io/OutputStream;

.field private prefix:Ljava/lang/String;

.field private proxyMessage:Ljava/lang/String;

.field private proxyState:Lorg/swiftp/ProxyConnector$State;

.field private proxyUsage:J

.field private queuedRequestThreads:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private response:Lorg/json/JSONObject;

.field private responseWaiter:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/FTPServerService;)V
    .locals 3
    .parameter "ftpServerService"

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 54
    new-instance v0, Lorg/swiftp/MyLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/swiftp/MyLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    .line 55
    iput-object v2, p0, Lorg/swiftp/ProxyConnector;->response:Lorg/json/JSONObject;

    .line 56
    iput-object v2, p0, Lorg/swiftp/ProxyConnector;->responseWaiter:Ljava/lang/Thread;

    .line 57
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/swiftp/ProxyConnector;->queuedRequestThreads:Ljava/util/Queue;

    .line 58
    iput-object v2, p0, Lorg/swiftp/ProxyConnector;->commandSocket:Ljava/net/Socket;

    .line 59
    iput-object v2, p0, Lorg/swiftp/ProxyConnector;->out:Ljava/io/OutputStream;

    .line 60
    iput-object v2, p0, Lorg/swiftp/ProxyConnector;->hostname:Ljava/lang/String;

    .line 61
    iput-object v2, p0, Lorg/swiftp/ProxyConnector;->inputStream:Ljava/io/InputStream;

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/swiftp/ProxyConnector;->proxyUsage:J

    .line 63
    sget-object v0, Lorg/swiftp/ProxyConnector$State;->DISCONNECTED:Lorg/swiftp/ProxyConnector$State;

    iput-object v0, p0, Lorg/swiftp/ProxyConnector;->proxyState:Lorg/swiftp/ProxyConnector$State;

    .line 65
    iput-object v2, p0, Lorg/swiftp/ProxyConnector;->proxyMessage:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lorg/swiftp/ProxyConnector;->ftpServerService:Lcom/android/fileexplorer/FTPServerService;

    .line 81
    invoke-virtual {p0}, Lorg/swiftp/ProxyConnector;->getPersistedProxyUsage()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/swiftp/ProxyConnector;->proxyUsage:J

    .line 82
    sget-object v0, Lorg/swiftp/ProxyConnector$State;->DISCONNECTED:Lorg/swiftp/ProxyConnector$State;

    invoke-direct {p0, v0}, Lorg/swiftp/ProxyConnector;->setProxyState(Lorg/swiftp/ProxyConnector$State;)V

    .line 83
    invoke-static {p0}, Lorg/swiftp/Globals;->setProxyConnector(Lorg/swiftp/ProxyConnector;)V

    .line 84
    return-void
.end method

.method private checkAndPrintJsonError(Lorg/json/JSONObject;)Z
    .locals 4
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 268
    const-string v1, "error_code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error in JSON response, code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, s:Ljava/lang/StringBuilder;
    const-string v1, "error_code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string v1, "error_string"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    const-string v1, ", string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const-string v1, "error_string"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_0
    iget-object v1, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const/4 v2, 0x4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 290
    const/4 v1, 0x1

    .line 292
    .end local v0           #s:Ljava/lang/StringBuilder;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getProxyList()[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 216
    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "preferred_server"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 218
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v4, "preferred_server"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, preferred:Ljava/lang/String;
    const/16 v4, 0x9

    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "c1.swiftp.org"

    aput-object v4, v0, v6

    const-string v4, "c2.swiftp.org"

    aput-object v4, v0, v7

    const/4 v4, 0x2

    const-string v5, "c3.swiftp.org"

    aput-object v5, v0, v4

    const/4 v4, 0x3

    const-string v5, "c4.swiftp.org"

    aput-object v5, v0, v4

    const/4 v4, 0x4

    const-string v5, "c5.swiftp.org"

    aput-object v5, v0, v4

    const/4 v4, 0x5

    const-string v5, "c6.swiftp.org"

    aput-object v5, v0, v4

    const/4 v4, 0x6

    const-string v5, "c7.swiftp.org"

    aput-object v5, v0, v4

    const/4 v4, 0x7

    const-string v5, "c8.swiftp.org"

    aput-object v5, v0, v4

    const/16 v4, 0x8

    const-string v5, "c9.swiftp.org"

    aput-object v5, v0, v4

    .line 252
    .local v0, allProxies:[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 253
    .local v3, proxyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v3}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 254
    new-array v4, v6, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0           #allProxies:[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    .line 257
    .restart local v0       #allProxies:[Ljava/lang/String;
    if-nez v1, :cond_0

    .line 260
    .end local v0           #allProxies:[Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #allProxies:[Ljava/lang/String;
    :cond_0
    new-array v4, v7, [Ljava/lang/String;

    aput-object v1, v4, v6

    invoke-static {v4, v0}, Lorg/swiftp/Util;->concatStrArrays([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private incomingCommand(Lorg/json/JSONObject;)V
    .locals 8
    .parameter "json"

    .prologue
    const/4 v7, 0x4

    .line 329
    :try_start_0
    const-string v3, "action"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, action:Ljava/lang/String;
    const-string v3, "control_connection_waiting"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 331
    const-string v3, "port"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lorg/swiftp/ProxyConnector;->startControlSession(I)V

    .line 349
    .end local v0           #action:Ljava/lang/String;
    :goto_0
    return-void

    .line 332
    .restart local v0       #action:Ljava/lang/String;
    :cond_0
    const-string v3, "prefer_server"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 333
    const-string v3, "host"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, host:Ljava/lang/String;
    invoke-direct {p0, v2}, Lorg/swiftp/ProxyConnector;->preferServer(Ljava/lang/String;)V

    .line 335
    iget-object v3, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New preferred server: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/swiftp/MyLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 346
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #host:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 347
    .local v1, e:Lorg/json/JSONException;
    iget-object v3, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const-string v4, "JSONException in proxy incomingCommand"

    invoke-virtual {v3, v7, v4}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    goto :goto_0

    .line 336
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v0       #action:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v3, "message"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 337
    const-string v3, "text"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/swiftp/ProxyConnector;->proxyMessage:Ljava/lang/String;

    .line 338
    iget-object v3, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got news from proxy server: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/swiftp/ProxyConnector;->proxyMessage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/swiftp/MyLog;->i(Ljava/lang/String;)V

    .line 339
    invoke-static {}, Lcom/android/fileexplorer/FTPServerService;->updateClients()V

    goto :goto_0

    .line 340
    :cond_2
    const-string v3, "noop"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 341
    iget-object v3, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const-string v4, "Proxy noop"

    invoke-virtual {v3, v4}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_3
    iget-object v3, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported incoming action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private makeJsonRequest(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .parameter "action"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 672
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 673
    .local v0, json:Lorg/json/JSONObject;
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 674
    return-object v0
.end method

.method private newAuthedSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 12
    .parameter "hostname"
    .parameter "port"

    .prologue
    const/4 v8, 0x0

    .line 371
    if-nez p1, :cond_0

    .line 372
    iget-object v9, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const-string v10, "newAuthedSocket can\'t connect to null host"

    invoke-virtual {v9, v10}, Lorg/swiftp/MyLog;->i(Ljava/lang/String;)V

    move-object v7, v8

    .line 414
    :goto_0
    return-object v7

    .line 375
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 378
    .local v3, json:Lorg/json/JSONObject;
    const/4 v6, 0x0

    .line 379
    .local v6, out:Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 382
    .local v2, in:Ljava/io/InputStream;
    :try_start_0
    iget-object v9, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Opening proxy connection to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 383
    new-instance v7, Ljava/net/Socket;

    invoke-direct {v7}, Ljava/net/Socket;-><init>()V

    .line 384
    .local v7, socket:Ljava/net/Socket;
    new-instance v9, Ljava/net/InetSocketAddress;

    invoke-direct {v9, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v10, 0x1388

    invoke-virtual {v7, v9, v10}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 385
    const-string v9, "android_id"

    invoke-static {}, Lorg/swiftp/Util;->getAndroidId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 386
    const-string v9, "swiftp_version"

    invoke-static {}, Lorg/swiftp/Util;->getVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 387
    const-string v9, "action"

    const-string v10, "login"

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 389
    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 392
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/OutputStream;->write([B)V

    .line 393
    iget-object v9, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const/4 v10, 0x3

    const-string v11, "Sent login request"

    invoke-virtual {v9, v10, v11}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 395
    const/16 v9, 0x800

    new-array v0, v9, [B

    .line 398
    .local v0, bytes:[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 399
    .local v5, numBytes:I
    const/4 v9, -0x1

    if-ne v5, v9, :cond_1

    .line 400
    iget-object v9, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const/4 v10, 0x4

    const-string v11, "Proxy socket closed while waiting for auth response"

    invoke-virtual {v9, v10, v11}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    move-object v7, v8

    .line 401
    goto/16 :goto_0

    .line 402
    :cond_1
    if-nez v5, :cond_2

    .line 403
    iget-object v9, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const/4 v10, 0x4

    const-string v11, "Short network read waiting for auth, quitting"

    invoke-virtual {v9, v10, v11}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    move-object v7, v8

    .line 404
    goto/16 :goto_0

    .line 406
    :cond_2
    new-instance v4, Lorg/json/JSONObject;

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "UTF-8"

    invoke-direct {v9, v0, v10, v5, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-direct {v4, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 407
    .end local v3           #json:Lorg/json/JSONObject;
    .local v4, json:Lorg/json/JSONObject;
    :try_start_1
    invoke-direct {p0, v4}, Lorg/swiftp/ProxyConnector;->checkAndPrintJsonError(Lorg/json/JSONObject;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v7, v8

    .line 408
    goto/16 :goto_0

    .line 410
    :cond_3
    iget-object v9, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const-string v10, "newAuthedSocket successful"

    invoke-virtual {v9, v10}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 412
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 413
    .end local v0           #bytes:[B
    .end local v4           #json:Lorg/json/JSONObject;
    .end local v5           #numBytes:I
    .end local v7           #socket:Ljava/net/Socket;
    .local v1, e:Ljava/lang/Exception;
    .restart local v3       #json:Lorg/json/JSONObject;
    :goto_1
    iget-object v9, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception during proxy connection or authentication: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/swiftp/MyLog;->i(Ljava/lang/String;)V

    move-object v7, v8

    .line 414
    goto/16 :goto_0

    .line 412
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private preferServer(Ljava/lang/String;)V
    .locals 5
    .parameter "hostname"

    .prologue
    .line 208
    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "preferred_server"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 210
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 211
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "preferred_server"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 212
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 213
    return-void
.end method

.method private setProxyState(Lorg/swiftp/ProxyConnector$State;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 750
    iput-object p1, p0, Lorg/swiftp/ProxyConnector;->proxyState:Lorg/swiftp/ProxyConnector$State;

    .line 751
    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy state changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;Z)V

    .line 752
    invoke-static {}, Lcom/android/fileexplorer/FTPServerService;->updateClients()V

    .line 753
    return-void
.end method

.method private startControlSession(I)V
    .locals 5
    .parameter "port"

    .prologue
    .line 353
    iget-object v3, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const-string v4, "Starting new proxy FTP control session"

    invoke-virtual {v3, v4}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 354
    iget-object v3, p0, Lorg/swiftp/ProxyConnector;->hostname:Ljava/lang/String;

    invoke-direct {p0, v3, p1}, Lorg/swiftp/ProxyConnector;->newAuthedSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v1

    .line 355
    .local v1, socket:Ljava/net/Socket;
    if-nez v1, :cond_0

    .line 356
    iget-object v3, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const-string v4, "startControlSession got null authed socket"

    invoke-virtual {v3, v4}, Lorg/swiftp/MyLog;->i(Ljava/lang/String;)V

    .line 364
    :goto_0
    return-void

    .line 359
    :cond_0
    new-instance v0, Lorg/swiftp/ProxyDataSocketFactory;

    invoke-direct {v0}, Lorg/swiftp/ProxyDataSocketFactory;-><init>()V

    .line 360
    .local v0, dataSocketFactory:Lorg/swiftp/ProxyDataSocketFactory;
    new-instance v2, Lorg/swiftp/SessionThread;

    sget-object v3, Lorg/swiftp/SessionThread$Source;->PROXY:Lorg/swiftp/SessionThread$Source;

    invoke-direct {v2, v1, v0, v3}, Lorg/swiftp/SessionThread;-><init>(Ljava/net/Socket;Lorg/swiftp/DataSocketFactory;Lorg/swiftp/SessionThread$Source;)V

    .line 362
    .local v2, thread:Lorg/swiftp/SessionThread;
    invoke-virtual {v2}, Lorg/swiftp/SessionThread;->start()V

    .line 363
    iget-object v3, p0, Lorg/swiftp/ProxyConnector;->ftpServerService:Lcom/android/fileexplorer/FTPServerService;

    invoke-virtual {v3, v2}, Lcom/android/fileexplorer/FTPServerService;->registerSessionThread(Lorg/swiftp/SessionThread;)V

    goto :goto_0
.end method


# virtual methods
.method public dataPortConnect(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 7
    .parameter "clientAddr"
    .parameter "clientPort"

    .prologue
    const/4 v4, 0x0

    .line 609
    :try_start_0
    iget-object v5, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const-string v6, "Sending data_port_connect to proxy"

    invoke-virtual {v5, v6}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 610
    iget-object v5, p0, Lorg/swiftp/ProxyConnector;->hostname:Ljava/lang/String;

    const/16 v6, 0x8ae

    invoke-direct {p0, v5, v6}, Lorg/swiftp/ProxyConnector;->newAuthedSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v3

    .line 611
    .local v3, socket:Ljava/net/Socket;
    if-nez v3, :cond_1

    .line 612
    iget-object v5, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const-string v6, "dataPortConnect got null socket"

    invoke-virtual {v5, v6}, Lorg/swiftp/MyLog;->i(Ljava/lang/String;)V

    move-object v3, v4

    .line 625
    .end local v3           #socket:Ljava/net/Socket;
    :cond_0
    :goto_0
    return-object v3

    .line 615
    .restart local v3       #socket:Ljava/net/Socket;
    :cond_1
    const-string v5, "data_port_connect"

    invoke-direct {p0, v5}, Lorg/swiftp/ProxyConnector;->makeJsonRequest(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 616
    .local v1, request:Lorg/json/JSONObject;
    const-string v5, "address"

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 617
    const-string v5, "port"

    invoke-virtual {v1, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 618
    invoke-virtual {p0, v3, v1}, Lorg/swiftp/ProxyConnector;->sendRequest(Ljava/net/Socket;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 619
    .local v2, response:Lorg/json/JSONObject;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 620
    goto :goto_0

    .line 623
    .end local v1           #request:Lorg/json/JSONObject;
    .end local v2           #response:Lorg/json/JSONObject;
    .end local v3           #socket:Ljava/net/Socket;
    :catch_0
    move-exception v0

    .line 624
    .local v0, e:Lorg/json/JSONException;
    iget-object v5, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const-string v6, "JSONException in dataPortConnect"

    invoke-virtual {v5, v6}, Lorg/swiftp/MyLog;->i(Ljava/lang/String;)V

    move-object v3, v4

    .line 625
    goto :goto_0
.end method

.method getPersistedProxyUsage()J
    .locals 4

    .prologue
    .line 725
    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "proxy_usage_data"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 727
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "proxy_usage_data"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method incrementProxyUsage(J)V
    .locals 6
    .parameter "num"

    .prologue
    const-wide/32 v4, 0x4c4b40

    .line 737
    iget-wide v0, p0, Lorg/swiftp/ProxyConnector;->proxyUsage:J

    .line 738
    .local v0, oldProxyUsage:J
    iget-wide v2, p0, Lorg/swiftp/ProxyConnector;->proxyUsage:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lorg/swiftp/ProxyConnector;->proxyUsage:J

    .line 739
    iget-wide v2, p0, Lorg/swiftp/ProxyConnector;->proxyUsage:J

    rem-long/2addr v2, v4

    rem-long v4, v0, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 740
    invoke-static {}, Lcom/android/fileexplorer/FTPServerService;->updateClients()V

    .line 741
    invoke-virtual {p0}, Lorg/swiftp/ProxyConnector;->persistProxyUsage()V

    .line 743
    :cond_0
    return-void
.end method

.method public pasvAccept(Ljava/net/Socket;)Z
    .locals 7
    .parameter "socket"

    .prologue
    const/4 v3, 0x0

    .line 644
    :try_start_0
    const-string v4, "data_pasv_accept"

    invoke-direct {p0, v4}, Lorg/swiftp/ProxyConnector;->makeJsonRequest(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 645
    .local v1, request:Lorg/json/JSONObject;
    invoke-virtual {p0, p1, v1}, Lorg/swiftp/ProxyConnector;->sendRequest(Ljava/net/Socket;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 646
    .local v2, response:Lorg/json/JSONObject;
    if-nez v2, :cond_0

    .line 658
    .end local v1           #request:Lorg/json/JSONObject;
    .end local v2           #response:Lorg/json/JSONObject;
    :goto_0
    return v3

    .line 649
    .restart local v1       #request:Lorg/json/JSONObject;
    .restart local v2       #response:Lorg/json/JSONObject;
    :cond_0
    invoke-direct {p0, v2}, Lorg/swiftp/ProxyConnector;->checkAndPrintJsonError(Lorg/json/JSONObject;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 650
    iget-object v4, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const-string v5, "Error response to data_pasv_accept"

    invoke-virtual {v4, v5}, Lorg/swiftp/MyLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 656
    .end local v1           #request:Lorg/json/JSONObject;
    .end local v2           #response:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 657
    .local v0, e:Lorg/json/JSONException;
    iget-object v4, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSONException in pasvAccept: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/swiftp/MyLog;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 654
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #request:Lorg/json/JSONObject;
    .restart local v2       #response:Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const-string v5, "Proxy data_pasv_accept successful"

    invoke-virtual {v4, v5}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 655
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public pasvListen()Lorg/swiftp/ProxyDataSocketInfo;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 581
    :try_start_0
    iget-object v6, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const-string v7, "Sending data_pasv_listen to proxy"

    invoke-virtual {v6, v7}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 582
    iget-object v6, p0, Lorg/swiftp/ProxyConnector;->hostname:Ljava/lang/String;

    const/16 v7, 0x8ae

    invoke-direct {p0, v6, v7}, Lorg/swiftp/ProxyConnector;->newAuthedSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v4

    .line 583
    .local v4, socket:Ljava/net/Socket;
    if-nez v4, :cond_1

    .line 584
    iget-object v6, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const-string v7, "pasvListen got null socket"

    invoke-virtual {v6, v7}, Lorg/swiftp/MyLog;->i(Ljava/lang/String;)V

    .line 597
    .end local v4           #socket:Ljava/net/Socket;
    :cond_0
    :goto_0
    return-object v5

    .line 587
    .restart local v4       #socket:Ljava/net/Socket;
    :cond_1
    const-string v6, "data_pasv_listen"

    invoke-direct {p0, v6}, Lorg/swiftp/ProxyConnector;->makeJsonRequest(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 589
    .local v2, request:Lorg/json/JSONObject;
    invoke-virtual {p0, v4, v2}, Lorg/swiftp/ProxyConnector;->sendRequest(Ljava/net/Socket;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    .line 590
    .local v3, response:Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 593
    const-string v6, "port"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 594
    .local v1, port:I
    new-instance v6, Lorg/swiftp/ProxyDataSocketInfo;

    invoke-direct {v6, v4, v1}, Lorg/swiftp/ProxyDataSocketInfo;-><init>(Ljava/net/Socket;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    goto :goto_0

    .line 595
    .end local v1           #port:I
    .end local v2           #request:Lorg/json/JSONObject;
    .end local v3           #response:Lorg/json/JSONObject;
    .end local v4           #socket:Ljava/net/Socket;
    :catch_0
    move-exception v0

    .line 596
    .local v0, e:Lorg/json/JSONException;
    iget-object v6, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const/4 v7, 0x4

    const-string v8, "JSONException in pasvListen"

    invoke-virtual {v6, v7, v8}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    goto :goto_0
.end method

.method persistProxyUsage()V
    .locals 6

    .prologue
    .line 710
    iget-wide v2, p0, Lorg/swiftp/ProxyConnector;->proxyUsage:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 719
    :goto_0
    return-void

    .line 713
    :cond_0
    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "proxy_usage_data"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 715
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 716
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "proxy_usage_data"

    iget-wide v3, p0, Lorg/swiftp/ProxyConnector;->proxyUsage:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 717
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 718
    iget-object v2, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const-string v3, "Persisted proxy usage to preferences"

    invoke-virtual {v2, v3}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public quit()V
    .locals 2

    .prologue
    .line 419
    sget-object v0, Lorg/swiftp/ProxyConnector$State;->DISCONNECTED:Lorg/swiftp/ProxyConnector$State;

    invoke-direct {p0, v0}, Lorg/swiftp/ProxyConnector;->setProxyState(Lorg/swiftp/ProxyConnector$State;)V

    .line 421
    :try_start_0
    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->commandSocket:Ljava/net/Socket;

    const-string v1, "finished"

    invoke-direct {p0, v1}, Lorg/swiftp/ProxyConnector;->makeJsonRequest(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/swiftp/ProxyConnector;->sendRequest(Ljava/net/Socket;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 423
    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const-string v1, "quit() closing proxy inputStream"

    invoke-virtual {v0, v1}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 429
    :goto_0
    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->commandSocket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const-string v1, "quit() closing proxy socket"

    invoke-virtual {v0, v1}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->commandSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 438
    :goto_1
    invoke-virtual {p0}, Lorg/swiftp/ProxyConnector;->persistProxyUsage()V

    .line 439
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/swiftp/Globals;->setProxyConnector(Lorg/swiftp/ProxyConnector;)V

    .line 440
    return-void

    .line 427
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const-string v1, "quit() won\'t close null inputStream"

    invoke-virtual {v0, v1}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    goto :goto_1

    .line 433
    :cond_1
    iget-object v0, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const-string v1, "quit() won\'t close null socket"

    invoke-virtual {v0, v1}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 437
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public run()V
    .locals 15

    .prologue
    .line 87
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const-string v12, "In ProxyConnector.run()"

    invoke-virtual {v11, v12}, Lorg/swiftp/MyLog;->i(Ljava/lang/String;)V

    .line 88
    sget-object v11, Lorg/swiftp/ProxyConnector$State;->CONNECTING:Lorg/swiftp/ProxyConnector$State;

    invoke-direct {p0, v11}, Lorg/swiftp/ProxyConnector;->setProxyState(Lorg/swiftp/ProxyConnector$State;)V

    .line 90
    :try_start_0
    invoke-direct {p0}, Lorg/swiftp/ProxyConnector;->getProxyList()[Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, candidateProxies:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_3

    aget-object v2, v0, v5

    .line 92
    .local v2, candidateHostname:Ljava/lang/String;
    iput-object v2, p0, Lorg/swiftp/ProxyConnector;->hostname:Ljava/lang/String;

    .line 93
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->hostname:Ljava/lang/String;

    const/16 v12, 0x8ae

    invoke-direct {p0, v11, v12}, Lorg/swiftp/ProxyConnector;->newAuthedSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v11

    iput-object v11, p0, Lorg/swiftp/ProxyConnector;->commandSocket:Ljava/net/Socket;

    .line 94
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->commandSocket:Ljava/net/Socket;

    if-nez v11, :cond_0

    .line 91
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 97
    :cond_0
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->commandSocket:Ljava/net/Socket;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 101
    const-string v11, "start_command_session"

    invoke-direct {p0, v11}, Lorg/swiftp/ProxyConnector;->makeJsonRequest(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 102
    .local v9, request:Lorg/json/JSONObject;
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->commandSocket:Ljava/net/Socket;

    invoke-virtual {p0, v11, v9}, Lorg/swiftp/ProxyConnector;->sendRequest(Ljava/net/Socket;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v11

    iput-object v11, p0, Lorg/swiftp/ProxyConnector;->response:Lorg/json/JSONObject;

    .line 103
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->response:Lorg/json/JSONObject;

    if-nez v11, :cond_1

    .line 104
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const-string v12, "Couldn\'t create proxy command session"

    invoke-virtual {v11, v12}, Lorg/swiftp/MyLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 169
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #candidateHostname:Ljava/lang/String;
    .end local v3           #candidateProxies:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v9           #request:Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 170
    .local v4, e:Ljava/io/IOException;
    :try_start_1
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const/4 v12, 0x4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException in command session: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 171
    sget-object v11, Lorg/swiftp/ProxyConnector$State;->FAILED:Lorg/swiftp/ProxyConnector$State;

    invoke-direct {p0, v11}, Lorg/swiftp/ProxyConnector;->setProxyState(Lorg/swiftp/ProxyConnector$State;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    const/4 v11, 0x0

    invoke-static {v11}, Lorg/swiftp/Globals;->setProxyConnector(Lorg/swiftp/ProxyConnector;)V

    .line 180
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/swiftp/ProxyConnector;->hostname:Ljava/lang/String;

    .line 181
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const-string v12, "ProxyConnector.run() returning"

    invoke-virtual {v11, v12}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lorg/swiftp/ProxyConnector;->persistProxyUsage()V

    .line 184
    .end local v4           #e:Ljava/io/IOException;
    :goto_2
    return-void

    .line 107
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #candidateHostname:Ljava/lang/String;
    .restart local v3       #candidateProxies:[Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v7       #len$:I
    .restart local v9       #request:Lorg/json/JSONObject;
    :cond_1
    :try_start_2
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->response:Lorg/json/JSONObject;

    const-string v12, "prefix"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 108
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const/4 v12, 0x4

    const-string v13, "start_command_session didn\'t receive a prefix in response"

    invoke-virtual {v11, v12, v13}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 172
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #candidateHostname:Ljava/lang/String;
    .end local v3           #candidateProxies:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v9           #request:Lorg/json/JSONObject;
    :catch_1
    move-exception v4

    .line 173
    .local v4, e:Lorg/json/JSONException;
    :try_start_3
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const/4 v12, 0x4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Commmand socket JSONException: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 174
    sget-object v11, Lorg/swiftp/ProxyConnector$State;->FAILED:Lorg/swiftp/ProxyConnector$State;

    invoke-direct {p0, v11}, Lorg/swiftp/ProxyConnector;->setProxyState(Lorg/swiftp/ProxyConnector$State;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 179
    const/4 v11, 0x0

    invoke-static {v11}, Lorg/swiftp/Globals;->setProxyConnector(Lorg/swiftp/ProxyConnector;)V

    .line 180
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/swiftp/ProxyConnector;->hostname:Ljava/lang/String;

    .line 181
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const-string v12, "ProxyConnector.run() returning"

    invoke-virtual {v11, v12}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lorg/swiftp/ProxyConnector;->persistProxyUsage()V

    goto :goto_2

    .line 111
    .end local v4           #e:Lorg/json/JSONException;
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #candidateHostname:Ljava/lang/String;
    .restart local v3       #candidateProxies:[Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v7       #len$:I
    .restart local v9       #request:Lorg/json/JSONObject;
    :cond_2
    :try_start_4
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->response:Lorg/json/JSONObject;

    const-string v12, "prefix"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lorg/swiftp/ProxyConnector;->prefix:Ljava/lang/String;

    .line 112
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/swiftp/ProxyConnector;->response:Lorg/json/JSONObject;

    .line 113
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const/4 v12, 0x4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Got prefix of: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lorg/swiftp/ProxyConnector;->prefix:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 116
    .end local v2           #candidateHostname:Ljava/lang/String;
    .end local v9           #request:Lorg/json/JSONObject;
    :cond_3
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->commandSocket:Ljava/net/Socket;

    if-nez v11, :cond_4

    .line 117
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const/4 v12, 0x4

    const-string v13, "No proxies accepted connection, failing."

    invoke-virtual {v11, v12, v13}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 118
    sget-object v11, Lorg/swiftp/ProxyConnector$State;->UNREACHABLE:Lorg/swiftp/ProxyConnector$State;

    invoke-direct {p0, v11}, Lorg/swiftp/ProxyConnector;->setProxyState(Lorg/swiftp/ProxyConnector$State;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 179
    const/4 v11, 0x0

    invoke-static {v11}, Lorg/swiftp/Globals;->setProxyConnector(Lorg/swiftp/ProxyConnector;)V

    .line 180
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/swiftp/ProxyConnector;->hostname:Ljava/lang/String;

    .line 181
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const-string v12, "ProxyConnector.run() returning"

    invoke-virtual {v11, v12}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lorg/swiftp/ProxyConnector;->persistProxyUsage()V

    goto/16 :goto_2

    .line 121
    :cond_4
    :try_start_5
    sget-object v11, Lorg/swiftp/ProxyConnector$State;->CONNECTED:Lorg/swiftp/ProxyConnector$State;

    invoke-direct {p0, v11}, Lorg/swiftp/ProxyConnector;->setProxyState(Lorg/swiftp/ProxyConnector$State;)V

    .line 122
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->hostname:Ljava/lang/String;

    invoke-direct {p0, v11}, Lorg/swiftp/ProxyConnector;->preferServer(Ljava/lang/String;)V

    .line 123
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->commandSocket:Ljava/net/Socket;

    invoke-virtual {v11}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    iput-object v11, p0, Lorg/swiftp/ProxyConnector;->inputStream:Ljava/io/InputStream;

    .line 124
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->commandSocket:Ljava/net/Socket;

    invoke-virtual {v11}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    iput-object v11, p0, Lorg/swiftp/ProxyConnector;->out:Ljava/io/OutputStream;

    .line 126
    const/16 v11, 0x800

    new-array v1, v11, [B

    .line 129
    .local v1, bytes:[B
    :goto_3
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const-string v12, "to proxy read()"

    invoke-virtual {v11, v12}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 130
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v11, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 131
    .local v8, numBytes:I
    int-to-long v11, v8

    invoke-virtual {p0, v11, v12}, Lorg/swiftp/ProxyConnector;->incrementProxyUsage(J)V

    .line 132
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const-string v12, "from proxy read()"

    invoke-virtual {v11, v12}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 133
    const/4 v6, 0x0

    .line 134
    .local v6, incomingJson:Lorg/json/JSONObject;
    if-lez v8, :cond_8

    .line 135
    new-instance v10, Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-direct {v10, v1, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 136
    .local v10, responseString:Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    .end local v6           #incomingJson:Lorg/json/JSONObject;
    invoke-direct {v6, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 137
    .restart local v6       #incomingJson:Lorg/json/JSONObject;
    const-string v11, "action"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 140
    invoke-direct {p0, v6}, Lorg/swiftp/ProxyConnector;->incomingCommand(Lorg/json/JSONObject;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 175
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #bytes:[B
    .end local v3           #candidateProxies:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #incomingJson:Lorg/json/JSONObject;
    .end local v7           #len$:I
    .end local v8           #numBytes:I
    .end local v10           #responseString:Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 176
    .local v4, e:Ljava/lang/Exception;
    :try_start_6
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const/4 v12, 0x4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Other exception in ProxyConnector: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 177
    sget-object v11, Lorg/swiftp/ProxyConnector$State;->FAILED:Lorg/swiftp/ProxyConnector$State;

    invoke-direct {p0, v11}, Lorg/swiftp/ProxyConnector;->setProxyState(Lorg/swiftp/ProxyConnector$State;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 179
    const/4 v11, 0x0

    invoke-static {v11}, Lorg/swiftp/Globals;->setProxyConnector(Lorg/swiftp/ProxyConnector;)V

    .line 180
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/swiftp/ProxyConnector;->hostname:Ljava/lang/String;

    .line 181
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const-string v12, "ProxyConnector.run() returning"

    invoke-virtual {v11, v12}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lorg/swiftp/ProxyConnector;->persistProxyUsage()V

    goto/16 :goto_2

    .line 146
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #bytes:[B
    .restart local v3       #candidateProxies:[Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v6       #incomingJson:Lorg/json/JSONObject;
    .restart local v7       #len$:I
    .restart local v8       #numBytes:I
    .restart local v10       #responseString:Ljava/lang/String;
    :cond_5
    :try_start_7
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->responseWaiter:Ljava/lang/Thread;

    if-eqz v11, :cond_7

    .line 147
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->response:Lorg/json/JSONObject;

    if-eqz v11, :cond_6

    .line 148
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const/4 v12, 0x4

    const-string v13, "Overwriting existing cmd session response"

    invoke-virtual {v11, v12, v13}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 150
    :cond_6
    iput-object v6, p0, Lorg/swiftp/ProxyConnector;->response:Lorg/json/JSONObject;

    .line 151
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->responseWaiter:Ljava/lang/Thread;

    invoke-virtual {v11}, Ljava/lang/Thread;->interrupt()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 179
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #bytes:[B
    .end local v3           #candidateProxies:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #incomingJson:Lorg/json/JSONObject;
    .end local v7           #len$:I
    .end local v8           #numBytes:I
    .end local v10           #responseString:Ljava/lang/String;
    :catchall_0
    move-exception v11

    const/4 v12, 0x0

    invoke-static {v12}, Lorg/swiftp/Globals;->setProxyConnector(Lorg/swiftp/ProxyConnector;)V

    .line 180
    const/4 v12, 0x0

    iput-object v12, p0, Lorg/swiftp/ProxyConnector;->hostname:Ljava/lang/String;

    .line 181
    iget-object v12, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const-string v13, "ProxyConnector.run() returning"

    invoke-virtual {v12, v13}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lorg/swiftp/ProxyConnector;->persistProxyUsage()V

    throw v11

    .line 153
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #bytes:[B
    .restart local v3       #candidateProxies:[Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v6       #incomingJson:Lorg/json/JSONObject;
    .restart local v7       #len$:I
    .restart local v8       #numBytes:I
    .restart local v10       #responseString:Ljava/lang/String;
    :cond_7
    :try_start_8
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const/4 v12, 0x4

    const-string v13, "Response received but no responseWaiter"

    invoke-virtual {v11, v12, v13}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 156
    .end local v10           #responseString:Ljava/lang/String;
    :cond_8
    if-nez v8, :cond_9

    .line 157
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const-string v12, "Command socket read 0 bytes, looping"

    invoke-virtual {v11, v12}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 159
    :cond_9
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const/4 v12, 0x3

    const-string v13, "Command socket end of stream, exiting"

    invoke-virtual {v11, v12, v13}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 160
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->proxyState:Lorg/swiftp/ProxyConnector$State;

    sget-object v12, Lorg/swiftp/ProxyConnector$State;->DISCONNECTED:Lorg/swiftp/ProxyConnector$State;

    if-eq v11, v12, :cond_a

    .line 163
    sget-object v11, Lorg/swiftp/ProxyConnector$State;->FAILED:Lorg/swiftp/ProxyConnector$State;

    invoke-direct {p0, v11}, Lorg/swiftp/ProxyConnector;->setProxyState(Lorg/swiftp/ProxyConnector$State;)V

    .line 168
    :cond_a
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const/4 v12, 0x4

    const-string v13, "ProxyConnector thread quitting cleanly"

    invoke-virtual {v11, v12, v13}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 179
    const/4 v11, 0x0

    invoke-static {v11}, Lorg/swiftp/Globals;->setProxyConnector(Lorg/swiftp/ProxyConnector;)V

    .line 180
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/swiftp/ProxyConnector;->hostname:Ljava/lang/String;

    .line 181
    iget-object v11, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const-string v12, "ProxyConnector.run() returning"

    invoke-virtual {v11, v12}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lorg/swiftp/ProxyConnector;->persistProxyUsage()V

    goto/16 :goto_2
.end method

.method public sendRequest(Ljava/io/InputStream;Ljava/io/OutputStream;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 8
    .parameter "in"
    .parameter "out"
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 538
    :try_start_0
    invoke-static {p3}, Lorg/swiftp/Util;->jsonToByteArray(Lorg/json/JSONObject;)[B

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write([B)V

    .line 539
    const/16 v5, 0x800

    new-array v0, v5, [B

    .line 540
    .local v0, bytes:[B
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 541
    .local v2, numBytes:I
    const/4 v5, 0x1

    if-ge v2, v5, :cond_1

    .line 542
    iget-object v5, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const-string v6, "Proxy sendRequest short read on response"

    invoke-virtual {v5, v6}, Lorg/swiftp/MyLog;->i(Ljava/lang/String;)V

    move-object v3, v4

    .line 556
    .end local v0           #bytes:[B
    .end local v2           #numBytes:I
    :cond_0
    :goto_0
    return-object v3

    .line 545
    .restart local v0       #bytes:[B
    .restart local v2       #numBytes:I
    :cond_1
    invoke-static {v0}, Lorg/swiftp/Util;->byteArrayToJson([B)Lorg/json/JSONObject;

    move-result-object v3

    .line 546
    .local v3, response:Lorg/json/JSONObject;
    if-nez v3, :cond_2

    .line 547
    iget-object v5, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const-string v6, "Null response to sendRequest"

    invoke-virtual {v5, v6}, Lorg/swiftp/MyLog;->i(Ljava/lang/String;)V

    .line 549
    :cond_2
    invoke-direct {p0, v3}, Lorg/swiftp/ProxyConnector;->checkAndPrintJsonError(Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 550
    iget-object v5, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const-string v6, "Error response to sendRequest"

    invoke-virtual {v5, v6}, Lorg/swiftp/MyLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 551
    goto :goto_0

    .line 554
    .end local v0           #bytes:[B
    .end local v2           #numBytes:I
    .end local v3           #response:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 555
    .local v1, e:Ljava/io/IOException;
    iget-object v5, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException in proxy sendRequest: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/swiftp/MyLog;->i(Ljava/lang/String;)V

    move-object v3, v4

    .line 556
    goto :goto_0
.end method

.method public sendRequest(Ljava/net/Socket;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5
    .parameter "socket"
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 563
    if-nez p1, :cond_0

    .line 565
    :try_start_0
    iget-object v2, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    const-string v3, "null socket in ProxyConnector.sendRequest()"

    invoke-virtual {v2, v3}, Lorg/swiftp/MyLog;->i(Ljava/lang/String;)V

    .line 574
    :goto_0
    return-object v1

    .line 568
    :cond_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p2}, Lorg/swiftp/ProxyConnector;->sendRequest(Ljava/io/InputStream;Ljava/io/OutputStream;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, e:Ljava/io/IOException;
    iget-object v2, p0, Lorg/swiftp/ProxyConnector;->myLog:Lorg/swiftp/MyLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException in proxy sendRequest wrapper: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/swiftp/MyLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method
