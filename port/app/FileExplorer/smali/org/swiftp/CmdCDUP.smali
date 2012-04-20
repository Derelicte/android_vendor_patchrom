.class public Lorg/swiftp/CmdCDUP;
.super Lorg/swiftp/FtpCmd;
.source "CmdCDUP.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    const-class v0, Lorg/swiftp/CmdCDUP;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 35
    iget-object v4, p0, Lorg/swiftp/CmdCDUP;->myLog:Lorg/swiftp/MyLog;

    const-string v5, "CDUP executing"

    invoke-virtual {v4, v6, v5}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 37
    const/4 v1, 0x0

    .line 39
    .local v1, errString:Ljava/lang/String;
    iget-object v4, p0, Lorg/swiftp/CmdCDUP;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v4}, Lorg/swiftp/SessionThread;->getWorkingDir()Ljava/io/File;

    move-result-object v3

    .line 40
    .local v3, workingDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 41
    .local v2, newDir:Ljava/io/File;
    if-nez v2, :cond_0

    .line 42
    const-string v1, "550 Current dir cannot find parent\r\n"

    .line 67
    :goto_0
    if-eqz v1, :cond_4

    .line 68
    iget-object v4, p0, Lorg/swiftp/CmdCDUP;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v4, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v4, p0, Lorg/swiftp/CmdCDUP;->myLog:Lorg/swiftp/MyLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CDUP error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/swiftp/MyLog;->i(Ljava/lang/String;)V

    .line 74
    :goto_1
    return-void

    .line 46
    :cond_0
    invoke-virtual {p0, v2}, Lorg/swiftp/CmdCDUP;->violatesChroot(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 47
    const-string v1, "550 Invalid name or chroot violation\r\n"

    .line 48
    goto :goto_0

    .line 52
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    .line 54
    const-string v1, "550 Can\'t CWD to invalid directory\r\n"

    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 57
    iget-object v4, p0, Lorg/swiftp/CmdCDUP;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v4, v2}, Lorg/swiftp/SessionThread;->setWorkingDir(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Ljava/io/IOException;
    const-string v1, "550 Invalid path\r\n"

    .line 64
    goto :goto_0

    .line 59
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    :try_start_1
    const-string v1, "550 That path is inaccessible\r\n"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 71
    :cond_4
    iget-object v4, p0, Lorg/swiftp/CmdCDUP;->sessionThread:Lorg/swiftp/SessionThread;

    const-string v5, "200 CDUP successful\r\n"

    invoke-virtual {v4, v5}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v4, p0, Lorg/swiftp/CmdCDUP;->myLog:Lorg/swiftp/MyLog;

    const-string v5, "CDUP success"

    invoke-virtual {v4, v6, v5}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    goto :goto_1
.end method
