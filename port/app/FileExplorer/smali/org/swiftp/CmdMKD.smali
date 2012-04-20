.class public Lorg/swiftp/CmdMKD;
.super Lorg/swiftp/FtpCmd;
.source "CmdMKD.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field input:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    const-class v0, Lorg/swiftp/CmdMKD;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 31
    iput-object p2, p0, Lorg/swiftp/CmdMKD;->input:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 35
    iget-object v3, p0, Lorg/swiftp/CmdMKD;->myLog:Lorg/swiftp/MyLog;

    const/4 v4, 0x3

    const-string v5, "MKD executing"

    invoke-virtual {v3, v4, v5}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 36
    iget-object v3, p0, Lorg/swiftp/CmdMKD;->input:Ljava/lang/String;

    invoke-static {v3}, Lorg/swiftp/CmdMKD;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, param:Ljava/lang/String;
    const/4 v0, 0x0

    .line 42
    .local v0, errString:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 43
    const-string v0, "550 Invalid name\r\n"

    .line 60
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 61
    iget-object v3, p0, Lorg/swiftp/CmdMKD;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v3, v0}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v3, p0, Lorg/swiftp/CmdMKD;->myLog:Lorg/swiftp/MyLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MKD error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 66
    :goto_1
    iget-object v3, p0, Lorg/swiftp/CmdMKD;->myLog:Lorg/swiftp/MyLog;

    const-string v4, "MKD complete"

    invoke-virtual {v3, v6, v4}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 67
    return-void

    .line 46
    :cond_1
    iget-object v3, p0, Lorg/swiftp/CmdMKD;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v3}, Lorg/swiftp/SessionThread;->getWorkingDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/swiftp/CmdMKD;->inputPathToChrootedFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 47
    .local v2, toCreate:Ljava/io/File;
    invoke-virtual {p0, v2}, Lorg/swiftp/CmdMKD;->violatesChroot(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 48
    const-string v0, "550 Invalid name or chroot violation\r\n"

    .line 49
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 52
    const-string v0, "550 Already exists\r\n"

    .line 53
    goto :goto_0

    .line 55
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_0

    .line 56
    const-string v0, "550 Error making directory (permissions?)\r\n"

    goto :goto_0

    .line 64
    .end local v2           #toCreate:Ljava/io/File;
    :cond_4
    iget-object v3, p0, Lorg/swiftp/CmdMKD;->sessionThread:Lorg/swiftp/SessionThread;

    const-string v4, "250 Directory created\r\n"

    invoke-virtual {v3, v4}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    goto :goto_1
.end method
