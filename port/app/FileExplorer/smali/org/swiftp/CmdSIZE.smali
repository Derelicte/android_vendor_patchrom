.class public Lorg/swiftp/CmdSIZE;
.super Lorg/swiftp/FtpCmd;
.source "CmdSIZE.java"


# instance fields
.field protected input:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10
    const-class v0, Lorg/swiftp/CmdSIZE;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 11
    iput-object p2, p0, Lorg/swiftp/CmdSIZE;->input:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 15
    iget-object v6, p0, Lorg/swiftp/CmdSIZE;->myLog:Lorg/swiftp/MyLog;

    const-string v7, "SIZE executing"

    invoke-virtual {v6, v7}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 17
    const/4 v1, 0x0

    .line 18
    .local v1, errString:Ljava/lang/String;
    iget-object v6, p0, Lorg/swiftp/CmdSIZE;->input:Ljava/lang/String;

    invoke-static {v6}, Lorg/swiftp/CmdSIZE;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 19
    .local v2, param:Ljava/lang/String;
    const-wide/16 v3, 0x0

    .line 21
    .local v3, size:J
    iget-object v6, p0, Lorg/swiftp/CmdSIZE;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v6}, Lorg/swiftp/SessionThread;->getWorkingDir()Ljava/io/File;

    move-result-object v0

    .line 22
    .local v0, currentDir:Ljava/io/File;
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 23
    const-string v1, "550 No directory traversal allowed in SIZE param\r\n"

    .line 47
    :goto_0
    if-eqz v1, :cond_4

    .line 48
    iget-object v6, p0, Lorg/swiftp/CmdSIZE;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v6, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 52
    :goto_1
    iget-object v6, p0, Lorg/swiftp/CmdSIZE;->myLog:Lorg/swiftp/MyLog;

    const-string v7, "SIZE complete"

    invoke-virtual {v6, v7}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 53
    return-void

    .line 26
    :cond_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    .local v5, target:Ljava/io/File;
    invoke-virtual {p0, v5}, Lorg/swiftp/CmdSIZE;->violatesChroot(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 31
    const-string v1, "550 SIZE target violates chroot\r\n"

    .line 32
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 35
    const-string v1, "550 Cannot get the SIZE of nonexistent object\r\n"

    .line 37
    :try_start_0
    iget-object v6, p0, Lorg/swiftp/CmdSIZE;->myLog:Lorg/swiftp/MyLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed getting size of: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/swiftp/MyLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    :catch_0
    move-exception v6

    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_3

    .line 42
    const-string v1, "550 Cannot get the size of a non-file\r\n"

    .line 43
    goto :goto_0

    .line 45
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v3

    goto :goto_0

    .line 50
    .end local v5           #target:Ljava/io/File;
    :cond_4
    iget-object v6, p0, Lorg/swiftp/CmdSIZE;->sessionThread:Lorg/swiftp/SessionThread;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "213 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    goto :goto_1
.end method
