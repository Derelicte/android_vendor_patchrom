.class Lcom/miui/backup/RestoreUserAppCmd;
.super Lcom/miui/backup/RestoreAppCmd;
.source "RestoreCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/backup/RestoreUserAppCmd$PackageInstallObserver;
    }
.end annotation


# instance fields
.field private final APK_INSTALL_PROGRESS_RATIO:D

.field protected final APK_INSTALL_WAIT_INTEVAL:I

.field private mApkInstallationSucceeded:Z

.field protected mApkSize:J

.field private mInstallWaiting:Lcom/miui/backup/Waitor;

.field protected mProgressor:Lcom/miui/backup/InstallProgressor;


# direct methods
.method public constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V
    .locals 2
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"

    .prologue
    const/16 v1, 0x1f4

    .line 216
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/RestoreAppCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    .line 235
    iput v1, p0, Lcom/miui/backup/RestoreUserAppCmd;->APK_INSTALL_WAIT_INTEVAL:I

    .line 236
    new-instance v0, Lcom/miui/backup/Waitor;

    invoke-direct {v0, v1}, Lcom/miui/backup/Waitor;-><init>(I)V

    iput-object v0, p0, Lcom/miui/backup/RestoreUserAppCmd;->mInstallWaiting:Lcom/miui/backup/Waitor;

    .line 259
    const-wide/high16 v0, 0x3fe0

    iput-wide v0, p0, Lcom/miui/backup/RestoreUserAppCmd;->APK_INSTALL_PROGRESS_RATIO:D

    .line 217
    return-void
.end method

.method static synthetic access$000(Lcom/miui/backup/RestoreUserAppCmd;)Lcom/miui/backup/Waitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/miui/backup/RestoreUserAppCmd;->mInstallWaiting:Lcom/miui/backup/Waitor;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/backup/RestoreUserAppCmd;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 212
    iput-boolean p1, p0, Lcom/miui/backup/RestoreUserAppCmd;->mApkInstallationSucceeded:Z

    return p1
.end method

.method private installPkg()Z
    .locals 7

    .prologue
    .line 239
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/miui/backup/RestoreUserAppCmd;->mBaseDir:Ljava/io/File;

    iget-object v4, p0, Lcom/miui/backup/RestoreUserAppCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v4, v4, Lcom/miui/backup/AppInfo;->packagePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/miui/backup/BackupUtils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 240
    .local v0, apkFile:Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 241
    .local v2, packageURI:Landroid/net/Uri;
    iget-object v3, p0, Lcom/miui/backup/RestoreUserAppCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v3, v3, Lcom/miui/backup/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/miui/backup/RestoreUserAppCmd;->pkgExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x2

    .line 242
    .local v1, installFlag:I
    :goto_0
    iget-object v3, p0, Lcom/miui/backup/RestoreUserAppCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Lcom/miui/backup/RestoreUserAppCmd$PackageInstallObserver;

    invoke-direct {v4, p0}, Lcom/miui/backup/RestoreUserAppCmd$PackageInstallObserver;-><init>(Lcom/miui/backup/RestoreUserAppCmd;)V

    iget-object v5, p0, Lcom/miui/backup/RestoreUserAppCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v1, v5}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 249
    invoke-static {v0}, Lcom/miui/backup/SysUtils;->countFileSize(Ljava/io/File;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/backup/RestoreUserAppCmd;->mApkSize:J

    .line 250
    new-instance v3, Lcom/miui/backup/InstallProgressor;

    iget-wide v4, p0, Lcom/miui/backup/RestoreUserAppCmd;->mApkSize:J

    const/16 v6, 0x1f4

    invoke-direct {v3, v4, v5, v6}, Lcom/miui/backup/InstallProgressor;-><init>(JI)V

    iput-object v3, p0, Lcom/miui/backup/RestoreUserAppCmd;->mProgressor:Lcom/miui/backup/InstallProgressor;

    .line 251
    :goto_1
    iget-object v3, p0, Lcom/miui/backup/RestoreUserAppCmd;->mInstallWaiting:Lcom/miui/backup/Waitor;

    invoke-virtual {v3}, Lcom/miui/backup/Waitor;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1

    .line 252
    iget-object v3, p0, Lcom/miui/backup/RestoreUserAppCmd;->mInstallWaiting:Lcom/miui/backup/Waitor;

    invoke-virtual {v3}, Lcom/miui/backup/Waitor;->waitInterval()V

    .line 253
    iget-object v3, p0, Lcom/miui/backup/RestoreUserAppCmd;->mProgressor:Lcom/miui/backup/InstallProgressor;

    invoke-virtual {v3}, Lcom/miui/backup/InstallProgressor;->update()V

    goto :goto_1

    .line 241
    .end local v1           #installFlag:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 255
    .restart local v1       #installFlag:I
    :cond_1
    iget-object v3, p0, Lcom/miui/backup/RestoreUserAppCmd;->mProgressor:Lcom/miui/backup/InstallProgressor;

    invoke-virtual {v3}, Lcom/miui/backup/InstallProgressor;->finish()V

    .line 256
    iget-boolean v3, p0, Lcom/miui/backup/RestoreUserAppCmd;->mApkInstallationSucceeded:Z

    return v3
.end method


# virtual methods
.method protected getPreActionSize()J
    .locals 4

    .prologue
    .line 232
    iget-object v0, p0, Lcom/miui/backup/RestoreUserAppCmd;->mProgressor:Lcom/miui/backup/InstallProgressor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/backup/RestoreUserAppCmd;->mProgressor:Lcom/miui/backup/InstallProgressor;

    invoke-virtual {v0}, Lcom/miui/backup/InstallProgressor;->getProgress()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/miui/backup/RestoreUserAppCmd;->mApkSize:J

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected getProgress()I
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3fe0

    .line 262
    iget-object v0, p0, Lcom/miui/backup/RestoreUserAppCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iget v0, v0, Lcom/miui/backup/CmdRunningInfo;->status:I

    packed-switch v0, :pswitch_data_0

    .line 272
    invoke-super {p0}, Lcom/miui/backup/RestoreAppCmd;->getProgress()I

    move-result v0

    :goto_0
    return v0

    .line 264
    :pswitch_0
    iget-object v0, p0, Lcom/miui/backup/RestoreUserAppCmd;->mProgressor:Lcom/miui/backup/InstallProgressor;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/miui/backup/RestoreUserAppCmd;->mProgressor:Lcom/miui/backup/InstallProgressor;

    invoke-virtual {v0}, Lcom/miui/backup/InstallProgressor;->getProgress()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    goto :goto_0

    .line 267
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 270
    :pswitch_1
    const-wide/high16 v0, 0x4049

    invoke-super {p0}, Lcom/miui/backup/RestoreAppCmd;->getProgress()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected preAction()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 221
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/backup/RestoreUserAppCmd;->mBaseDir:Ljava/io/File;

    iget-object v3, p0, Lcom/miui/backup/RestoreUserAppCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v3, v3, Lcom/miui/backup/AppInfo;->packagePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/miui/backup/BackupUtils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 222
    .local v0, apkFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 226
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, Lcom/miui/backup/RestoreUserAppCmd;->installPkg()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-super {p0}, Lcom/miui/backup/RestoreAppCmd;->preAction()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
