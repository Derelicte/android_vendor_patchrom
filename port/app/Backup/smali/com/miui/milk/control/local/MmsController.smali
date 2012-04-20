.class public Lcom/miui/milk/control/local/MmsController;
.super Lcom/miui/milk/control/local/BaseController;
.source "MmsController.java"


# instance fields
.field private mMmsManager:Lcom/miui/milk/source/mms/MmsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/miui/milk/control/local/BaseController;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Lcom/miui/milk/source/mms/MmsManager;

    invoke-direct {v0, p1}, Lcom/miui/milk/source/mms/MmsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/milk/control/local/MmsController;->mMmsManager:Lcom/miui/milk/source/mms/MmsManager;

    .line 44
    return-void
.end method

.method private apply(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 21
    .parameter "r"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/model/MmsProtos$Pdu;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 151
    .local p2, batchedPdus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/model/MmsProtos$Pdu;>;"
    .local p3, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v17, "mms"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v16

    .line 153
    .local v16, results:[Landroid/content/ContentProviderResult;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 154
    .local v3, batchedOps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 156
    .local v4, batchedParts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/model/MmsProtos$PduPart;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_3

    .line 157
    aget-object v17, v16, v8

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v15

    .line 158
    .local v15, paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 159
    .local v14, path:Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 161
    .local v10, msgId:J
    const/16 v17, 0x1

    :try_start_0
    move/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    .line 165
    :goto_1
    const-string v17, "restored"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 166
    sget-object v17, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/part"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v12

    .line 168
    .local v12, op:Landroid/content/ContentProviderOperation;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .end local v12           #op:Landroid/content/ContentProviderOperation;
    :cond_0
    const-string v17, "inserted"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string v17, "restored"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 173
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/milk/control/local/MmsController;->mCurrImportIndex:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x1

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/miui/milk/control/local/MmsController;->mCurrImportIndex:J

    .line 174
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/milk/model/MmsProtos$Pdu;

    .line 175
    .local v5, batchedPdu:Lcom/miui/milk/model/MmsProtos$Pdu;
    const/4 v9, 0x0

    .local v9, j:I
    :goto_2
    invoke-virtual {v5}, Lcom/miui/milk/model/MmsProtos$Pdu;->getPduPartsCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_2

    .line 176
    invoke-virtual {v5, v9}, Lcom/miui/milk/model/MmsProtos$Pdu;->getPduParts(I)Lcom/miui/milk/model/MmsProtos$PduPart;

    move-result-object v13

    .line 177
    .local v13, part:Lcom/miui/milk/model/MmsProtos$PduPart;
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/local/MmsController;->mMmsManager:Lcom/miui/milk/source/mms/MmsManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11, v13}, Lcom/miui/milk/source/mms/MmsManager;->restorePduPart(JLcom/miui/milk/model/MmsProtos$PduPart;)Landroid/content/ContentProviderOperation;

    move-result-object v12

    .line 179
    .restart local v12       #op:Landroid/content/ContentProviderOperation;
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 162
    .end local v5           #batchedPdu:Lcom/miui/milk/model/MmsProtos$Pdu;
    .end local v9           #j:I
    .end local v12           #op:Landroid/content/ContentProviderOperation;
    .end local v13           #part:Lcom/miui/milk/model/MmsProtos$PduPart;
    :catch_0
    move-exception v6

    .line 163
    .local v6, e:Ljava/lang/NumberFormatException;
    const-string v17, "MmsController"

    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 156
    .end local v6           #e:Ljava/lang/NumberFormatException;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 184
    .end local v10           #msgId:J
    .end local v14           #path:Ljava/lang/String;
    .end local v15           #paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const-string v17, "mms"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v16

    .line 185
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 186
    const/4 v9, 0x0

    .restart local v9       #j:I
    :goto_3
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_5

    .line 187
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_4

    .line 188
    aget-object v17, v16, v9

    move-object/from16 v0, v17

    iget-object v7, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 189
    .local v7, fileUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/local/MmsController;->mMmsManager:Lcom/miui/milk/source/mms/MmsManager;

    move-object/from16 v18, v0

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/miui/milk/model/MmsProtos$PduPart;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Lcom/miui/milk/source/mms/MmsManager;->restorePduPartFile(Landroid/net/Uri;Lcom/miui/milk/model/MmsProtos$PduPart;)V

    .line 186
    .end local v7           #fileUri:Landroid/net/Uri;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 192
    :cond_5
    return-void
.end method


# virtual methods
.method public export(Ljava/io/File;)V
    .locals 12
    .parameter "exportFile"

    .prologue
    .line 48
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 49
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 52
    :cond_0
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$MmsCollection;->newBuilder()Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;

    move-result-object v3

    .line 53
    .local v3, mmsCollection:Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;
    iget-object v8, p0, Lcom/miui/milk/control/local/MmsController;->mMmsManager:Lcom/miui/milk/source/mms/MmsManager;

    invoke-virtual {v8}, Lcom/miui/milk/source/mms/MmsManager;->prepareAllMmsIds()Ljava/util/Vector;

    move-result-object v4

    .line 55
    .local v4, mmsIds:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, p0, Lcom/miui/milk/control/local/MmsController;->mTotalExportSize:J

    .line 56
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/miui/milk/control/local/MmsController;->mCurrExportIndex:J

    .line 57
    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 58
    .local v2, id:Ljava/lang/String;
    iget-boolean v8, p0, Lcom/miui/milk/control/local/MmsController;->mCanceled:Z

    if-eqz v8, :cond_3

    .line 88
    .end local v2           #id:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 60
    .restart local v2       #id:Ljava/lang/String;
    :cond_3
    :try_start_0
    iget-object v8, p0, Lcom/miui/milk/control/local/MmsController;->mMmsManager:Lcom/miui/milk/source/mms/MmsManager;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/miui/milk/source/mms/MmsManager;->backupToProtocolBuffer(J)Lcom/miui/milk/model/MmsProtos$Pdu;

    move-result-object v6

    .line 61
    .local v6, pdu:Lcom/miui/milk/model/MmsProtos$Pdu;
    if-eqz v6, :cond_1

    .line 62
    invoke-virtual {v3, v6}, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->addPdus(Lcom/miui/milk/model/MmsProtos$Pdu;)Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;

    .line 63
    iget-wide v8, p0, Lcom/miui/milk/control/local/MmsController;->mCurrExportIndex:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/miui/milk/control/local/MmsController;->mCurrExportIndex:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    .end local v6           #pdu:Lcom/miui/milk/model/MmsProtos$Pdu;
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "MmsController"

    const-string v9, "Cannot load mms "

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 70
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #id:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v7

    .line 71
    .local v7, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    invoke-virtual {v3}, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->build()Lcom/miui/milk/model/MmsProtos$MmsCollection;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setMmsCollection(Lcom/miui/milk/model/MmsProtos$MmsCollection;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 72
    const-string v8, "1"

    invoke-virtual {v7, v8}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setVersion(Ljava/lang/String;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 74
    iget-boolean v8, p0, Lcom/miui/milk/control/local/MmsController;->mCanceled:Z

    if-nez v8, :cond_2

    .line 78
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 79
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 80
    .local v5, output:Ljava/io/FileOutputStream;
    invoke-virtual {v7}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->writeTo(Ljava/io/OutputStream;)V

    .line 81
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 82
    const-string v8, "MmsController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Export Mms Counts : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/miui/milk/control/local/MmsController;->mCurrExportIndex:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 83
    .end local v5           #output:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 84
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v8, "MmsController"

    const-string v9, "Cannot export mms "

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 85
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 86
    .local v0, e:Ljava/io/IOException;
    const-string v8, "MmsController"

    const-string v9, "Cannot export mms "

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public importData(Ljava/io/File;)V
    .locals 17
    .parameter "importFile"

    .prologue
    .line 93
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 94
    .local v4, input:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 96
    .local v5, mmsCollection:Lcom/miui/milk/model/MmsProtos$MmsCollection;
    invoke-static {v4}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom(Ljava/io/InputStream;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v12

    .line 97
    .local v12, syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 98
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->hasVersion()Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "1"

    invoke-virtual {v12}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getVersion()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 100
    invoke-virtual {v12}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getMmsCollection()Lcom/miui/milk/model/MmsProtos$MmsCollection;

    move-result-object v5

    .line 103
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/miui/milk/control/local/MmsController;->mCanceled:Z

    if-nez v13, :cond_1

    if-nez v5, :cond_2

    .line 145
    .end local v4           #input:Ljava/io/FileInputStream;
    .end local v5           #mmsCollection:Lcom/miui/milk/model/MmsProtos$MmsCollection;
    .end local v12           #syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_1
    :goto_0
    return-void

    .line 105
    .restart local v4       #input:Ljava/io/FileInputStream;
    .restart local v5       #mmsCollection:Lcom/miui/milk/model/MmsProtos$MmsCollection;
    .restart local v12       #syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_2
    invoke-virtual {v5}, Lcom/miui/milk/model/MmsProtos$MmsCollection;->getPdusList()Ljava/util/List;

    move-result-object v9

    .line 106
    .local v9, origMmsList:Ljava/util/List;,"Ljava/util/List<Lcom/miui/milk/model/MmsProtos$Pdu;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 107
    .local v6, mmsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/model/MmsProtos$Pdu;>;"
    new-instance v13, Lcom/miui/milk/control/local/MmsController$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/miui/milk/control/local/MmsController$1;-><init>(Lcom/miui/milk/control/local/MmsController;)V

    invoke-static {v6, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 116
    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/miui/milk/control/local/MmsController;->mCurrImportIndex:J

    .line 117
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    int-to-long v13, v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/miui/milk/control/local/MmsController;->mTotalImportSize:J

    .line 119
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 120
    .local v1, batchedPdus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/model/MmsProtos$Pdu;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/milk/control/local/MmsController;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 121
    .local v11, r:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 122
    .local v8, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/milk/model/MmsProtos$Pdu;

    .line 123
    .local v10, pdu:Lcom/miui/milk/model/MmsProtos$Pdu;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/miui/milk/control/local/MmsController;->mCanceled:Z

    if-nez v13, :cond_1

    .line 126
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/milk/control/local/MmsController;->mMmsManager:Lcom/miui/milk/source/mms/MmsManager;

    invoke-virtual {v13, v10}, Lcom/miui/milk/source/mms/MmsManager;->restorePdu(Lcom/miui/milk/model/MmsProtos$Pdu;)Landroid/content/ContentProviderOperation;

    move-result-object v7

    .line 127
    .local v7, op:Landroid/content/ContentProviderOperation;
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/16 v14, 0x14

    if-ne v13, v14, :cond_3

    .line 130
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1, v8}, Lcom/miui/milk/control/local/MmsController;->apply(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 131
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 136
    .end local v1           #batchedPdus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/model/MmsProtos$Pdu;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #input:Ljava/io/FileInputStream;
    .end local v5           #mmsCollection:Lcom/miui/milk/model/MmsProtos$MmsCollection;
    .end local v6           #mmsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/model/MmsProtos$Pdu;>;"
    .end local v7           #op:Landroid/content/ContentProviderOperation;
    .end local v8           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v9           #origMmsList:Ljava/util/List;,"Ljava/util/List<Lcom/miui/milk/model/MmsProtos$Pdu;>;"
    .end local v10           #pdu:Lcom/miui/milk/model/MmsProtos$Pdu;
    .end local v11           #r:Landroid/content/ContentResolver;
    .end local v12           #syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :catch_0
    move-exception v2

    .line 137
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v13, "MmsController"

    const-string v14, "Cannot import mms "

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 134
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #batchedPdus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/model/MmsProtos$Pdu;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #input:Ljava/io/FileInputStream;
    .restart local v5       #mmsCollection:Lcom/miui/milk/model/MmsProtos$MmsCollection;
    .restart local v6       #mmsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/model/MmsProtos$Pdu;>;"
    .restart local v8       #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v9       #origMmsList:Ljava/util/List;,"Ljava/util/List<Lcom/miui/milk/model/MmsProtos$Pdu;>;"
    .restart local v11       #r:Landroid/content/ContentResolver;
    .restart local v12       #syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1, v8}, Lcom/miui/milk/control/local/MmsController;->apply(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 135
    const-string v13, "MmsController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Import Mms Counts : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/miui/milk/control/local/MmsController;->mCurrImportIndex:J

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    .line 138
    .end local v1           #batchedPdus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/model/MmsProtos$Pdu;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #input:Ljava/io/FileInputStream;
    .end local v5           #mmsCollection:Lcom/miui/milk/model/MmsProtos$MmsCollection;
    .end local v6           #mmsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/model/MmsProtos$Pdu;>;"
    .end local v8           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v9           #origMmsList:Ljava/util/List;,"Ljava/util/List<Lcom/miui/milk/model/MmsProtos$Pdu;>;"
    .end local v11           #r:Landroid/content/ContentResolver;
    .end local v12           #syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :catch_1
    move-exception v2

    .line 139
    .local v2, e:Ljava/io/IOException;
    const-string v13, "MmsController"

    const-string v14, "Cannot import mms "

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 140
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 141
    .local v2, e:Landroid/os/RemoteException;
    const-string v13, "MmsController"

    const-string v14, "Cannot import mms "

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 142
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_3
    move-exception v2

    .line 143
    .local v2, e:Landroid/content/OperationApplicationException;
    const-string v13, "MmsController"

    const-string v14, "Cannot import mms "

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
