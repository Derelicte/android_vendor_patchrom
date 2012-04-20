.class public Lcom/miui/milk/transport/HttpTransport;
.super Ljava/lang/Object;
.source "HttpTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/transport/HttpTransport$GzipDecompressingEntity;
    }
.end annotation


# static fields
.field public static CONN_TIMEOUT:I

.field public static IP_EXPIRE_TIMEOUT:J

.field public static SO_TIMEOUT:I

.field public static final SYNC_DN_URL_CHECK:Ljava/lang/String;

.field public static final SYNC_DN_URL_FINDLOST:Ljava/lang/String;

.field public static final SYNC_DN_URL_PING:Ljava/lang/String;

.field public static final SYNC_DN_URL_PREFIX:Ljava/lang/String;

.field public static final SYNC_DN_URL_READ:Ljava/lang/String;

.field public static final SYNC_DN_URL_SAVE:Ljava/lang/String;

.field public static SYNC_IP_URL_CHECK:Ljava/lang/String;

.field public static SYNC_IP_URL_FINDLOST:Ljava/lang/String;

.field public static SYNC_IP_URL_PING:Ljava/lang/String;

.field public static SYNC_IP_URL_PREFIX:Ljava/lang/String;

.field public static SYNC_IP_URL_READ:Ljava/lang/String;

.field public static SYNC_IP_URL_SAVE:Ljava/lang/String;

.field public static final SYNC_PORT_AND_PATH:Ljava/lang/String;

.field private static sAllAllowedHttpClient:Lorg/apache/http/client/HttpClient;

.field public static sIpResolvingTime:J

.field private static sRestrictHttpClient:Lorg/apache/http/client/HttpClient;

.field public static sSyncIp:Ljava/lang/String;

.field private static sSyncRoot:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 48
    const-string v0, ":%d/milk/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0x1bb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/milk/transport/HttpTransport;->SYNC_PORT_AND_PATH:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://milk.app.miui.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/milk/transport/HttpTransport;->SYNC_PORT_AND_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/milk/transport/HttpTransport;->SYNC_DN_URL_PREFIX:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/milk/transport/HttpTransport;->SYNC_DN_URL_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "save"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/milk/transport/HttpTransport;->SYNC_DN_URL_SAVE:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/milk/transport/HttpTransport;->SYNC_DN_URL_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "read"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/milk/transport/HttpTransport;->SYNC_DN_URL_READ:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/milk/transport/HttpTransport;->SYNC_DN_URL_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "check"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/milk/transport/HttpTransport;->SYNC_DN_URL_CHECK:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/milk/transport/HttpTransport;->SYNC_DN_URL_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "findlost"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/milk/transport/HttpTransport;->SYNC_DN_URL_FINDLOST:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/milk/transport/HttpTransport;->SYNC_DN_URL_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/milk/transport/HttpTransport;->SYNC_DN_URL_PING:Ljava/lang/String;

    .line 62
    sput-object v4, Lcom/miui/milk/transport/HttpTransport;->SYNC_IP_URL_PREFIX:Ljava/lang/String;

    .line 63
    sput-object v4, Lcom/miui/milk/transport/HttpTransport;->SYNC_IP_URL_SAVE:Ljava/lang/String;

    .line 64
    sput-object v4, Lcom/miui/milk/transport/HttpTransport;->SYNC_IP_URL_READ:Ljava/lang/String;

    .line 65
    sput-object v4, Lcom/miui/milk/transport/HttpTransport;->SYNC_IP_URL_CHECK:Ljava/lang/String;

    .line 66
    sput-object v4, Lcom/miui/milk/transport/HttpTransport;->SYNC_IP_URL_FINDLOST:Ljava/lang/String;

    .line 67
    sput-object v4, Lcom/miui/milk/transport/HttpTransport;->SYNC_IP_URL_PING:Ljava/lang/String;

    .line 68
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/miui/milk/transport/HttpTransport;->sIpResolvingTime:J

    .line 69
    sput-object v4, Lcom/miui/milk/transport/HttpTransport;->sSyncIp:Ljava/lang/String;

    .line 81
    const/16 v0, 0x2710

    sput v0, Lcom/miui/milk/transport/HttpTransport;->CONN_TIMEOUT:I

    .line 82
    const/16 v0, 0x7530

    sput v0, Lcom/miui/milk/transport/HttpTransport;->SO_TIMEOUT:I

    .line 83
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/miui/milk/transport/HttpTransport;->IP_EXPIRE_TIMEOUT:J

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/milk/transport/HttpTransport;->sSyncRoot:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p1, p0, Lcom/miui/milk/transport/HttpTransport;->mContext:Landroid/content/Context;

    .line 220
    return-void
