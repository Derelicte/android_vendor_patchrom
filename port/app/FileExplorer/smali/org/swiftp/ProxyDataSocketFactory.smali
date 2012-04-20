.class public Lorg/swiftp/ProxyDataSocketFactory;
.super Lorg/swiftp/DataSocketFactory;
.source "ProxyDataSocketFactory.java"


# instance fields
.field clientAddress:Ljava/net/InetAddress;

.field clientPort:I

.field proxyConnector:Lorg/swiftp/ProxyConnector;

.field private proxyListenPort:I

.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/swiftp/DataSocketFactory;-><init>()V

    .line 55
    invoke-direct {p0}, Lorg/swiftp/ProxyDataSocketFactory;->clearState()V

    .line 56
    return-void
.end method

.method private clearState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Lorg/swiftp/ProxyDataSocketFactory;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 61
    :try_start_0
    iget-object v0, p0, Lorg/swiftp/ProxyDataSocketFactory;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    :goto_0
    iput-object v1, p0, Lorg/swiftp/ProxyDataSocketFactory;->socket:Ljava/net/Socket;

    .line 65
    iput-object v1, p0, Lorg/swiftp/ProxyDataSocketFactory;->proxyConnector:Lorg/swiftp/ProxyConnector;

    .line 66
    iput-object v1, p0, Lorg/swiftp/ProxyDataSocketFactory;->clientAddress:Ljava/net/InetAddress;

    .line 67
    iput v2, p0, Lorg/swiftp/ProxyDataSocketFactory;->proxyListenPort:I

    .line 68
    iput v2, p0, Lorg/swiftp/ProxyDataSocketFactory;->clientPort:I

    .line 69
    return-void

    .line 62
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onPasv()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Lorg/swiftp/ProxyDataSocketFactory;->clearState()V

    .line 86
    invoke-static {}, Lorg/swiftp/Globals;->getProxyConnector()Lorg/swiftp/ProxyConnector;

    move-result-object v2

    iput-object v2, p0, Lorg/swiftp/ProxyDataSocketFactory;->proxyConnector:Lorg/swiftp/ProxyConnector;

    .line 87
    iget-object v2, p0, Lorg/swiftp/ProxyDataSocketFactory;->proxyConnector:Lorg/swiftp/ProxyConnector;

    if-nez v2, :cond_0

    .line 88
    iget-object v2, p0, Lorg/swiftp/ProxyDataSocketFactory;->myLog:Lorg/swiftp/MyLog;

    const-string v3, "Unexpected null proxyConnector in onPasv"

    invoke-virtual {v2, v4, v3}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lorg/swiftp/ProxyDataSocketFactory;->clearState()V

    .line 100
    :goto_0
    return v1

    .line 92
    :cond_0
    iget-object v2, p0, Lorg/swiftp/ProxyDataSocketFactory;->proxyConnector:Lorg/swiftp/ProxyConnector;

    invoke-virtual {v2}, Lorg/swiftp/ProxyConnector;->pasvListen()Lorg/swiftp/ProxyDataSocketInfo;

    move-result-object v0

    .line 93
    .local v0, info:Lorg/swiftp/ProxyDataSocketInfo;
    if-nez v0, :cond_1

    .line 94
    iget-object v2, p0, Lorg/swiftp/ProxyDataSocketFactory;->myLog:Lorg/swiftp/MyLog;

    const-string v3, "Null ProxyDataSocketInfo"

    invoke-virtual {v2, v4, v3}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 95
    invoke-direct {p0}, Lorg/swiftp/ProxyDataSocketFactory;->clearState()V

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {v0}, Lorg/swiftp/ProxyDataSocketInfo;->getSocket()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lorg/swiftp/ProxyDataSocketFactory;->socket:Ljava/net/Socket;

    .line 99
    invoke-virtual {v0}, Lorg/swiftp/ProxyDataSocketInfo;->getRemotePublicPort()I

    move-result v1

    iput v1, p0, Lorg/swiftp/ProxyDataSocketFactory;->proxyListenPort:I

    .line 100
    iget v1, p0, Lorg/swiftp/ProxyDataSocketFactory;->proxyListenPort:I

    goto :goto_0
.end method

