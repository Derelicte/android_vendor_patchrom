.class public Lcom/miui/milk/control/cloud/NoteCloudController;
.super Lcom/miui/milk/control/cloud/BaseCloudController;
.source "NoteCloudController.java"


# instance fields
.field private mNoteFolderTracker:Lcom/miui/milk/source/note/NoteFolderTracker;

.field private mNoteManager:Lcom/miui/milk/source/note/NoteManager;

.field private mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/milk/storage/NoteFolderTrackerStore;Lcom/miui/milk/storage/NoteTrackerStore;)V
    .locals 1
    .parameter "context"
    .parameter "folderTrackerStore"
    .parameter "noteTrackerStore"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/miui/milk/control/cloud/BaseCloudController;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Lcom/miui/milk/source/note/NoteManager;

    invoke-direct {v0, p1}, Lcom/miui/milk/source/note/NoteManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    .line 39
    new-instance v0, Lcom/miui/milk/source/note/NoteFolderTracker;

    invoke-direct {v0, p1, p2}, Lcom/miui/milk/source/note/NoteFolderTracker;-><init>(Landroid/content/Context;Lcom/miui/milk/storage/NoteFolderTrackerStore;)V

    iput-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteFolderTracker:Lcom/miui/milk/source/note/NoteFolderTracker;

    .line 40
    new-instance v0, Lcom/miui/milk/source/note/NoteTracker;

    invoke-direct {v0, p1, p3}, Lcom/miui/milk/source/note/NoteTracker;-><init>(Landroid/content/Context;Lcom/miui/milk/storage/NoteTrackerStore;)V

    iput-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    .line 42
    return-void
.end method

