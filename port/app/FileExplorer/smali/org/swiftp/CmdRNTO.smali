.class public Lorg/swiftp/CmdRNTO;
.super Lorg/swiftp/FtpCmd;
.source "CmdRNTO.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected input:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    const-class v0, Lorg/swiftp/CmdRNTO;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 31
    iput-object p2, p0, Lorg/swiftp/CmdRNTO;->input:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x4

    .line 35
    iget-object v4, p0, Lorg/swiftp/CmdRNTO;->input:Ljava/lang/String;

    invoke-static {v4}, Lorg/swiftp/CmdRNTO;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, param:Ljava/lang/String;
    const/4 v0, 0x0

    .line 37
    .local v0, errString:Ljava/lang/String;
    const/4 v3, 0x0

    .line 38
    .local v3, toFile:Ljava/io/File;
    iget-object v4, p0, Lorg/swiftp/CmdRNTO;->myLog:Lorg/swiftp/MyLog;

    const-string v5, "RNTO executing\r\n"

    invoke-virtual {v4, v8, v5}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 40
    iget-object v4, p0, Lorg/swiftp/CmdRNTO;->myLog:Lorg/swiftp/MyLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "param: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 41
    iget-object v4, p0, Lorg/swiftp/CmdRNTO;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v4}, Lorg/swiftp/SessionThread;->getWorkingDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v4, v2}, Lorg/swiftp/CmdRNTO;->inputPathToChrootedFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 42
    iget-object v4, p0, Lorg/swiftp/CmdRNTO;->myLog:Lorg/swiftp/MyLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RNTO parsed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 43
    invoke-virtual {p0, v3}, Lorg/swiftp/CmdRNTO;->violatesChroot(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 44
    const-string v0, "550 Invalid name or chroot violation\r\n"

    .line 57
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 58
    iget-object v4, p0, Lorg/swiftp/CmdRNTO;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v4, v0}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v4, p0, Lorg/swiftp/CmdRNTO;->myLog:Lorg/swiftp/MyLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RNFR failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 63
    :goto_1
    iget-object v4, p0, Lorg/swiftp/CmdRNTO;->sessionThread:Lorg/swiftp/SessionThread;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/swiftp/SessionThread;->setRenameFrom(Ljava/io/File;)V

    .line 64
    iget-object v4, p0, Lorg/swiftp/CmdRNTO;->myLog:Lorg/swiftp/MyLog;

    const-string v5, "RNTO finished"

    invoke-virtual {v4, v8, v5}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 65
    return-void

    .line 47
    :cond_1
    iget-object v4, p0, Lorg/swiftp/CmdRNTO;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v4}, Lorg/swiftp/SessionThread;->getRenameFrom()Ljava/io/File;

    move-result-object v1

    .line 48
    .local v1, fromFile:Ljava/io/File;
    if-nez v1, :cond_2

    .line 49
    const-string v0, "550 Rename error, maybe RNFR not sent\r\n"

    .line 50
    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 53
    const-string v0, "550 Error during rename operation\r\n"

    .line 54
    goto :goto_0

    .line 61
    .end local v1           #fromFile:Ljava/io/File;
    :cond_3
    iget-object v4, p0, Lorg/swiftp/CmdRNTO;->sessionThread:Lorg/swiftp/SessionThread;

    const-string v5, "250 rename successful\r\n"

    invoke-virtual {v4, v5}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    goto :goto_1
.end method
