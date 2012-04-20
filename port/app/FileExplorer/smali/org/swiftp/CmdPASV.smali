.class public Lorg/swiftp/CmdPASV;
.super Lorg/swiftp/FtpCmd;
.source "CmdPASV.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    const-class v0, Lorg/swiftp/CmdPASV;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x6

    .line 34
    const-string v1, "502 Couldn\'t open a port\r\n"

    .line 35
    .local v1, cantOpen:Ljava/lang/String;
    iget-object v5, p0, Lorg/swiftp/CmdPASV;->myLog:Lorg/swiftp/MyLog;

    const-string v6, "PASV running"

    invoke-virtual {v5, v9, v6}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 37
    iget-object v5, p0, Lorg/swiftp/CmdPASV;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v5}, Lorg/swiftp/SessionThread;->onPasv()I

    move-result v2

    .local v2, port:I
    if-nez v2, :cond_0

    .line 39
    iget-object v5, p0, Lorg/swiftp/CmdPASV;->myLog:Lorg/swiftp/MyLog;

    const-string v6, "Couldn\'t open a port for PASV"

    invoke-virtual {v5, v8, v6}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 40
    iget-object v5, p0, Lorg/swiftp/CmdPASV;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v5, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 70
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v5, p0, Lorg/swiftp/CmdPASV;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v5}, Lorg/swiftp/SessionThread;->getDataSocketPasvIp()Ljava/net/InetAddress;

    move-result-object v0

    .line 45
    .local v0, addr:Ljava/net/InetAddress;
    if-nez v0, :cond_1

    .line 46
    iget-object v5, p0, Lorg/swiftp/CmdPASV;->myLog:Lorg/swiftp/MyLog;

    const-string v6, "PASV IP string invalid"

    invoke-virtual {v5, v8, v6}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 47
    iget-object v5, p0, Lorg/swiftp/CmdPASV;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v5, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_1
    iget-object v5, p0, Lorg/swiftp/CmdPASV;->myLog:Lorg/swiftp/MyLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PASV sending IP: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 51
    const/4 v5, 0x1

    if-ge v2, v5, :cond_2

    .line 52
    iget-object v5, p0, Lorg/swiftp/CmdPASV;->myLog:Lorg/swiftp/MyLog;

    const-string v6, "PASV port number invalid"

    invoke-virtual {v5, v8, v6}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 53
    iget-object v5, p0, Lorg/swiftp/CmdPASV;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v5, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "227 Entering Passive Mode ("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .local v3, response:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2e

    const/16 v7, 0x2c

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    div-int/lit16 v5, v2, 0x100

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    rem-int/lit16 v5, v2, 0x100

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v5, ").\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, responseString:Ljava/lang/String;
    iget-object v5, p0, Lorg/swiftp/CmdPASV;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v5, v4}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v5, p0, Lorg/swiftp/CmdPASV;->myLog:Lorg/swiftp/MyLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PASV completed, sent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    goto/16 :goto_0
.end method