.method public onPort(Ljava/net/InetAddress;I)Z
    .locals 2
    .parameter "dest"
    .parameter "port"

    .prologue
    .line 104
    invoke-direct {p0}, Lorg/swiftp/ProxyDataSocketFactory;->clearState()V

    .line 105
    invoke-static {}, Lorg/swiftp/Globals;->getProxyConnector()Lorg/swiftp/ProxyConnector;

    move-result-object v0

    iput-object v0, p0, Lorg/swiftp/ProxyDataSocketFactory;->proxyConnector:Lorg/swiftp/ProxyConnector;

    .line 106
    iput-object p1, p0, Lorg/swiftp/ProxyDataSocketFactory;->clientAddress:Ljava/net/InetAddress;

    .line 107
    iput p2, p0, Lorg/swiftp/ProxyDataSocketFactory;->clientPort:I

    .line 108
    iget-object v0, p0, Lorg/swiftp/ProxyDataSocketFactory;->myLog:Lorg/swiftp/MyLog;

    const-string v1, "ProxyDataSocketFactory client port settings stored"

    invoke-virtual {v0, v1}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public onTransfer()Ljava/net/Socket;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 123
    iget-object v1, p0, Lorg/swiftp/ProxyDataSocketFactory;->proxyConnector:Lorg/swiftp/ProxyConnector;

    if-nez v1, :cond_0

    .line 124
    iget-object v1, p0, Lorg/swiftp/ProxyDataSocketFactory;->myLog:Lorg/swiftp/MyLog;

    const-string v2, "Unexpected null proxyConnector in onTransfer"

    invoke-virtual {v1, v2}, Lorg/swiftp/MyLog;->w(Ljava/lang/String;)V

    .line 143
    :goto_0
    return-object v0

    .line 128
    :cond_0
    iget-object v1, p0, Lorg/swiftp/ProxyDataSocketFactory;->socket:Ljava/net/Socket;

    if-nez v1, :cond_2

    .line 130
    iget-object v1, p0, Lorg/swiftp/ProxyDataSocketFactory;->proxyConnector:Lorg/swiftp/ProxyConnector;

    if-nez v1, :cond_1

    .line 131
    iget-object v1, p0, Lorg/swiftp/ProxyDataSocketFactory;->myLog:Lorg/swiftp/MyLog;

    const/4 v2, 0x4

    const-string v3, "Unexpected null proxyConnector in onTransfer"

    invoke-virtual {v1, v2, v3}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lorg/swiftp/ProxyDataSocketFactory;->proxyConnector:Lorg/swiftp/ProxyConnector;

    iget-object v1, p0, Lorg/swiftp/ProxyDataSocketFactory;->clientAddress:Ljava/net/InetAddress;

    iget v2, p0, Lorg/swiftp/ProxyDataSocketFactory;->clientPort:I

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/ProxyConnector;->dataPortConnect(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lorg/swiftp/ProxyDataSocketFactory;->socket:Ljava/net/Socket;

    .line 136
    iget-object v0, p0, Lorg/swiftp/ProxyDataSocketFactory;->socket:Ljava/net/Socket;

    goto :goto_0

    .line 139
    :cond_2
    iget-object v1, p0, Lorg/swiftp/ProxyDataSocketFactory;->proxyConnector:Lorg/swiftp/ProxyConnector;

    iget-object v2, p0, Lorg/swiftp/ProxyDataSocketFactory;->socket:Ljava/net/Socket;

    invoke-virtual {v1, v2}, Lorg/swiftp/ProxyConnector;->pasvAccept(Ljava/net/Socket;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 140
    iget-object v0, p0, Lorg/swiftp/ProxyDataSocketFactory;->socket:Ljava/net/Socket;

    goto :goto_0

    .line 142
    :cond_3
    iget-object v1, p0, Lorg/swiftp/ProxyDataSocketFactory;->myLog:Lorg/swiftp/MyLog;

    const-string v2, "proxyConnector pasvAccept failed"

    invoke-virtual {v1, v2}, Lorg/swiftp/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reportTraffic(J)V
    .locals 3
    .parameter "bytes"

    .prologue
    .line 149
    invoke-static {}, Lorg/swiftp/Globals;->getProxyConnector()Lorg/swiftp/ProxyConnector;

    move-result-object v0

    .line 150
    .local v0, pc:Lorg/swiftp/ProxyConnector;
    if-nez v0, :cond_0

    .line 151
    iget-object v1, p0, Lorg/swiftp/ProxyDataSocketFactory;->myLog:Lorg/swiftp/MyLog;

    const-string v2, "Can\'t report traffic, null ProxyConnector"

    invoke-virtual {v1, v2}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/swiftp/ProxyConnector;->incrementProxyUsage(J)V

    goto :goto_0
.end method