.method private checkEmpty()V
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/milk/source/note/NoteManager;->isEmpty(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteFolderTracker:Lcom/miui/milk/source/note/NoteFolderTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/note/NoteFolderTracker;->resetStore()V

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/milk/source/note/NoteManager;->isEmpty(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/note/NoteTracker;->resetStore()V

    .line 608
    :cond_1
    return-void
.end method

.method private closeStore()V
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteFolderTracker:Lcom/miui/milk/source/note/NoteFolderTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/note/NoteFolderTracker;->closeStore()V

    .line 617
    iget-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/note/NoteTracker;->openStore()V

    .line 618
    return-void
.end method

.method private openStore()V
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteFolderTracker:Lcom/miui/milk/source/note/NoteFolderTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/note/NoteFolderTracker;->openStore()V

    .line 612
    iget-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/note/NoteTracker;->openStore()V

    .line 613
    return-void
.end method

.method private processAfterSave(Lcom/miui/milk/model/NoteProtos$Notes;Lcom/miui/milk/control/callback/AsyncTaskCallback;)V
    .locals 9
    .parameter "notes"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/NoteCloudController;->openStore()V

    .line 428
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$Notes;->getFolderList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/milk/model/NoteProtos$NoteFolder;

    .line 430
    .local v1, folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    :try_start_0
    invoke-virtual {v1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getLuid()Ljava/lang/String;

    move-result-object v4

    .line 431
    .local v4, luid:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getGuid()Ljava/lang/String;

    move-result-object v2

    .line 433
    .local v2, guid:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 434
    const-string v6, "NoteCloudController"

    const-string v7, "someting error from server, folder without luid"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "someting error from server, folder without luid"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    .end local v2           #guid:Ljava/lang/String;
    .end local v4           #luid:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 446
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "NoteCloudController"

    const-string v7, "Cannot process after save folder "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/NoteCloudController;->closeStore()V

    .line 448
    throw v0

    .line 437
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #guid:Ljava/lang/String;
    .restart local v4       #luid:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "0"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 438
    :cond_1
    const-string v6, "NoteCloudController"

    const-string v7, "someting error from server, folder without guid"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "someting error from server, folder without guid"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 441
    :cond_2
    iget-object v6, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteFolderTracker:Lcom/miui/milk/source/note/NoteFolderTracker;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7, v2}, Lcom/miui/milk/source/note/NoteFolderTracker;->setTrackerStatus(Ljava/lang/String;ZLjava/lang/String;)V

    .line 442
    const-string v6, "NoteCloudController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save folder guid/luid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 451
    .end local v1           #folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .end local v2           #guid:Ljava/lang/String;
    .end local v4           #luid:Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$Notes;->getNoteList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/milk/model/NoteProtos$NoteEntity;

    .line 453
    .local v5, note:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    :try_start_2
    invoke-virtual {v5}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getLuid()Ljava/lang/String;

    move-result-object v4

    .line 454
    .restart local v4       #luid:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getGuid()Ljava/lang/String;

    move-result-object v2

    .line 455
    .restart local v2       #guid:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 456
    const-string v6, "NoteCloudController"

    const-string v7, "someting error from server, note without luid"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "someting error from server, note without luid"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 467
    .end local v2           #guid:Ljava/lang/String;
    .end local v4           #luid:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 468
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v6, "NoteCloudController"

    const-string v7, "Cannot process after save note "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 469
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/NoteCloudController;->closeStore()V

    .line 470
    throw v0

    .line 459
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #guid:Ljava/lang/String;
    .restart local v4       #luid:Ljava/lang/String;
    :cond_4
    :try_start_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "0"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 460
    :cond_5
    const-string v6, "NoteCloudController"

    const-string v7, "someting error from server, note without guid"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "someting error from server, note without guid"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 463
    :cond_6
    iget-object v6, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7, v2}, Lcom/miui/milk/source/note/NoteTracker;->setTrackerStatus(Ljava/lang/String;ZLjava/lang/String;)V

    .line 464
    const-string v6, "NoteCloudController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save note guid/luid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 474
    .end local v2           #guid:Ljava/lang/String;
    .end local v4           #luid:Ljava/lang/String;
    .end local v5           #note:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    :cond_7
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/NoteCloudController;->closeStore()V

    .line 475
    return-void
.end method

.method private saveFolderBatch(Lcom/miui/milk/control/callback/AsyncTaskCallback;ILandroid/content/SharedPreferences;)V
    .locals 24
    .parameter "callback"
    .parameter "totalCount"
    .parameter "sharedPref"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual/range {p0 .. p1}, Lcom/miui/milk/control/cloud/NoteCloudController;->tryPing(Lcom/miui/milk/control/callback/AsyncTaskCallback;)V

    .line 123
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$Notes;->newBuilder()Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    move-result-object v11

    .line 124
    .local v11, notes:Lcom/miui/milk/model/NoteProtos$Notes$Builder;
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/NoteCloudController;->openStore()V

    .line 125
    const/4 v6, 0x0

    .line 128
    .local v6, folderCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteFolderTracker:Lcom/miui/milk/source/note/NoteFolderTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/miui/milk/source/note/NoteFolderTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 130
    .local v7, folderId:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    move-object/from16 v20, v0

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/miui/milk/source/note/NoteManager;->loadNoteFolder(J)Lcom/miui/milk/model/NoteProtos$NoteFolder;

    move-result-object v5

    .line 131
    .local v5, folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    if-eqz v5, :cond_0

    .line 132
    invoke-virtual {v5}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->toBuilder()Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    move-result-object v10

    .line 133
    .local v10, nb:Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    sget-object v20, Lcom/miui/milk/model/CommonProtos$ActionType;->NEW:Lcom/miui/milk/model/CommonProtos$ActionType;

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->build()Lcom/miui/milk/model/NoteProtos$NoteFolder;

    move-result-object v5

    .line 134
    invoke-virtual {v11, v5}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->addFolder(Lcom/miui/milk/model/NoteProtos$NoteFolder;)Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    .line 135
    add-int/lit8 v6, v6, 0x1

    .line 136
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "0/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "0"

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "100"

    aput-object v22, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_0

    .line 137
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/NoteCloudController;->mCanceled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v5           #folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .end local v7           #folderId:Ljava/lang/String;
    .end local v10           #nb:Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    :cond_1
    :goto_1
    return-void

    .line 141
    .restart local v7       #folderId:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 142
    .local v3, e:Ljava/lang/Exception;
    const-string v20, "NoteCloudController"

    const-string v21, "Cannot load note folder "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 146
    .end local v3           #e:Ljava/lang/Exception;
    .end local v7           #folderId:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteFolderTracker:Lcom/miui/milk/source/note/NoteFolderTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/miui/milk/source/note/NoteFolderTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 148
    .restart local v7       #folderId:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    move-object/from16 v20, v0

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/miui/milk/source/note/NoteManager;->loadNoteFolder(J)Lcom/miui/milk/model/NoteProtos$NoteFolder;

    move-result-object v5

    .line 149
    .restart local v5       #folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    if-eqz v5, :cond_3

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteFolderTracker:Lcom/miui/milk/source/note/NoteFolderTracker;

    move-object/from16 v20, v0

    invoke-virtual {v5}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getLuid()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/miui/milk/source/note/NoteFolderTracker;->getGuidByLuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 151
    .local v8, guid:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->toBuilder()Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    move-result-object v10

    .line 152
    .restart local v10       #nb:Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    if-eqz v8, :cond_4

    .line 153
    invoke-virtual {v10, v8}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    .line 155
    :cond_4
    sget-object v20, Lcom/miui/milk/model/CommonProtos$ActionType;->UPDATE:Lcom/miui/milk/model/CommonProtos$ActionType;

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->build()Lcom/miui/milk/model/NoteProtos$NoteFolder;

    move-result-object v5

    .line 156
    invoke-virtual {v11, v5}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->addFolder(Lcom/miui/milk/model/NoteProtos$NoteFolder;)Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    .line 157
    add-int/lit8 v6, v6, 0x1

    .line 158
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "0/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "0"

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "100"

    aput-object v22, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_3

    .line 159
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/NoteCloudController;->mCanceled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 163
    .end local v5           #folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .end local v8           #guid:Ljava/lang/String;
    .end local v10           #nb:Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    :catch_1
    move-exception v3

    .line 164
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v20, "NoteCloudController"

    const-string v21, "Cannot load note folder "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 168
    .end local v3           #e:Ljava/lang/Exception;
    .end local v7           #folderId:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteFolderTracker:Lcom/miui/milk/source/note/NoteFolderTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/miui/milk/source/note/NoteFolderTracker;->getDeletedItemKeys()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 170
    .restart local v7       #folderId:Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    move-object/from16 v20, v0

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/miui/milk/source/note/NoteManager;->loadNoteFolder(J)Lcom/miui/milk/model/NoteProtos$NoteFolder;

    move-result-object v5

    .line 171
    .restart local v5       #folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->newBuilder()Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    move-result-object v10

    .line 172
    .restart local v10       #nb:Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    if-eqz v5, :cond_8

    .line 173
    invoke-virtual {v5}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->toBuilder()Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    move-result-object v10

    .line 177
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteFolderTracker:Lcom/miui/milk/source/note/NoteFolderTracker;

    move-object/from16 v20, v0

    invoke-virtual {v10}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->getLuid()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/miui/milk/source/note/NoteFolderTracker;->getGuidByLuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 178
    .restart local v8       #guid:Ljava/lang/String;
    if-eqz v8, :cond_7

    .line 179
    invoke-virtual {v10, v8}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    .line 181
    :cond_7
    sget-object v20, Lcom/miui/milk/model/CommonProtos$ActionType;->DELETE:Lcom/miui/milk/model/CommonProtos$ActionType;

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->build()Lcom/miui/milk/model/NoteProtos$NoteFolder;

    move-result-object v5

    .line 182
    invoke-virtual {v11, v5}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->addFolder(Lcom/miui/milk/model/NoteProtos$NoteFolder;)Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    .line 183
    add-int/lit8 v6, v6, 0x1

    .line 184
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "0/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "0"

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "100"

    aput-object v22, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_6

    .line 185
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/NoteCloudController;->mCanceled:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 188
    .end local v5           #folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .end local v8           #guid:Ljava/lang/String;
    .end local v10           #nb:Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    :catch_2
    move-exception v3

    .line 189
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v20, "NoteCloudController"

    const-string v21, "Cannot load note folder "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 175
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v5       #folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .restart local v10       #nb:Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    :cond_8
    :try_start_3
    invoke-virtual {v10, v7}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 193
    .end local v5           #folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .end local v7           #folderId:Ljava/lang/String;
    .end local v10           #nb:Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/NoteCloudController;->closeStore()V

    .line 195
    const-string v20, "NoteCloudController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "deviceId : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mDeviceId:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v20, "NoteCloudController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "IMSI : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mIMSI:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {v11}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->getFolderList()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    if-nez v20, :cond_a

    .line 198
    const-string v20, "NoteCloudController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Export Folder Counts : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 201
    :cond_a
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v17

    .line 202
    .local v17, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setNote(Lcom/miui/milk/model/NoteProtos$Notes$Builder;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/NoteCloudController;->getSyncVersion()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setVersion(Ljava/lang/String;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 205
    if-eqz v17, :cond_1

    .line 206
    const/4 v14, 0x0

    .line 208
    .local v14, response:Lorg/apache/http/HttpResponse;
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/NoteCloudController;->prepareTransportParams()Ljava/util/HashMap;

    move-result-object v12

    .line 210
    .local v12, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "0/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "0"

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "100"

    aput-object v22, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_b

    .line 211
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/NoteCloudController;->mCanceled:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 245
    .end local v12           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_3
    move-exception v3

    .line 246
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v20, "NoteCloudController"

    const-string v21, "Cannot send folder "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/miui/milk/control/cloud/NoteCloudController;->makeExceptionCallback(Lcom/miui/milk/control/callback/AsyncTaskCallback;Lorg/apache/http/HttpResponse;)V

    .line 248
    throw v3

    .line 215
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v12       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mTransport:Lcom/miui/milk/transport/HttpTransport;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/NoteCloudController;->getSyncSaveUrl()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v12}, Lcom/miui/milk/transport/HttpTransport;->sendRequest(Ljava/lang/String;Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 216
    const-string v20, "NoteCloudController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Export Folder Counts : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/miui/milk/control/cloud/NoteCloudController;->checkResponseStatus(Lorg/apache/http/HttpResponse;)V

    .line 219
    if-eqz v14, :cond_e

    .line 220
    const-string v20, "M_WATERMARK"

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v19

    .line 221
    .local v19, waterMarkHeader:Lorg/apache/http/Header;
    const/16 v18, 0x0

    .line 222
    .local v18, waterMark:Ljava/lang/String;
    if-eqz v19, :cond_c

    .line 223
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v18

    .line 226
    :cond_c
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 227
    .local v4, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom([B)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v16

    .line 228
    .local v16, syncResp:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual/range {v16 .. v16}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getNote()Lcom/miui/milk/model/NoteProtos$Notes;

    move-result-object v13

    .line 229
    .local v13, respNotes:Lcom/miui/milk/model/NoteProtos$Notes;
    if-eqz v13, :cond_d

    .line 230
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v13, v1}, Lcom/miui/milk/control/cloud/NoteCloudController;->processAfterSave(Lcom/miui/milk/model/NoteProtos$Notes;Lcom/miui/milk/control/callback/AsyncTaskCallback;)V

    .line 233
    :cond_d
    if-eqz v18, :cond_e

    .line 234
    invoke-interface/range {p3 .. p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 235
    .local v15, sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v20, "watermark_note"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 236
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 237
    const-string v20, "NoteCloudController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "get waterMark : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v13           #respNotes:Lcom/miui/milk/model/NoteProtos$Notes;
    .end local v15           #sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    .end local v16           #syncResp:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v18           #waterMark:Ljava/lang/String;
    .end local v19           #waterMarkHeader:Lorg/apache/http/Header;
    :cond_e
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "0/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "0"

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "100"

    aput-object v22, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_1

    .line 242
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/NoteCloudController;->mCanceled:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1
.end method

.method private saveNotePerBatch(Lcom/miui/milk/control/callback/AsyncTaskCallback;IILandroid/content/SharedPreferences;II)V
    .locals 25
    .parameter "callback"
    .parameter "start"
    .parameter "totalCount"
    .parameter "sharedPref"
    .parameter "batchCount"
    .parameter "totalTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 255
    invoke-virtual/range {p0 .. p1}, Lcom/miui/milk/control/cloud/NoteCloudController;->tryPing(Lcom/miui/milk/control/callback/AsyncTaskCallback;)V

    .line 257
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$Notes;->newBuilder()Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    move-result-object v12

    .line 259
    .local v12, notes:Lcom/miui/milk/model/NoteProtos$Notes$Builder;
    const/4 v10, 0x0

    .line 264
    .local v10, noteCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/note/NoteTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v6, v0, :cond_2

    .line 265
    move/from16 v0, p2

    if-lt v6, v0, :cond_1

    move/from16 v0, p2

    add-int/lit16 v0, v0, 0xfa

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v6, v0, :cond_1

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/note/NoteTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 268
    .local v11, noteId:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    move-object/from16 v21, v0

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/miui/milk/source/note/NoteManager;->loadNoteEntity(J)Lcom/miui/milk/model/NoteProtos$NoteEntity;

    move-result-object v9

    .line 269
    .local v9, note:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    if-eqz v9, :cond_1

    .line 270
    invoke-virtual {v9}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->toBuilder()Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    move-result-object v8

    .line 271
    .local v8, nb:Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    sget-object v21, Lcom/miui/milk/model/CommonProtos$ActionType;->NEW:Lcom/miui/milk/model/CommonProtos$ActionType;

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->build()Lcom/miui/milk/model/NoteProtos$NoteEntity;

    move-result-object v9

    .line 272
    invoke-virtual {v12, v9}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->addNote(Lcom/miui/milk/model/NoteProtos$NoteEntity;)Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    .line 273
    add-int/lit8 v10, v10, 0x1

    .line 274
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    add-int v24, p2, v10

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/miui/milk/common/Constants;->PROMPT_READING:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    mul-int/lit8 v23, p5, 0xa

    add-int v23, v23, p2

    add-int v23, v23, v10

    mul-int/lit8 v23, v23, 0x64

    div-int v23, v23, p6

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, "100"

    aput-object v23, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_1

    .line 279
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/NoteCloudController;->mCanceled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    .end local v8           #nb:Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    .end local v9           #note:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    .end local v11           #noteId:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 283
    .restart local v11       #noteId:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 284
    .local v3, e:Ljava/lang/Exception;
    const-string v21, "NoteCloudController"

    const-string v22, "Cannot load note "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    .end local v3           #e:Ljava/lang/Exception;
    .end local v11           #noteId:Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 290
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/note/NoteTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 291
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/note/NoteTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/note/NoteTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int v21, v21, v22

    move/from16 v0, v21

    if-ge v6, v0, :cond_5

    .line 293
    move/from16 v0, p2

    if-lt v6, v0, :cond_4

    move/from16 v0, p2

    add-int/lit16 v0, v0, 0xfa

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v6, v0, :cond_4

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/note/NoteTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    sub-int v7, v6, v21

    .line 295
    .local v7, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/note/NoteTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 297
    .restart local v11       #noteId:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    move-object/from16 v21, v0

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/miui/milk/source/note/NoteManager;->loadNoteEntity(J)Lcom/miui/milk/model/NoteProtos$NoteEntity;

    move-result-object v9

    .line 298
    .restart local v9       #note:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    if-eqz v9, :cond_4

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object/from16 v21, v0

    invoke-virtual {v9}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getLuid()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/miui/milk/source/note/NoteTracker;->getGuidByLuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 300
    .local v5, guid:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->toBuilder()Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    move-result-object v8

    .line 301
    .restart local v8       #nb:Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    if-eqz v5, :cond_3

    .line 302
    invoke-virtual {v8, v5}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    .line 304
    :cond_3
    sget-object v21, Lcom/miui/milk/model/CommonProtos$ActionType;->UPDATE:Lcom/miui/milk/model/CommonProtos$ActionType;

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->build()Lcom/miui/milk/model/NoteProtos$NoteEntity;

    move-result-object v9

    .line 305
    invoke-virtual {v12, v9}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->addNote(Lcom/miui/milk/model/NoteProtos$NoteEntity;)Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    .line 306
    add-int/lit8 v10, v10, 0x1

    .line 307
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    add-int v24, p2, v10

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/miui/milk/common/Constants;->PROMPT_READING:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    mul-int/lit8 v23, p5, 0xa

    add-int v23, v23, p2

    add-int v23, v23, v10

    mul-int/lit8 v23, v23, 0x64

    div-int v23, v23, p6

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, "100"

    aput-object v23, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_4

    .line 312
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/NoteCloudController;->mCanceled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 316
    .end local v5           #guid:Ljava/lang/String;
    .end local v8           #nb:Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    .end local v9           #note:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    :catch_1
    move-exception v3

    .line 317
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v21, "NoteCloudController"

    const-string v22, "Cannot load note "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    .end local v3           #e:Ljava/lang/Exception;
    .end local v7           #index:I
    .end local v11           #noteId:Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 323
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/note/NoteTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/note/NoteTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int v6, v21, v22

    .line 324
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/note/NoteTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/note/NoteTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/note/NoteTracker;->getDeletedItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int v21, v21, v22

    move/from16 v0, v21

    if-ge v6, v0, :cond_9

    .line 327
    move/from16 v0, p2

    if-lt v6, v0, :cond_7

    move/from16 v0, p2

    add-int/lit16 v0, v0, 0xfa

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v6, v0, :cond_7

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/note/NoteTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    sub-int v21, v6, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/note/NoteTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    sub-int v7, v21, v22

    .line 329
    .restart local v7       #index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/note/NoteTracker;->getDeletedItemKeys()Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 331
    .restart local v11       #noteId:Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    move-object/from16 v21, v0

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/miui/milk/source/note/NoteManager;->loadNoteEntity(J)Lcom/miui/milk/model/NoteProtos$NoteEntity;

    move-result-object v9

    .line 332
    .restart local v9       #note:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->newBuilder()Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    move-result-object v8

    .line 333
    .restart local v8       #nb:Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    if-eqz v9, :cond_8

    .line 334
    invoke-virtual {v9}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->toBuilder()Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    move-result-object v8

    .line 338
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object/from16 v21, v0

    invoke-virtual {v8}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->getLuid()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/miui/milk/source/note/NoteTracker;->getGuidByLuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 339
    .restart local v5       #guid:Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 340
    invoke-virtual {v8, v5}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    .line 342
    :cond_6
    sget-object v21, Lcom/miui/milk/model/CommonProtos$ActionType;->DELETE:Lcom/miui/milk/model/CommonProtos$ActionType;

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->build()Lcom/miui/milk/model/NoteProtos$NoteEntity;

    move-result-object v9

    .line 343
    invoke-virtual {v12, v9}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->addNote(Lcom/miui/milk/model/NoteProtos$NoteEntity;)Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    .line 344
    add-int/lit8 v10, v10, 0x1

    .line 345
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    add-int v24, p2, v10

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/miui/milk/common/Constants;->PROMPT_READING:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    mul-int/lit8 v23, p5, 0xa

    add-int v23, v23, p2

    add-int v23, v23, v10

    mul-int/lit8 v23, v23, 0x64

    div-int v23, v23, p6

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, "100"

    aput-object v23, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_7

    .line 350
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/NoteCloudController;->mCanceled:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 353
    .end local v5           #guid:Ljava/lang/String;
    .end local v8           #nb:Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    .end local v9           #note:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    :catch_2
    move-exception v3

    .line 354
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v21, "NoteCloudController"

    const-string v22, "Cannot load note "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    .end local v3           #e:Ljava/lang/Exception;
    .end local v7           #index:I
    .end local v11           #noteId:Ljava/lang/String;
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 336
    .restart local v7       #index:I
    .restart local v8       #nb:Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    .restart local v9       #note:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    .restart local v11       #noteId:Ljava/lang/String;
    :cond_8
    :try_start_3
    invoke-virtual {v8, v11}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_4

    .line 359
    .end local v7           #index:I
    .end local v8           #nb:Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    .end local v9           #note:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    .end local v11           #noteId:Ljava/lang/String;
    :cond_9
    const-string v21, "NoteCloudController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "deviceId : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mDeviceId:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const-string v21, "NoteCloudController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "IMSI : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mIMSI:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {v12}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->getNoteList()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    if-nez v21, :cond_a

    .line 363
    const-string v21, "NoteCloudController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Export Note Counts : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 367
    :cond_a
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v18

    .line 368
    .local v18, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setNote(Lcom/miui/milk/model/NoteProtos$Notes$Builder;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/NoteCloudController;->getSyncVersion()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setVersion(Ljava/lang/String;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 371
    if-eqz v18, :cond_0

    .line 372
    const/4 v15, 0x0

    .line 374
    .local v15, response:Lorg/apache/http/HttpResponse;
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/NoteCloudController;->prepareTransportParams()Ljava/util/HashMap;

    move-result-object v13

    .line 376
    .local v13, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    add-int v24, p2, v10

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/miui/milk/common/Constants;->PROMPT_SENDING:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    mul-int/lit8 v23, p5, 0xa

    add-int v23, v23, p2

    add-int v23, v23, v10

    mul-int/lit8 v23, v23, 0x64

    div-int v23, v23, p6

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, "100"

    aput-object v23, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_b

    .line 380
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/NoteCloudController;->mCanceled:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 418
    .end local v13           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_3
    move-exception v3

    .line 419
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v21, "NoteCloudController"

    const-string v22, "Cannot send note "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/miui/milk/control/cloud/NoteCloudController;->makeExceptionCallback(Lcom/miui/milk/control/callback/AsyncTaskCallback;Lorg/apache/http/HttpResponse;)V

    .line 421
    throw v3

    .line 384
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v13       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mTransport:Lcom/miui/milk/transport/HttpTransport;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/NoteCloudController;->getSyncSaveUrl()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v13}, Lcom/miui/milk/transport/HttpTransport;->sendRequest(Ljava/lang/String;Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 385
    const-string v21, "NoteCloudController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Export Note Counts : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/miui/milk/control/cloud/NoteCloudController;->checkResponseStatus(Lorg/apache/http/HttpResponse;)V

    .line 388
    if-eqz v15, :cond_e

    .line 390
    const-string v21, "M_WATERMARK"

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v20

    .line 391
    .local v20, waterMarkHeader:Lorg/apache/http/Header;
    const/16 v19, 0x0

    .line 392
    .local v19, waterMark:Ljava/lang/String;
    if-eqz v20, :cond_c

    .line 393
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v19

    .line 395
    :cond_c
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 396
    .local v4, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom([B)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v17

    .line 398
    .local v17, syncResp:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual/range {v17 .. v17}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getNote()Lcom/miui/milk/model/NoteProtos$Notes;

    move-result-object v14

    .line 399
    .local v14, respNotes:Lcom/miui/milk/model/NoteProtos$Notes;
    if-eqz v14, :cond_d

    .line 400
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v14, v1}, Lcom/miui/milk/control/cloud/NoteCloudController;->processAfterSave(Lcom/miui/milk/model/NoteProtos$Notes;Lcom/miui/milk/control/callback/AsyncTaskCallback;)V

    .line 403
    :cond_d
    if-eqz v19, :cond_e

    .line 404
    invoke-interface/range {p4 .. p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    .line 405
    .local v16, sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v21, "watermark_note"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 406
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 407
    const-string v21, "NoteCloudController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "get waterMark : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v14           #respNotes:Lcom/miui/milk/model/NoteProtos$Notes;
    .end local v16           #sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    .end local v17           #syncResp:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v19           #waterMark:Ljava/lang/String;
    .end local v20           #waterMarkHeader:Lorg/apache/http/Header;
    :cond_e
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    add-int v24, p2, v10

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/miui/milk/common/Constants;->PROMPT_SENDING:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    mul-int/lit8 v23, p5, 0xa

    add-int v23, v23, p2

    add-int v23, v23, v10

    add-int/lit8 v23, v23, 0xa

    mul-int/lit8 v23, v23, 0x64

    div-int v23, v23, p6

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, "100"

    aput-object v23, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_0

    .line 415
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/NoteCloudController;->mCanceled:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1
.end method


# virtual methods
.method public calculateSyncSize()I
    .locals 2

    .prologue
    .line 46
    iget-object v1, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v1}, Lcom/miui/milk/source/note/NoteTracker;->prepareChangeItems()V

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, totalCount:I
    iget-object v1, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v1}, Lcom/miui/milk/source/note/NoteTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    iget-object v1, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v1}, Lcom/miui/milk/source/note/NoteTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    iget-object v1, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v1}, Lcom/miui/milk/source/note/NoteTracker;->getDeletedItemKeys()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 52
    return v0
.end method

.method public clearPrepared()V
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteFolderTracker:Lcom/miui/milk/source/note/NoteFolderTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/note/NoteFolderTracker;->clearPrepared()V

    .line 623
    iget-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/note/NoteTracker;->openStore()V

    .line 624
    return-void
.end method

.method public read(Lcom/miui/milk/control/callback/AsyncTaskCallback;Landroid/content/SharedPreferences;)V
    .locals 34
    .parameter "callback"
    .parameter "sharedPref"

    .prologue
    .line 479
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mCanceled:Z

    .line 481
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/miui/milk/control/cloud/NoteCloudController;->tryPing(Lcom/miui/milk/control/callback/AsyncTaskCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/NoteCloudController;->checkEmpty()V

    .line 488
    const-string v2, "NoteCloudController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "deviceId : "

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mDeviceId:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const-string v2, "NoteCloudController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "IMSI : "

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mIMSI:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/16 v22, 0x0

    .line 492
    .local v22, response:Lorg/apache/http/HttpResponse;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/NoteCloudController;->prepareTransportParams()Ljava/util/HashMap;

    move-result-object v21

    .line 494
    .local v21, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "restore_watermark_note"

    const-string v7, ""

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 495
    .local v29, waterMark:Ljava/lang/String;
    if-eqz v29, :cond_0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 496
    const-string v2, "M_WATERMARK_ORIGINAL"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    :cond_0
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v25

    .line 500
    .local v25, syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$Notes;->newBuilder()Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->build()Lcom/miui/milk/model/NoteProtos$Notes;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setNote(Lcom/miui/milk/model/NoteProtos$Notes;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mTransport:Lcom/miui/milk/transport/HttpTransport;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/NoteCloudController;->getSyncReadUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v25 .. v25}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v2, v7, v0, v1}, Lcom/miui/milk/transport/HttpTransport;->sendRequest(Ljava/lang/String;Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v22

    .line 503
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/cloud/NoteCloudController;->checkResponseStatus(Lorg/apache/http/HttpResponse;)V

    .line 504
    if-eqz v22, :cond_4

    .line 506
    const-string v2, "M_WATERMARK"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v30

    .line 507
    .local v30, waterMarkHeader:Lorg/apache/http/Header;
    const/16 v31, 0x0

    .line 508
    .local v31, waterMarkNew:Ljava/lang/String;
    if-eqz v30, :cond_1

    .line 509
    invoke-interface/range {v30 .. v30}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v31

    .line 512
    :cond_1
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    .line 513
    .local v10, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v10}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom([B)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v26

    .line 515
    .local v26, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual/range {v26 .. v26}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getNote()Lcom/miui/milk/model/NoteProtos$Notes;

    move-result-object v20

    .line 516
    .local v20, notes:Lcom/miui/milk/model/NoteProtos$Notes;
    if-eqz v20, :cond_b

    .line 517
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/NoteCloudController;->openStore()V

    .line 518
    const/4 v14, 0x0

    .line 519
    .local v14, folderCount:I
    const/16 v19, 0x0

    .line 520
    .local v19, noteCount:I
    invoke-virtual/range {v20 .. v20}, Lcom/miui/milk/model/NoteProtos$Notes;->getNoteCount()I

    move-result v28

    .line 521
    .local v28, totalCount:I
    invoke-virtual/range {v20 .. v20}, Lcom/miui/milk/model/NoteProtos$Notes;->getFolderList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/milk/model/NoteProtos$NoteFolder;

    .line 522
    .local v13, folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    invoke-virtual {v13}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getSnippet()Ljava/lang/String;

    move-result-object v27

    .line 523
    .local v27, title:Ljava/lang/String;
    if-eqz v27, :cond_3

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/miui/milk/source/note/NoteManager;->loadNoteFolderByTitle(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteFolder;

    move-result-object v11

    .line 525
    .local v11, existFolder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    if-nez v11, :cond_5

    .line 526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    invoke-virtual {v2, v13}, Lcom/miui/milk/source/note/NoteManager;->addNoteFolder(Lcom/miui/milk/model/NoteProtos$NoteFolder;)J

    move-result-wide v16

    .line 527
    .local v16, newLuid:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteFolderTracker:Lcom/miui/milk/source/note/NoteFolderTracker;

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const/16 v32, 0x1

    invoke-virtual {v13}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getGuid()Ljava/lang/String;

    move-result-object v33

    move/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v2, v7, v0, v1}, Lcom/miui/milk/source/note/NoteFolderTracker;->setTrackerStatus(Ljava/lang/String;ZLjava/lang/String;)V

    .line 532
    .end local v11           #existFolder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .end local v16           #newLuid:J
    :cond_3
    :goto_0
    add-int/lit8 v14, v14, 0x1

    .line 534
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/miui/milk/common/Constants;->PROMPT_WRITING:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v2, v7

    const/4 v7, 0x1

    const/16 v32, 0x0

    div-int v32, v32, v28

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v2, v7

    const/4 v7, 0x2

    const-string v32, "100"

    aput-object v32, v2, v7

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 538
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mCanceled:Z

    .line 594
    .end local v10           #entity:Lorg/apache/http/HttpEntity;
    .end local v13           #folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .end local v14           #folderCount:I
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v19           #noteCount:I
    .end local v20           #notes:Lcom/miui/milk/model/NoteProtos$Notes;
    .end local v21           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22           #response:Lorg/apache/http/HttpResponse;
    .end local v25           #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .end local v26           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v27           #title:Ljava/lang/String;
    .end local v28           #totalCount:I
    .end local v29           #waterMark:Ljava/lang/String;
    .end local v30           #waterMarkHeader:Lorg/apache/http/Header;
    .end local v31           #waterMarkNew:Ljava/lang/String;
    :cond_4
    :goto_1
    return-void

    .line 482
    :catch_0
    move-exception v9

    .line 483
    .local v9, e1:Ljava/lang/Exception;
    goto :goto_1

    .line 529
    .end local v9           #e1:Ljava/lang/Exception;
    .restart local v10       #entity:Lorg/apache/http/HttpEntity;
    .restart local v11       #existFolder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .restart local v13       #folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .restart local v14       #folderCount:I
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v19       #noteCount:I
    .restart local v20       #notes:Lcom/miui/milk/model/NoteProtos$Notes;
    .restart local v21       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22       #response:Lorg/apache/http/HttpResponse;
    .restart local v25       #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .restart local v26       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .restart local v27       #title:Ljava/lang/String;
    .restart local v28       #totalCount:I
    .restart local v29       #waterMark:Ljava/lang/String;
    .restart local v30       #waterMarkHeader:Lorg/apache/http/Header;
    .restart local v31       #waterMarkNew:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteFolderTracker:Lcom/miui/milk/source/note/NoteFolderTracker;

    invoke-virtual {v11}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getLuid()Ljava/lang/String;

    move-result-object v7

    const/16 v32, 0x1

    invoke-virtual {v13}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getGuid()Ljava/lang/String;

    move-result-object v33

    move/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v2, v7, v0, v1}, Lcom/miui/milk/source/note/NoteFolderTracker;->setTrackerStatus(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 585
    .end local v10           #entity:Lorg/apache/http/HttpEntity;
    .end local v11           #existFolder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .end local v13           #folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .end local v14           #folderCount:I
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v19           #noteCount:I
    .end local v20           #notes:Lcom/miui/milk/model/NoteProtos$Notes;
    .end local v21           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v25           #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .end local v26           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v27           #title:Ljava/lang/String;
    .end local v28           #totalCount:I
    .end local v29           #waterMark:Ljava/lang/String;
    .end local v30           #waterMarkHeader:Lorg/apache/http/Header;
    .end local v31           #waterMarkNew:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 586
    .local v8, e:Ljava/lang/Exception;
    const-string v2, "NoteCloudController"

    const-string v7, "Cannot read note "

    invoke-static {v2, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 587
    if-nez v22, :cond_c

    .line 588
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v32, "EXCEPTION"

    aput-object v32, v2, v7

    const/4 v7, 0x1

    const-string v32, "2101"

    aput-object v32, v2, v7

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    goto :goto_1

    .line 544
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v10       #entity:Lorg/apache/http/HttpEntity;
    .restart local v14       #folderCount:I
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v19       #noteCount:I
    .restart local v20       #notes:Lcom/miui/milk/model/NoteProtos$Notes;
    .restart local v21       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v25       #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .restart local v26       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .restart local v28       #totalCount:I
    .restart local v29       #waterMark:Ljava/lang/String;
    .restart local v30       #waterMarkHeader:Lorg/apache/http/Header;
    .restart local v31       #waterMarkNew:Ljava/lang/String;
    :cond_6
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Lcom/miui/milk/model/NoteProtos$Notes;->getNoteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/miui/milk/model/NoteProtos$NoteEntity;

    .line 545
    .local v18, note:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    invoke-virtual/range {v18 .. v18}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getCreatedDate()J

    move-result-wide v3

    .line 546
    .local v3, createDate:J
    invoke-virtual/range {v18 .. v18}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getModifiedDate()J

    move-result-wide v5

    .line 547
    .local v5, modifyDate:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/miui/milk/source/note/NoteManager;->exists(JJI)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/miui/milk/source/note/NoteManager;->loadNoteEntityByDate(JJ)Lcom/miui/milk/model/NoteProtos$NoteEntity;

    move-result-object v12

    .line 549
    .local v12, existNote:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v12}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getLuid()Ljava/lang/String;

    move-result-object v7

    const/16 v32, 0x1

    invoke-virtual/range {v18 .. v18}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getGuid()Ljava/lang/String;

    move-result-object v33

    move/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v2, v7, v0, v1}, Lcom/miui/milk/source/note/NoteTracker;->setTrackerStatus(Ljava/lang/String;ZLjava/lang/String;)V

    .line 554
    .end local v12           #existNote:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    :goto_2
    add-int/lit8 v19, v19, 0x1

    .line 555
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/miui/milk/common/Constants;->PROMPT_WRITING:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v2, v7

    const/4 v7, 0x1

    mul-int/lit8 v32, v19, 0x64

    div-int v32, v32, v28

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v2, v7

    const/4 v7, 0x2

    const-string v32, "100"

    aput-object v32, v2, v7

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    .line 559
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mCanceled:Z

    goto/16 :goto_1

    .line 551
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/miui/milk/source/note/NoteManager;->addNoteEntity(Lcom/miui/milk/model/NoteProtos$NoteEntity;)J

    move-result-wide v16

    .line 552
    .restart local v16       #newLuid:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const/16 v32, 0x1

    invoke-virtual/range {v18 .. v18}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getGuid()Ljava/lang/String;

    move-result-object v33

    move/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v2, v7, v0, v1}, Lcom/miui/milk/source/note/NoteTracker;->setTrackerStatus(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_2

    .line 564
    .end local v3           #createDate:J
    .end local v5           #modifyDate:J
    .end local v16           #newLuid:J
    .end local v18           #note:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/NoteCloudController;->closeStore()V

    .line 565
    const-string v2, "NoteCloudController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Import Folder Counts : "

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const-string v2, "NoteCloudController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Import Note Counts : "

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v32, ""

    aput-object v32, v2, v7

    const/4 v7, 0x1

    const/16 v32, 0x64

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v2, v7

    const/4 v7, 0x2

    const-string v32, "100"

    aput-object v32, v2, v7

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_a

    .line 568
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mCanceled:Z

    goto/16 :goto_1

    .line 571
    :cond_a
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v32, "SUCCESS"

    aput-object v32, v2, v7

    const/4 v7, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v2, v7

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_b

    .line 572
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mCanceled:Z

    goto/16 :goto_1

    .line 577
    .end local v14           #folderCount:I
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v19           #noteCount:I
    .end local v28           #totalCount:I
    :cond_b
    if-eqz v31, :cond_4

    .line 578
    invoke-interface/range {p2 .. p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    .line 579
    .local v23, sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "restore_watermark_note"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 580
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 581
    const-string v2, "NoteCloudController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "new waterMark : "

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 590
    .end local v10           #entity:Lorg/apache/http/HttpEntity;
    .end local v20           #notes:Lcom/miui/milk/model/NoteProtos$Notes;
    .end local v21           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23           #sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    .end local v25           #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .end local v26           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v29           #waterMark:Ljava/lang/String;
    .end local v30           #waterMarkHeader:Lorg/apache/http/Header;
    .end local v31           #waterMarkNew:Ljava/lang/String;
    .restart local v8       #e:Ljava/lang/Exception;
    :cond_c
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v24

    .line 591
    .local v24, statusCode:I
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v32, "EXCEPTION"

    aput-object v32, v2, v7

    const/4 v7, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v2, v7

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public saveInBatchMode(Lcom/miui/milk/control/callback/AsyncTaskCallback;Landroid/content/SharedPreferences;)V
    .locals 17
    .parameter "callback"
    .parameter "sharedPref"

    .prologue
    .line 57
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mCanceled:Z

    .line 59
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteFolderTracker:Lcom/miui/milk/source/note/NoteFolderTracker;

    invoke-virtual {v3}, Lcom/miui/milk/source/note/NoteFolderTracker;->isPrepared()Z

    move-result v3

    if-nez v3, :cond_0

    .line 60
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteFolderTracker:Lcom/miui/milk/source/note/NoteFolderTracker;

    invoke-virtual {v3}, Lcom/miui/milk/source/note/NoteFolderTracker;->prepareChangeItems()V

    .line 62
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v3}, Lcom/miui/milk/source/note/NoteTracker;->isPrepared()Z

    move-result v3

    if-nez v3, :cond_1

    .line 63
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v3}, Lcom/miui/milk/source/note/NoteTracker;->prepareChangeItems()V

    .line 66
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v3}, Lcom/miui/milk/source/note/NoteTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 67
    .local v14, n_new:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v3}, Lcom/miui/milk/source/note/NoteTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 68
    .local v15, n_update:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v3}, Lcom/miui/milk/source/note/NoteTracker;->getDeletedItemKeys()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 70
    .local v13, n_delete:Ljava/lang/String;
    const/4 v6, 0x0

    .line 71
    .local v6, totalCount:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v3}, Lcom/miui/milk/source/note/NoteTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v6, v3

    .line 72
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v3}, Lcom/miui/milk/source/note/NoteTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v6, v3

    .line 73
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v3}, Lcom/miui/milk/source/note/NoteTracker;->getDeletedItemKeys()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v6, v3

    .line 75
    div-int/lit16 v10, v6, 0xfa

    .line 76
    .local v10, batches:I
    mul-int/lit16 v3, v10, 0xfa

    if-le v6, v3, :cond_2

    .line 77
    add-int/lit8 v10, v10, 0x1

    .line 80
    :cond_2
    mul-int/lit8 v3, v10, 0xa

    add-int v9, v6, v3

    .line 81
    .local v9, totalTime:I
    const/4 v8, 0x0

    .line 84
    .local v8, batchCount:I
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mCanceled:Z

    if-eqz v3, :cond_4

    .line 117
    :cond_3
    :goto_0
    return-void

    .line 85
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v6, v2}, Lcom/miui/milk/control/cloud/NoteCloudController;->saveFolderBatch(Lcom/miui/milk/control/callback/AsyncTaskCallback;ILandroid/content/SharedPreferences;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v6, :cond_5

    .line 93
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mCanceled:Z

    if-nez v3, :cond_3

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    .line 94
    invoke-direct/range {v3 .. v9}, Lcom/miui/milk/control/cloud/NoteCloudController;->saveNotePerBatch(Lcom/miui/milk/control/callback/AsyncTaskCallback;IILandroid/content/SharedPreferences;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    add-int/lit16 v5, v5, 0xfa

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 86
    .end local v5           #i:I
    :catch_0
    move-exception v12

    .line 87
    .local v12, e1:Ljava/lang/Exception;
    const-string v3, "NoteCloudController"

    const-string v4, "Cannot save note folder "

    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 95
    .end local v12           #e1:Ljava/lang/Exception;
    .restart local v5       #i:I
    :catch_1
    move-exception v11

    .line 96
    .local v11, e:Ljava/lang/Exception;
    const-string v3, "NoteCloudController"

    const-string v4, "Cannot save note batch "

    invoke-static {v3, v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 101
    .end local v11           #e:Ljava/lang/Exception;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mCanceled:Z

    if-nez v3, :cond_3

    .line 103
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    const/4 v4, 0x1

    const/16 v7, 0x64

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    const/4 v4, 0x2

    const-string v7, "100"

    aput-object v7, v3, v4

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    .line 104
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mCanceled:Z

    goto :goto_0

    .line 108
    :cond_6
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "SUCCESS"

    aput-object v7, v3, v4

    const/4 v4, 0x1

    aput-object v14, v3, v4

    const/4 v4, 0x2

    aput-object v15, v3, v4

    const/4 v4, 0x3

    aput-object v13, v3, v4

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7

    .line 109
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mCanceled:Z

    goto/16 :goto_0

    .line 114
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteFolderTracker:Lcom/miui/milk/source/note/NoteFolderTracker;

    invoke-virtual {v3}, Lcom/miui/milk/source/note/NoteFolderTracker;->removeDeletedItemKeys()V

    .line 115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v3}, Lcom/miui/milk/source/note/NoteTracker;->removeDeletedItemKeys()V

    goto/16 :goto_0
.end method