.end method

.method private static getAllAllowedHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, httpClient:Lorg/apache/http/client/HttpClient;
    sget-object v0, Lcom/miui/milk/transport/HttpTransport;->sAllAllowedHttpClient:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_0

    move-object v1, v0

    .line 191
    .end local v0           #httpClient:Lorg/apache/http/client/HttpClient;
    .local v1, httpClient:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 183
    .end local v1           #httpClient:Ljava/lang/Object;
    .restart local v0       #httpClient:Lorg/apache/http/client/HttpClient;
    :cond_0
    sget-object v3, Lcom/miui/milk/transport/HttpTransport;->sSyncRoot:Ljava/lang/Object;

    monitor-enter v3

    .line 184
    :try_start_0
    sget-object v0, Lcom/miui/milk/transport/HttpTransport;->sAllAllowedHttpClient:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_1

    .line 185
    monitor-exit v3

    move-object v1, v0

    .restart local v1       #httpClient:Ljava/lang/Object;
    goto :goto_0

    .line 188
    .end local v1           #httpClient:Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/miui/milk/transport/HttpTransport;->getHttpClientSync(Landroid/content/Context;Z)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    .line 189
    monitor-exit v3

    move-object v1, v0

    .line 191
    .restart local v1       #httpClient:Ljava/lang/Object;
    goto :goto_0

    .line 189
    .end local v1           #httpClient:Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static getHttpClientSync(Landroid/content/Context;Z)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 8
    .parameter "context"
    .parameter "allowAllHost"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 135
    const-string v6, "BKS"

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 136
    .local v5, trusted:Ljava/security/KeyStore;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f05

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 138
    .local v0, in:Ljava/io/InputStream;
    :try_start_0
    const-string v6, "changeit"

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 143
    new-instance v4, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    invoke-direct {v4, v5}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 144
    .local v4, sf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    if-eqz p1, :cond_0

    sget-object v6, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    :goto_0
    invoke-virtual {v4, v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 146
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "https"

    const/16 v7, 0x1bb

    invoke-direct {v3, v6, v4, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 147
    .local v3, sch:Lorg/apache/http/conn/scheme/Scheme;
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 148
    .local v1, params:Lorg/apache/http/params/BasicHttpParams;
    const-string v6, "http.protocol.expect-continue"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/apache/http/params/BasicHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 149
    sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 150
    const-string v6, "UTF-8"

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 151
    sget v6, Lcom/miui/milk/transport/HttpTransport;->CONN_TIMEOUT:I

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 152
    sget v6, Lcom/miui/milk/transport/HttpTransport;->SO_TIMEOUT:I

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 153
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 154
    .local v2, reg:Lorg/apache/http/conn/scheme/SchemeRegistry;
    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 155
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v7, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v7, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    invoke-direct {v6, v7, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v6

    .line 140
    .end local v1           #params:Lorg/apache/http/params/BasicHttpParams;
    .end local v2           #reg:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v3           #sch:Lorg/apache/http/conn/scheme/Scheme;
    .end local v4           #sf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :catchall_0
    move-exception v6

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v6

    .line 144
    .restart local v4       #sf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :cond_0
    sget-object v6, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    goto :goto_0
.end method

.method private static getRestrictHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, httpClient:Lorg/apache/http/client/HttpClient;
    sget-object v0, Lcom/miui/milk/transport/HttpTransport;->sRestrictHttpClient:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_0

    move-object v1, v0

    .line 173
    .end local v0           #httpClient:Lorg/apache/http/client/HttpClient;
    .local v1, httpClient:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 165
    .end local v1           #httpClient:Ljava/lang/Object;
    .restart local v0       #httpClient:Lorg/apache/http/client/HttpClient;
    :cond_0
    sget-object v3, Lcom/miui/milk/transport/HttpTransport;->sSyncRoot:Ljava/lang/Object;

    monitor-enter v3

    .line 166
    :try_start_0
    sget-object v0, Lcom/miui/milk/transport/HttpTransport;->sRestrictHttpClient:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_1

    .line 167
    monitor-exit v3

    move-object v1, v0

    .restart local v1       #httpClient:Ljava/lang/Object;
    goto :goto_0

    .line 170
    .end local v1           #httpClient:Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/miui/milk/transport/HttpTransport;->getHttpClientSync(Landroid/content/Context;Z)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    .line 171
    monitor-exit v3

    move-object v1, v0

    .line 173
    .restart local v1       #httpClient:Ljava/lang/Object;
    goto :goto_0

    .line 171
    .end local v1           #httpClient:Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getSyncFindlostUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lcom/miui/milk/transport/HttpTransport;->resetIpIfExpired()V

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, url:Ljava/lang/String;
    sget-object v0, Lcom/miui/milk/transport/HttpTransport;->SYNC_IP_URL_FINDLOST:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/milk/transport/HttpTransport;->SYNC_DN_URL_FINDLOST:Ljava/lang/String;

    .end local v0           #url:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getSyncPingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    invoke-static {}, Lcom/miui/milk/transport/HttpTransport;->resetIpIfExpired()V

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, url:Ljava/lang/String;
    sget-object v0, Lcom/miui/milk/transport/HttpTransport;->SYNC_IP_URL_PING:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/milk/transport/HttpTransport;->SYNC_DN_URL_PING:Ljava/lang/String;

    .end local v0           #url:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getSyncReadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lcom/miui/milk/transport/HttpTransport;->resetIpIfExpired()V

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, url:Ljava/lang/String;
    sget-object v0, Lcom/miui/milk/transport/HttpTransport;->SYNC_IP_URL_READ:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/milk/transport/HttpTransport;->SYNC_DN_URL_READ:Ljava/lang/String;

    .end local v0           #url:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getSyncSaveUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcom/miui/milk/transport/HttpTransport;->resetIpIfExpired()V

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, url:Ljava/lang/String;
    sget-object v0, Lcom/miui/milk/transport/HttpTransport;->SYNC_IP_URL_SAVE:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/milk/transport/HttpTransport;->SYNC_DN_URL_SAVE:Ljava/lang/String;

    .end local v0           #url:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static isIpExpired()Z
    .locals 6

    .prologue
    .line 130
    sget-wide v0, Lcom/miui/milk/transport/HttpTransport;->IP_EXPIRE_TIMEOUT:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/miui/milk/transport/HttpTransport;->sIpResolvingTime:J

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static resetIpIfExpired()V
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/miui/milk/transport/HttpTransport;->isIpExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/miui/milk/transport/HttpTransport;->updateIp(Z)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static updateIp(Z)V
    .locals 4
    .parameter "useIp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 195
    sget-object v1, Lcom/miui/milk/transport/HttpTransport;->sSyncRoot:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    if-eqz p0, :cond_0

    .line 197
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/miui/milk/transport/HttpTransport;->sIpResolvingTime:J

    .line 198
    const-string v0, "milk.app.miui.com"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/milk/transport/HttpTransport;->sSyncIp:Ljava/lang/String;

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/miui/milk/transport/HttpTransport;->sSyncIp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/miui/milk/transport/HttpTransport;->SYNC_PORT_AND_PATH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/milk/transport/HttpTransport;->SYNC_IP_URL_PREFIX:Ljava/lang/String;

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/miui/milk/transport/HttpTransport;->SYNC_IP_URL_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "save"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/milk/transport/HttpTransport;->SYNC_IP_URL_SAVE:Ljava/lang/String;

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/miui/milk/transport/HttpTransport;->SYNC_IP_URL_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "read"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/milk/transport/HttpTransport;->SYNC_IP_URL_READ:Ljava/lang/String;

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/miui/milk/transport/HttpTransport;->SYNC_IP_URL_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "check"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/milk/transport/HttpTransport;->SYNC_IP_URL_CHECK:Ljava/lang/String;

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/miui/milk/transport/HttpTransport;->SYNC_IP_URL_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "findlost"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/milk/transport/HttpTransport;->SYNC_IP_URL_FINDLOST:Ljava/lang/String;

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/miui/milk/transport/HttpTransport;->SYNC_IP_URL_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ping"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/milk/transport/HttpTransport;->SYNC_IP_URL_PING:Ljava/lang/String;

    .line 215
    :goto_0
    monitor-exit v1

    .line 216
    return-void

    .line 206
    :cond_0
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/miui/milk/transport/HttpTransport;->sIpResolvingTime:J

    .line 207
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/milk/transport/HttpTransport;->sSyncIp:Ljava/lang/String;

    .line 208
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/milk/transport/HttpTransport;->SYNC_IP_URL_PREFIX:Ljava/lang/String;

    .line 209
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/milk/transport/HttpTransport;->SYNC_IP_URL_SAVE:Ljava/lang/String;

    .line 210
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/milk/transport/HttpTransport;->SYNC_IP_URL_READ:Ljava/lang/String;

    .line 211
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/milk/transport/HttpTransport;->SYNC_IP_URL_CHECK:Ljava/lang/String;

    .line 212
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/milk/transport/HttpTransport;->SYNC_IP_URL_FINDLOST:Ljava/lang/String;

    .line 213
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/milk/transport/HttpTransport;->SYNC_IP_URL_PING:Ljava/lang/String;

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public sendRequest(Ljava/lang/String;Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;
    .locals 16
    .parameter "requestUrl"
    .parameter "syncReq"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/miui/milk/model/SyncRootProtos$SyncRoot;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 224
    .local p3, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 226
    .local v7, httppost:Lorg/apache/http/client/methods/HttpPost;
    if-eqz p3, :cond_0

    .line 227
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 228
    .local v10, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 229
    .local v9, key:Ljava/lang/String;
    new-instance v6, Lorg/apache/http/message/BasicHeader;

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {v6, v9, v13}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .local v6, header:Lorg/apache/http/message/BasicHeader;
    invoke-virtual {v7, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 234
    .end local v6           #header:Lorg/apache/http/message/BasicHeader;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    if-eqz p2, :cond_1

    .line 236
    invoke-virtual/range {p2 .. p2}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->toByteArray()[B

    move-result-object v11

    .line 238
    .local v11, oriSrc:[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v13, 0x200

    invoke-direct {v1, v13}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 239
    .local v1, bout:Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 240
    .local v4, gout:Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {v4, v11}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 241
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 242
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 244
    .local v5, gzipSrc:[B
    new-instance v3, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v3, v5}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 245
    .local v3, entity:Lorg/apache/http/entity/ByteArrayEntity;
    invoke-virtual {v7, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 248
    .end local v1           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v3           #entity:Lorg/apache/http/entity/ByteArrayEntity;
    .end local v4           #gout:Ljava/util/zip/GZIPOutputStream;
    .end local v5           #gzipSrc:[B
    .end local v11           #oriSrc:[B
    :cond_1
    const/4 v12, 0x0

    .line 250
    .local v12, response:Lorg/apache/http/HttpResponse;
    :try_start_0
    invoke-static {}, Lcom/miui/milk/transport/HttpTransport;->isIpExpired()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 251
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/milk/transport/HttpTransport;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/miui/milk/transport/HttpTransport;->getRestrictHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v13

    invoke-interface {v13, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 252
    const/4 v13, 0x1

    invoke-static {v13}, Lcom/miui/milk/transport/HttpTransport;->updateIp(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :goto_1
    if-nez v12, :cond_2

    .line 263
    const-wide/16 v13, 0x0

    sput-wide v13, Lcom/miui/milk/control/cloud/BaseCloudController;->sLastPingTime:J

    .line 267
    :cond_2
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 269
    new-instance v13, Lcom/miui/milk/transport/HttpTransport$GzipDecompressingEntity;

    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/miui/milk/transport/HttpTransport$GzipDecompressingEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v12, v13}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 273
    :cond_3
    return-object v12

    .line 255
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/milk/transport/HttpTransport;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/miui/milk/transport/HttpTransport;->getAllAllowedHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v13

    invoke-interface {v13, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    goto :goto_1

    .line 256
    :catch_0
    move-exception v2

    .line 257
    .local v2, e:Ljava/lang/Exception;
    const/4 v13, 0x0

    :try_start_2
    invoke-static {v13}, Lcom/miui/milk/transport/HttpTransport;->updateIp(Z)V

    .line 258
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/milk/transport/HttpTransport;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/miui/milk/transport/HttpTransport;->getRestrictHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v13

    invoke-interface {v13, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    goto :goto_1

    .line 262
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    if-nez v12, :cond_5

    .line 263
    const-wide/16 v14, 0x0

    sput-wide v14, Lcom/miui/milk/control/cloud/BaseCloudController;->sLastPingTime:J

    :cond_5
    throw v13
.end method

.method public shutDown()V
    .locals 2

    .prologue
    .line 277
    sget-object v1, Lcom/miui/milk/transport/HttpTransport;->sSyncRoot:Ljava/lang/Object;

    monitor-enter v1

    .line 278
    :try_start_0
    sget-object v0, Lcom/miui/milk/transport/HttpTransport;->sRestrictHttpClient:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_0

    .line 279
    sget-object v0, Lcom/miui/milk/transport/HttpTransport;->sRestrictHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 280
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/milk/transport/HttpTransport;->sRestrictHttpClient:Lorg/apache/http/client/HttpClient;

    .line 283
    :cond_0
    sget-object v0, Lcom/miui/milk/transport/HttpTransport;->sAllAllowedHttpClient:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_1

    .line 284
    sget-object v0, Lcom/miui/milk/transport/HttpTransport;->sAllAllowedHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 285
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/milk/transport/HttpTransport;->sAllAllowedHttpClient:Lorg/apache/http/client/HttpClient;

    .line 287
    :cond_1
    monitor-exit v1

    .line 288
    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
