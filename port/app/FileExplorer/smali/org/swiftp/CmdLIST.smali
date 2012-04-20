.class public Lorg/swiftp/CmdLIST;
.super Lorg/swiftp/CmdAbstractListing;
.source "CmdLIST.java"

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
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdAbstractListing;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 43
    iput-object p2, p0, Lorg/swiftp/CmdLIST;->input:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method protected makeLsString(Ljava/io/File;)Ljava/lang/String;
    .locals 14
    .parameter "file"

    .prologue
    const/4 v10, 0x0

    const/4 v13, 0x4

    .line 105
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v8, response:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 108
    sget-object v11, Lorg/swiftp/CmdLIST;->staticLog:Lorg/swiftp/MyLog;

    const-string v12, "makeLsString had nonexistent file"

    invoke-virtual {v11, v13, v12}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 160
    :goto_0
    return-object v10

    .line 116
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, lastNamePart:Ljava/lang/String;
    const-string v11, "*"

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "/"

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 121
    :cond_1
    sget-object v11, Lorg/swiftp/CmdLIST;->staticLog:Lorg/swiftp/MyLog;

    const-string v12, "Filename omitted due to disallowed character"

    invoke-virtual {v11, v13, v12}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 130
    const-string v10, "drwxr-xr-x 1 owner group"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 138
    .local v0, fileSize:J
    new-instance v10, Ljava/lang/Long;

    invoke-direct {v10, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v10}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v9

    .line 139
    .local v9, sizeString:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    rsub-int/lit8 v6, v10, 0xd

    .local v6, padSpaces:I
    move v7, v6

    .line 140
    .end local v6           #padSpaces:I
    .local v7, padSpaces:I
    :goto_2
    add-int/lit8 v6, v7, -0x1

    .end local v7           #padSpaces:I
    .restart local v6       #padSpaces:I
    if-lez v7, :cond_4

    .line 141
    const/16 v10, 0x20

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v7, v6

    .end local v6           #padSpaces:I
    .restart local v7       #padSpaces:I
    goto :goto_2

    .line 133
    .end local v0           #fileSize:J
    .end local v7           #padSpaces:I
    .end local v9           #sizeString:Ljava/lang/String;
    :cond_3
    const-string v10, "-rw-r--r-- 1 owner group"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 143
    .restart local v0       #fileSize:J
    .restart local v6       #padSpaces:I
    .restart local v9       #sizeString:Ljava/lang/String;
    :cond_4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 150
    .local v4, mTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    const-wide/32 v12, -0x61075000

    cmp-long v10, v10, v12

    if-lez v10, :cond_5

    .line 152
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v10, " MMM dd HH:mm "

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 157
    .local v2, format:Ljava/text/SimpleDateFormat;
    :goto_3
    new-instance v10, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v10, "\r\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 155
    .end local v2           #format:Ljava/text/SimpleDateFormat;
    :cond_5
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v10, " MMM dd  yyyy "

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .restart local v2       #format:Ljava/text/SimpleDateFormat;
    goto :goto_3
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    .line 47
    const/4 v0, 0x0

    .line 50
    .local v0, errString:Ljava/lang/String;
    iget-object v5, p0, Lorg/swiftp/CmdLIST;->input:Ljava/lang/String;

    invoke-static {v5}, Lorg/swiftp/CmdLIST;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, param:Ljava/lang/String;
    iget-object v5, p0, Lorg/swiftp/CmdLIST;->myLog:Lorg/swiftp/MyLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LIST parameter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 52
    :goto_0
    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 54
    iget-object v5, p0, Lorg/swiftp/CmdLIST;->myLog:Lorg/swiftp/MyLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LIST is skipping dashed arg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 55
    invoke-static {v3}, Lorg/swiftp/CmdLIST;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 57
    :cond_0
    const/4 v1, 0x0

    .line 58
    .local v1, fileToList:Ljava/io/File;
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 59
    iget-object v5, p0, Lorg/swiftp/CmdLIST;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v5}, Lorg/swiftp/SessionThread;->getWorkingDir()Ljava/io/File;

    move-result-object v1

    .line 72
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v4, response:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v4, v1}, Lorg/swiftp/CmdLIST;->listDirectory(Ljava/lang/StringBuilder;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_5

    .line 92
    .end local v4           #response:Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    if-eqz v0, :cond_8

    .line 93
    iget-object v5, p0, Lorg/swiftp/CmdLIST;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v5, v0}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v5, p0, Lorg/swiftp/CmdLIST;->myLog:Lorg/swiftp/MyLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LIST failed with: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 100
    :goto_2
    return-void

    .line 61
    :cond_3
    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 62
    const-string v0, "550 LIST does not support wildcards\r\n"

    .line 63
    goto :goto_1

    .line 65
    :cond_4
    new-instance v1, Ljava/io/File;

    .end local v1           #fileToList:Ljava/io/File;
    iget-object v5, p0, Lorg/swiftp/CmdLIST;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v5}, Lorg/swiftp/SessionThread;->getWorkingDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v1, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    .restart local v1       #fileToList:Ljava/io/File;
    invoke-virtual {p0, v1}, Lorg/swiftp/CmdLIST;->violatesChroot(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 67
    const-string v0, "450 Listing target violates chroot\r\n"

    .line 68
    goto :goto_1

    .line 78
    .restart local v4       #response:Ljava/lang/StringBuilder;
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    .end local v4           #response:Ljava/lang/StringBuilder;
    .local v2, listing:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, v2}, Lorg/swiftp/CmdLIST;->sendListing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_2

    goto :goto_1

    .line 80
    .end local v2           #listing:Ljava/lang/String;
    :cond_7
    invoke-virtual {p0, v1}, Lorg/swiftp/CmdLIST;->makeLsString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .restart local v2       #listing:Ljava/lang/String;
    if-nez v2, :cond_6

    .line 82
    const-string v0, "450 Couldn\'t list that file\r\n"

    .line 83
    goto :goto_1

    .line 96
    .end local v2           #listing:Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lorg/swiftp/CmdLIST;->myLog:Lorg/swiftp/MyLog;

    const-string v6, "LIST completed OK"

    invoke-virtual {v5, v8, v6}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    goto :goto_2
.end method
