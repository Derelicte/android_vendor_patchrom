.class Lcom/miui/backup/BackupAccountCmd;
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
    .line 308
    invoke-direct/range {p0 .. p5}, Lcom/miui/backup/BackupAppDataCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void
.end method


# virtual methods
.method protected genStrategy()V
    .locals 6

    .prologue
    .line 314
    new-instance v2, Lcom/miui/backup/ScriptStrategy;

    invoke-direct {v2}, Lcom/miui/backup/ScriptStrategy;-><init>()V

    .line 315
    .local v2, emalStrategy:Lcom/miui/backup/ScriptStrategy;
    const/16 v3, 0xc

    const-string v4, "/data/data/com.android.email"

    iget-object v5, p0, Lcom/miui/backup/BackupAccountCmd;->mBaseDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/miui/backup/BackupAccountCmd;->addItemToScript(Lcom/miui/backup/BackupRestoreStrategy;ILjava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {v2}, Lcom/miui/backup/ScriptStrategy;->execute()Z

    .line 318
    new-instance v3, Lcom/miui/backup/ScriptStrategy;

    invoke-direct {v3}, Lcom/miui/backup/ScriptStrategy;-><init>()V

    iput-object v3, p0, Lcom/miui/backup/BackupAccountCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    .line 320
    iget-object v3, p0, Lcom/miui/backup/BackupAccountCmd;->mDataPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/miui/backup/BackupUtils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, dstName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/miui/backup/BackupAccountCmd;->mBaseDir:Ljava/io/File;

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 322
    .local v0, dstFile:Ljava/io/File;
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/backup/BackupAccountCmd;->mDataPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/miui/backup/BackupAccountCmd;->addItemToScript(ILjava/lang/String;Ljava/lang/String;)V

    .line 323
    return-void
.end method
