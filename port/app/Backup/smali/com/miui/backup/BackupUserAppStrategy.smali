.class Lcom/miui/backup/BackupUserAppStrategy;
.super Lcom/miui/backup/UserAppStrategy;
.source "BackupRestoreStrategy.java"


# instance fields
.field private mIncludeApk:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Z)V
    .locals 0
    .parameter "srcFile"
    .parameter "dstFile"
    .parameter "packageName"
    .parameter "includeApk"

    .prologue
    .line 191
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/UserAppStrategy;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 192
    iput-boolean p4, p0, Lcom/miui/backup/BackupUserAppStrategy;->mIncludeApk:Z

    .line 193
    return-void
.end method


# virtual methods
.method protected execute_()V
    .locals 9

    .prologue
    .line 197
    const-string v2, "backup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 198
    .local v0, backupManager:Landroid/app/backup/IBackupManager;
    iget-object v2, p0, Lcom/miui/backup/BackupUserAppStrategy;->mDstFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    :try_start_0
    iget-object v2, p0, Lcom/miui/backup/BackupUserAppStrategy;->mDstFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 201
    iget-object v2, p0, Lcom/miui/backup/BackupUserAppStrategy;->mDstFile:Ljava/io/File;

    const/high16 v3, 0x2000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 202
    .local v1, parcelFileDescripter:Landroid/os/ParcelFileDescriptor;
    iget-boolean v2, p0, Lcom/miui/backup/BackupUserAppStrategy;->mIncludeApk:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/miui/backup/BackupUserAppStrategy;->mPackageName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-interface/range {v0 .. v6}, Landroid/app/backup/IBackupManager;->fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZ[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v1           #parcelFileDescripter:Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v2

    goto :goto_0

    .line 203
    :catch_1
    move-exception v2

    goto :goto_0
.end method
