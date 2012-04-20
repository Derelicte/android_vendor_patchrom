.class public Lorg/swiftp/CmdRMD;
.super Lorg/swiftp/FtpCmd;
.source "CmdRMD.java"

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
    const-class v0, Lorg/swiftp/CmdRMD;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 32
    iput-object p2, p0, Lorg/swiftp/CmdRMD;->input:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method protected recursiveDelete(Ljava/io/File;)Z
    .locals 10
    .parameter "toDelete"

    .prologue
    const/4 v9, 0x3

    const/4 v5, 0x0

    .line 79
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v5

    .line 82
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 84
    const/4 v4, 0x1

    .line 85
    .local v4, success:Z
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 86
    .local v1, entry:Ljava/io/File;
    invoke-virtual {p0, v1}, Lorg/swiftp/CmdRMD;->recursiveDelete(Ljava/io/File;)Z

    move-result v6

    and-int/2addr v4, v6

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 88
    .end local v1           #entry:Ljava/io/File;
    :cond_2
    iget-object v6, p0, Lorg/swiftp/CmdRMD;->myLog:Lorg/swiftp/MyLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Recursively deleted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 89
    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    .line 91
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #success:Z
    :cond_3
    iget-object v5, p0, Lorg/swiftp/CmdRMD;->myLog:Lorg/swiftp/MyLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RMD deleting file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v5

    goto :goto_0
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 36
    iget-object v3, p0, Lorg/swiftp/CmdRMD;->myLog:Lorg/swiftp/MyLog;

    const-string v4, "RMD executing"

    invoke-virtual {v3, v6, v4}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 37
    iget-object v3, p0, Lorg/swiftp/CmdRMD;->input:Ljava/lang/String;

    invoke-static {v3}, Lorg/swiftp/CmdRMD;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, param:Ljava/lang/String;
    const/4 v0, 0x0

    .line 41
    .local v0, errString:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 42
    const-string v0, "550 Invalid argument\r\n"

    .line 63
    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    .line 64
    iget-object v3, p0, Lorg/swiftp/CmdRMD;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v3, v0}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v3, p0, Lorg/swiftp/CmdRMD;->myLog:Lorg/swiftp/MyLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RMD failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 69
    :goto_1
    iget-object v3, p0, Lorg/swiftp/CmdRMD;->myLog:Lorg/swiftp/MyLog;

    const/4 v4, 0x3

    const-string v5, "RMD finished"

    invoke-virtual {v3, v4, v5}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 70
    return-void

    .line 45
    :cond_1
    iget-object v3, p0, Lorg/swiftp/CmdRMD;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v3}, Lorg/swiftp/SessionThread;->getWorkingDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/swiftp/CmdRMD;->inputPathToChrootedFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 46
    .local v2, toRemove:Ljava/io/File;
    invoke-virtual {p0, v2}, Lorg/swiftp/CmdRMD;->violatesChroot(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 47
    const-string v0, "550 Invalid name or chroot violation\r\n"

    .line 48
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_3

    .line 51
    const-string v0, "550 Can\'t RMD a non-directory\r\n"

    .line 52
    goto :goto_0

    .line 54
    :cond_3
    new-instance v3, Ljava/io/File;

    const-string v4, "/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 55
    const-string v0, "550 Won\'t RMD the root directory\r\n"

    .line 56
    goto :goto_0

    .line 58
    :cond_4
    invoke-virtual {p0, v2}, Lorg/swiftp/CmdRMD;->recursiveDelete(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 59
    const-string v0, "550 Deletion error, possibly incomplete\r\n"

    goto :goto_0

    .line 67
    .end local v2           #toRemove:Ljava/io/File;
    :cond_5
    iget-object v3, p0, Lorg/swiftp/CmdRMD;->sessionThread:Lorg/swiftp/SessionThread;

    const-string v4, "250 Removed directory\r\n"

    invoke-virtual {v3, v4}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    goto :goto_1
.end method
