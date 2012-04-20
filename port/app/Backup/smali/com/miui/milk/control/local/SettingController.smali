.class public Lcom/miui/milk/control/local/SettingController;
.super Lcom/miui/milk/control/local/BaseController;
.source "SettingController.java"


# instance fields
.field private mSettingManager:Lcom/miui/milk/source/setting/SettingManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/miui/milk/control/local/BaseController;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Lcom/miui/milk/source/setting/SettingManager;

    invoke-direct {v0, p1}, Lcom/miui/milk/source/setting/SettingManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/milk/control/local/SettingController;->mSettingManager:Lcom/miui/milk/source/setting/SettingManager;

    .line 27
    return-void
.end method


# virtual methods
.method public export(Ljava/io/File;)V
    .locals 16
    .parameter "exportFile"

    .prologue
    .line 31
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 32
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 35
    :cond_0
    invoke-static {}, Lcom/miui/milk/model/SettingProtos$Settings;->newBuilder()Lcom/miui/milk/model/SettingProtos$Settings$Builder;

    move-result-object v8

    .line 36
    .local v8, settings:Lcom/miui/milk/model/SettingProtos$Settings$Builder;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/milk/control/local/SettingController;->mSettingManager:Lcom/miui/milk/source/setting/SettingManager;

    invoke-virtual {v12}, Lcom/miui/milk/source/setting/SettingManager;->prepareSystemSettingIds()Ljava/util/Vector;

    move-result-object v11

    .line 37
    .local v11, systemSettingIds:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/milk/control/local/SettingController;->mSettingManager:Lcom/miui/milk/source/setting/SettingManager;

    invoke-virtual {v12}, Lcom/miui/milk/source/setting/SettingManager;->prepareSecureSettingIds()Ljava/util/Vector;

    move-result-object v6

    .line 38
    .local v6, secureSettingIds:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/miui/milk/control/local/SettingController;->mTotalExportSize:J

    .line 39
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/milk/control/local/SettingController;->mTotalExportSize:J

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/miui/milk/control/local/SettingController;->mTotalExportSize:J

    .line 40
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/milk/control/local/SettingController;->mTotalExportSize:J

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/miui/milk/control/local/SettingController;->mTotalExportSize:J

    .line 41
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/miui/milk/control/local/SettingController;->mCurrExportIndex:J

    .line 43
    const/4 v10, 0x0

    .line 44
    .local v10, systemCount:I
    invoke-virtual {v11}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 45
    .local v3, id:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/miui/milk/control/local/SettingController;->mCanceled:Z

    if-eqz v12, :cond_3

    .line 92
    .end local v3           #id:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 47
    .restart local v3       #id:Ljava/lang/String;
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/milk/control/local/SettingController;->mSettingManager:Lcom/miui/milk/source/setting/SettingManager;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/miui/milk/source/setting/SettingManager;->loadSystemSetting(J)Lcom/miui/milk/model/SettingProtos$SystemSetting;

    move-result-object v7

    .line 48
    .local v7, setting:Lcom/miui/milk/model/SettingProtos$SystemSetting;
    if-eqz v7, :cond_1

    .line 49
    invoke-virtual {v8, v7}, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->addSystem(Lcom/miui/milk/model/SettingProtos$SystemSetting;)Lcom/miui/milk/model/SettingProtos$Settings$Builder;

    .line 50
    add-int/lit8 v10, v10, 0x1

    .line 51
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/milk/control/local/SettingController;->mCurrExportIndex:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/miui/milk/control/local/SettingController;->mCurrExportIndex:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    .end local v7           #setting:Lcom/miui/milk/model/SettingProtos$SystemSetting;
    :catch_0
    move-exception v1

    .line 54
    .local v1, e:Ljava/lang/Exception;
    const-string v12, "SettingController"

    const-string v13, "Cannot load system setting "

    invoke-static {v12, v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 58
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #id:Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    .line 59
    .local v5, secureCount:I
    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 60
    .restart local v3       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/miui/milk/control/local/SettingController;->mCanceled:Z

    if-nez v12, :cond_2

    .line 62
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/milk/control/local/SettingController;->mSettingManager:Lcom/miui/milk/source/setting/SettingManager;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/miui/milk/source/setting/SettingManager;->loadSecureSetting(J)Lcom/miui/milk/model/SettingProtos$SecureSetting;

    move-result-object v7

    .line 63
    .local v7, setting:Lcom/miui/milk/model/SettingProtos$SecureSetting;
    if-eqz v7, :cond_5

    .line 64
    invoke-virtual {v8, v7}, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->addSecure(Lcom/miui/milk/model/SettingProtos$SecureSetting;)Lcom/miui/milk/model/SettingProtos$Settings$Builder;

    .line 65
    add-int/lit8 v5, v5, 0x1

    .line 66
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/milk/control/local/SettingController;->mCurrExportIndex:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/miui/milk/control/local/SettingController;->mCurrExportIndex:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 68
    .end local v7           #setting:Lcom/miui/milk/model/SettingProtos$SecureSetting;
    :catch_1
    move-exception v1

    .line 69
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v12, "SettingController"

    const-string v13, "Cannot load secure setting "

    invoke-static {v12, v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 73
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #id:Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v9

    .line 74
    .local v9, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    invoke-virtual {v8}, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->build()Lcom/miui/milk/model/SettingProtos$Settings;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setSetting(Lcom/miui/milk/model/SettingProtos$Settings;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 75
    const-string v12, "1"

    invoke-virtual {v9, v12}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setVersion(Ljava/lang/String;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 77
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/miui/milk/control/local/SettingController;->mCanceled:Z

    if-nez v12, :cond_2

    .line 81
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->createNewFile()Z

    .line 82
    new-instance v4, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 83
    .local v4, output:Ljava/io/FileOutputStream;
    invoke-virtual {v9}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->writeTo(Ljava/io/OutputStream;)V

    .line 84
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 85
    const-string v12, "SettingController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Export System Setting Counts : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v12, "SettingController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Export Secure Setting Counts : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_1

    .line 87
    .end local v4           #output:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    .line 88
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v12, "SettingController"

    const-string v13, "Cannot export settings "

    invoke-static {v12, v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 89
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v1

    .line 90
    .local v1, e:Ljava/io/IOException;
    const-string v12, "SettingController"

    const-string v13, "Cannot export settings "

    invoke-static {v12, v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public importData(Ljava/io/File;)V
    .locals 13
    .parameter "importFile"

    .prologue
    const-wide/16 v11, 0x1

    .line 97
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 98
    .local v2, input:Ljava/io/FileInputStream;
    invoke-static {v2}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom(Ljava/io/InputStream;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v6

    .line 99
    .local v6, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 100
    const/4 v5, 0x0

    .line 101
    .local v5, settings:Lcom/miui/milk/model/SettingProtos$Settings;
    if-eqz v6, :cond_0

    .line 102
    invoke-virtual {v6}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getSetting()Lcom/miui/milk/model/SettingProtos$Settings;

    move-result-object v5

    .line 105
    :cond_0
    iget-boolean v9, p0, Lcom/miui/milk/control/local/SettingController;->mCanceled:Z

    if-nez v9, :cond_1

    if-nez v5, :cond_2

    .line 145
    .end local v2           #input:Ljava/io/FileInputStream;
    .end local v5           #settings:Lcom/miui/milk/model/SettingProtos$Settings;
    .end local v6           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_1
    :goto_0
    return-void

    .line 108
    .restart local v2       #input:Ljava/io/FileInputStream;
    .restart local v5       #settings:Lcom/miui/milk/model/SettingProtos$Settings;
    .restart local v6       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_2
    invoke-virtual {v5}, Lcom/miui/milk/model/SettingProtos$Settings;->getSystemCount()I

    move-result v9

    invoke-virtual {v5}, Lcom/miui/milk/model/SettingProtos$Settings;->getSecureCount()I

    move-result v10

    add-int/2addr v9, v10

    int-to-long v9, v9

    iput-wide v9, p0, Lcom/miui/milk/control/local/SettingController;->mTotalImportSize:J

    .line 109
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/miui/milk/control/local/SettingController;->mCurrImportIndex:J

    .line 110
    const/4 v8, 0x0

    .line 111
    .local v8, systemCount:I
    const/4 v4, 0x0

    .line 113
    .local v4, secureCount:I
    invoke-virtual {v5}, Lcom/miui/milk/model/SettingProtos$Settings;->getSystemList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/milk/model/SettingProtos$SystemSetting;

    .line 114
    .local v7, system:Lcom/miui/milk/model/SettingProtos$SystemSetting;
    iget-boolean v9, p0, Lcom/miui/milk/control/local/SettingController;->mCanceled:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v9, :cond_1

    .line 117
    :try_start_1
    iget-object v9, p0, Lcom/miui/milk/control/local/SettingController;->mSettingManager:Lcom/miui/milk/source/setting/SettingManager;

    invoke-virtual {v9, v7}, Lcom/miui/milk/source/setting/SettingManager;->addSystemSetting(Lcom/miui/milk/model/SettingProtos$SystemSetting;)Landroid/net/Uri;

    .line 118
    add-int/lit8 v8, v8, 0x1

    .line 119
    iget-wide v9, p0, Lcom/miui/milk/control/local/SettingController;->mCurrImportIndex:J

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/miui/milk/control/local/SettingController;->mCurrImportIndex:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v9, "SettingController"

    const-string v10, "Cannot add system setting "

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 140
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #input:Ljava/io/FileInputStream;
    .end local v4           #secureCount:I
    .end local v5           #settings:Lcom/miui/milk/model/SettingProtos$Settings;
    .end local v6           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v7           #system:Lcom/miui/milk/model/SettingProtos$SystemSetting;
    .end local v8           #systemCount:I
    :catch_1
    move-exception v0

    .line 141
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v9, "SettingController"

    const-string v10, "Cannot import settings "

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 125
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #input:Ljava/io/FileInputStream;
    .restart local v4       #secureCount:I
    .restart local v5       #settings:Lcom/miui/milk/model/SettingProtos$Settings;
    .restart local v6       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .restart local v8       #systemCount:I
    :cond_3
    :try_start_3
    invoke-virtual {v5}, Lcom/miui/milk/model/SettingProtos$Settings;->getSecureList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/milk/model/SettingProtos$SecureSetting;

    .line 126
    .local v3, secure:Lcom/miui/milk/model/SettingProtos$SecureSetting;
    iget-boolean v9, p0, Lcom/miui/milk/control/local/SettingController;->mCanceled:Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    if-nez v9, :cond_1

    .line 129
    :try_start_4
    iget-object v9, p0, Lcom/miui/milk/control/local/SettingController;->mSettingManager:Lcom/miui/milk/source/setting/SettingManager;

    invoke-virtual {v9, v3}, Lcom/miui/milk/source/setting/SettingManager;->addSecureSetting(Lcom/miui/milk/model/SettingProtos$SecureSetting;)Landroid/net/Uri;

    .line 130
    add-int/lit8 v4, v4, 0x1

    .line 131
    iget-wide v9, p0, Lcom/miui/milk/control/local/SettingController;->mCurrImportIndex:J

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/miui/milk/control/local/SettingController;->mCurrImportIndex:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 132
    :catch_2
    move-exception v0

    .line 133
    .local v0, e:Ljava/lang/Exception;
    :try_start_5
    const-string v9, "SettingController"

    const-string v10, "Cannot add secure setting "

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 142
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #input:Ljava/io/FileInputStream;
    .end local v3           #secure:Lcom/miui/milk/model/SettingProtos$SecureSetting;
    .end local v4           #secureCount:I
    .end local v5           #settings:Lcom/miui/milk/model/SettingProtos$Settings;
    .end local v6           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v8           #systemCount:I
    :catch_3
    move-exception v0

    .line 143
    .local v0, e:Ljava/io/IOException;
    const-string v9, "SettingController"

    const-string v10, "Cannot import settings "

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 137
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #input:Ljava/io/FileInputStream;
    .restart local v4       #secureCount:I
    .restart local v5       #settings:Lcom/miui/milk/model/SettingProtos$Settings;
    .restart local v6       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .restart local v8       #systemCount:I
    :cond_4
    :try_start_6
    const-string v9, "SettingController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Import System Setting Counts : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v9, "SettingController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Import Secure Setting Counts : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0
.end method
