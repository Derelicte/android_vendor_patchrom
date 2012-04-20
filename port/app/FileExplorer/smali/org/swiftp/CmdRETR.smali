.class public Lorg/swiftp/CmdRETR;
.super Lorg/swiftp/FtpCmd;
.source "CmdRETR.java"

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
    .line 34
    const-class v0, Lorg/swiftp/CmdRETR;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 35
    iput-object p2, p0, Lorg/swiftp/CmdRETR;->input:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 39
    iget-object v11, p0, Lorg/swiftp/CmdRETR;->myLog:Lorg/swiftp/MyLog;

    const/4 v12, 0x3

    const-string v13, "RETR executing"

    invoke-virtual {v11, v12, v13}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 40
    iget-object v11, p0, Lorg/swiftp/CmdRETR;->input:Ljava/lang/String;

    invoke-static {v11}, Lorg/swiftp/CmdRETR;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 42
    .local v9, param:Ljava/lang/String;
    const/4 v5, 0x0

    .line 45
    .local v5, errString:Ljava/lang/String;
    iget-object v11, p0, Lorg/swiftp/CmdRETR;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v11}, Lorg/swiftp/SessionThread;->getWorkingDir()Ljava/io/File;

    move-result-object v11

    invoke-static {v11, v9}, Lorg/swiftp/CmdRETR;->inputPathToChrootedFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 46
    .local v6, fileToRetr:Ljava/io/File;
    invoke-virtual {p0, v6}, Lorg/swiftp/CmdRETR;->violatesChroot(Ljava/io/File;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 47
    const-string v5, "550 Invalid name or chroot violation\r\n"

    .line 140
    :cond_0
    :goto_0
    iget-object v11, p0, Lorg/swiftp/CmdRETR;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v11}, Lorg/swiftp/SessionThread;->closeDataSocket()V

    .line 141
    if-eqz v5, :cond_d

    .line 142
    iget-object v11, p0, Lorg/swiftp/CmdRETR;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v11, v5}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 146
    :goto_1
    iget-object v11, p0, Lorg/swiftp/CmdRETR;->myLog:Lorg/swiftp/MyLog;

    const/4 v12, 0x3

    const-string v13, "RETR done"

    invoke-virtual {v11, v12, v13}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 147
    return-void

    .line 49
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 50
    iget-object v11, p0, Lorg/swiftp/CmdRETR;->myLog:Lorg/swiftp/MyLog;

    const/4 v12, 0x3

    const-string v13, "Ignoring RETR for directory"

    invoke-virtual {v11, v12, v13}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 51
    const-string v5, "550 Can\'t RETR a directory\r\n"

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_3

    .line 54
    iget-object v11, p0, Lorg/swiftp/CmdRETR;->myLog:Lorg/swiftp/MyLog;

    const/4 v12, 0x4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Can\'t RETR nonexistent file: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 56
    const-string v5, "550 File does not exist\r\n"

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v11

    if-nez v11, :cond_4

    .line 59
    iget-object v11, p0, Lorg/swiftp/CmdRETR;->myLog:Lorg/swiftp/MyLog;

    const/4 v12, 0x4

    const-string v13, "Failed RETR permission (canRead() is false)"

    invoke-virtual {v11, v12, v13}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 60
    const-string v5, "550 No read permissions\r\n"

    .line 61
    goto :goto_0

    .line 68
    :cond_4
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 69
    .local v7, in:Ljava/io/FileInputStream;
    invoke-static {}, Lorg/swiftp/Defaults;->getDataChunkSize()I

    move-result v11

    new-array v0, v11, [B

    .line 71
    .local v0, buffer:[B
    iget-object v11, p0, Lorg/swiftp/CmdRETR;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v11}, Lorg/swiftp/SessionThread;->startUsingDataSocket()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 72
    iget-object v11, p0, Lorg/swiftp/CmdRETR;->myLog:Lorg/swiftp/MyLog;

    const/4 v12, 0x3

    const-string v13, "RETR opened data socket"

    invoke-virtual {v11, v12, v13}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 78
    iget-object v11, p0, Lorg/swiftp/CmdRETR;->sessionThread:Lorg/swiftp/SessionThread;

    const-string v12, "150 Sending file\r\n"

    invoke-virtual {v11, v12}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v11, p0, Lorg/swiftp/CmdRETR;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v11}, Lorg/swiftp/SessionThread;->isBinaryMode()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 80
    iget-object v11, p0, Lorg/swiftp/CmdRETR;->myLog:Lorg/swiftp/MyLog;

    const/4 v12, 0x3

    const-string v13, "Transferring in binary mode"

    invoke-virtual {v11, v12, v13}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 81
    :cond_5
    invoke-virtual {v7, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    const/4 v11, -0x1

    if-eq v1, v11, :cond_0

    .line 84
    iget-object v11, p0, Lorg/swiftp/CmdRETR;->sessionThread:Lorg/swiftp/SessionThread;

    invoke-virtual {v11, v0, v1}, Lorg/swiftp/SessionThread;->sendViaDataSocket([BI)Z

    move-result v11

    if-nez v11, :cond_5

    .line 87
    const-string v5, "426 Data socket error\r\n"

    .line 88
    iget-object v11, p0, Lorg/swiftp/CmdRETR;->myLog:Lorg/swiftp/MyLog;

    const/4 v12, 0x4

    const-string v13, "Data socket error"

    invoke-virtual {v11, v12, v13}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 132
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    .end local v7           #in:Ljava/io/FileInputStream;
    :catch_0
    move-exception v3

    .line 133
    .local v3, e:Ljava/io/FileNotFoundException;
    const-string v5, "550 File not found\r\n"

    .line 134
    goto/16 :goto_0

    .line 74
    .end local v3           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #buffer:[B
    .restart local v7       #in:Ljava/io/FileInputStream;
    :cond_6
    :try_start_1
    const-string v5, "425 Error opening socket\r\n"

    .line 75
    iget-object v11, p0, Lorg/swiftp/CmdRETR;->myLog:Lorg/swiftp/MyLog;

    const/4 v12, 0x4

    const-string v13, "Error in initDataSocket()"

    invoke-virtual {v11, v12, v13}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 135
    .end local v0           #buffer:[B
    .end local v7           #in:Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    .line 136
    .local v3, e:Ljava/io/IOException;
    const-string v5, "425 Network error\r\n"

    .line 137
    goto/16 :goto_0

    .line 93
    .end local v3           #e:Ljava/io/IOException;
    .restart local v0       #buffer:[B
    .restart local v7       #in:Ljava/io/FileInputStream;
    :cond_7
    :try_start_2
    iget-object v11, p0, Lorg/swiftp/CmdRETR;->myLog:Lorg/swiftp/MyLog;

    const/4 v12, 0x3

    const-string v13, "Transferring in ASCII mode"

    invoke-virtual {v11, v12, v13}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 95
    const/4 v8, 0x0

    .line 96
    .local v8, lastBufEndedWithCR:Z
    :goto_2
    invoke-virtual {v7, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .restart local v1       #bytesRead:I
    const/4 v11, -0x1

    if-eq v1, v11, :cond_0

    .line 97
    const/4 v10, 0x0

    .local v10, startPos:I
    const/4 v4, 0x0

    .line 98
    .local v4, endPos:I
    const/4 v11, 0x2

    new-array v2, v11, [B

    fill-array-data v2, :array_0

    .line 99
    .local v2, crnBuf:[B
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_b

    .line 100
    aget-byte v11, v0, v4

    const/16 v12, 0xa

    if-ne v11, v12, :cond_9

    .line 102
    iget-object v11, p0, Lorg/swiftp/CmdRETR;->sessionThread:Lorg/swiftp/SessionThread;

    sub-int v12, v4, v10

    invoke-virtual {v11, v0, v10, v12}, Lorg/swiftp/SessionThread;->sendViaDataSocket([BII)Z

    .line 104
    if-nez v4, :cond_a

    .line 107
    if-nez v8, :cond_8

    .line 110
    iget-object v11, p0, Lorg/swiftp/CmdRETR;->sessionThread:Lorg/swiftp/SessionThread;

    const/4 v12, 0x1

    invoke-virtual {v11, v2, v12}, Lorg/swiftp/SessionThread;->sendViaDataSocket([BI)Z

    .line 118
    :cond_8
    :goto_4
    move v10, v4

    .line 99
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 112
    :cond_a
    add-int/lit8 v11, v4, -0x1

    aget-byte v11, v0, v11

    const/16 v12, 0xd

    if-eq v11, v12, :cond_8

    .line 114
    iget-object v11, p0, Lorg/swiftp/CmdRETR;->sessionThread:Lorg/swiftp/SessionThread;

    const/4 v12, 0x1

    invoke-virtual {v11, v2, v12}, Lorg/swiftp/SessionThread;->sendViaDataSocket([BI)Z

    goto :goto_4

    .line 123
    :cond_b
    iget-object v11, p0, Lorg/swiftp/CmdRETR;->sessionThread:Lorg/swiftp/SessionThread;

    sub-int v12, v4, v10

    invoke-virtual {v11, v0, v10, v12}, Lorg/swiftp/SessionThread;->sendViaDataSocket([BII)Z

    .line 125
    add-int/lit8 v11, v1, -0x1

    aget-byte v11, v0, v11
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v12, 0xd

    if-ne v11, v12, :cond_c

    .line 126
    const/4 v8, 0x1

    goto :goto_2

    .line 128
    :cond_c
    const/4 v8, 0x0

    goto :goto_2

    .line 144
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    .end local v2           #crnBuf:[B
    .end local v4           #endPos:I
    .end local v7           #in:Ljava/io/FileInputStream;
    .end local v8           #lastBufEndedWithCR:Z
    .end local v10           #startPos:I
    :cond_d
    iget-object v11, p0, Lorg/swiftp/CmdRETR;->sessionThread:Lorg/swiftp/SessionThread;

    const-string v12, "226 Transmission finished\r\n"

    invoke-virtual {v11, v12}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 98
    :array_0
    .array-data 0x1
        0xdt
        0xat
    .end array-data
.end method
