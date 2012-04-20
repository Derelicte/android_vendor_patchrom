.class public Lcom/android/updater/tasks/DownloadUpdateManager;
.super Ljava/lang/Object;
.source "DownloadUpdateManager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownloadManager:Landroid/app/MiuiDownloadManager;

.field private mId:J

.field private mPreferences:Lcom/android/updater/utils/Preferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    new-instance v0, Lcom/android/updater/utils/Preferences;

    invoke-direct {v0, p1}, Lcom/android/updater/utils/Preferences;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/updater/tasks/DownloadUpdateManager;-><init>(Landroid/content/Context;Lcom/android/updater/utils/Preferences;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/updater/utils/Preferences;)V
    .locals 1
    .parameter "context"
    .parameter "preferences"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mPreferences:Lcom/android/updater/utils/Preferences;

    .line 33
    const-string v0, "download"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/MiuiDownloadManager;

    iput-object v0, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mDownloadManager:Landroid/app/MiuiDownloadManager;

    .line 34
    return-void
.end method

.method private insert(Landroid/content/Context;Lcom/android/updater/customTypes/UpdateInfo;)V
    .locals 9
    .parameter "context"
    .parameter "ui"

    .prologue
    .line 45
    invoke-virtual {p2}, Lcom/android/updater/customTypes/UpdateInfo;->updateFileUris()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/URI;

    .line 46
    .local v5, uri:Ljava/net/URI;
    const-string v6, "DownloadUpdateManager"

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lcom/android/updater/utils/SysUtils;->getRomDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {p2}, Lcom/android/updater/customTypes/UpdateInfo;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, destFilePath:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".temp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, tempFilepath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .local v3, tempFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 52
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 55
    :cond_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 56
    .local v1, destUri:Landroid/net/Uri;
    new-instance v2, Landroid/app/MiuiDownloadManager$Request;

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/app/MiuiDownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 57
    .local v2, request:Landroid/app/MiuiDownloadManager$Request;
    const-string v6, "application/zip-ota"

    invoke-virtual {v2, v6}, Landroid/app/MiuiDownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 58
    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/MiuiDownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 59
    invoke-virtual {p2}, Lcom/android/updater/customTypes/UpdateInfo;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/MiuiDownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 60
    invoke-virtual {v2, v1}, Landroid/app/MiuiDownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 61
    invoke-virtual {v2, v4}, Landroid/app/MiuiDownloadManager$Request;->setAppointName(Ljava/lang/String;)Landroid/app/MiuiDownloadManager$Request;

    .line 62
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/app/MiuiDownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 63
    invoke-virtual {v2, v0}, Landroid/app/MiuiDownloadManager$Request;->setAppData(Ljava/lang/String;)Landroid/app/MiuiDownloadManager$Request;

    .line 64
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Landroid/app/MiuiDownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 65
    iget-object v6, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mDownloadManager:Landroid/app/MiuiDownloadManager;

    invoke-virtual {v6, v2}, Landroid/app/MiuiDownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mId:J

    .line 66
    return-void
.end method

