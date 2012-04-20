.class public Lcom/miui/milk/control/local/AntiSpamController;
.super Lcom/miui/milk/control/local/BaseController;
.source "AntiSpamController.java"


# instance fields
.field private mManager:Lcom/miui/milk/source/antispam/AntiSpamManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/miui/milk/control/local/BaseController;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Lcom/miui/milk/source/antispam/AntiSpamManager;

    invoke-direct {v0, p1}, Lcom/miui/milk/source/antispam/AntiSpamManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/milk/control/local/AntiSpamController;->mManager:Lcom/miui/milk/source/antispam/AntiSpamManager;

    .line 29
    return-void
.end method


# virtual methods
.method public export(Ljava/io/File;)V
    .locals 17
    .parameter "exportFile"

    .prologue
    .line 33
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 34
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 37
    :cond_0
    invoke-static {}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->newBuilder()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;

    move-result-object v1

    .line 38
    .local v1, antiSpam:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/milk/control/local/AntiSpamController;->mManager:Lcom/miui/milk/source/antispam/AntiSpamManager;

    invoke-virtual {v13}, Lcom/miui/milk/source/antispam/AntiSpamManager;->getAllBlacklist()Ljava/util/Vector;

    move-result-object v2

    .line 39
    .local v2, blacklist:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/milk/control/local/AntiSpamController;->mManager:Lcom/miui/milk/source/antispam/AntiSpamManager;

    invoke-virtual {v13}, Lcom/miui/milk/source/antispam/AntiSpamManager;->getAllWhitelist()Ljava/util/Vector;

    move-result-object v11

    .line 40
    .local v11, whitelist:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/milk/control/local/AntiSpamController;->mManager:Lcom/miui/milk/source/antispam/AntiSpamManager;

    invoke-virtual {v13}, Lcom/miui/milk/source/antispam/AntiSpamManager;->getAllKeywords()Ljava/util/Vector;

    move-result-object v8

    .line 42
    .local v8, keywords:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;>;"
    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/miui/milk/control/local/AntiSpamController;->mTotalExportSize:J

    .line 43
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/miui/milk/control/local/AntiSpamController;->mTotalExportSize:J

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v15

    int-to-long v15, v15

    add-long/2addr v13, v15

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/miui/milk/control/local/AntiSpamController;->mTotalExportSize:J

    .line 44
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/miui/milk/control/local/AntiSpamController;->mTotalExportSize:J

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v15

    int-to-long v15, v15

    add-long/2addr v13, v15

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/miui/milk/control/local/AntiSpamController;->mTotalExportSize:J

    .line 45
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/miui/milk/control/local/AntiSpamController;->mTotalExportSize:J

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v15

    int-to-long v15, v15

    add-long/2addr v13, v15

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/miui/milk/control/local/AntiSpamController;->mTotalExportSize:J

    .line 47
    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/miui/milk/control/local/AntiSpamController;->mCurrExportIndex:J

    .line 49
    const/4 v3, 0x0

    .line 50
    .local v3, blacklistCount:I
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry;

    .line 51
    .local v5, entry:Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/miui/milk/control/local/AntiSpamController;->mCanceled:Z

    if-eqz v13, :cond_2

    .line 109
    .end local v5           #entry:Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry;
    :cond_1
    :goto_1
    return-void

    .line 54
    .restart local v5       #entry:Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry;
    :cond_2
    :try_start_0
    invoke-virtual {v1, v5}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->addBlacklist(Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry;)Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;

    .line 55
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/miui/milk/control/local/AntiSpamController;->mCurrExportIndex:J

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/miui/milk/control/local/AntiSpamController;->mCurrExportIndex:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57
    :catch_0
    move-exception v4

    .line 58
    .local v4, e:Ljava/lang/Exception;
    const-string v13, "AntiSpamController"

    const-string v14, "Cannot export blacklist "

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 62
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #entry:Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry;
    :cond_3
    const/4 v12, 0x0

    .line 63
    .local v12, whitelistCount:I
    invoke-virtual {v11}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;

    .line 64
    .local v5, entry:Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/miui/milk/control/local/AntiSpamController;->mCanceled:Z

    if-nez v13, :cond_1

    .line 67
    :try_start_1
    invoke-virtual {v1, v5}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->addWhitelist(Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;)Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;

    .line 68
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/miui/milk/control/local/AntiSpamController;->mCurrExportIndex:J

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/miui/milk/control/local/AntiSpamController;->mCurrExportIndex:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 70
    :catch_1
    move-exception v4

    .line 71
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v13, "AntiSpamController"

    const-string v14, "Cannot export whitelist "

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 75
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #entry:Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;
    :cond_4
    const/4 v7, 0x0

    .line 76
    .local v7, keywordCount:I
    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;

    .line 77
    .local v5, entry:Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/miui/milk/control/local/AntiSpamController;->mCanceled:Z

    if-nez v13, :cond_1

    .line 80
    :try_start_2
    invoke-virtual {v1, v5}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->addKeyword(Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;)Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;

    .line 81
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/miui/milk/control/local/AntiSpamController;->mCurrExportIndex:J

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/miui/milk/control/local/AntiSpamController;->mCurrExportIndex:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 82
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 83
    :catch_2
    move-exception v4

    .line 84
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v13, "AntiSpamController"

    const-string v14, "Cannot export keyword "

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 88
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #entry:Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;
    :cond_5
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v10

    .line 89
    .local v10, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    invoke-virtual {v1}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->build()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setAntispam(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 90
    const-string v13, "1"

    invoke-virtual {v10, v13}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setVersion(Ljava/lang/String;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 92
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/miui/milk/control/local/AntiSpamController;->mCanceled:Z

    if-nez v13, :cond_1

    .line 96
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->createNewFile()Z

    .line 97
    new-instance v9, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 98
    .local v9, output:Ljava/io/FileOutputStream;
    invoke-virtual {v10}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->writeTo(Ljava/io/OutputStream;)V

    .line 99
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 100
    const-string v13, "AntiSpamController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Export blacklist Counts : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v13, "AntiSpamController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Export whitelist Counts : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v13, "AntiSpamController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Export keyword Counts : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_1

    .line 103
    .end local v9           #output:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    .line 104
    .local v4, e:Ljava/io/FileNotFoundException;
    const-string v13, "AntiSpamController"

    const-string v14, "Cannot export blacklist and whitelist "

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 105
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v4

    .line 106
    .local v4, e:Ljava/io/IOException;
    const-string v13, "AntiSpamController"

    const-string v14, "Cannot export blacklist and whitelist "

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public importData(Ljava/io/File;)V
    .locals 16
    .parameter "importFile"

    .prologue
    .line 113
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 114
    .local v6, input:Ljava/io/FileInputStream;
    invoke-static {v6}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom(Ljava/io/InputStream;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v9

    .line 115
    .local v9, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 116
    const/4 v1, 0x0

    .line 117
    .local v1, antiSpam:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;
    if-eqz v9, :cond_0

    .line 118
    invoke-virtual {v9}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getAntispam()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

    move-result-object v1

    .line 121
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/miui/milk/control/local/AntiSpamController;->mCanceled:Z

    if-eqz v12, :cond_2

    .line 182
    .end local v1           #antiSpam:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;
    .end local v6           #input:Ljava/io/FileInputStream;
    .end local v9           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_1
    :goto_0
    return-void

    .line 123
    .restart local v1       #antiSpam:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;
    .restart local v6       #input:Ljava/io/FileInputStream;
    .restart local v9       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_2
    if-eqz v1, :cond_1

    .line 124
    invoke-virtual {v1}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->getBlacklistCount()I

    move-result v12

    invoke-virtual {v1}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->getWhitelistCount()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v1}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->getKeywordCount()I

    move-result v13

    add-int/2addr v12, v13

    int-to-long v12, v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/miui/milk/control/local/AntiSpamController;->mTotalImportSize:J

    .line 128
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/miui/milk/control/local/AntiSpamController;->mCurrImportIndex:J

    .line 129
    const/4 v2, 0x0

    .line 130
    .local v2, blacklistCount:I
    const/4 v10, 0x0

    .line 131
    .local v10, whitelistCount:I
    const/4 v7, 0x0

    .line 133
    .local v7, keywordCount:I
    invoke-virtual {v1}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->getBlacklistList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry;

    .line 134
    .local v3, blacklistEntry:Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/miui/milk/control/local/AntiSpamController;->mCanceled:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v12, :cond_1

    .line 137
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/milk/control/local/AntiSpamController;->mManager:Lcom/miui/milk/source/antispam/AntiSpamManager;

    invoke-virtual {v12, v3}, Lcom/miui/milk/source/antispam/AntiSpamManager;->AddBlacklist(Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 138
    add-int/lit8 v2, v2, 0x1

    .line 139
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/milk/control/local/AntiSpamController;->mCurrImportIndex:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/miui/milk/control/local/AntiSpamController;->mCurrImportIndex:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 141
    :catch_0
    move-exception v4

    .line 142
    .local v4, e:Ljava/lang/Exception;
    :try_start_2
    const-string v12, "AntiSpamController"

    const-string v13, "Cannot add blacklist "

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 177
    .end local v1           #antiSpam:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;
    .end local v2           #blacklistCount:I
    .end local v3           #blacklistEntry:Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry;
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #input:Ljava/io/FileInputStream;
    .end local v7           #keywordCount:I
    .end local v9           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v10           #whitelistCount:I
    :catch_1
    move-exception v4

    .line 178
    .local v4, e:Ljava/io/FileNotFoundException;
    const-string v12, "AntiSpamController"

    const-string v13, "Cannot import blacklist and whitelist "

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 146
    .end local v4           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #antiSpam:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;
    .restart local v2       #blacklistCount:I
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #input:Ljava/io/FileInputStream;
    .restart local v7       #keywordCount:I
    .restart local v9       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .restart local v10       #whitelistCount:I
    :cond_4
    :try_start_3
    invoke-virtual {v1}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->getWhitelistList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;

    .line 147
    .local v11, whitelistEntry:Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/miui/milk/control/local/AntiSpamController;->mCanceled:Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    if-nez v12, :cond_1

    .line 150
    :try_start_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/milk/control/local/AntiSpamController;->mManager:Lcom/miui/milk/source/antispam/AntiSpamManager;

    invoke-virtual {v12, v11}, Lcom/miui/milk/source/antispam/AntiSpamManager;->AddWhitelist(Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 151
    add-int/lit8 v10, v10, 0x1

    .line 152
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/milk/control/local/AntiSpamController;->mCurrImportIndex:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/miui/milk/control/local/AntiSpamController;->mCurrImportIndex:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 154
    :catch_2
    move-exception v4

    .line 155
    .local v4, e:Ljava/lang/Exception;
    :try_start_5
    const-string v12, "AntiSpamController"

    const-string v13, "Cannot add whitelist "

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 179
    .end local v1           #antiSpam:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;
    .end local v2           #blacklistCount:I
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #input:Ljava/io/FileInputStream;
    .end local v7           #keywordCount:I
    .end local v9           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v10           #whitelistCount:I
    .end local v11           #whitelistEntry:Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;
    :catch_3
    move-exception v4

    .line 180
    .local v4, e:Ljava/io/IOException;
    const-string v12, "AntiSpamController"

    const-string v13, "Cannot import blacklist and whitelist "

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 159
    .end local v4           #e:Ljava/io/IOException;
    .restart local v1       #antiSpam:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;
    .restart local v2       #blacklistCount:I
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #input:Ljava/io/FileInputStream;
    .restart local v7       #keywordCount:I
    .restart local v9       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .restart local v10       #whitelistCount:I
    :cond_6
    :try_start_6
    invoke-virtual {v1}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->getKeywordList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;

    .line 160
    .local v8, keywordEntry:Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/miui/milk/control/local/AntiSpamController;->mCanceled:Z
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    if-nez v12, :cond_1

    .line 163
    :try_start_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/milk/control/local/AntiSpamController;->mManager:Lcom/miui/milk/source/antispam/AntiSpamManager;

    invoke-virtual {v12, v8}, Lcom/miui/milk/source/antispam/AntiSpamManager;->AddKeyword(Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 164
    add-int/lit8 v7, v7, 0x1

    .line 165
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/milk/control/local/AntiSpamController;->mCurrImportIndex:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/miui/milk/control/local/AntiSpamController;->mCurrImportIndex:J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    .line 167
    :catch_4
    move-exception v4

    .line 168
    .local v4, e:Ljava/lang/Exception;
    :try_start_8
    const-string v12, "AntiSpamController"

    const-string v13, "Cannot add keyword "

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 172
    .end local v4           #e:Ljava/lang/Exception;
    .end local v8           #keywordEntry:Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;
    :cond_8
    const-string v12, "AntiSpamController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Import blacklist Counts : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v12, "AntiSpamController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Import whitelist Counts : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v12, "AntiSpamController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Import keyword Counts : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0
.end method
