.class Lcom/miui/backup/BackupAppCmd;
.super Lcom/miui/backup/BackupCmd;
.source "BackupCmd.java"


# instance fields
.field protected mBackupItemDescript:Lcom/miui/backup/BackupItemDescript;

.field protected mDstFile:Ljava/io/File;

.field protected mPM:Landroid/content/pm/PackageManager;

.field protected mPkgInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method protected constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/pm/PackageInfo;Landroid/content/Context;)V
    .locals 4
    .parameter "info"
    .parameter "baseDir"
    .parameter "pkgInfo"
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p4}, Lcom/miui/backup/BackupCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    .line 50
    iput-object p3, p0, Lcom/miui/backup/BackupAppCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    .line 51
    invoke-virtual {p4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/BackupAppCmd;->mPM:Landroid/content/pm/PackageManager;

    .line 52
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/backup/BackupAppCmd;->mBaseDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/backup/BackupAppCmd;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/backup/BackupAppCmd;->mDstFile:Ljava/io/File;

    .line 53
    return-void
.end method

.method public static createCmd(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)Lcom/miui/backup/BackupAppCmd;
    .locals 2
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"

    .prologue
    .line 36
    iget-object v1, p0, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/miui/backup/BackupUtils;->getPkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 37
    .local v0, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 38
    iget v1, p0, Lcom/miui/backup/AppInfo;->type:I

    packed-switch v1, :pswitch_data_0

    .line 45
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 40
    :pswitch_0
    new-instance v1, Lcom/miui/backup/BackupAppCmd;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/miui/backup/BackupAppCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/pm/PackageInfo;Landroid/content/Context;)V

    goto :goto_0

    .line 42
    :pswitch_1
    new-instance v1, Lcom/miui/backup/BackupUserAppCmd;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/miui/backup/BackupUserAppCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/pm/PackageInfo;Landroid/content/Context;)V

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public cancel(Z)V
    .locals 3
    .parameter "isFailed"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/miui/backup/BackupAppCmd;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/backup/BackupAppCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v1, v1, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/backup/SysUtils;->showBubble(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 114
    invoke-super {p0, p1}, Lcom/miui/backup/BackupCmd;->cancel(Z)V

    .line 115
    return-void
.end method

.method protected genStrategy()V
    .locals 5

    .prologue
    .line 63
    iget-object v1, p0, Lcom/miui/backup/BackupAppCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/backup/BackupAppCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, srcFileFile:Ljava/io/File;
    new-instance v1, Lcom/miui/backup/BackupUserAppStrategy;

    iget-object v2, p0, Lcom/miui/backup/BackupAppCmd;->mDstFile:Ljava/io/File;

    iget-object v3, p0, Lcom/miui/backup/BackupAppCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/miui/backup/BackupUserAppStrategy;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/miui/backup/BackupAppCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    goto :goto_0
.end method

.method protected getApkCopyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method protected postAction()Z
    .locals 8

    .prologue
    .line 72
    iget-object v3, p0, Lcom/miui/backup/BackupAppCmd;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/backup/BackupAppCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v4, v4, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/miui/backup/SysUtils;->showBubble(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 74
    new-instance v3, Lcom/miui/backup/BackupItemDescript;

    invoke-virtual {p0}, Lcom/miui/backup/BackupAppCmd;->getLabel()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/backup/BackupAppCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, p0, Lcom/miui/backup/BackupAppCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget v6, v6, Lcom/miui/backup/AppInfo;->type:I

    invoke-virtual {p0}, Lcom/miui/backup/BackupAppCmd;->getApkCopyName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/miui/backup/BackupItemDescript;-><init>(Ljava/lang/String;Landroid/content/pm/PackageInfo;ILjava/lang/String;)V

    iput-object v3, p0, Lcom/miui/backup/BackupAppCmd;->mBackupItemDescript:Lcom/miui/backup/BackupItemDescript;

    .line 78
    iget-object v3, p0, Lcom/miui/backup/BackupAppCmd;->mBackupItemDescript:Lcom/miui/backup/BackupItemDescript;

    invoke-virtual {p0}, Lcom/miui/backup/BackupAppCmd;->getFinishedSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/miui/backup/BackupItemDescript;->mSize:Ljava/lang/String;

    .line 79
    iget-object v3, p0, Lcom/miui/backup/BackupAppCmd;->mBackupItemDescript:Lcom/miui/backup/BackupItemDescript;

    iget-object v4, p0, Lcom/miui/backup/BackupAppCmd;->mBaseDir:Ljava/io/File;

    invoke-virtual {v3, v4}, Lcom/miui/backup/BackupItemDescript;->write(Ljava/io/File;)V

    .line 82
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/miui/backup/BackupAppCmd;->mBaseDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/backup/BackupAppCmd;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".bak"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    .local v0, zipFile:Ljava/io/File;
    const/4 v1, 0x0

    .line 84
    .local v1, zipOutputStream:Ljava/util/zip/ZipOutputStream;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 86
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 87
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    .end local v1           #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    .local v2, zipOutputStream:Ljava/util/zip/ZipOutputStream;
    :try_start_1
    iget-object v3, p0, Lcom/miui/backup/BackupAppCmd;->mDstFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    iget-object v3, p0, Lcom/miui/backup/BackupAppCmd;->mDstFile:Ljava/io/File;

    const-string v4, "apk.tar"

    invoke-static {v2, v3, v4}, Lcom/miui/backup/SysUtils;->zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z

    .line 91
    iget-object v3, p0, Lcom/miui/backup/BackupAppCmd;->mDstFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 93
    :cond_0
    iget-object v3, p0, Lcom/miui/backup/BackupAppCmd;->mBackupItemDescript:Lcom/miui/backup/BackupItemDescript;

    iget-object v3, v3, Lcom/miui/backup/BackupItemDescript;->mXmlFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    iget-object v3, p0, Lcom/miui/backup/BackupAppCmd;->mBackupItemDescript:Lcom/miui/backup/BackupItemDescript;

    iget-object v3, v3, Lcom/miui/backup/BackupItemDescript;->mXmlFile:Ljava/io/File;

    const-string v4, "descript.xml"

    invoke-static {v2, v3, v4}, Lcom/miui/backup/SysUtils;->zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 100
    :cond_1
    if-eqz v2, :cond_4

    .line 102
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 108
    .end local v2           #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    .restart local v1       #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    :cond_2
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 103
    .end local v1           #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    .restart local v2       #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 104
    .end local v2           #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    .restart local v1       #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    goto :goto_0

    .line 97
    :catch_1
    move-exception v3

    .line 100
    :goto_1
    if-eqz v1, :cond_2

    .line 102
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 103
    :catch_2
    move-exception v3

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_3

    .line 102
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 104
    :cond_3
    :goto_3
    throw v3

    .line 103
    :catch_3
    move-exception v4

    goto :goto_3

    .line 100
    .end local v1           #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    .restart local v2       #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    .restart local v1       #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    goto :goto_2

    .line 97
    .end local v1           #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    .restart local v2       #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    :catch_4
    move-exception v3

    move-object v1, v2

    .end local v2           #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    .restart local v1       #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    goto :goto_1

    .end local v1           #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    .restart local v2       #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    :cond_4
    move-object v1, v2

    .end local v2           #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    .restart local v1       #zipOutputStream:Ljava/util/zip/ZipOutputStream;
    goto :goto_0
.end method

.method protected preAction()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 57
    iget-object v0, p0, Lcom/miui/backup/BackupAppCmd;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/backup/BackupAppCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v1, v1, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/backup/SysUtils;->showBubble(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 58
    return v2
.end method
