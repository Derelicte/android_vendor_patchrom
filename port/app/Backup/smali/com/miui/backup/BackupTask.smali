.class public Lcom/miui/backup/BackupTask;
.super Lcom/miui/backup/BackupRestoreTask;
.source "BackupTask.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/io/File;Lcom/miui/backup/BackupRestoreCmdFactory;)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter "baseDir"
    .parameter "cmdFactory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/backup/AppInfo;",
            ">;",
            "Ljava/io/File;",
            "Lcom/miui/backup/BackupRestoreCmdFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    .local p2, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/backup/AppInfo;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/backup/BackupRestoreTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/io/File;Lcom/miui/backup/BackupRestoreCmdFactory;)V

    .line 15
    return-void
.end method

.method private diskCheck()Z
    .locals 2

    .prologue
    .line 75
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1}, Lcom/miui/backup/SysUtils;->enoughSpaceOnSdCard(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/miui/backup/BackupTask;->mContext:Landroid/content/Context;

    const v1, 0x7f070053

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/backup/BackupTask;->showErrorDialog(Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x0

    .line 84
    :goto_0
    return v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/miui/backup/BackupTask;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/miui/backup/BackupTask;->mBaseDir:Ljava/io/File;

    invoke-static {v0}, Lcom/miui/backup/SysUtils;->deleteContents(Ljava/io/File;)V

    .line 84
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/miui/backup/BackupTask;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    goto :goto_1
.end method

.method private writeBackupDescription()V
    .locals 6

    .prologue
    .line 88
    iget-object v3, p0, Lcom/miui/backup/BackupTask;->mBaseDir:Ljava/io/File;

    invoke-static {v3}, Lcom/miui/backup/SysUtils;->countFileSize(Ljava/io/File;)J

    move-result-wide v1

    .line 89
    .local v1, backupSize:J
    new-instance v0, Lcom/miui/backup/BackupDescript;

    iget-object v3, p0, Lcom/miui/backup/BackupTask;->mBaseDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/miui/backup/BackupTask;->mSysAppCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/miui/backup/BackupTask;->mApkCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/miui/backup/BackupDescript;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .local v0, backupDescription:Lcom/miui/backup/BackupDescript;
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/backup/BackupDescript;->mSize:Ljava/lang/String;

    .line 93
    iget-object v3, p0, Lcom/miui/backup/BackupTask;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0, v3}, Lcom/miui/backup/BackupDescript;->write(Ljava/io/File;)V

    .line 94
    return-void
.end method


# virtual methods
.method public getFinishedResId()I
    .locals 1

    .prologue
    .line 29
    const v0, 0x7f07000e

    return v0
.end method

.method public getProgressHintResId()I
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f070070

    return v0
.end method

.method public getProgressResId()I
    .locals 1

    .prologue
    .line 24
    const v0, 0x7f07000c

    return v0
.end method

.method public getTaskCancelResId()I
    .locals 1

    .prologue
    .line 44
    const v0, 0x7f070071

    return v0
.end method

.method public getTaskType()I
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    return v0
.end method

.method protected handleError()Z
    .locals 2

    .prologue
    .line 63
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1}, Lcom/miui/backup/SysUtils;->enoughSpaceOnSdCard(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/miui/backup/BackupTask;->mContext:Landroid/content/Context;

    const v1, 0x7f070053

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/backup/BackupTask;->showErrorDialog(Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected postAction()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/miui/backup/BackupTask;->writeBackupDescription()V

    .line 59
    return-void
.end method

.method protected preAction()Z
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/miui/backup/BackupTask;->diskCheck()Z

    move-result v0

    return v0
.end method
