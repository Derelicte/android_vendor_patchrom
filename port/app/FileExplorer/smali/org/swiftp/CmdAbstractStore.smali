.class public abstract Lorg/swiftp/CmdAbstractStore;
.super Lorg/swiftp/FtpCmd;
.source "CmdAbstractStore.java"


# direct methods
.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    const-class v0, Lorg/swiftp/CmdAbstractStore;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public doStorOrAppe(Ljava/lang/String;Z)V
    .locals 23
    .parameter "param"
    .parameter "append"

    .prologue
    .line 43
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/CmdAbstractStore;->myLog:Lorg/swiftp/MyLog;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "STOR/APPE executing with append="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 44
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/CmdAbstractStore;->sessionThread:Lorg/swiftp/SessionThread;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/swiftp/SessionThread;->getWorkingDir()Ljava/io/File;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lorg/swiftp/CmdAbstractStore;->inputPathToChrootedFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    .line 46
    .local v17, storeFile:Ljava/io/File;
    const/4 v9, 0x0

    .line 47
    .local v9, errString:Ljava/lang/String;
    const/4 v14, 0x0

    .line 53
    .local v14, out:Ljava/io/FileOutputStream;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/swiftp/CmdAbstractStore;->violatesChroot(Ljava/io/File;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 54
    const-string v9, "550 Invalid name or chroot violation\r\n"

    .line 195
    :goto_0
    if-eqz v14, :cond_0

    .line 196
    :try_start_0
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 200
    :cond_0
    :goto_1
    if-eqz v9, :cond_c

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/CmdAbstractStore;->myLog:Lorg/swiftp/MyLog;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "STOR error: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/CmdAbstractStore;->sessionThread:Lorg/swiftp/SessionThread;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 209
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/CmdAbstractStore;->sessionThread:Lorg/swiftp/SessionThread;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/swiftp/SessionThread;->closeDataSocket()V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/CmdAbstractStore;->myLog:Lorg/swiftp/MyLog;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    const-string v21, "STOR finished"

    invoke-virtual/range {v19 .. v21}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 211
    return-void

    .line 57
    :cond_1
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->isDirectory()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 58
    const-string v9, "451 Can\'t overwrite a directory\r\n"

    .line 59
    goto :goto_0

    .line 63
    :cond_2
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 64
    if-nez p2, :cond_4

    .line 65
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    move-result v19

    if-nez v19, :cond_3

    .line 66
    const-string v9, "451 Couldn\'t truncate file\r\n"

    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/swiftp/Util;->deletedFileNotify(Ljava/lang/String;)V

    .line 73
    :cond_4
    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-direct {v15, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    .end local v14           #out:Ljava/io/FileOutputStream;
    .local v15, out:Ljava/io/FileOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/CmdAbstractStore;->sessionThread:Lorg/swiftp/SessionThread;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/swiftp/SessionThread;->startUsingDataSocket()Z

    move-result v19

    if-nez v19, :cond_5

    .line 84
    const-string v9, "425 Couldn\'t open data socket\r\n"

    move-object v14, v15

    .line 85
    .end local v15           #out:Ljava/io/FileOutputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 74
    :catch_0
    move-exception v6

    .line 76
    .local v6, e:Ljava/io/FileNotFoundException;
    :try_start_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "451 Couldn\'t open file \""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\" aka \""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\" for writing\r\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v9

    goto/16 :goto_0

    .line 78
    :catch_1
    move-exception v11

    .line 79
    .local v11, io_e:Ljava/io/IOException;
    const-string v9, "451 Couldn\'t open file, nested exception\r\n"

    goto/16 :goto_0

    .line 87
    .end local v6           #e:Ljava/io/FileNotFoundException;
    .end local v11           #io_e:Ljava/io/IOException;
    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v15       #out:Ljava/io/FileOutputStream;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/CmdAbstractStore;->myLog:Lorg/swiftp/MyLog;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    const-string v21, "Data socket ready"

    invoke-virtual/range {v19 .. v21}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/CmdAbstractStore;->sessionThread:Lorg/swiftp/SessionThread;

    move-object/from16 v19, v0

    const-string v20, "150 Data socket ready\r\n"

    invoke-virtual/range {v19 .. v20}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lorg/swiftp/Defaults;->getDataChunkSize()I

    move-result v19

    move/from16 v0, v19

    new-array v3, v0, [B

    .line 97
    .local v3, buffer:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/CmdAbstractStore;->sessionThread:Lorg/swiftp/SessionThread;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/swiftp/SessionThread;->isBinaryMode()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/CmdAbstractStore;->myLog:Lorg/swiftp/MyLog;

    move-object/from16 v19, v0

    const-string v20, "Mode is binary"

    invoke-virtual/range {v19 .. v20}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 102
    :goto_3
    const/4 v5, 0x0

    .line 103
    .local v5, bytesSinceReopen:I
    const/4 v4, 0x0

    .line 109
    .local v4, bytesSinceFlush:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/CmdAbstractStore;->sessionThread:Lorg/swiftp/SessionThread;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/swiftp/SessionThread;->receiveFromDataSocket([B)I

    move-result v13

    .local v13, numRead:I
    packed-switch v13, :pswitch_data_0

    .line 125
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/CmdAbstractStore;->sessionThread:Lorg/swiftp/SessionThread;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/swiftp/SessionThread;->isBinaryMode()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 126
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v3, v0, v13}, Ljava/io/FileOutputStream;->write([BII)V

    .line 168
    :cond_6
    :goto_5
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 170
    :catch_2
    move-exception v6

    .line 171
    .local v6, e:Ljava/io/IOException;
    const-string v9, "451 File IO problem. Device might be full.\r\n"

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/CmdAbstractStore;->myLog:Lorg/swiftp/MyLog;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception while storing: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/CmdAbstractStore;->myLog:Lorg/swiftp/MyLog;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Message: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/CmdAbstractStore;->myLog:Lorg/swiftp/MyLog;

    move-object/from16 v19, v0

    const-string v20, "Stack trace: "

    invoke-virtual/range {v19 .. v20}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v6}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v18

    .line 176
    .local v18, traceElems:[Ljava/lang/StackTraceElement;
    move-object/from16 v2, v18

    .local v2, arr$:[Ljava/lang/StackTraceElement;
    array-length v12, v2

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_6
    if-ge v10, v12, :cond_b

    aget-object v7, v2, v10

    .line 177
    .local v7, elem:Ljava/lang/StackTraceElement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/CmdAbstractStore;->myLog:Lorg/swiftp/MyLog;

    move-object/from16 v19, v0

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 176
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 100
    .end local v2           #arr$:[Ljava/lang/StackTraceElement;
    .end local v4           #bytesSinceFlush:I
    .end local v5           #bytesSinceReopen:I
    .end local v6           #e:Ljava/io/IOException;
    .end local v7           #elem:Ljava/lang/StackTraceElement;
    .end local v10           #i$:I
    .end local v12           #len$:I
    .end local v13           #numRead:I
    .end local v18           #traceElems:[Ljava/lang/StackTraceElement;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/CmdAbstractStore;->myLog:Lorg/swiftp/MyLog;

    move-object/from16 v19, v0

    const-string v20, "Mode is ascii"

    invoke-virtual/range {v19 .. v20}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 111
    .restart local v4       #bytesSinceFlush:I
    .restart local v5       #bytesSinceReopen:I
    .restart local v13       #numRead:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/CmdAbstractStore;->myLog:Lorg/swiftp/MyLog;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    const-string v21, "Returned from final read"

    invoke-virtual/range {v19 .. v21}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    move-object v14, v15

    .line 113
    .end local v15           #out:Ljava/io/FileOutputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 115
    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v15       #out:Ljava/io/FileOutputStream;
    :pswitch_1
    const-string v9, "426 Couldn\'t receive data\r\n"

    move-object v14, v15

    .line 116
    .end local v15           #out:Ljava/io/FileOutputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 118
    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v15       #out:Ljava/io/FileOutputStream;
    :pswitch_2
    const-string v9, "425 Could not connect data socket\r\n"

    move-object v14, v15

    .line 119
    .end local v15           #out:Ljava/io/FileOutputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 129
    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v15       #out:Ljava/io/FileOutputStream;
    :cond_8
    const/16 v16, 0x0

    .line 130
    .local v16, startPos:I
    const/4 v8, 0x0

    .local v8, endPos:I
    :goto_7
    if-ge v8, v13, :cond_a

    .line 131
    :try_start_4
    aget-byte v19, v3, v8

    const/16 v20, 0xd

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 133
    sub-int v19, v8, v16

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v15, v3, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 134
    add-int/lit8 v16, v8, 0x1

    .line 130
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 139
    :cond_a
    move/from16 v0, v16

    if-ge v0, v13, :cond_6

    .line 140
    sub-int v19, v8, v16

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v15, v3, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_5

    .end local v8           #endPos:I
    .end local v16           #startPos:I
    .restart local v2       #arr$:[Ljava/lang/StackTraceElement;
    .restart local v6       #e:Ljava/io/IOException;
    .restart local v10       #i$:I
    .restart local v12       #len$:I
    .restart local v18       #traceElems:[Ljava/lang/StackTraceElement;
    :cond_b
    move-object v14, v15

    .line 179
    .end local v15           #out:Ljava/io/FileOutputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 204
    .end local v2           #arr$:[Ljava/lang/StackTraceElement;
    .end local v3           #buffer:[B
    .end local v4           #bytesSinceFlush:I
    .end local v5           #bytesSinceReopen:I
    .end local v6           #e:Ljava/io/IOException;
    .end local v10           #i$:I
    .end local v12           #len$:I
    .end local v13           #numRead:I
    .end local v18           #traceElems:[Ljava/lang/StackTraceElement;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/CmdAbstractStore;->sessionThread:Lorg/swiftp/SessionThread;

    move-object/from16 v19, v0

    const-string v20, "226 Transmission complete\r\n"

    invoke-virtual/range {v19 .. v20}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/swiftp/Util;->newFileNotify(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 198
    :catch_3
    move-exception v19

    goto/16 :goto_1

    .line 109
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
