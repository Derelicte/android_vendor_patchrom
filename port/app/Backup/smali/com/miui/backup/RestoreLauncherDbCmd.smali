.class Lcom/miui/backup/RestoreLauncherDbCmd;
.super Lcom/miui/backup/RestoreCmd;
.source "RestoreCmd.java"


# instance fields
.field private mDataDir:Ljava/io/File;

.field private mPkgInfo:Landroid/content/pm/PackageInfo;

.field private mWidgetFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V
    .locals 0
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"

    .prologue
    .line 582
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/RestoreCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    .line 583
    return-void
.end method


# virtual methods
.method protected action()Z
    .locals 1

    .prologue
    .line 587
    invoke-super {p0}, Lcom/miui/backup/RestoreCmd;->action()Z

    .line 588
    iget-object v0, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    .line 589
    const/4 v0, 0x0

    .line 592
    :goto_0
    return v0

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/miui/backup/RestoreLauncherDbCmd;->forceStop(Ljava/lang/String;)V

    .line 592
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected genStrategy()V
    .locals 5

    .prologue
    .line 608
    new-instance v2, Lcom/miui/backup/ScriptStrategy;

    invoke-direct {v2}, Lcom/miui/backup/ScriptStrategy;-><init>()V

    iput-object v2, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    .line 609
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mBaseDir:Ljava/io/File;

    const-string v3, "com.miui.home"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 610
    .local v0, packageDir:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "com.miui.home"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mDataDir:Ljava/io/File;

    .line 611
    const-string v2, "/data/data/com.miui.home"

    iget-object v3, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v3, v3, Lcom/miui/backup/AppInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 613
    iget-object v2, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/miui/backup/RestoreLauncherDbCmd;->rmData(Ljava/lang/String;Z)Z

    .line 614
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mDataDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4}, Lcom/miui/backup/RestoreLauncherDbCmd;->addItemToScript(ILjava/lang/String;Ljava/lang/String;)V

    .line 617
    new-instance v1, Ljava/io/File;

    const-string v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 618
    .local v1, widgetDir:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "appwidgets.xml"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mWidgetFile:Ljava/io/File;

    .line 620
    .end local v1           #widgetDir:Ljava/io/File;
    :cond_0
    return-void
.end method

.method protected postAction()Z
    .locals 18

    .prologue
    .line 624
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/backup/RestoreLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_0

    .line 625
    const/4 v1, 0x0

    .line 643
    :goto_0
    return v1

    .line 627
    :cond_0
    new-instance v2, Lcom/miui/backup/ScriptStrategy;

    invoke-direct {v2}, Lcom/miui/backup/ScriptStrategy;-><init>()V

    .line 628
    .local v2, strategy:Lcom/miui/backup/ScriptStrategy;
    const-string v1, "/data/data/com.miui.home"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/backup/RestoreLauncherDbCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v4, v4, Lcom/miui/backup/AppInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 629
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/backup/RestoreLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 630
    .local v3, dataDir:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/backup/RestoreLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 631
    .local v5, uid:I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/backup/RestoreLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 632
    .local v11, targetDirPrefix:Ljava/lang/String;
    const/16 v4, 0x2ef

    move-object/from16 v1, p0

    move v6, v5

    invoke-virtual/range {v1 .. v6}, Lcom/miui/backup/RestoreLauncherDbCmd;->changePermission(Lcom/miui/backup/ScriptStrategy;Ljava/lang/String;III)V

    .line 633
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/backup/RestoreLauncherDbCmd;->mDataDir:Ljava/io/File;

    const-string v10, "com.miui.home"

    move-object/from16 v6, p0

    move-object v7, v2

    move v9, v5

    invoke-virtual/range {v6 .. v11}, Lcom/miui/backup/RestoreLauncherDbCmd;->changePermissionRecursively(Lcom/miui/backup/ScriptStrategy;Ljava/io/File;ILjava/lang/String;Ljava/lang/String;)V

    .line 636
    const/16 v14, 0x258

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/backup/RestoreLauncherDbCmd;->mWidgetFile:Ljava/io/File;

    const-string v16, "/data/system/appwidgets.xml"

    const/16 v17, 0x3e8

    move-object/from16 v12, p0

    move-object v13, v2

    invoke-virtual/range {v12 .. v17}, Lcom/miui/backup/RestoreLauncherDbCmd;->prepareRestoreFile(Lcom/miui/backup/ScriptStrategy;ILjava/io/File;Ljava/lang/String;I)V

    .line 639
    .end local v3           #dataDir:Ljava/lang/String;
    .end local v5           #uid:I
    .end local v11           #targetDirPrefix:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Lcom/miui/backup/ScriptStrategy;->execute()Z

    .line 642
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/backup/RestoreLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/miui/backup/RestoreLauncherDbCmd;->forceStop(Ljava/lang/String;)V

    .line 643
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected preAction()Z
    .locals 2

    .prologue
    .line 599
    iget-object v0, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mContext:Landroid/content/Context;

    const-string v1, "com.miui.home"

    invoke-static {v0, v1}, Lcom/miui/backup/BackupUtils;->getPkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    .line 600
    iget-object v0, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    .line 601
    const/4 v0, 0x0

    .line 603
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
