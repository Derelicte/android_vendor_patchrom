.class public Lorg/swiftp/TcpListener;
.super Ljava/lang/Thread;
.source "TcpListener.java"


# instance fields
.field ftpServerService:Lcom/android/fileexplorer/FTPServerService;

.field listenSocket:Ljava/net/ServerSocket;

.field myLog:Lorg/swiftp/MyLog;


# direct methods
.method public constructor <init>(Ljava/net/ServerSocket;Lcom/android/fileexplorer/FTPServerService;)V
    .locals 2
    .parameter "listenSocket"
    .parameter "ftpServerService"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 32
    new-instance v0, Lorg/swiftp/MyLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/swiftp/MyLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/swiftp/TcpListener;->myLog:Lorg/swiftp/MyLog;

    .line 35
    iput-object p1, p0, Lorg/swiftp/TcpListener;->listenSocket:Ljava/net/ServerSocket;

    .line 36
    iput-object p2, p0, Lorg/swiftp/TcpListener;->ftpServerService:Lcom/android/fileexplorer/FTPServerService;

    .line 37
    return-void
.end method


# virtual methods
.method public quit()V
    .locals 4

    .prologue
    .line 41
    :try_start_0
    iget-object v1, p0, Lorg/swiftp/TcpListener;->listenSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lorg/swiftp/TcpListener;->myLog:Lorg/swiftp/MyLog;

    const/4 v2, 0x3

    const-string v3, "Exception closing TcpListener listenSocket"

    invoke-virtual {v1, v2, v3}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 52
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/swiftp/TcpListener;->listenSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 53
    .local v0, clientSocket:Ljava/net/Socket;
    iget-object v3, p0, Lorg/swiftp/TcpListener;->myLog:Lorg/swiftp/MyLog;

    const/4 v4, 0x4

    const-string v5, "New connection, spawned thread"

    invoke-virtual {v3, v4, v5}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 54
    new-instance v2, Lorg/swiftp/SessionThread;

    new-instance v3, Lorg/swiftp/NormalDataSocketFactory;

    invoke-direct {v3}, Lorg/swiftp/NormalDataSocketFactory;-><init>()V

    sget-object v4, Lorg/swiftp/SessionThread$Source;->LOCAL:Lorg/swiftp/SessionThread$Source;

    invoke-direct {v2, v0, v3, v4}, Lorg/swiftp/SessionThread;-><init>(Ljava/net/Socket;Lorg/swiftp/DataSocketFactory;Lorg/swiftp/SessionThread$Source;)V

    .line 57
    .local v2, newSession:Lorg/swiftp/SessionThread;
    invoke-virtual {v2}, Lorg/swiftp/SessionThread;->start()V

    .line 58
    iget-object v3, p0, Lorg/swiftp/TcpListener;->ftpServerService:Lcom/android/fileexplorer/FTPServerService;

    invoke-virtual {v3, v2}, Lcom/android/fileexplorer/FTPServerService;->registerSessionThread(Lorg/swiftp/SessionThread;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    .end local v0           #clientSocket:Ljava/net/Socket;
    .end local v2           #newSession:Lorg/swiftp/SessionThread;
    :catch_0
    move-exception v1

    .line 61
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Lorg/swiftp/TcpListener;->myLog:Lorg/swiftp/MyLog;

    const/4 v4, 0x3

    const-string v5, "Exception in TcpListener"

    invoke-virtual {v3, v4, v5}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 63
    return-void
.end method
