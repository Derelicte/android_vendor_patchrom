.class Lcom/miui/backup/RestoreAccountCmd;
.super Lcom/miui/backup/RestoreControllerCmd;
.source "RestoreCmd.java"


# direct methods
.method public constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V
    .locals 0
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"

    .prologue
    .line 669
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/RestoreControllerCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    .line 670
    return-void
.end method


# virtual methods
.method protected action()Z
    .locals 15

    .prologue
    .line 679
    invoke-super {p0}, Lcom/miui/backup/RestoreControllerCmd;->action()Z

    .line 680
    iget-object v11, p0, Lcom/miui/backup/RestoreAccountCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    check-cast v11, Lcom/miui/backup/AccountRestore;

    .line 681
    .local v11, accountRestore:Lcom/miui/backup/AccountRestore;
    invoke-virtual {v11}, Lcom/miui/backup/AccountRestore;->canRestore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 683
    iget-object v0, p0, Lcom/miui/backup/RestoreAccountCmd;->mContext:Landroid/content/Context;

    const-string v3, "com.android.email"

    invoke-static {v0, v3}, Lcom/miui/backup/BackupUtils;->getPkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 684
    .local v14, emailInfo:Landroid/content/pm/PackageInfo;
    if-eqz v14, :cond_0

    .line 685
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/miui/backup/RestoreAccountCmd;->forceStop(Ljava/lang/String;)V

    .line 686
    const-string v0, "com.android.exchange"

    invoke-virtual {p0, v0}, Lcom/miui/backup/RestoreAccountCmd;->forceStop(Ljava/lang/String;)V

    .line 688
    new-instance v12, Lcom/miui/backup/ScriptStrategy;

    invoke-direct {v12}, Lcom/miui/backup/ScriptStrategy;-><init>()V

    .line 689
    .local v12, emailCpStrategy:Lcom/miui/backup/ScriptStrategy;
    new-instance v13, Ljava/io/File;

    iget-object v0, p0, Lcom/miui/backup/RestoreAccountCmd;->mBaseDir:Ljava/io/File;

    const-string v3, "com.android.email"

    invoke-direct {v13, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 690
    .local v13, emailDir:Ljava/io/File;
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 691
    .local v2, dataDir:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/miui/backup/RestoreAccountCmd;->rmData(Ljava/lang/String;Z)Z

    .line 692
    const/4 v0, 0x1

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v12, v0, v3, v2}, Lcom/miui/backup/RestoreAccountCmd;->addItemToScript(Lcom/miui/backup/BackupRestoreStrategy;ILjava/lang/String;Ljava/lang/String;)V

    .line 693
    invoke-virtual {v12}, Lcom/miui/backup/ScriptStrategy;->execute()Z

    .line 695
    new-instance v1, Lcom/miui/backup/ScriptStrategy;

    invoke-direct {v1}, Lcom/miui/backup/ScriptStrategy;-><init>()V

    .line 696
    .local v1, emailModeStrategy:Lcom/miui/backup/ScriptStrategy;
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 697
    .local v4, uid:I
    const/16 v3, 0x2ef

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/backup/RestoreAccountCmd;->changePermission(Lcom/miui/backup/ScriptStrategy;Ljava/lang/String;III)V

    .line 698
    const/4 v0, 0x0

    const-string v3, "com.android.email"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 699
    .local v10, targetDirPrefix:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v9, "com.android.email"

    move-object v5, p0

    move-object v6, v1

    move v8, v4

    invoke-virtual/range {v5 .. v10}, Lcom/miui/backup/RestoreAccountCmd;->changePermissionRecursively(Lcom/miui/backup/ScriptStrategy;Ljava/io/File;ILjava/lang/String;Ljava/lang/String;)V

    .line 701
    invoke-virtual {v1}, Lcom/miui/backup/ScriptStrategy;->execute()Z

    .line 703
    .end local v1           #emailModeStrategy:Lcom/miui/backup/ScriptStrategy;
    .end local v2           #dataDir:Ljava/lang/String;
    .end local v4           #uid:I
    .end local v10           #targetDirPrefix:Ljava/lang/String;
    .end local v12           #emailCpStrategy:Lcom/miui/backup/ScriptStrategy;
    .end local v13           #emailDir:Ljava/io/File;
    :cond_0
    invoke-virtual {v11}, Lcom/miui/backup/AccountRestore;->importAccount()V

    .line 705
    .end local v14           #emailInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected genStrategy()V
    .locals 5

    .prologue
    .line 674
    new-instance v0, Lcom/miui/backup/AccountRestore;

    iget-object v1, p0, Lcom/miui/backup/RestoreAccountCmd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/backup/RestoreAccountCmd;->mBaseDir:Ljava/io/File;

    iget-object v3, p0, Lcom/miui/backup/RestoreAccountCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v3, v3, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/backup/RestoreAccountCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v4, v4, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/backup/AccountRestore;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/backup/RestoreAccountCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    .line 675
    return-void
.end method