.method private startDownload(Lcom/android/updater/customTypes/UpdateInfo;)V
    .locals 6
    .parameter "ui"

    .prologue
    .line 69
    iget-object v1, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/android/updater/tasks/DownloadUpdateManager;->insert(Landroid/content/Context;Lcom/android/updater/customTypes/UpdateInfo;)V

    .line 70
    iget-object v1, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mPreferences:Lcom/android/updater/utils/Preferences;

    invoke-virtual {v1, p1}, Lcom/android/updater/utils/Preferences;->setLastUpdateInfo(Lcom/android/updater/customTypes/UpdateInfo;)V

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPERATE_DOWNLOADSET_UPDATE_PROGRESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "intent_extra_register_downloads_update_progress"

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mId:J

    aput-wide v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 75
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mDownloadManager:Landroid/app/MiuiDownloadManager;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mId:J

    aput-wide v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/MiuiDownloadManager;->remove([J)I

    .line 107
    return-void
.end method

.method public download(Lcom/android/updater/customTypes/UpdateInfo;)V
    .locals 4
    .parameter "updateInfo"

    .prologue
    .line 37
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/updater/utils/SysUtils;->getRomDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/updater/customTypes/UpdateInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, destFilePath:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/updater/tasks/DownloadUpdateManager;->isDownloading(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/updater/tasks/DownloadUpdateManager;->startDownload(Lcom/android/updater/customTypes/UpdateInfo;)V

    goto :goto_0
.end method

.method public finishDownload(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const-wide/16 v4, -0x1

    const v3, 0x7f05003e

    .line 121
    iget-object v1, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/android/updater/utils/SysUtils;->cancelNotification(Landroid/content/Context;I)V

    .line 122
    const-string v1, "extra_download_id"

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mId:J

    .line 123
    iget-wide v1, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mId:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/android/updater/tasks/DownloadUpdateManager;->unregisterDownload()V

    .line 129
    sget-boolean v1, Lcom/android/updater/ApplyUpdateFragment;->sIsForeground:Z

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mId:J

    invoke-virtual {p0, v1, v2}, Lcom/android/updater/tasks/DownloadUpdateManager;->isDownloadSuccess(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mPreferences:Lcom/android/updater/utils/Preferences;

    invoke-virtual {v1}, Lcom/android/updater/utils/Preferences;->isBackgroundDownload()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    iget-object v1, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/updater/utils/SysUtils;->checkNewVersion(Landroid/content/Context;)V

    goto :goto_0

    .line 139
    :cond_2
    iget-object v1, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mPreferences:Lcom/android/updater/utils/Preferences;

    invoke-virtual {v1}, Lcom/android/updater/utils/Preferences;->getLastUpdateInfo()Lcom/android/updater/customTypes/UpdateInfo;

    move-result-object v0

    .line 140
    .local v0, updateInfo:Lcom/android/updater/customTypes/UpdateInfo;
    iget-object v1, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f050059

    const v4, 0x7f05003a

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/updater/utils/SysUtils;->showNotification(Landroid/content/Context;Lcom/android/updater/customTypes/UpdateInfo;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public getDownloadId()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mId:J

    return-wide v0
.end method

.method public isDownloadSuccess(J)Z
    .locals 5
    .parameter "id"

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, downloadSuccess:Z
    new-instance v2, Landroid/app/MiuiDownloadManager$Query;

    invoke-direct {v2}, Landroid/app/MiuiDownloadManager$Query;-><init>()V

    .line 95
    .local v2, query:Landroid/app/MiuiDownloadManager$Query;
    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide p1, v3, v4

    invoke-virtual {v2, v3}, Landroid/app/MiuiDownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 96
    iget-object v3, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mDownloadManager:Landroid/app/MiuiDownloadManager;

    invoke-virtual {v3, v2}, Landroid/app/MiuiDownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 98
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    invoke-static {v0}, Landroid/app/MiuiDownloadManager;->isDownloadSuccess(Landroid/database/Cursor;)Z

    move-result v1

    .line 100
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 102
    :cond_0
    return v1
.end method

.method public isDownloading(Ljava/lang/String;)Z
    .locals 5
    .parameter "appData"

    .prologue
    .line 78
    new-instance v1, Landroid/app/MiuiDownloadManager$Query;

    invoke-direct {v1}, Landroid/app/MiuiDownloadManager$Query;-><init>()V

    .line 79
    .local v1, query:Landroid/app/MiuiDownloadManager$Query;
    invoke-virtual {v1, p1}, Landroid/app/MiuiDownloadManager$Query;->setFilterByAppData(Ljava/lang/String;)Landroid/app/MiuiDownloadManager$Query;

    .line 80
    iget-object v3, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mDownloadManager:Landroid/app/MiuiDownloadManager;

    invoke-virtual {v3, v1}, Landroid/app/MiuiDownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 82
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 83
    .local v2, result:Z
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    invoke-static {v0}, Landroid/app/MiuiDownloadManager;->isDownloading(Landroid/database/Cursor;)Z

    move-result v2

    .line 85
    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mId:J

    .line 86
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 89
    :cond_0
    return v2
.end method

.method public unregisterDownload()V
    .locals 6

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPERATE_DOWNLOADSET_UPDATE_PROGRESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, unregisterIntent:Landroid/content/Intent;
    const-string v1, "intent_extra_unregister_downloads_update_progress"

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mId:J

    aput-wide v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 117
    iget-object v1, p0, Lcom/android/updater/tasks/DownloadUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    return-void
.end method
