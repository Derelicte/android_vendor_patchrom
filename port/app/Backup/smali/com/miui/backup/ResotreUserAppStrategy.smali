.class Lcom/miui/backup/ResotreUserAppStrategy;
.super Lcom/miui/backup/UserAppStrategy;
.source "BackupRestoreStrategy.java"


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .parameter "srcFile"
    .parameter "dstFile"
    .parameter "packageName"

    .prologue
    .line 213
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/UserAppStrategy;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 214
    return-void
.end method


# virtual methods
.method protected execute_()V
    .locals 4

    .prologue
    .line 218
    const-string v2, "backup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 219
    .local v0, backupManager:Landroid/app/backup/IBackupManager;
    iget-object v2, p0, Lcom/miui/backup/ResotreUserAppStrategy;->mSrcFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    :try_start_0
    iget-object v2, p0, Lcom/miui/backup/ResotreUserAppStrategy;->mSrcFile:Ljava/io/File;

    const/high16 v3, 0x1000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 222
    .local v1, parcelFileDescripter:Landroid/os/ParcelFileDescriptor;
    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->fullRestore(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v1           #parcelFileDescripter:Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v2

    goto :goto_0

    .line 223
    :catch_1
    move-exception v2

    goto :goto_0
.end method
