.class public Lorg/swiftp/NormalDataSocketFactory;
.super Lorg/swiftp/DataSocketFactory;
.source "NormalDataSocketFactory.java"


# instance fields
.field isPasvMode:Z

.field remoteAddr:Ljava/net/InetAddress;

.field remotePort:I

.field server:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/swiftp/DataSocketFactory;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/swiftp/NormalDataSocketFactory;->server:Ljava/net/ServerSocket;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/swiftp/NormalDataSocketFactory;->isPasvMode:Z

    .line 49
    invoke-direct {p0}, Lorg/swiftp/NormalDataSocketFactory;->clearState()V

    .line 50
    return-void
.end method

.method private clearState()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Lorg/swiftp/NormalDataSocketFactory;->server:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 60
    :try_start_0
    iget-object v0, p0, Lorg/swiftp/NormalDataSocketFactory;->server:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    :goto_0
    iput-object v1, p0, Lorg/swiftp/NormalDataSocketFactory;->server:Ljava/net/ServerSocket;

    .line 64
    iput-object v1, p0, Lorg/swiftp/NormalDataSocketFactory;->remoteAddr:Ljava/net/InetAddress;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lorg/swiftp/NormalDataSocketFactory;->remotePort:I

    .line 66
    iget-object v0, p0, Lorg/swiftp/NormalDataSocketFactory;->myLog:Lorg/swiftp/MyLog;

    const/4 v1, 0x3

    const-string v2, "NormalDataSocketFactory state cleared"

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 67
    return-void

    .line 61
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onPasv()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lorg/swiftp/NormalDataSocketFactory;->clearState()V

    .line 73
    :try_start_0
    new-instance v2, Ljava/net/ServerSocket;

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4}, Ljava/net/ServerSocket;-><init>(II)V

    iput-object v2, p0, Lorg/swiftp/NormalDataSocketFactory;->server:Ljava/net/ServerSocket;

    .line 74
    iget-object v2, p0, Lorg/swiftp/NormalDataSocketFactory;->myLog:Lorg/swiftp/MyLog;

    const/4 v3, 0x3

    const-string v4, "Data socket pasv() listen successful"

    invoke-virtual {v2, v3, v4}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 75
    iget-object v2, p0, Lorg/swiftp/NormalDataSocketFactory;->server:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 79
    :goto_0
    return v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/io/IOException;
    iget-object v2, p0, Lorg/swiftp/NormalDataSocketFactory;->myLog:Lorg/swiftp/MyLog;

    const/4 v3, 0x6

    const-string v4, "Data socket creation error"

    invoke-virtual {v2, v3, v4}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 78
    invoke-direct {p0}, Lorg/swiftp/NormalDataSocketFactory;->clearState()V

    goto :goto_0
.end method

.method public onPort(Ljava/net/InetAddress;I)Z
    .locals 1
    .parameter "remoteAddr"
    .parameter "remotePort"

    .prologue
    .line 84
    invoke-direct {p0}, Lorg/swiftp/NormalDataSocketFactory;->clearState()V

    .line 85
    iput-object p1, p0, Lorg/swiftp/NormalDataSocketFactory;->remoteAddr:Ljava/net/InetAddress;

    .line 86
    iput p2, p0, Lorg/swiftp/NormalDataSocketFactory;->remotePort:I

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public onTransfer()Ljava/net/Socket;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x4

    .line 91
    iget-object v3, p0, Lorg/swiftp/NormalDataSocketFactory;->server:Ljava/net/ServerSocket;

    if-nez v3, :cond_2

    .line 93
    iget-object v3, p0, Lorg/swiftp/NormalDataSocketFactory;->remoteAddr:Ljava/net/InetAddress;

    if-eqz v3, :cond_0

    iget v3, p0, Lorg/swiftp/NormalDataSocketFactory;->remotePort:I

    if-nez v3, :cond_1

    .line 94
    :cond_0
    iget-object v3, p0, Lorg/swiftp/NormalDataSocketFactory;->myLog:Lorg/swiftp/MyLog;

    const-string v4, "PORT mode but not initialized correctly"

    invoke-virtual {v3, v6, v4}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 95
    invoke-direct {p0}, Lorg/swiftp/NormalDataSocketFactory;->clearState()V

    move-object v1, v2

    .line 130
    :goto_0
    return-object v1

    .line 100
    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/Socket;

    iget-object v3, p0, Lorg/swiftp/NormalDataSocketFactory;->remoteAddr:Ljava/net/InetAddress;

    iget v4, p0, Lorg/swiftp/NormalDataSocketFactory;->remotePort:I

    invoke-direct {v1, v3, v4}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    .local v1, socket:Ljava/net/Socket;
    const/16 v3, 0x7530

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lorg/swiftp/NormalDataSocketFactory;->myLog:Lorg/swiftp/MyLog;

    const/4 v4, 0x6

    const-string v5, "Couldn\'t set SO_TIMEOUT"

    invoke-virtual {v3, v4, v5}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 114
    invoke-direct {p0}, Lorg/swiftp/NormalDataSocketFactory;->clearState()V

    move-object v1, v2

    .line 115
    goto :goto_0

    .line 101
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #socket:Ljava/net/Socket;
    :catch_1
    move-exception v0

    .line 102
    .local v0, e:Ljava/io/IOException;
    iget-object v3, p0, Lorg/swiftp/NormalDataSocketFactory;->myLog:Lorg/swiftp/MyLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t open PORT data socket to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/swiftp/NormalDataSocketFactory;->remoteAddr:Ljava/net/InetAddress;

    invoke-virtual {v5}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/swiftp/NormalDataSocketFactory;->remotePort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 105
    invoke-direct {p0}, Lorg/swiftp/NormalDataSocketFactory;->clearState()V

    move-object v1, v2

    .line 106
    goto :goto_0

    .line 121
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    const/4 v1, 0x0

    .line 123
    .restart local v1       #socket:Ljava/net/Socket;
    :try_start_2
    iget-object v2, p0, Lorg/swiftp/NormalDataSocketFactory;->server:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 124
    iget-object v2, p0, Lorg/swiftp/NormalDataSocketFactory;->myLog:Lorg/swiftp/MyLog;

    const/4 v3, 0x3

    const-string v4, "onTransfer pasv accept successful"

    invoke-virtual {v2, v3, v4}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 129
    :goto_1
    invoke-direct {p0}, Lorg/swiftp/NormalDataSocketFactory;->clearState()V

    goto :goto_0

    .line 125
    :catch_2
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lorg/swiftp/NormalDataSocketFactory;->myLog:Lorg/swiftp/MyLog;

    const-string v3, "Exception accepting PASV socket"

    invoke-virtual {v2, v6, v3}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 127
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public reportTraffic(J)V
    .locals 0
    .parameter "bytes"

    .prologue
    .line 154
    return-void
.end method
