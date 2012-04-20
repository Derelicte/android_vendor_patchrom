.class Lcom/miui/backup/BackupControllerCmd;
.super Lcom/miui/backup/BackupAppDataCmd;
.source "BackupCmd.java"


# direct methods
.method constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"
    .parameter "dataName"
    .parameter "dataPath"

    .prologue
    .line 249
    invoke-direct/range {p0 .. p5}, Lcom/miui/backup/BackupAppDataCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method


# virtual methods
.method protected formatFinishedSize(J)Ljava/lang/String;
    .locals 1
    .parameter "finishedSize"

    .prologue
    .line 259
    invoke-static {p1, p2}, Lcom/miui/backup/BackupUtils;->getCommaFormat(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected genStrategy()V
    .locals 5

    .prologue
    .line 254
    new-instance v0, Lcom/miui/backup/BackupControllerStrategy;

    iget-object v1, p0, Lcom/miui/backup/BackupControllerCmd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/backup/BackupControllerCmd;->mBaseDir:Ljava/io/File;

    iget-object v3, p0, Lcom/miui/backup/BackupControllerCmd;->mDataName:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/backup/BackupControllerCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v4, v4, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/backup/BackupControllerStrategy;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/backup/BackupControllerCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    .line 255
    return-void
.end method

.method protected getUnit()Ljava/lang/String;
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/miui/backup/BackupControllerCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
