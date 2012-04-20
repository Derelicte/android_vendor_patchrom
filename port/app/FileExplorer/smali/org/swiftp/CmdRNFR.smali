.class public Lorg/swiftp/CmdRNFR;
.super Lorg/swiftp/FtpCmd;
.source "CmdRNFR.java"

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
    const-class v0, Lorg/swiftp/CmdRNFR;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 31
    iput-object p2, p0, Lorg/swiftp/CmdRNFR;->input:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 35
    iget-object v3, p0, Lorg/swiftp/CmdRNFR;->input:Ljava/lang/String;

    invoke-static {v3}, Lorg/swiftp/CmdRNFR;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, param:Ljava/lang/String;
    const/4 v0, 0x0

    .line 37
    .local v0, errString:Ljava/lang/String;
    const/4 v1, 0x0

    .line 39
    .local v1, file:Ljava/io/File;
    iget-object v3, p0, Lorg/swiftp/CmdRNFR;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v3}, Lorg/swiftp/SessionThread;->getWorkingDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/swiftp/CmdRNFR;->inputPathToChrootedFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 40
    invoke-virtual {p0, v1}, Lorg/swiftp/CmdRNFR;->violatesChroot(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 41
    const-string v0, "550 Invalid name or chroot violation\r\n"

    .line 48
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 49
    iget-object v3, p0, Lorg/swiftp/CmdRNFR;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v3, v0}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v3, p0, Lorg/swiftp/CmdRNFR;->myLog:Lorg/swiftp/MyLog;

    const/4 v4, 0x4

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

    invoke-virtual {v3, v4, v5}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 51
    iget-object v3, p0, Lorg/swiftp/CmdRNFR;->sessionThread:Lorg/swiftp/SessionThread;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/swiftp/SessionThread;->setRenameFrom(Ljava/io/File;)V

    .line 56
    :goto_1
    return-void

    .line 44
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 45
    const-string v0, "450 Cannot rename nonexistent file\r\n"

    goto :goto_0

    .line 53
    :cond_2
    iget-object v3, p0, Lorg/swiftp/CmdRNFR;->sessionThread:Lorg/swiftp/SessionThread;

    const-string v4, "350 Filename noted, now send RNTO\r\n"

    invoke-virtual {v3, v4}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v3, p0, Lorg/swiftp/CmdRNFR;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v3, v1}, Lorg/swiftp/SessionThread;->setRenameFrom(Ljava/io/File;)V

    goto :goto_1
.end method
