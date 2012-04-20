.class public Lorg/swiftp/CmdCWD;
.super Lorg/swiftp/FtpCmd;
.source "CmdCWD.java"

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
    .line 31
    const-class v0, Lorg/swiftp/CmdCWD;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 32
    iput-object p2, p0, Lorg/swiftp/CmdCWD;->input:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 36
    iget-object v4, p0, Lorg/swiftp/CmdCWD;->myLog:Lorg/swiftp/MyLog;

    const-string v5, "CWD executing"

    invoke-virtual {v4, v6, v5}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 37
    iget-object v4, p0, Lorg/swiftp/CmdCWD;->input:Ljava/lang/String;

    invoke-static {v4}, Lorg/swiftp/CmdCWD;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, param:Ljava/lang/String;
    const/4 v1, 0x0

    .line 41
    .local v1, errString:Ljava/lang/String;
    iget-object v4, p0, Lorg/swiftp/CmdCWD;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v4}, Lorg/swiftp/SessionThread;->getWorkingDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/swiftp/CmdCWD;->inputPathToChrootedFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 44
    .local v2, newDir:Ljava/io/File;
    invoke-virtual {p0, v2}, Lorg/swiftp/CmdCWD;->violatesChroot(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    const-string v1, "550 Invalid name or chroot violation\r\n"

    .line 46
    iget-object v4, p0, Lorg/swiftp/CmdCWD;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v4, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v4, p0, Lorg/swiftp/CmdCWD;->myLog:Lorg/swiftp/MyLog;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v1}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 66
    :goto_0
    iget-object v4, p0, Lorg/swiftp/CmdCWD;->myLog:Lorg/swiftp/MyLog;

    const-string v5, "CWD complete"

    invoke-virtual {v4, v6, v5}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 67
    return-void

    .line 52
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    .line 54
    iget-object v4, p0, Lorg/swiftp/CmdCWD;->sessionThread:Lorg/swiftp/SessionThread;

    const-string v5, "550 Can\'t CWD to invalid directory\r\n"

    invoke-virtual {v4, v5}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Ljava/io/IOException;
    iget-object v4, p0, Lorg/swiftp/CmdCWD;->sessionThread:Lorg/swiftp/SessionThread;

    const-string v5, "550 Invalid path\r\n"

    invoke-virtual {v4, v5}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 56
    iget-object v4, p0, Lorg/swiftp/CmdCWD;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v4, v2}, Lorg/swiftp/SessionThread;->setWorkingDir(Ljava/io/File;)V

    .line 57
    iget-object v4, p0, Lorg/swiftp/CmdCWD;->sessionThread:Lorg/swiftp/SessionThread;

    const-string v5, "250 CWD successful\r\n"

    invoke-virtual {v4, v5}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_2
    iget-object v4, p0, Lorg/swiftp/CmdCWD;->sessionThread:Lorg/swiftp/SessionThread;

    const-string v5, "550 That path is inaccessible\r\n"

    invoke-virtual {v4, v5}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
