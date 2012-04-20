.class public Lcom/miui/backup/RestoreCmd;
.super Lcom/miui/backup/BackupRestoreCmd;
.source "RestoreCmd.java"


# direct methods
.method public constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V
    .locals 2
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/BackupRestoreCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    .line 38
    iget-object v0, p0, Lcom/miui/backup/RestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/backup/CmdRunningInfo;->isBackup:Z

    .line 39
    return-void
.end method


# virtual methods
.method protected changePermission(Lcom/miui/backup/ScriptStrategy;Ljava/lang/String;III)V
    .locals 3
    .parameter "strategy"
    .parameter "targetFilePath"
    .parameter "mode"
    .parameter "ownUid"
    .parameter "grpUid"

    .prologue
    .line 65
    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/miui/backup/RestoreCmd;->addItemToScript(Lcom/miui/backup/BackupRestoreStrategy;ILjava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/miui/backup/RestoreCmd;->addItemToScript(Lcom/miui/backup/BackupRestoreStrategy;ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/miui/backup/RestoreCmd;->addItemToScript(Lcom/miui/backup/BackupRestoreStrategy;ILjava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method protected changePermissionRecursively(Lcom/miui/backup/ScriptStrategy;Ljava/io/File;ILjava/lang/String;Ljava/lang/String;)V
    .locals 17
    .parameter "strategy"
    .parameter "restoreDataDir"
    .parameter "uid"
    .parameter "packageName"
    .parameter "targetDirPrefix"

    .prologue
    .line 115
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    .line 116
    .local v13, contents:[Ljava/io/File;
    if-nez v13, :cond_1

    .line 159
    :cond_0
    return-void

    .line 120
    :cond_1
    move-object v12, v13

    .local v12, arr$:[Ljava/io/File;
    array-length v0, v12

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    aget-object v8, v12, v15

    .line 121
    .local v8, file:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 123
    const/16 v4, 0x309

    .line 124
    .local v4, mode:I
    move/from16 v5, p3

    .line 125
    .local v5, ownerUid:I
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    .line 126
    .local v14, filePath:Ljava/lang/String;
    const-string v1, "shared_prefs"

    invoke-virtual {v14, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "databases"

    invoke-virtual {v14, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "cache/"

    invoke-virtual {v14, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "files"

    invoke-virtual {v14, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 127
    :cond_2
    const/16 v4, 0x303

    .line 133
    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, targetFilePath:Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v6, v5

    .line 134
    invoke-virtual/range {v1 .. v6}, Lcom/miui/backup/RestoreCmd;->changePermission(Lcom/miui/backup/ScriptStrategy;Ljava/lang/String;III)V

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 136
    invoke-virtual/range {v6 .. v11}, Lcom/miui/backup/RestoreCmd;->changePermissionRecursively(Lcom/miui/backup/ScriptStrategy;Ljava/io/File;ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    .end local v3           #targetFilePath:Ljava/lang/String;
    .end local v4           #mode:I
    .end local v5           #ownerUid:I
    .end local v14           #filePath:Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 128
    .restart local v4       #mode:I
    .restart local v5       #ownerUid:I
    .restart local v14       #filePath:Ljava/lang/String;
    :cond_5
    const-string v1, "lib"

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    const/16 v4, 0x2f3

    .line 130
    const/16 v5, 0x3e8

    goto :goto_1

    .line 137
    .end local v4           #mode:I
    .end local v5           #ownerUid:I
    .end local v14           #filePath:Ljava/lang/String;
    :cond_6
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 139
    const/16 v4, 0x294

    .line 140
    .restart local v4       #mode:I
    move/from16 v5, p3

    .line 141
    .restart local v5       #ownerUid:I
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    .line 142
    .restart local v14       #filePath:Ljava/lang/String;
    const-string v1, "/lib/"

    invoke-virtual {v14, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 143
    const/16 v4, 0x2f3

    .line 144
    const/16 v5, 0x3e8

    .line 155
    :cond_7
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #targetFilePath:Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v6, v5

    .line 156
    invoke-virtual/range {v1 .. v6}, Lcom/miui/backup/RestoreCmd;->changePermission(Lcom/miui/backup/ScriptStrategy;Ljava/lang/String;III)V

    goto :goto_2

    .line 145
    .end local v3           #targetFilePath:Ljava/lang/String;
    :cond_8
    const-string v1, "shared_prefs/webviewCache/"

    invoke-virtual {v14, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "cache/webviewCache/"

    invoke-virtual {v14, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "files/cache/"

    invoke-virtual {v14, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "cache/"

    invoke-virtual {v14, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 149
    :cond_9
    const/16 v4, 0x258

    goto :goto_3

    .line 150
    :cond_a
    const-string v1, "databases/"

    invoke-virtual {v14, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "shared_prefs/"

    invoke-virtual {v14, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "files/"

    invoke-virtual {v14, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 151
    :cond_b
    const/16 v4, 0x294

    goto :goto_3
.end method

.method public execute()Z
    .locals 4

    .prologue
    .line 44
    iget-object v2, p0, Lcom/miui/backup/RestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget v2, v2, Lcom/miui/backup/AppInfo;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 46
    :try_start_0
    iget-object v2, p0, Lcom/miui/backup/RestoreCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 47
    .local v1, pm:Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/miui/backup/RestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v2, v2, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 48
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/miui/backup/RestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    const/4 v3, -0x1

    iput v3, v2, Lcom/miui/backup/CmdRunningInfo;->status:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/miui/backup/BackupRestoreCmd;->execute()Z

    move-result v2

    return v2

    .line 51
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected pkgExists(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/miui/backup/RestoreCmd;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/backup/BackupUtils;->getPkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected prepareRestoreFile(Lcom/miui/backup/ScriptStrategy;ILjava/io/File;Ljava/lang/String;I)V
    .locals 6
    .parameter "strategy"
    .parameter "mode"
    .parameter "file"
    .parameter "oriPath"
    .parameter "uid"

    .prologue
    .line 93
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p4, v0}, Lcom/miui/backup/RestoreCmd;->rmData(Ljava/lang/String;Z)Z

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/miui/backup/RestoreCmd;->addItemToScript(Lcom/miui/backup/BackupRestoreStrategy;ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move v3, p2

    move v4, p5

    move v5, p5

    .line 98
    invoke-virtual/range {v0 .. v5}, Lcom/miui/backup/RestoreCmd;->changePermission(Lcom/miui/backup/ScriptStrategy;Ljava/lang/String;III)V

    goto :goto_0
.end method

.method protected prepareRestorePreferences(Lcom/miui/backup/ScriptStrategy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "strategy"
    .parameter "packageName"
    .parameter "prefFileName"
    .parameter "oriPrefPath"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/miui/backup/RestoreCmd;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/miui/backup/BackupUtils;->getPkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 85
    .local v6, pkgInfo:Landroid/content/pm/PackageInfo;
    if-nez v6, :cond_0

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/miui/backup/RestoreCmd;->mBaseDir:Ljava/io/File;

    invoke-direct {v3, v0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89
    .local v3, prefFile:Ljava/io/File;
    const/16 v2, 0x294

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/backup/RestoreCmd;->prepareRestoreFile(Lcom/miui/backup/ScriptStrategy;ILjava/io/File;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected rmData(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "dataDir"
    .parameter "isFile"

    .prologue
    .line 71
    new-instance v1, Lcom/miui/backup/ScriptStrategy;

    invoke-direct {v1}, Lcom/miui/backup/ScriptStrategy;-><init>()V

    .line 72
    .local v1, strategy:Lcom/miui/backup/ScriptStrategy;
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    .line 73
    .local v0, rmCmd:I
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, p1, v2}, Lcom/miui/backup/RestoreCmd;->addItemToScript(Lcom/miui/backup/BackupRestoreStrategy;ILjava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1}, Lcom/miui/backup/ScriptStrategy;->execute()Z

    .line 75
    invoke-virtual {v1}, Lcom/miui/backup/ScriptStrategy;->isSucceeded()Z

    move-result v2

    return v2

    .line 72
    .end local v0           #rmCmd:I
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method
