.class public Lcom/miui/milk/control/local/NoteController;
.super Lcom/miui/milk/control/local/BaseController;
.source "NoteController.java"


# instance fields
.field private mNoteManager:Lcom/miui/milk/source/note/NoteManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/miui/milk/control/local/BaseController;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Lcom/miui/milk/source/note/NoteManager;

    invoke-direct {v0, p1}, Lcom/miui/milk/source/note/NoteManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/milk/control/local/NoteController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    .line 28
    return-void
.end method


# virtual methods
.method public export(Ljava/io/File;)V
    .locals 17
    .parameter "exportFile"

    .prologue
    .line 32
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 33
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 36
    :cond_0
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$Notes;->newBuilder()Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    move-result-object v10

    .line 37
    .local v10, notes:Lcom/miui/milk/model/NoteProtos$Notes$Builder;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/milk/control/local/NoteController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/miui/milk/source/note/NoteManager;->prepareIdsByType(I)Ljava/util/Vector;

    move-result-object v5

    .line 38
    .local v5, folderIds:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/milk/control/local/NoteController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/miui/milk/source/note/NoteManager;->prepareIdsByType(I)Ljava/util/Vector;

    move-result-object v9

    .line 40
    .local v9, noteIds:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 41
    .local v3, folderCount:I
    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 42
    .local v4, folderId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/miui/milk/control/local/NoteController;->mCanceled:Z

    if-eqz v13, :cond_3

    .line 88
    .end local v4           #folderId:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 44
    .restart local v4       #folderId:Ljava/lang/String;
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/milk/control/local/NoteController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/miui/milk/source/note/NoteManager;->loadNoteFolder(J)Lcom/miui/milk/model/NoteProtos$NoteFolder;

    move-result-object v2

    .line 45
    .local v2, folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    if-eqz v2, :cond_1

    .line 46
    invoke-virtual {v10, v2}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->addFolder(Lcom/miui/milk/model/NoteProtos$NoteFolder;)Lcom/miui/milk/model/NoteProtos$Notes$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 49
    .end local v2           #folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    :catch_0
    move-exception v1

    .line 50
    .local v1, e:Ljava/lang/Exception;
    const-string v13, "NoteController"

    const-string v14, "Cannot load note folder "

    invoke-static {v13, v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 54
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #folderId:Ljava/lang/String;
    :cond_4
    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/miui/milk/control/local/NoteController;->mCurrExportIndex:J

    .line 55
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v13

    int-to-long v13, v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/miui/milk/control/local/NoteController;->mTotalExportSize:J

    .line 56
    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 57
    .local v8, noteId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/miui/milk/control/local/NoteController;->mCanceled:Z

    if-nez v13, :cond_2

    .line 59
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/milk/control/local/NoteController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/miui/milk/source/note/NoteManager;->loadNoteEntity(J)Lcom/miui/milk/model/NoteProtos$NoteEntity;

    move-result-object v7

    .line 60
    .local v7, note:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    if-eqz v7, :cond_5

    .line 61
    invoke-virtual {v10, v7}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->addNote(Lcom/miui/milk/model/NoteProtos$NoteEntity;)Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    .line 62
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/miui/milk/control/local/NoteController;->mCurrExportIndex:J

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/miui/milk/control/local/NoteController;->mCurrExportIndex:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 64
    .end local v7           #note:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    :catch_1
    move-exception v1

    .line 65
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v13, "NoteController"

    const-string v14, "Cannot load note entity "

    invoke-static {v13, v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 69
    .end local v1           #e:Ljava/lang/Exception;
    .end local v8           #noteId:Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v12

    .line 70
    .local v12, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    invoke-virtual {v10}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->build()Lcom/miui/milk/model/NoteProtos$Notes;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setNote(Lcom/miui/milk/model/NoteProtos$Notes;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 71
    const-string v13, "1"

    invoke-virtual {v12, v13}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setVersion(Ljava/lang/String;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 73
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/miui/milk/control/local/NoteController;->mCanceled:Z

    if-nez v13, :cond_2

    .line 77
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->createNewFile()Z

    .line 78
    new-instance v11, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 79
    .local v11, output:Ljava/io/FileOutputStream;
    invoke-virtual {v12}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v13

    invoke-virtual {v13, v11}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->writeTo(Ljava/io/OutputStream;)V

    .line 80
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 81
    const-string v13, "NoteController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Export Folder Counts : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v13, "NoteController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Export Note Counts : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/miui/milk/control/local/NoteController;->mCurrExportIndex:J

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_1

    .line 83
    .end local v11           #output:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    .line 84
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v13, "NoteController"

    const-string v14, "Cannot export note "

    invoke-static {v13, v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 85
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v1

    .line 86
    .local v1, e:Ljava/io/IOException;
    const-string v13, "NoteController"

    const-string v14, "Cannot export note "

    invoke-static {v13, v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public importData(Ljava/io/File;)V
    .locals 14
    .parameter "importFile"

    .prologue
    .line 93
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 94
    .local v5, input:Ljava/io/FileInputStream;
    invoke-static {v5}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom(Ljava/io/InputStream;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v8

    .line 95
    .local v8, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 96
    const/4 v7, 0x0

    .line 97
    .local v7, notes:Lcom/miui/milk/model/NoteProtos$Notes;
    if-eqz v8, :cond_0

    .line 98
    invoke-virtual {v8}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getNote()Lcom/miui/milk/model/NoteProtos$Notes;

    move-result-object v7

    .line 101
    :cond_0
    iget-boolean v10, p0, Lcom/miui/milk/control/local/NoteController;->mCanceled:Z

    if-nez v10, :cond_1

    if-nez v7, :cond_2

    .line 146
    .end local v5           #input:Ljava/io/FileInputStream;
    .end local v7           #notes:Lcom/miui/milk/model/NoteProtos$Notes;
    .end local v8           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_1
    :goto_0
    return-void

    .line 104
    .restart local v5       #input:Ljava/io/FileInputStream;
    .restart local v7       #notes:Lcom/miui/milk/model/NoteProtos$Notes;
    .restart local v8       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_2
    invoke-virtual {v7}, Lcom/miui/milk/model/NoteProtos$Notes;->getNoteList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    int-to-long v10, v10

    iput-wide v10, p0, Lcom/miui/milk/control/local/NoteController;->mTotalImportSize:J

    .line 105
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/miui/milk/control/local/NoteController;->mCurrImportIndex:J

    .line 106
    const/4 v3, 0x0

    .line 108
    .local v3, folderCount:I
    invoke-virtual {v7}, Lcom/miui/milk/model/NoteProtos$Notes;->getFolderList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/milk/model/NoteProtos$NoteFolder;

    .line 109
    .local v2, folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    iget-boolean v10, p0, Lcom/miui/milk/control/local/NoteController;->mCanceled:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v10, :cond_1

    .line 112
    :try_start_1
    invoke-virtual {v2}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getSnippet()Ljava/lang/String;

    move-result-object v9

    .line 113
    .local v9, title:Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 114
    iget-object v10, p0, Lcom/miui/milk/control/local/NoteController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    invoke-virtual {v10, v9}, Lcom/miui/milk/source/note/NoteManager;->loadNoteFolderByTitle(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteFolder;

    move-result-object v1

    .line 116
    .local v1, existFolder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    if-nez v1, :cond_3

    .line 117
    iget-object v10, p0, Lcom/miui/milk/control/local/NoteController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    invoke-virtual {v10, v2}, Lcom/miui/milk/source/note/NoteManager;->addNoteFolder(Lcom/miui/milk/model/NoteProtos$NoteFolder;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 118
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 121
    .end local v1           #existFolder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .end local v9           #title:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v10, "NoteController"

    const-string v11, "Cannot add note folder "

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 141
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .end local v3           #folderCount:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #input:Ljava/io/FileInputStream;
    .end local v7           #notes:Lcom/miui/milk/model/NoteProtos$Notes;
    .end local v8           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :catch_1
    move-exception v0

    .line 142
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v10, "NoteController"

    const-string v11, "Cannot import notes "

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 126
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v3       #folderCount:I
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #input:Ljava/io/FileInputStream;
    .restart local v7       #notes:Lcom/miui/milk/model/NoteProtos$Notes;
    .restart local v8       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_4
    :try_start_3
    invoke-virtual {v7}, Lcom/miui/milk/model/NoteProtos$Notes;->getNoteList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/milk/model/NoteProtos$NoteEntity;

    .line 127
    .local v6, note:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    iget-boolean v10, p0, Lcom/miui/milk/control/local/NoteController;->mCanceled:Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    if-nez v10, :cond_1

    .line 130
    :try_start_4
    iget-object v10, p0, Lcom/miui/milk/control/local/NoteController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    invoke-virtual {v10, v6}, Lcom/miui/milk/source/note/NoteManager;->shouldRestore(Lcom/miui/milk/model/NoteProtos$NoteEntity;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 131
    iget-object v10, p0, Lcom/miui/milk/control/local/NoteController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    invoke-virtual {v10, v6}, Lcom/miui/milk/source/note/NoteManager;->addNoteEntity(Lcom/miui/milk/model/NoteProtos$NoteEntity;)J

    .line 132
    iget-wide v10, p0, Lcom/miui/milk/control/local/NoteController;->mCurrImportIndex:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/miui/milk/control/local/NoteController;->mCurrImportIndex:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 134
    :catch_2
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/Exception;
    :try_start_5
    const-string v10, "NoteController"

    const-string v11, "Cannot add note entity "

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 143
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #folderCount:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #input:Ljava/io/FileInputStream;
    .end local v6           #note:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    .end local v7           #notes:Lcom/miui/milk/model/NoteProtos$Notes;
    .end local v8           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :catch_3
    move-exception v0

    .line 144
    .local v0, e:Ljava/io/IOException;
    const-string v10, "NoteController"

    const-string v11, "Cannot import notes "

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 139
    .end local v0           #e:Ljava/io/IOException;
    .restart local v3       #folderCount:I
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #input:Ljava/io/FileInputStream;
    .restart local v7       #notes:Lcom/miui/milk/model/NoteProtos$Notes;
    .restart local v8       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_6
    :try_start_6
    const-string v10, "NoteController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Import Folder Counts : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v10, "NoteController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Import Note Counts : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p0, Lcom/miui/milk/control/local/NoteController;->mCurrImportIndex:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0
.end method
