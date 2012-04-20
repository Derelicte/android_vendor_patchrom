.class Lcom/miui/backup/BackupSettingCmd;
.super Lcom/miui/backup/BackupControllerCmd;
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
    .line 271
    invoke-direct/range {p0 .. p5}, Lcom/miui/backup/BackupControllerCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method


# virtual methods
.method protected postAction()Z
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 276
    new-instance v6, Lcom/miui/backup/ScriptStrategy;

    invoke-direct {v6}, Lcom/miui/backup/ScriptStrategy;-><init>()V

    .line 279
    .local v6, strategy:Lcom/miui/backup/ScriptStrategy;
    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Lcom/miui/backup/BackupSettingCmd;->mBaseDir:Ljava/io/File;

    const-string v8, "com.android.phone_preferences.xml"

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 280
    .local v5, phonePrefFile:Ljava/io/File;
    const-string v7, "/data/data/com.android.phone/shared_prefs/com.android.phone_preferences.xml"

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v6, v9, v7, v8}, Lcom/miui/backup/BackupSettingCmd;->addItemToScript(Lcom/miui/backup/BackupRestoreStrategy;ILjava/lang/String;Ljava/lang/String;)V

    .line 282
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lcom/miui/backup/BackupSettingCmd;->mBaseDir:Ljava/io/File;

    const-string v8, "com.android.mms_preferences.xml"

    invoke-direct {v3, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 283
    .local v3, mmsPrefFile:Ljava/io/File;
    const-string v7, "/data/data/com.android.mms/shared_prefs/com.android.mms_preferences.xml"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v6, v9, v7, v8}, Lcom/miui/backup/BackupSettingCmd;->addItemToScript(Lcom/miui/backup/BackupRestoreStrategy;ILjava/lang/String;Ljava/lang/String;)V

    .line 286
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lcom/miui/backup/BackupSettingCmd;->mBaseDir:Ljava/io/File;

    const-string v8, "gesture.key"

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 287
    .local v2, gestureFile:Ljava/io/File;
    const-string v7, "/data/system/gesture.key"

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v6, v9, v7, v8}, Lcom/miui/backup/BackupSettingCmd;->addItemToScript(Lcom/miui/backup/BackupRestoreStrategy;ILjava/lang/String;Ljava/lang/String;)V

    .line 288
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lcom/miui/backup/BackupSettingCmd;->mBaseDir:Ljava/io/File;

    const-string v8, "password.key"

    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 289
    .local v4, passwordFile:Ljava/io/File;
    const-string v7, "/data/system/password.key"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v6, v9, v7, v8}, Lcom/miui/backup/BackupSettingCmd;->addItemToScript(Lcom/miui/backup/BackupRestoreStrategy;ILjava/lang/String;Ljava/lang/String;)V

    .line 292
    new-instance v1, Ljava/io/File;

    iget-object v7, p0, Lcom/miui/backup/BackupSettingCmd;->mBaseDir:Ljava/io/File;

    const-string v8, "build.prop"

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 293
    .local v1, buildPrefFile:Ljava/io/File;
    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/miui/backup/BackupSettingCmd;->addItemToScript(Lcom/miui/backup/BackupRestoreStrategy;ILjava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {v6}, Lcom/miui/backup/ScriptStrategy;->execute()Z

    .line 297
    new-instance v0, Lcom/miui/backup/BackupItemDescript;

    invoke-virtual {p0}, Lcom/miui/backup/BackupSettingCmd;->getLabel()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/backup/BackupSettingCmd;->mDataName:Ljava/lang/String;

    iget-object v9, p0, Lcom/miui/backup/BackupSettingCmd;->mDataPath:Ljava/lang/String;

    iget-object v10, p0, Lcom/miui/backup/BackupSettingCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget v10, v10, Lcom/miui/backup/AppInfo;->type:I

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/miui/backup/BackupItemDescript;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 298
    .local v0, backupItemDescript:Lcom/miui/backup/BackupItemDescript;
    invoke-virtual {p0}, Lcom/miui/backup/BackupSettingCmd;->getFinishedSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/miui/backup/BackupItemDescript;->mSize:Ljava/lang/String;

    .line 299
    iget-object v7, p0, Lcom/miui/backup/BackupSettingCmd;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0, v7}, Lcom/miui/backup/BackupItemDescript;->write(Ljava/io/File;)V

    .line 300
    const/4 v7, 0x1

    return v7
.end method
