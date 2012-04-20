.class Lcom/miui/backup/BackupAppDataCmd;
.super Lcom/miui/backup/BackupCmd;
.source "BackupCmd.java"


# instance fields
.field protected mDataName:Ljava/lang/String;

.field protected mDataPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"
    .parameter "dataName"
    .parameter "dataPath"

    .prologue
    .line 182
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/BackupCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    .line 179
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/backup/BackupAppDataCmd;->mDataName:Ljava/lang/String;

    .line 180
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/backup/BackupAppDataCmd;->mDataPath:Ljava/lang/String;

    .line 183
    iput-object p4, p0, Lcom/miui/backup/BackupAppDataCmd;->mDataName:Ljava/lang/String;

    .line 184
    iput-object p5, p0, Lcom/miui/backup/BackupAppDataCmd;->mDataPath:Ljava/lang/String;

    .line 185
    return-void
.end method


# virtual methods
.method protected genStrategy()V
    .locals 5

    .prologue
    .line 191
    new-instance v2, Lcom/miui/backup/ScriptStrategy;

    invoke-direct {v2}, Lcom/miui/backup/ScriptStrategy;-><init>()V

    iput-object v2, p0, Lcom/miui/backup/BackupAppDataCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    .line 192
    iget-object v2, p0, Lcom/miui/backup/BackupAppDataCmd;->mDataPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/backup/BackupUtils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, dstName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/backup/BackupAppDataCmd;->mBaseDir:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 194
    .local v0, dstFile:Ljava/io/File;
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/backup/BackupAppDataCmd;->mDataPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/miui/backup/BackupAppDataCmd;->addItemToScript(ILjava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method protected postAction()Z
    .locals 5

    .prologue
    .line 199
    new-instance v0, Lcom/miui/backup/BackupItemDescript;

    invoke-virtual {p0}, Lcom/miui/backup/BackupAppDataCmd;->getLabel()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/backup/BackupAppDataCmd;->mDataName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/backup/BackupAppDataCmd;->mDataPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/backup/BackupAppDataCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget v4, v4, Lcom/miui/backup/AppInfo;->type:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/backup/BackupItemDescript;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 200
    .local v0, backupItemDescript:Lcom/miui/backup/BackupItemDescript;
    invoke-virtual {p0}, Lcom/miui/backup/BackupAppDataCmd;->getFinishedSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/backup/BackupItemDescript;->mSize:Ljava/lang/String;

    .line 201
    iget-object v1, p0, Lcom/miui/backup/BackupAppDataCmd;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/miui/backup/BackupItemDescript;->write(Ljava/io/File;)V

    .line 202
    const/4 v1, 0x1

    return v1
.end method
