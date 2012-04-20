.class public Lcom/miui/milk/source/note/NoteManager;
.super Ljava/lang/Object;
.source "NoteManager.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/miui/milk/source/note/NoteManager;->mContext:Landroid/content/Context;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/source/note/NoteManager;->mResolver:Landroid/content/ContentResolver;

    .line 32
    return-void
.end method

.method private getNoteIdByContent(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .parameter "content"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 154
    iget-object v0, p0, Lcom/miui/milk/source/note/NoteManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lmiui/provider/Notes;->CONTENT_DATA_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "note_id"

    aput-object v3, v2, v8

    const-string v3, "content=? AND mime_type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const-string v5, "vnd.android.cursor.item/text_note"

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 160
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 162
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v6, :cond_2

    .line 163
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    new-instance v7, Ljava/util/ArrayList;

    .end local v7           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .restart local v7       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 172
    :cond_2
    return-object v7
.end method

.method private getPhoneNumByNoteId(J)Ljava/lang/String;
    .locals 10
    .parameter "id"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 176
    iget-object v0, p0, Lcom/miui/milk/source/note/NoteManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lmiui/provider/Notes;->CONTENT_DATA_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "data3"

    aput-object v3, v2, v8

    const-string v3, "note_id=? AND mime_type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const-string v5, "vnd.android.cursor.item/call_note"

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 182
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 183
    .local v7, phoneNum:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 184
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 187
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 190
    :cond_1
    return-object v7
.end method

.method private loadNoteData(Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;J)V
    .locals 12
    .parameter "noteEntity"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    const/4 v7, 0x0

    .line 329
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/note/NoteManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lmiui/provider/Notes;->CONTENT_DATA_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "note_id= ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 331
    if-eqz v7, :cond_c

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 333
    :cond_0
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$NoteData;->newBuilder()Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    move-result-object v10

    .line 334
    .local v10, noteData:Lcom/miui/milk/model/NoteProtos$NoteData$Builder;
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    .local v9, index:I
    :goto_0
    if-ltz v9, :cond_b

    .line 335
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v6

    .line 336
    .local v6, columnName:Ljava/lang/String;
    const-string v0, "mime_type"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 337
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->setMimeType(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    .line 334
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 338
    :cond_2
    const-string v0, "created_date"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 339
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->setCreatedDate(J)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 359
    .end local v6           #columnName:Ljava/lang/String;
    .end local v9           #index:I
    .end local v10           #noteData:Lcom/miui/milk/model/NoteProtos$NoteData$Builder;
    :catch_0
    move-exception v8

    .line 360
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "NoteManager"

    const-string v1, "Cannot load note data "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot load note data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 364
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 340
    .restart local v6       #columnName:Ljava/lang/String;
    .restart local v9       #index:I
    .restart local v10       #noteData:Lcom/miui/milk/model/NoteProtos$NoteData$Builder;
    :cond_4
    :try_start_2
    const-string v0, "modified_date"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 341
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->setModifiedDate(J)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    goto :goto_1

    .line 342
    :cond_5
    const-string v0, "content"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 343
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->setContent(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    goto :goto_1

    .line 344
    :cond_6
    const-string v0, "data1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 345
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->setData1(J)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    goto :goto_1

    .line 346
    :cond_7
    const-string v0, "data2"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 347
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->setData2(J)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    goto :goto_1

    .line 348
    :cond_8
    const-string v0, "data3"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 349
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->setData3(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    goto/16 :goto_1

    .line 350
    :cond_9
    const-string v0, "data4"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 351
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->setData4(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    goto/16 :goto_1

    .line 352
    :cond_a
    const-string v0, "data5"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 353
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->setData5(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    goto/16 :goto_1

    .line 356
    .end local v6           #columnName:Ljava/lang/String;
    :cond_b
    invoke-virtual {p1, v10}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->addData(Lcom/miui/milk/model/NoteProtos$NoteData$Builder;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    .line 357
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 363
    .end local v9           #index:I
    .end local v10           #noteData:Lcom/miui/milk/model/NoteProtos$NoteData$Builder;
    :cond_c
    if-eqz v7, :cond_d

    .line 364
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 367
    :cond_d
    return-void
.end method

.method private prepareDataContentValues(Lcom/miui/milk/model/NoteProtos$NoteData;J)Landroid/content/ContentValues;
    .locals 4
    .parameter "data"
    .parameter "noteId"

    .prologue
    .line 445
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 446
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "note_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 447
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getMimeType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 448
    const-string v1, "mime_type"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_0
    const-string v1, "created_date"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getCreatedDate()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 451
    const-string v1, "modified_date"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getModifiedDate()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 452
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getContent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 453
    const-string v1, "content"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->hasData1()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 456
    const-string v1, "data1"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getData1()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 458
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->hasData2()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 459
    const-string v1, "data2"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getData2()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 461
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->hasData3()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 462
    const-string v1, "data3"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getData3()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_4
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->hasData4()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 465
    const-string v1, "data4"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getData4()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_5
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->hasData5()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 468
    const-string v1, "data5"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getData5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    :cond_6
    return-object v0
.end method

.method private prepareFolderContentValues(Lcom/miui/milk/model/NoteProtos$NoteFolder;)Landroid/content/ContentValues;
    .locals 5
    .parameter "folder"

    .prologue
    const/4 v1, 0x1

    .line 384
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 385
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "type"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 386
    const-string v2, "alert_date"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getAlertDate()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 387
    const-string v2, "bg_color_id"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getBgColorId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 388
    const-string v2, "created_date"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getCreatedDate()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 389
    const-string v2, "modified_date"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getModifiedDate()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 390
    const-string v2, "has_attachment"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getHasAttachment()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 391
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getSnippet()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 392
    const-string v1, "snippet"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getSnippet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_0
    return-object v0

    .line 390
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private prepareNoteContentValues(Lcom/miui/milk/model/NoteProtos$NoteEntity;)Landroid/content/ContentValues;
    .locals 8
    .parameter "note"

    .prologue
    const/4 v3, 0x0

    const/4 v7, -0x2

    .line 411
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 412
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 413
    const-string v4, "alert_date"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getAlertDate()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 414
    const-string v4, "bg_color_id"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getBgColorId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 415
    const-string v4, "created_date"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getCreatedDate()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 416
    const-string v4, "modified_date"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getModifiedDate()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 417
    const-string v4, "has_attachment"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getHasAttachment()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 418
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getSnippet()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 419
    const-string v3, "snippet"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getSnippet()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->hasFolderType()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getFolderType()I

    move-result v3

    if-ne v3, v7, :cond_3

    .line 422
    const-string v3, "parent_id"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 432
    :cond_2
    :goto_0
    return-object v2

    .line 423
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->hasFolderTitle()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 424
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getFolderTitle()Ljava/lang/String;

    move-result-object v1

    .line 425
    .local v1, folderTitle:Ljava/lang/String;
    if-nez v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 426
    :cond_4
    invoke-virtual {p0, v1}, Lcom/miui/milk/source/note/NoteManager;->loadNoteFolderByTitle(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteFolder;

    move-result-object v0

    .line 427
    .local v0, folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    if-eqz v0, :cond_2

    .line 428
    const-string v3, "parent_id"

    invoke-virtual {v0}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getLuid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private setNoteEntityField(Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;Landroid/database/Cursor;I)V
    .locals 3
    .parameter "noteEntity"
    .parameter "cursor"
    .parameter "index"

    .prologue
    .line 308
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, columnName:Ljava/lang/String;
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    const-string v1, "alert_date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 312
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setAlertDate(J)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    goto :goto_0

    .line 313
    :cond_2
    const-string v1, "bg_color_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 314
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setBgColorId(I)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    goto :goto_0

    .line 315
    :cond_3
    const-string v1, "created_date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 316
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setCreatedDate(J)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    goto :goto_0

    .line 317
    :cond_4
    const-string v1, "modified_date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 318
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setModifiedDate(J)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    goto :goto_0

    .line 319
    :cond_5
    const-string v1, "has_attachment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 320
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, v1}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setHasAttachment(Z)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    goto :goto_1

    .line 321
    :cond_7
    const-string v1, "snippet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 322
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setSnippet(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    goto :goto_0
.end method

.method private setNoteFolderField(Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;Landroid/database/Cursor;I)V
    .locals 3
    .parameter "noteFolder"
    .parameter "cursor"
    .parameter "index"

    .prologue
    .line 95
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, columnName:Ljava/lang/String;
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const-string v1, "alert_date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setAlertDate(J)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    goto :goto_0

    .line 100
    :cond_2
    const-string v1, "bg_color_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 101
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setBgColorId(I)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    goto :goto_0

    .line 102
    :cond_3
    const-string v1, "created_date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 103
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setCreatedDate(J)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    goto :goto_0

    .line 104
    :cond_4
    const-string v1, "modified_date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 105
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setModifiedDate(J)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    goto :goto_0

    .line 106
    :cond_5
    const-string v1, "has_attachment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 107
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, v1}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setHasAttachment(Z)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    goto :goto_1

    .line 108
    :cond_7
    const-string v1, "snippet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 109
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setSnippet(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    goto :goto_0
.end method


# virtual methods
.method public addNoteData(Lcom/miui/milk/model/NoteProtos$NoteData;J)J
    .locals 7
    .parameter "data"
    .parameter "noteId"

    .prologue
    .line 436
    const-string v4, "NoteManager"

    const-string v5, "Saving note data"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/milk/source/note/NoteManager;->prepareDataContentValues(Lcom/miui/milk/model/NoteProtos$NoteData;J)Landroid/content/ContentValues;

    move-result-object v3

    .line 438
    .local v3, values:Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/miui/milk/source/note/NoteManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lmiui/provider/Notes;->CONTENT_DATA_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 439
    .local v2, insertedUri:Landroid/net/Uri;
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 440
    .local v0, id:J
    const-string v4, "NoteManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The new note data has id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-wide v0
.end method

.method public addNoteEntity(Lcom/miui/milk/model/NoteProtos$NoteEntity;)J
    .locals 9
    .parameter "note"

    .prologue
    .line 398
    const-string v6, "NoteManager"

    const-string v7, "Saving note entity"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-direct {p0, p1}, Lcom/miui/milk/source/note/NoteManager;->prepareNoteContentValues(Lcom/miui/milk/model/NoteProtos$NoteEntity;)Landroid/content/ContentValues;

    move-result-object v5

    .line 400
    .local v5, values:Landroid/content/ContentValues;
    iget-object v6, p0, Lcom/miui/milk/source/note/NoteManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 401
    .local v2, insertedUri:Landroid/net/Uri;
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 402
    .local v3, noteId:J
    const-string v6, "NoteManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The new note entity has id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getDataList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/milk/model/NoteProtos$NoteData;

    .line 405
    .local v0, data:Lcom/miui/milk/model/NoteProtos$NoteData;
    invoke-virtual {p0, v0, v3, v4}, Lcom/miui/milk/source/note/NoteManager;->addNoteData(Lcom/miui/milk/model/NoteProtos$NoteData;J)J

    goto :goto_0

    .line 407
    .end local v0           #data:Lcom/miui/milk/model/NoteProtos$NoteData;
    :cond_0
    return-wide v3
.end method

.method public addNoteFolder(Lcom/miui/milk/model/NoteProtos$NoteFolder;)J
    .locals 8
    .parameter "folder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    const-string v5, "NoteManager"

    const-string v6, "Saving note folder"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getSnippet()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, folderTitle:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 373
    :cond_0
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Cannot create note folder which has empty title"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 376
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/milk/source/note/NoteManager;->prepareFolderContentValues(Lcom/miui/milk/model/NoteProtos$NoteFolder;)Landroid/content/ContentValues;

    move-result-object v4

    .line 377
    .local v4, values:Landroid/content/ContentValues;
    iget-object v5, p0, Lcom/miui/milk/source/note/NoteManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 378
    .local v3, insertedUri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 379
    .local v1, id:J
    const-string v5, "NoteManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The new note folder has id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return-wide v1
.end method

.method public exists(JJI)Z
    .locals 10
    .parameter "createDate"
    .parameter "modifyDate"
    .parameter "typeId"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 474
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    .line 475
    .local v2, cols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/milk/source/note/NoteManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    const-string v3, "created_date = ? AND modified_date = ? AND type = ? "

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x2

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 484
    .local v6, cur:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    .line 485
    .local v7, found:Z
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 486
    return v7
.end method

.method public getLocalNoteCount()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 510
    const/4 v6, 0x0

    .line 512
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/note/NoteManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "type = 0 and parent_id != -3"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 519
    if-eqz v6, :cond_1

    .line 520
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 526
    if-eqz v6, :cond_0

    .line 527
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v0

    .line 526
    :cond_1
    if-eqz v6, :cond_2

    .line 527
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    goto :goto_0

    .line 523
    :catch_0
    move-exception v7

    .line 526
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_3

    .line 527
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v8

    goto :goto_0

    .line 526
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 527
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public isEmpty(I)Z
    .locals 8
    .parameter "typeId"

    .prologue
    const/4 v4, 0x0

    .line 490
    iget-object v0, p0, Lcom/miui/milk/source/note/NoteManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "parent_id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " != "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, -0x3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 499
    .local v6, cur:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    const/4 v7, 0x0

    .line 505
    .local v7, empty:Z
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 506
    return v7

    .line 502
    .end local v7           #empty:Z
    :cond_0
    const/4 v7, 0x1

    .restart local v7       #empty:Z
    goto :goto_0
.end method

.method public loadNoteEntity(J)Lcom/miui/milk/model/NoteProtos$NoteEntity;
    .locals 21
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    const-string v3, "NoteManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading note entity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->newBuilder()Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    move-result-object v14

    .line 198
    .local v14, noteEntity:Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    const/4 v9, 0x0

    .line 201
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/milk/source/note/NoteManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "_id= ? "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 208
    if-eqz v9, :cond_8

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 209
    invoke-interface {v9}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    add-int/lit8 v13, v3, -0x1

    .local v13, index:I
    :goto_0
    if-ltz v13, :cond_0

    .line 210
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v9, v13}, Lcom/miui/milk/source/note/NoteManager;->setNoteEntityField(Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;Landroid/database/Cursor;I)V

    .line 209
    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    .line 214
    :cond_0
    const-string v3, "parent_id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 215
    .local v18, parentId:J
    const-string v3, "origin_parent_id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 217
    .local v16, originParentId:J
    const-wide/16 v3, -0x2

    cmp-long v3, v18, v3

    if-nez v3, :cond_4

    .line 218
    const/4 v3, -0x2

    invoke-virtual {v14, v3}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setFolderType(I)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :cond_1
    :goto_1
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 244
    :cond_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v14, v1, v2}, Lcom/miui/milk/source/note/NoteManager;->loadNoteData(Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;J)V

    .line 246
    invoke-virtual {v14}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->build()Lcom/miui/milk/model/NoteProtos$NoteEntity;

    move-result-object v3

    .end local v13           #index:I
    .end local v16           #originParentId:J
    .end local v18           #parentId:J
    :cond_3
    :goto_2
    return-object v3

    .line 220
    .restart local v13       #index:I
    .restart local v16       #originParentId:J
    .restart local v18       #parentId:J
    :cond_4
    const-wide/16 v10, 0x0

    .line 221
    .local v10, folderId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v18, v3

    if-lez v3, :cond_5

    .line 222
    move-wide/from16 v10, v18

    .line 224
    :cond_5
    const-wide/16 v3, 0x0

    cmp-long v3, v16, v3

    if-lez v3, :cond_6

    .line 225
    move-wide/from16 v10, v16

    .line 227
    :cond_6
    const-wide/16 v3, 0x0

    cmp-long v3, v10, v3

    if-lez v3, :cond_1

    .line 228
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/miui/milk/source/note/NoteManager;->loadNoteFolder(J)Lcom/miui/milk/model/NoteProtos$NoteFolder;

    move-result-object v15

    .line 229
    .local v15, noteFolder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    invoke-virtual {v15}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getSnippet()Ljava/lang/String;

    move-result-object v12

    .line 230
    .local v12, folderTitle:Ljava/lang/String;
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 231
    invoke-virtual {v14, v12}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setFolderTitle(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 240
    .end local v10           #folderId:J
    .end local v12           #folderTitle:Ljava/lang/String;
    .end local v13           #index:I
    .end local v15           #noteFolder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .end local v16           #originParentId:J
    .end local v18           #parentId:J
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v3

    .line 236
    :cond_8
    const/4 v3, 0x0

    .line 240
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method public loadNoteEntityByDate(JJ)Lcom/miui/milk/model/NoteProtos$NoteEntity;
    .locals 20
    .parameter "createDate"
    .parameter "modifyDate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    const-string v2, "NoteManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading note entity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->newBuilder()Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    move-result-object v13

    .line 254
    .local v13, noteEntity:Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    const/4 v8, 0x0

    .line 257
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/milk/source/note/NoteManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "created_date = ? AND modified_date = ? AND type = 0"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 266
    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 267
    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    add-int/lit8 v12, v2, -0x1

    .local v12, index:I
    :goto_0
    if-ltz v12, :cond_0

    .line 268
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v8, v12}, Lcom/miui/milk/source/note/NoteManager;->setNoteEntityField(Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;Landroid/database/Cursor;I)V

    .line 267
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    .line 272
    :cond_0
    const-string v2, "parent_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 273
    .local v17, parentId:J
    const-string v2, "origin_parent_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 275
    .local v15, originParentId:J
    const-wide/16 v2, -0x2

    cmp-long v2, v17, v2

    if-nez v2, :cond_4

    .line 276
    const/4 v2, -0x2

    invoke-virtual {v13, v2}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setFolderType(I)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    :cond_1
    :goto_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 302
    :cond_2
    invoke-virtual {v13}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->getLuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2, v3}, Lcom/miui/milk/source/note/NoteManager;->loadNoteData(Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;J)V

    .line 304
    invoke-virtual {v13}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->build()Lcom/miui/milk/model/NoteProtos$NoteEntity;

    move-result-object v2

    .end local v12           #index:I
    .end local v15           #originParentId:J
    .end local v17           #parentId:J
    :cond_3
    :goto_2
    return-object v2

    .line 278
    .restart local v12       #index:I
    .restart local v15       #originParentId:J
    .restart local v17       #parentId:J
    :cond_4
    const-wide/16 v9, 0x0

    .line 279
    .local v9, folderId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v17, v2

    if-lez v2, :cond_5

    .line 280
    move-wide/from16 v9, v17

    .line 282
    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v2, v15, v2

    if-lez v2, :cond_6

    .line 283
    move-wide v9, v15

    .line 285
    :cond_6
    const-wide/16 v2, 0x0

    cmp-long v2, v9, v2

    if-lez v2, :cond_1

    .line 286
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lcom/miui/milk/source/note/NoteManager;->loadNoteFolder(J)Lcom/miui/milk/model/NoteProtos$NoteFolder;

    move-result-object v14

    .line 287
    .local v14, noteFolder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    invoke-virtual {v14}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getSnippet()Ljava/lang/String;

    move-result-object v11

    .line 288
    .local v11, folderTitle:Ljava/lang/String;
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 289
    invoke-virtual {v13, v11}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setFolderTitle(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 298
    .end local v9           #folderId:J
    .end local v11           #folderTitle:Ljava/lang/String;
    .end local v12           #index:I
    .end local v14           #noteFolder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .end local v15           #originParentId:J
    .end local v17           #parentId:J
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2

    .line 294
    :cond_8
    const/4 v2, 0x0

    .line 298
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method public loadNoteFolder(J)Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .locals 11
    .parameter "id"

    .prologue
    const/4 v9, 0x0

    .line 35
    const-string v0, "NoteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading note folder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->newBuilder()Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    move-result-object v8

    .line 39
    .local v8, noteFolder:Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    const/4 v6, 0x0

    .line 42
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/note/NoteManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "_id= ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 49
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, index:I
    :goto_0
    if-ltz v7, :cond_2

    .line 51
    invoke-direct {p0, v8, v6, v7}, Lcom/miui/milk/source/note/NoteManager;->setNoteFolderField(Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;Landroid/database/Cursor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 58
    .end local v7           #index:I
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v9

    .line 60
    :goto_1
    return-object v0

    .line 58
    .restart local v7       #index:I
    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 60
    :cond_3
    invoke-virtual {v8}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->build()Lcom/miui/milk/model/NoteProtos$NoteFolder;

    move-result-object v0

    goto :goto_1

    .line 58
    .end local v7           #index:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public loadNoteFolderByTitle(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .locals 10
    .parameter "title"

    .prologue
    const/4 v9, 0x0

    .line 64
    const-string v0, "NoteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading note folder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->newBuilder()Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    move-result-object v8

    .line 68
    .local v8, noteFolder:Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    const/4 v6, 0x0

    .line 71
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/note/NoteManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "snippet= ? and type = 1 and parent_id != -3"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 80
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, index:I
    :goto_0
    if-ltz v7, :cond_2

    .line 82
    invoke-direct {p0, v8, v6, v7}, Lcom/miui/milk/source/note/NoteManager;->setNoteFolderField(Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;Landroid/database/Cursor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 89
    .end local v7           #index:I
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v9

    .line 91
    :goto_1
    return-object v0

    .line 89
    .restart local v7       #index:I
    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 91
    :cond_3
    invoke-virtual {v8}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->build()Lcom/miui/milk/model/NoteProtos$NoteFolder;

    move-result-object v0

    goto :goto_1

    .line 89
    .end local v7           #index:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public prepareIdsByType(I)Ljava/util/Vector;
    .locals 10
    .parameter "typeId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 533
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 534
    .local v9, ids:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 536
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/note/NoteManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "parent_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, -0x3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 543
    if-nez v6, :cond_1

    .line 555
    if-eqz v6, :cond_0

    .line 556
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 559
    :cond_0
    :goto_0
    return-object v9

    .line 546
    :cond_1
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 547
    .local v8, idColumnIndex:I
    const/4 v7, 0x0

    .line 548
    .local v7, cursorId:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 549
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 550
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 551
    invoke-virtual {v9, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 552
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 555
    .end local v7           #cursorId:Ljava/lang/String;
    .end local v8           #idColumnIndex:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 556
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 555
    .restart local v7       #cursorId:Ljava/lang/String;
    .restart local v8       #idColumnIndex:I
    :cond_3
    if-eqz v6, :cond_0

    .line 556
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public shouldRestore(Lcom/miui/milk/model/NoteProtos$NoteEntity;)Z
    .locals 11
    .parameter "note"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 115
    const/4 v0, 0x0

    .local v0, content:Ljava/lang/String;
    const/4 v6, 0x0

    .line 116
    .local v6, phoneNum:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getDataList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/milk/model/NoteProtos$NoteData;

    .line 117
    .local v1, data:Lcom/miui/milk/model/NoteProtos$NoteData;
    invoke-virtual {v1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getMimeType()Ljava/lang/String;

    move-result-object v7

    const-string v10, "vnd.android.cursor.item/text_note"

    invoke-static {v7, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 118
    invoke-virtual {v1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v8

    .line 150
    .end local v1           #data:Lcom/miui/milk/model/NoteProtos$NoteData;
    :goto_1
    return v7

    .line 125
    .restart local v1       #data:Lcom/miui/milk/model/NoteProtos$NoteData;
    :cond_1
    invoke-virtual {v1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getMimeType()Ljava/lang/String;

    move-result-object v7

    const-string v10, "vnd.android.cursor.item/call_note"

    invoke-static {v7, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 126
    invoke-virtual {v1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getData3()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 131
    .end local v1           #data:Lcom/miui/milk/model/NoteProtos$NoteData;
    :cond_2
    invoke-direct {p0, v0}, Lcom/miui/milk/source/note/NoteManager;->getNoteIdByContent(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 133
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v5, :cond_6

    .line 135
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 136
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 138
    .local v3, id:J
    invoke-direct {p0, v3, v4}, Lcom/miui/milk/source/note/NoteManager;->getPhoneNumByNoteId(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v8

    .line 139
    goto :goto_1

    .end local v3           #id:J
    :cond_4
    move v7, v9

    .line 143
    goto :goto_1

    :cond_5
    move v7, v8

    .line 146
    goto :goto_1

    :cond_6
    move v7, v9

    .line 150
    goto :goto_1
.end method
