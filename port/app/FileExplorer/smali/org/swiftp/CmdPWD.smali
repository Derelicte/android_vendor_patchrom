.class public Lorg/swiftp/CmdPWD;
.super Lorg/swiftp/FtpCmd;
.source "CmdPWD.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    const-class v0, Lorg/swiftp/CmdPWD;

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
    iget-object v3, p0, Lorg/swiftp/CmdPWD;->myLog:Lorg/swiftp/MyLog;

    const-string v4, "PWD executing"

    invoke-virtual {v3, v6, v4}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 43
    :try_start_0
    iget-object v3, p0, Lorg/swiftp/CmdPWD;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v3}, Lorg/swiftp/SessionThread;->getWorkingDir()Ljava/io/File;

    move-result-object v2

    .line 44
    .local v2, workingDir:Ljava/io/File;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, currentDir:Ljava/lang/String;
    :goto_0
    invoke-static {}, Lorg/swiftp/Globals;->getChrootDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 50
    const-string v0, "/"

    .line 52
    :cond_0
    iget-object v3, p0, Lorg/swiftp/CmdPWD;->sessionThread:Lorg/swiftp/SessionThread;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "257 \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v0           #currentDir:Ljava/lang/String;
    .end local v2           #workingDir:Ljava/io/File;
    :goto_1
    iget-object v3, p0, Lorg/swiftp/CmdPWD;->myLog:Lorg/swiftp/MyLog;

    const-string v4, "PWD complete"

    invoke-virtual {v3, v6, v4}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 59
    return-void

    .line 44
    .restart local v2       #workingDir:Ljava/io/File;
    :cond_1
    :try_start_1
    invoke-static {}, Lorg/swiftp/Globals;->getChrootDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 53
    .end local v2           #workingDir:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 55
    .local v1, e:Ljava/io/IOException;
    iget-object v3, p0, Lorg/swiftp/CmdPWD;->myLog:Lorg/swiftp/MyLog;

    const/4 v4, 0x6

    const-string v5, "PWD canonicalize"

    invoke-virtual {v3, v4, v5}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 56
    iget-object v3, p0, Lorg/swiftp/CmdPWD;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v3}, Lorg/swiftp/SessionThread;->closeSocket()V

    goto :goto_1
.end method
