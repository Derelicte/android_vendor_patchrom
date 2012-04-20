.class Lcom/miui/backup/BackupLauncherDbCmd;
.super Lcom/miui/backup/BackupCmd;
.source "BackupCmd.java"


# instance fields
.field private mDataName:Ljava/lang/String;

.field private mDataPath:Ljava/lang/String;

.field private mPkgInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method public constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"
    .parameter "dataName"
    .parameter "dataPath"

    .prologue
    .line 212
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/BackupCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    .line 213
    iget-object v0, p1, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/miui/backup/BackupUtils;->getPkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/BackupLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    .line 214
    iput-object p4, p0, Lcom/miui/backup/BackupLauncherDbCmd;->mDataName:Ljava/lang/String;

    .line 215
    iput-object p5, p0, Lcom/miui/backup/BackupLauncherDbCmd;->mDataPath:Ljava/lang/String;

    .line 216
    return-void
.end method


# virtual methods
.method protected genStrategy()V
    .locals 5

    .prologue
    .line 220
    iget-object v2, p0, Lcom/miui/backup/BackupLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v2, :cond_0

    .line 235
    :goto_0
    return-void

    .line 223
    :cond_0
    new-instance v2, Lcom/miui/backup/ScriptStrategy;

    invoke-direct {v2}, Lcom/miui/backup/ScriptStrategy;-><init>()V

    iput-object v2, p0, Lcom/miui/backup/BackupLauncherDbCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    .line 224
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/backup/BackupLauncherDbCmd;->mBaseDir:Ljava/io/File;

    const-string v3, "com.miui.home"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 225
    .local v0, packageDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 226
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 228
    :cond_1
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/miui/backup/BackupLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/miui/backup/BackupLauncherDbCmd;->addItemToScript(ILjava/lang/String;Ljava/lang/String;)V

    .line 230
    new-instance v1, Ljava/io/File;

    const-string v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 231
    .local v1, widgetDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 232
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 234
    :cond_2
    const/4 v2, 0x0

    const-string v3, "/data/system/appwidgets.xml"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/miui/backup/BackupLauncherDbCmd;->addItemToScript(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected postAction()Z
    .locals 5

    .prologue
    .line 239
    new-instance v0, Lcom/miui/backup/BackupItemDescript;

    invoke-virtual {p0}, Lcom/miui/backup/BackupLauncherDbCmd;->getLabel()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/backup/BackupLauncherDbCmd;->mDataName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/backup/BackupLauncherDbCmd;->mDataPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/backup/BackupLauncherDbCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget v4, v4, Lcom/miui/backup/AppInfo;->type:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/backup/BackupItemDescript;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 240
    .local v0, backupItemDescript:Lcom/miui/backup/BackupItemDescript;
    invoke-virtual {p0}, Lcom/miui/backup/BackupLauncherDbCmd;->getFinishedSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/backup/BackupItemDescript;->mSize:Ljava/lang/String;

    .line 241
    iget-object v1, p0, Lcom/miui/backup/BackupLauncherDbCmd;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/miui/backup/BackupItemDescript;->write(Ljava/io/File;)V

    .line 243
    const/4 v1, 0x1

    return v1
.end method
