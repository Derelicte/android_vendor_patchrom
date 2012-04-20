.class public abstract Lcom/miui/milk/control/cloud/BaseCloudController;
.super Ljava/lang/Object;
.source "BaseCloudController.java"


# static fields
.field static PING_RESULT_EXPIRE_TIMEOUT:J

.field public static sLastPingTime:J


# instance fields
.field protected final mBatchSize:I

.field protected mCanceled:Z

.field protected mContext:Landroid/content/Context;

.field protected mDeviceId:Ljava/lang/String;

.field protected mIMSI:Ljava/lang/String;

.field protected mResolver:Landroid/content/ContentResolver;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field protected mTransport:Lcom/miui/milk/transport/HttpTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/miui/milk/control/cloud/BaseCloudController;->PING_RESULT_EXPIRE_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mDeviceId:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mIMSI:Ljava/lang/String;

    .line 31
    iput-boolean v1, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    .line 33
    const/16 v0, 0xfa

    iput v0, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mBatchSize:I

    .line 45
    iput-object p1, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mResolver:Landroid/content/ContentResolver;

    .line 47
    new-instance v0, Lcom/miui/milk/transport/HttpTransport;

    invoke-direct {v0, p1}, Lcom/miui/milk/transport/HttpTransport;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mTransport:Lcom/miui/milk/transport/HttpTransport;

    .line 48
    invoke-virtual {p0}, Lcom/miui/milk/control/cloud/BaseCloudController;->initDeviceId()V

    .line 50
    const-string v0, "SyncPref"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mSharedPref:Landroid/content/SharedPreferences;

    .line 51
    return-void
.end method


# virtual methods
.method public abstract calculateSyncSize()I
.end method

.method protected checkResponseStatus(Lorg/apache/http/HttpResponse;)V
    .locals 4
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Http response is null "

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 122
    .local v0, statusCode:I
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_1

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_1

    .line 127
    return-void

    .line 125
    :cond_1
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract clearPrepared()V
.end method

.method public getHttpTransport()Lcom/miui/milk/transport/HttpTransport;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mTransport:Lcom/miui/milk/transport/HttpTransport;

    return-object v0
.end method

.method protected getSyncFindlostUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    invoke-static {}, Lcom/miui/milk/transport/HttpTransport;->getSyncFindlostUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSyncPingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    invoke-static {}, Lcom/miui/milk/transport/HttpTransport;->getSyncPingUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSyncReadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    invoke-static {}, Lcom/miui/milk/transport/HttpTransport;->getSyncReadUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSyncSaveUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lcom/miui/milk/transport/HttpTransport;->getSyncSaveUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSyncVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const-string v0, "1"

    return-object v0
.end method

.method protected initDeviceId()V
    .locals 3

    .prologue
    .line 58
    iget-object v1, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 59
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mDeviceId:Ljava/lang/String;

    .line 60
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mIMSI:Ljava/lang/String;

    .line 61
    return-void
.end method

.method protected makeExceptionCallback(Lcom/miui/milk/control/callback/AsyncTaskCallback;Lorg/apache/http/HttpResponse;)V
    .locals 5
    .parameter "callback"
    .parameter "response"

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    if-nez p2, :cond_0

    .line 92
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "EXCEPTION"

    aput-object v2, v1, v3

    const-string v2, "2101"

    aput-object v2, v1, v4

    invoke-interface {p1, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    .line 101
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 97
    .local v0, statusCode:I
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "EXCEPTION"

    aput-object v2, v1, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {p1, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected prepareTransportParams()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v2, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/milk/util/AccountUtil;->getAccountInfo(Landroid/content/Context;)Lcom/miui/milk/util/AccountUtil$AccountInfo;

    move-result-object v0

    .line 105
    .local v0, accountInfo:Lcom/miui/milk/util/AccountUtil$AccountInfo;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 106
    .local v1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "M_IMEIMEID"

    iget-object v3, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v2, "M_IMSI"

    iget-object v3, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mIMSI:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v2, "M_SECRETKIND"

    const-string v3, "AuthedId"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v2, "M_SECRET"

    iget-object v3, v0, Lcom/miui/milk/util/AccountUtil$AccountInfo;->token:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-object v1
.end method

.method public abstract read(Lcom/miui/milk/control/callback/AsyncTaskCallback;Landroid/content/SharedPreferences;)V
.end method

.method public abstract saveInBatchMode(Lcom/miui/milk/control/callback/AsyncTaskCallback;Landroid/content/SharedPreferences;)V
.end method

.method protected tryPing(Lcom/miui/milk/control/callback/AsyncTaskCallback;)V
    .locals 9
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 65
    .local v0, curTime:J
    sget-wide v5, Lcom/miui/milk/control/cloud/BaseCloudController;->PING_RESULT_EXPIRE_TIMEOUT:J

    sget-wide v7, Lcom/miui/milk/control/cloud/BaseCloudController;->sLastPingTime:J

    sub-long v7, v0, v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 88
    :cond_0
    return-void

    .line 68
    :cond_1
    sput-wide v0, Lcom/miui/milk/control/cloud/BaseCloudController;->sLastPingTime:J

    .line 71
    const/4 v3, 0x0

    .line 73
    .local v3, response:Lorg/apache/http/HttpResponse;
    :try_start_0
    iget-object v5, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mTransport:Lcom/miui/milk/transport/HttpTransport;

    invoke-virtual {p0}, Lcom/miui/milk/control/cloud/BaseCloudController;->getSyncPingUrl()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/miui/milk/transport/HttpTransport;->sendRequest(Ljava/lang/String;Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 74
    if-eqz v3, :cond_0

    .line 75
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 76
    .local v4, statusCode:I
    const/16 v5, 0xc8

    if-lt v4, v5, :cond_2

    const/16 v5, 0x12c

    if-lt v4, v5, :cond_0

    .line 79
    :cond_2
    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Http Error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v4           #statusCode:I
    :catch_0
    move-exception v2

    .line 84
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "BaseCloudController"

    const-string v6, "ping failed "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    invoke-virtual {p0, p1, v3}, Lcom/miui/milk/control/cloud/BaseCloudController;->makeExceptionCallback(Lcom/miui/milk/control/callback/AsyncTaskCallback;Lorg/apache/http/HttpResponse;)V

    .line 86
    throw v2
.end method
