.class public Lcom/miui/player/service/LockScreenListener;
.super Ljava/lang/Object;
.source "LockScreenListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/service/LockScreenListener$LockScreenReceiver;
    }
.end annotation


# instance fields
.field private final mLockScreenListener:Lcom/miui/player/service/LockScreenListener$LockScreenReceiver;

.field mService:Lcom/miui/player/service/MediaPlaybackService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/miui/player/service/LockScreenListener$LockScreenReceiver;

    invoke-direct {v0, p0}, Lcom/miui/player/service/LockScreenListener$LockScreenReceiver;-><init>(Lcom/miui/player/service/LockScreenListener;)V

    iput-object v0, p0, Lcom/miui/player/service/LockScreenListener;->mLockScreenListener:Lcom/miui/player/service/LockScreenListener$LockScreenReceiver;

    .line 28
    return-void
.end method


# virtual methods
.method copyAlbum(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "destPath"

    .prologue
    .line 47
    iget-object v5, p0, Lcom/miui/player/service/LockScreenListener;->mService:Lcom/miui/player/service/MediaPlaybackService;

    .line 48
    .local v5, s:Lcom/miui/player/service/MediaPlaybackService;
    if-nez v5, :cond_0

    .line 49
    const/4 v6, 0x0

    .line 92
    :goto_0
    return-object v6

    .line 52
    :cond_0
    const/4 v3, 0x0

    .line 53
    .local v3, inputStream:Ljava/io/InputStream;
    const-string v6, "display_album"

    invoke-static {v5, v6}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 54
    const-string v6, "android_album"

    invoke-static {v5, v6}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 55
    invoke-virtual {v5}, Lcom/miui/player/service/MediaPlaybackService;->getAudioId()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/miui/player/service/MediaPlaybackService;->getAlbumId()J

    move-result-wide v8

    invoke-static {v5, v6, v7, v8, v9}, Lcom/miui/player/meta/AlbumManager;->getArtworkStream(Landroid/content/Context;JJ)Ljava/io/InputStream;

    move-result-object v3

    .line 57
    :cond_1
    if-nez v3, :cond_2

    .line 58
    invoke-virtual {v5}, Lcom/miui/player/service/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/miui/player/service/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/miui/player/service/MediaPlaybackService;->getAlbumFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 59
    .local v0, albumFile:Ljava/io/File;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 61
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    .end local v3           #inputStream:Ljava/io/InputStream;
    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v0           #albumFile:Ljava/io/File;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    :cond_2
    :goto_1
    if-nez v3, :cond_5

    .line 69
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 71
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 73
    :cond_3
    const/4 p1, 0x0

    .end local v2           #file:Ljava/io/File;
    :cond_4
    :goto_2
    move-object v6, p1

    .line 92
    goto :goto_0

    .line 62
    .end local v3           #inputStream:Ljava/io/InputStream;
    .restart local v0       #albumFile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 63
    .local v1, e:Ljava/io/FileNotFoundException;
    const/4 v3, 0x0

    .restart local v3       #inputStream:Ljava/io/InputStream;
    goto :goto_1

    .line 75
    .end local v0           #albumFile:Ljava/io/File;
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_5
    const/4 v4, 0x0

    .line 77
    .local v4, outputStream:Ljava/io/FileOutputStream;
    :try_start_1
    const-string v6, "ablum.jpg"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/miui/player/service/MediaPlaybackService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    .line 82
    :goto_3
    if-eqz v4, :cond_4

    .line 83
    invoke-static {v3, v4}, Lcom/xiaomi/common/file/FileOperations;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    .line 85
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 86
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 87
    :catch_1
    move-exception v6

    goto :goto_2

    .line 78
    :catch_2
    move-exception v1

    .line 79
    .restart local v1       #e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3
.end method

.method notifyScreenManager(Ljava/lang/String;Z)V
    .locals 4
    .parameter "tempAlbumPath"
    .parameter "isShowMusic"

    .prologue
    .line 143
    iget-object v1, p0, Lcom/miui/player/service/LockScreenListener;->mService:Lcom/miui/player/service/MediaPlaybackService;

    .line 144
    .local v1, s:Lcom/miui/player/service/MediaPlaybackService;
    if-nez v1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 147
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "lockscreen.action.SONG_METADATA_UPDATED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "tmp_album_path"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v2, "is_showmusic"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    const-string v2, "artist"

    invoke-virtual {v1}, Lcom/miui/player/service/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v2, "album"

    invoke-virtual {v1}, Lcom/miui/player/service/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v2, "track"

    invoke-virtual {v1}, Lcom/miui/player/service/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v2, "playing"

    invoke-virtual {v1}, Lcom/miui/player/service/MediaPlaybackService;->isPlaying()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 154
    invoke-virtual {v1, v0}, Lcom/miui/player/service/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public registerScreenlock(Lcom/miui/player/service/MediaPlaybackService;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 31
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 32
    .local v0, screenlockFilter:Landroid/content/IntentFilter;
    const-string v1, "lockscreen.action.SONG_METADATA_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    const-string v1, "com.miui.player.musicservicecommand.update_meta"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/miui/player/service/LockScreenListener;->mLockScreenListener:Lcom/miui/player/service/LockScreenListener$LockScreenReceiver;

    invoke-virtual {p1, v1, v0}, Lcom/miui/player/service/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 35
    iput-object p1, p0, Lcom/miui/player/service/LockScreenListener;->mService:Lcom/miui/player/service/MediaPlaybackService;

    .line 36
    return-void
.end method

.method public unregisterScreenlock()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    iget-object v0, p0, Lcom/miui/player/service/LockScreenListener;->mService:Lcom/miui/player/service/MediaPlaybackService;

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/miui/player/service/LockScreenListener;->notifyScreenManager(Ljava/lang/String;Z)V

    .line 41
    iget-object v0, p0, Lcom/miui/player/service/LockScreenListener;->mService:Lcom/miui/player/service/MediaPlaybackService;

    iget-object v1, p0, Lcom/miui/player/service/LockScreenListener;->mLockScreenListener:Lcom/miui/player/service/LockScreenListener$LockScreenReceiver;

    invoke-virtual {v0, v1}, Lcom/miui/player/service/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 42
    iput-object v2, p0, Lcom/miui/player/service/LockScreenListener;->mService:Lcom/miui/player/service/MediaPlaybackService;

    .line 44
    :cond_0
    return-void
.end method
