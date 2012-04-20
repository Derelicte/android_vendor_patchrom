.class Lcom/miui/backup/RestoreSystemApp;
.super Lcom/miui/backup/RestoreUserAppCmd;
.source "RestoreCmd.java"


# instance fields
.field protected mApkFile:Ljava/io/File;

.field protected mApkZip:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V
    .locals 4
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"

    .prologue
    .line 361
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/RestoreUserAppCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    .line 362
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/backup/RestoreSystemApp;->mBaseDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/backup/RestoreSystemApp;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v3, v3, Lcom/miui/backup/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".bak"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/backup/RestoreSystemApp;->mApkZip:Ljava/io/File;

    .line 363
    iget-object v0, p0, Lcom/miui/backup/RestoreSystemApp;->mApkZip:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/backup/RestoreSystemApp;->mApkSize:J

    .line 364
    new-instance v0, Lcom/miui/backup/InstallProgressor;

    iget-wide v1, p0, Lcom/miui/backup/RestoreSystemApp;->mApkSize:J

    const/16 v3, 0x1f4

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/backup/InstallProgressor;-><init>(JI)V

    iput-object v0, p0, Lcom/miui/backup/RestoreSystemApp;->mProgressor:Lcom/miui/backup/InstallProgressor;

    .line 365
    return-void
.end method


# virtual methods
.method public cancel(Z)V
    .locals 2
    .parameter "isFailed"

    .prologue
    .line 391
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/miui/backup/RestoreSystemApp;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iget v1, v1, Lcom/miui/backup/CmdRunningInfo;->status:I

    if-ne v0, v1, :cond_0

    .line 395
    :goto_0
    return-void

    .line 394
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/backup/RestoreUserAppCmd;->cancel(Z)V

    goto :goto_0
.end method

.method protected genStrategy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 399
    new-instance v0, Lcom/miui/backup/ResotreUserAppStrategy;

    iget-object v1, p0, Lcom/miui/backup/RestoreSystemApp;->mApkFile:Ljava/io/File;

    invoke-direct {v0, v1, v2, v2}, Lcom/miui/backup/ResotreUserAppStrategy;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/backup/RestoreSystemApp;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    .line 400
    return-void
.end method

.method protected getProgress()I
    .locals 2

    .prologue
    .line 404
    iget-object v1, p0, Lcom/miui/backup/RestoreSystemApp;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iget v0, v1, Lcom/miui/backup/CmdRunningInfo;->progress:I

    .line 405
    .local v0, progress:I
    iget-object v1, p0, Lcom/miui/backup/RestoreSystemApp;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iget v1, v1, Lcom/miui/backup/CmdRunningInfo;->status:I

    packed-switch v1, :pswitch_data_0

    .line 417
    :goto_0
    return v0

    .line 407
    :pswitch_0
    iget-object v1, p0, Lcom/miui/backup/RestoreSystemApp;->mProgressor:Lcom/miui/backup/InstallProgressor;

    invoke-virtual {v1}, Lcom/miui/backup/InstallProgressor;->update()V

    .line 408
    iget-object v1, p0, Lcom/miui/backup/RestoreSystemApp;->mProgressor:Lcom/miui/backup/InstallProgressor;

    invoke-virtual {v1}, Lcom/miui/backup/InstallProgressor;->getProgress()I

    move-result v0

    .line 409
    goto :goto_0

    .line 412
    :pswitch_1
    const/16 v0, 0x64

    .line 413
    goto :goto_0

    .line 405
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected postAction()Z
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/miui/backup/RestoreSystemApp;->mProgressor:Lcom/miui/backup/InstallProgressor;

    invoke-virtual {v0}, Lcom/miui/backup/InstallProgressor;->finish()V

    .line 423
    const/4 v0, 0x1

    return v0
.end method

.method protected preAction()Z
    .locals 5

    .prologue
    .line 369
    iget-object v2, p0, Lcom/miui/backup/RestoreSystemApp;->mApkZip:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 370
    const/4 v0, 0x0

    .line 372
    .local v0, zipFile:Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    iget-object v2, p0, Lcom/miui/backup/RestoreSystemApp;->mApkZip:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 373
    .end local v0           #zipFile:Ljava/util/zip/ZipFile;
    .local v1, zipFile:Ljava/util/zip/ZipFile;
    :try_start_1
    iget-object v2, p0, Lcom/miui/backup/RestoreSystemApp;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/miui/backup/SysUtils;->unzip(Landroid/content/Context;Ljava/util/zip/ZipFile;)V

    .line 374
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/miui/backup/RestoreSystemApp;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "apk.tar"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/backup/RestoreSystemApp;->mApkFile:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 378
    if-eqz v1, :cond_0

    .line 380
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 386
    .end local v1           #zipFile:Ljava/util/zip/ZipFile;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/miui/backup/RestoreSystemApp;->mApkFile:Ljava/io/File;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/backup/RestoreSystemApp;->mApkFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 375
    .restart local v0       #zipFile:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v2

    .line 378
    :goto_2
    if-eqz v0, :cond_0

    .line 380
    :try_start_3
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 381
    :catch_1
    move-exception v2

    goto :goto_0

    .line 376
    :catch_2
    move-exception v2

    .line 378
    :goto_3
    if-eqz v0, :cond_0

    .line 380
    :try_start_4
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 381
    :catch_3
    move-exception v2

    goto :goto_0

    .line 378
    :catchall_0
    move-exception v2

    :goto_4
    if-eqz v0, :cond_1

    .line 380
    :try_start_5
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 382
    :cond_1
    :goto_5
    throw v2

    .line 386
    .end local v0           #zipFile:Ljava/util/zip/ZipFile;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 381
    .restart local v1       #zipFile:Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v2

    goto :goto_0

    .end local v1           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v0       #zipFile:Ljava/util/zip/ZipFile;
    :catch_5
    move-exception v3

    goto :goto_5

    .line 378
    .end local v0           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v1       #zipFile:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v0       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_4

    .line 376
    .end local v0           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v1       #zipFile:Ljava/util/zip/ZipFile;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v0       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_3

    .line 375
    .end local v0           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v1       #zipFile:Ljava/util/zip/ZipFile;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v0       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_2
.end method
