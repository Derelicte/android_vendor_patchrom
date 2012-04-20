.class public Lorg/swiftp/CmdNLST;
.super Lorg/swiftp/CmdAbstractListing;
.source "CmdNLST.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private input:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .locals 0
    .parameter "sessionThread"
    .parameter "input"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdAbstractListing;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 41
    iput-object p2, p0, Lorg/swiftp/CmdNLST;->input:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method protected makeLsString(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .parameter "file"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x4

    .line 105
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    sget-object v2, Lorg/swiftp/CmdNLST;->staticLog:Lorg/swiftp/MyLog;

    const-string v3, "makeLsString had nonexistent file"

    invoke-virtual {v2, v4, v3}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 123
    :goto_0
    return-object v1

    .line 114
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, lastNamePart:Ljava/lang/String;
    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    :cond_1
    sget-object v2, Lorg/swiftp/CmdNLST;->staticLog:Lorg/swiftp/MyLog;

    const-string v3, "Filename omitted due to disallowed character"

    invoke-virtual {v2, v4, v3}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_2
    sget-object v1, Lorg/swiftp/CmdNLST;->staticLog:Lorg/swiftp/MyLog;

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filename: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    .line 45
    const/4 v0, 0x0

    .line 48
    .local v0, errString:Ljava/lang/String;
    iget-object v5, p0, Lorg/swiftp/CmdNLST;->input:Ljava/lang/String;

    invoke-static {v5}, Lorg/swiftp/CmdNLST;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, param:Ljava/lang/String;
    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 51
    const-string v3, ""

    .line 53
    :cond_0
    const/4 v1, 0x0

    .line 54
    .local v1, fileToList:Ljava/io/File;
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 55
    iget-object v5, p0, Lorg/swiftp/CmdNLST;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v5}, Lorg/swiftp/SessionThread;->getWorkingDir()Ljava/io/File;

    move-result-object v1

    .line 74
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v4, response:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v4, v1}, Lorg/swiftp/CmdNLST;->listDirectory(Ljava/lang/StringBuilder;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_6

    .line 94
    .end local v4           #response:Ljava/lang/StringBuilder;
    :cond_2
    :goto_0
    if-eqz v0, :cond_9

    .line 95
    iget-object v5, p0, Lorg/swiftp/CmdNLST;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v5, v0}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v5, p0, Lorg/swiftp/CmdNLST;->myLog:Lorg/swiftp/MyLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NLST failed with: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 102
    :goto_1
    return-void

    .line 57
    :cond_3
    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 58
    const-string v0, "550 NLST does not support wildcards\r\n"

    .line 59
    goto :goto_0

    .line 61
    :cond_4
    new-instance v1, Ljava/io/File;

    .end local v1           #fileToList:Ljava/io/File;
    iget-object v5, p0, Lorg/swiftp/CmdNLST;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v5}, Lorg/swiftp/SessionThread;->getWorkingDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v1, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    .restart local v1       #fileToList:Ljava/io/File;
    invoke-virtual {p0, v1}, Lorg/swiftp/CmdNLST;->violatesChroot(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 63
    const-string v0, "450 Listing target violates chroot\r\n"

    .line 64
    goto :goto_0

    .line 65
    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 69
    const-string v0, "550 NLST for regular files is unsupported\r\n"

    .line 70
    goto :goto_0

    .line 80
    .restart local v4       #response:Ljava/lang/StringBuilder;
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    .end local v4           #response:Ljava/lang/StringBuilder;
    .local v2, listing:Ljava/lang/String;
    :cond_7
    invoke-virtual {p0, v2}, Lorg/swiftp/CmdNLST;->sendListing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_2

    goto :goto_0

    .line 82
    .end local v2           #listing:Ljava/lang/String;
    :cond_8
    invoke-virtual {p0, v1}, Lorg/swiftp/CmdNLST;->makeLsString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 83
    .restart local v2       #listing:Ljava/lang/String;
    if-nez v2, :cond_7

    .line 84
    const-string v0, "450 Couldn\'t list that file\r\n"

    .line 85
    goto :goto_0

    .line 98
    .end local v2           #listing:Ljava/lang/String;
    :cond_9
    iget-object v5, p0, Lorg/swiftp/CmdNLST;->myLog:Lorg/swiftp/MyLog;

    const-string v6, "NLST completed OK"

    invoke-virtual {v5, v8, v6}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    goto :goto_1
.end method
