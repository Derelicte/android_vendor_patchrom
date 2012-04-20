.class public Lorg/swiftp/CmdDELE;
.super Lorg/swiftp/FtpCmd;
.source "CmdDELE.java"

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
    const-class v0, Lorg/swiftp/CmdDELE;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 31
    iput-object p2, p0, Lorg/swiftp/CmdDELE;->input:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 35
    iget-object v3, p0, Lorg/swiftp/CmdDELE;->myLog:Lorg/swiftp/MyLog;

    const-string v4, "DELE executing"

    invoke-virtual {v3, v6, v4}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 36
    iget-object v3, p0, Lorg/swiftp/CmdDELE;->input:Ljava/lang/String;

    invoke-static {v3}, Lorg/swiftp/CmdDELE;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, param:Ljava/lang/String;
    iget-object v3, p0, Lorg/swiftp/CmdDELE;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v3}, Lorg/swiftp/SessionThread;->getWorkingDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/swiftp/CmdDELE;->inputPathToChrootedFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 38
    .local v2, storeFile:Ljava/io/File;
    const/4 v0, 0x0

    .line 39
    .local v0, errString:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/swiftp/CmdDELE;->violatesChroot(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 40
    const-string v0, "550 Invalid name or chroot violation\r\n"

    .line 47
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 48
    iget-object v3, p0, Lorg/swiftp/CmdDELE;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v3, v0}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v3, p0, Lorg/swiftp/CmdDELE;->myLog:Lorg/swiftp/MyLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DELE failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 54
    :goto_1
    iget-object v3, p0, Lorg/swiftp/CmdDELE;->myLog:Lorg/swiftp/MyLog;

    const-string v4, "DELE finished"

    invoke-virtual {v3, v6, v4}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 55
    return-void

    .line 41
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 42
    const-string v0, "550 Can\'t DELE a directory\r\n"

    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 44
    const-string v0, "450 Error deleting file\r\n"

    goto :goto_0

    .line 51
    :cond_3
    iget-object v3, p0, Lorg/swiftp/CmdDELE;->sessionThread:Lorg/swiftp/SessionThread;

    const-string v4, "250 File successfully deleted\r\n"

    invoke-virtual {v3, v4}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/swiftp/Util;->deletedFileNotify(Ljava/lang/String;)V

    goto :goto_1
.end method
