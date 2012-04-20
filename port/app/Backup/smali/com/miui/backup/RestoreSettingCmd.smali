.class Lcom/miui/backup/RestoreSettingCmd;
.super Lcom/miui/backup/RestoreControllerCmd;
.source "RestoreCmd.java"


# direct methods
.method public constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V
    .locals 0
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"

    .prologue
    .line 711
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/RestoreControllerCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    .line 712
    return-void
.end method


# virtual methods
.method protected postAction()Z
    .locals 20

    .prologue
    .line 716
    new-instance v3, Lcom/miui/backup/ScriptStrategy;

    invoke-direct {v3}, Lcom/miui/backup/ScriptStrategy;-><init>()V

    .line 719
    .local v3, strategy:Lcom/miui/backup/ScriptStrategy;
    const-string v2, "com.android.phone"

    const-string v4, "com.android.phone_preferences.xml"

    const-string v6, "/data/data/com.android.phone/shared_prefs/com.android.phone_preferences.xml"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4, v6}, Lcom/miui/backup/RestoreSettingCmd;->prepareRestorePreferences(Lcom/miui/backup/ScriptStrategy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-string v2, "com.android.mms"

    const-string v4, "com.android.mms_preferences.xml"

    const-string v6, "/data/data/com.android.mms/shared_prefs/com.android.mms_preferences.xml"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4, v6}, Lcom/miui/backup/RestoreSettingCmd;->prepareRestorePreferences(Lcom/miui/backup/ScriptStrategy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/backup/RestoreSettingCmd;->mBaseDir:Ljava/io/File;

    const-string v4, "gesture.key"

    invoke-direct {v5, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 725
    .local v5, gestureFile:Ljava/io/File;
    const/16 v4, 0x258

    const-string v6, "/data/system/gesture.key"

    const/16 v7, 0x3e8

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/miui/backup/RestoreSettingCmd;->prepareRestoreFile(Lcom/miui/backup/ScriptStrategy;ILjava/io/File;Ljava/lang/String;I)V

    .line 727
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/backup/RestoreSettingCmd;->mBaseDir:Ljava/io/File;

    const-string v4, "password.key"

    invoke-direct {v9, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 728
    .local v9, passwordFile:Ljava/io/File;
    const/16 v8, 0x258

    const-string v10, "/data/system/password.key"

    const/16 v11, 0x3e8

    move-object/from16 v6, p0

    move-object v7, v3

    invoke-virtual/range {v6 .. v11}, Lcom/miui/backup/RestoreSettingCmd;->prepareRestoreFile(Lcom/miui/backup/ScriptStrategy;ILjava/io/File;Ljava/lang/String;I)V

    .line 731
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/backup/RestoreSettingCmd;->mBaseDir:Ljava/io/File;

    const-string v4, "build.prop"

    invoke-direct {v12, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 732
    .local v12, buildPropertyFile:Ljava/io/File;
    const/16 v17, 0x0

    .line 734
    .local v17, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v18, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v12}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 736
    .end local v17           #reader:Ljava/io/BufferedReader;
    .local v18, reader:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .local v16, line:Ljava/lang/String;
    if-eqz v16, :cond_2

    .line 738
    const-string v2, "persist.sys"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-le v2, v4, :cond_0

    .line 739
    const-string v2, ":"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 740
    .local v14, equalIndex:I
    if-lez v14, :cond_0

    .line 741
    const/4 v2, 0x1

    add-int/lit8 v4, v14, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 742
    .local v15, key:Ljava/lang/String;
    add-int/lit8 v2, v14, 0x3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 743
    .local v19, value:Ljava/lang/String;
    const/16 v2, 0xd

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v2, v15, v1}, Lcom/miui/backup/RestoreSettingCmd;->addItemToScript(Lcom/miui/backup/BackupRestoreStrategy;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    goto :goto_0

    .line 748
    .end local v14           #equalIndex:I
    .end local v15           #key:Ljava/lang/String;
    .end local v16           #line:Ljava/lang/String;
    .end local v19           #value:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object/from16 v17, v18

    .line 755
    .end local v18           #reader:Ljava/io/BufferedReader;
    .restart local v17       #reader:Ljava/io/BufferedReader;
    :goto_1
    if-eqz v17, :cond_1

    .line 757
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 764
    :cond_1
    :goto_2
    invoke-virtual {v3}, Lcom/miui/backup/ScriptStrategy;->execute()Z

    .line 767
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    .line 768
    .local v13, curConfig:Landroid/content/res/Configuration;
    iget-object v2, v13, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    const-wide/16 v6, 0x2000

    invoke-virtual {v2, v6, v7}, Lmiui/content/res/ExtraConfiguration;->updateTheme(J)V

    .line 769
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v13}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_6

    .line 772
    .end local v13           #curConfig:Landroid/content/res/Configuration;
    :goto_3
    const/4 v2, 0x1

    return v2

    .line 755
    .end local v17           #reader:Ljava/io/BufferedReader;
    .restart local v16       #line:Ljava/lang/String;
    .restart local v18       #reader:Ljava/io/BufferedReader;
    :cond_2
    if-eqz v18, :cond_4

    .line 757
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v17, v18

    .line 760
    .end local v18           #reader:Ljava/io/BufferedReader;
    .restart local v17       #reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 758
    .end local v17           #reader:Ljava/io/BufferedReader;
    .restart local v18       #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    move-object/from16 v17, v18

    .line 760
    .end local v18           #reader:Ljava/io/BufferedReader;
    .restart local v17       #reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 751
    .end local v16           #line:Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 755
    :goto_4
    if-eqz v17, :cond_1

    .line 757
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 758
    :catch_3
    move-exception v2

    goto :goto_2

    .line 755
    :catchall_0
    move-exception v2

    :goto_5
    if-eqz v17, :cond_3

    .line 757
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 760
    :cond_3
    :goto_6
    throw v2

    .line 758
    :catch_4
    move-exception v2

    goto :goto_2

    :catch_5
    move-exception v4

    goto :goto_6

    .line 770
    :catch_6
    move-exception v2

    goto :goto_3

    .line 755
    .end local v17           #reader:Ljava/io/BufferedReader;
    .restart local v18       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v2

    move-object/from16 v17, v18

    .end local v18           #reader:Ljava/io/BufferedReader;
    .restart local v17       #reader:Ljava/io/BufferedReader;
    goto :goto_5

    .line 751
    .end local v17           #reader:Ljava/io/BufferedReader;
    .restart local v18       #reader:Ljava/io/BufferedReader;
    :catch_7
    move-exception v2

    move-object/from16 v17, v18

    .end local v18           #reader:Ljava/io/BufferedReader;
    .restart local v17       #reader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 748
    :catch_8
    move-exception v2

    goto :goto_1

    .end local v17           #reader:Ljava/io/BufferedReader;
    .restart local v16       #line:Ljava/lang/String;
    .restart local v18       #reader:Ljava/io/BufferedReader;
    :cond_4
    move-object/from16 v17, v18

    .end local v18           #reader:Ljava/io/BufferedReader;
    .restart local v17       #reader:Ljava/io/BufferedReader;
    goto :goto_2
.end method
