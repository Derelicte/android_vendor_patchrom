.class public Lcom/miui/player/service/MediaPlaybackService;
.super Landroid/app/Service;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/service/MediaPlaybackService$ServiceStub;,
        Lcom/miui/player/service/MediaPlaybackService$LyricOpenRunnable;,
        Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;,
        Lcom/miui/player/service/MediaPlaybackService$AlbumSource;,
        Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;,
        Lcom/miui/player/service/MediaPlaybackService$CorrectId3AfterPlay;,
        Lcom/miui/player/service/MediaPlaybackService$PrepareInfo;
    }
.end annotation


# static fields
.field static final LOGTAG:Ljava/lang/String;


# instance fields
.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final mBinder:Landroid/os/IBinder;

.field mCardId:I

.field mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mConnectionListener:Lcom/miui/player/service/ConnectionListener;

.field mCursor:Landroid/database/Cursor;

.field private mDelayedStopHandler:Landroid/os/Handler;

.field mDownloadAlbumThread:Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;

.field mFileToPlay:Ljava/lang/String;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mIsSupposedToBePlaying:Z

.field mLocalCursorCols:[Ljava/lang/String;

.field private mLockScreenListener:Lcom/miui/player/service/LockScreenListener;

.field final mLyricManager:Lcom/miui/player/service/LyricManager;

.field mMediaMountedCount:I

.field final mMediaplayerHandler:Landroid/os/Handler;

.field final mMetaDownloadHandler:Landroid/os/Handler;

.field mOnlineCursorCols:[Ljava/lang/String;

.field mOpenFailedCounter:I

.field private mPlayList:[J

.field mPlayListLen:I

.field private mPlayPos:I

.field mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

.field private mPlayerResponser:Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;

.field mQueueIsSaveable:Z

.field private final mQuitReceiver:Landroid/content/BroadcastReceiver;

.field private final mRandom:Ljava/util/Random;

.field mRepeatMode:I

.field mResumeAfterAudioFocusGain:Z

.field private final mScanCompletedListener:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

.field mServiceInUse:Z

.field mServiceStartId:I

.field mShakeListener:Lcom/miui/player/service/ShakeListener;

.field private mShuffleMode:I

.field private mShuffleTracer:Lcom/miui/player/service/ShuffleTracer;

.field mSleepTriggerTime:J

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const-class v0, Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    .line 103
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Landroid/os/AsyncTask;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 104
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 384
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 128
    iput v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleMode:I

    .line 129
    iput v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mRepeatMode:I

    .line 130
    iput v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mMediaMountedCount:I

    .line 131
    iput-object v5, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    .line 132
    iput v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    .line 134
    iput v6, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    .line 136
    iput v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mOpenFailedCounter:I

    .line 137
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mSleepTriggerTime:J

    .line 142
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "audio._id AS _id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v4

    const-string v1, "album"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mLocalCursorCols:[Ljava/lang/String;

    .line 152
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v4

    const-string v1, "album"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "online_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mOnlineCursorCols:[Ljava/lang/String;

    .line 165
    iput-object v5, p0, Lcom/miui/player/service/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 168
    iput v6, p0, Lcom/miui/player/service/MediaPlaybackService;->mServiceStartId:I

    .line 169
    iput-boolean v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mServiceInUse:Z

    .line 170
    iput-boolean v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 171
    iput-boolean v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mResumeAfterAudioFocusGain:Z

    .line 172
    iput-boolean v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mQueueIsSaveable:Z

    .line 174
    new-instance v0, Lcom/miui/player/service/ShuffleTracer;

    invoke-direct {v0, v5}, Lcom/miui/player/service/ShuffleTracer;-><init>(Lcom/miui/player/service/ShuffleTracer$OnTraceableShufferExpand;)V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleTracer:Lcom/miui/player/service/ShuffleTracer;

    .line 175
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mRandom:Ljava/util/Random;

    .line 187
    new-instance v0, Lcom/miui/player/service/LyricManager;

    invoke-direct {v0}, Lcom/miui/player/service/LyricManager;-><init>()V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mLyricManager:Lcom/miui/player/service/LyricManager;

    .line 189
    new-instance v0, Lcom/miui/player/service/MediaPlaybackService$1;

    invoke-direct {v0, p0}, Lcom/miui/player/service/MediaPlaybackService$1;-><init>(Lcom/miui/player/service/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    .line 257
    new-instance v0, Lcom/miui/player/service/MediaPlaybackService$2;

    invoke-direct {v0, p0}, Lcom/miui/player/service/MediaPlaybackService$2;-><init>(Lcom/miui/player/service/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 296
    new-instance v0, Lcom/miui/player/service/MediaPlaybackService$3;

    invoke-direct {v0, p0}, Lcom/miui/player/service/MediaPlaybackService$3;-><init>(Lcom/miui/player/service/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mQuitReceiver:Landroid/content/BroadcastReceiver;

    .line 365
    new-instance v0, Lcom/miui/player/service/MediaPlaybackService$4;

    invoke-direct {v0, p0}, Lcom/miui/player/service/MediaPlaybackService$4;-><init>(Lcom/miui/player/service/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mScanCompletedListener:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    .line 378
    new-instance v0, Lcom/miui/player/service/MediaPlaybackService$5;

    invoke-direct {v0, p0}, Lcom/miui/player/service/MediaPlaybackService$5;-><init>(Lcom/miui/player/service/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 706
    new-instance v0, Lcom/miui/player/service/MediaPlaybackService$6;

    invoke-direct {v0, p0}, Lcom/miui/player/service/MediaPlaybackService$6;-><init>(Lcom/miui/player/service/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 1365
    new-instance v0, Lcom/miui/player/service/MediaPlaybackService$8;

    invoke-direct {v0, p0}, Lcom/miui/player/service/MediaPlaybackService$8;-><init>(Lcom/miui/player/service/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 2361
    new-instance v0, Lcom/miui/player/service/MediaPlaybackService$9;

    invoke-direct {v0, p0}, Lcom/miui/player/service/MediaPlaybackService$9;-><init>(Lcom/miui/player/service/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mMetaDownloadHandler:Landroid/os/Handler;

    .line 2619
    new-instance v0, Lcom/miui/player/service/MediaPlaybackService$ServiceStub;

    invoke-direct {v0, p0}, Lcom/miui/player/service/MediaPlaybackService$ServiceStub;-><init>(Lcom/miui/player/service/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    .line 385
    return-void
.end method

.method private addToPlayList([JI)V
    .locals 7
    .parameter "list"
    .parameter "position"

    .prologue
    .line 890
    array-length v0, p1

    .line 891
    .local v0, addlen:I
    if-gez p2, :cond_0

    .line 892
    const/4 v3, 0x0

    iput v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    .line 893
    const/4 p2, 0x0

    .line 895
    :cond_0
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/miui/player/service/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 896
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-le p2, v3, :cond_1

    .line 897
    iget p2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    .line 901
    :cond_1
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    sub-int v2, v3, p2

    .line 902
    .local v2, tailsize:I
    move v1, v2

    .local v1, i:I
    :goto_0
    if-lez v1, :cond_2

    .line 903
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    add-int v4, p2, v1

    iget-object v5, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    add-int v6, p2, v1

    sub-int/2addr v6, v0

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    .line 902
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 907
    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 908
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    add-int v4, p2, v1

    aget-wide v5, p1, v1

    aput-wide v5, v3, v4

    .line 907
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 910
    :cond_3
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    .line 911
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_4

    .line 912
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 913
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 914
    const-string v3, "meta_changed_track"

    invoke-virtual {p0, v3}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V

    .line 916
    :cond_4
    return-void
.end method

.method private canPlay(Ljava/lang/String;Z)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1160
    const-string v2, "content://com.miui.player/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1189
    :cond_0
    :goto_0
    return v1

    .line 1164
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/common/util/Network;->isWifi(Landroid/content/Context;)Z

    move-result v2

    .line 1165
    if-nez v2, :cond_0

    .line 1169
    const-string v2, "other_connect_listen"

    invoke-static {p0, v2}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 1174
    if-eqz v3, :cond_5

    .line 1175
    if-nez p2, :cond_6

    const-string v2, "flow_save_hint"

    invoke-static {p0, v2}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1176
    invoke-static {p0, v1}, Lcom/miui/player/service/ConnectionListener;->showNetworkHelperInfo(Lcom/miui/player/service/MediaPlaybackService;Z)V

    move v2, v1

    .line 1189
    :cond_2
    :goto_1
    if-nez v3, :cond_3

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    move v1, v0

    goto :goto_0

    .line 1179
    :cond_5
    if-nez p2, :cond_6

    .line 1180
    invoke-direct {p0}, Lcom/miui/player/service/MediaPlaybackService;->isAllOnline()Z

    move-result v2

    .line 1181
    if-eqz v2, :cond_2

    .line 1182
    invoke-static {p0, v0}, Lcom/miui/player/service/ConnectionListener;->showNetworkHelperInfo(Lcom/miui/player/service/MediaPlaybackService;Z)V

    goto :goto_1

    :cond_6
    move v2, v1

    goto :goto_1
.end method

.method private createNotificationContent(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x7f0c0094

    .line 1323
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f030035

    invoke-direct {v1, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1325
    const v0, 0x7f0c004c

    invoke-virtual {v1, v0, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1326
    const v0, 0x7f0c0055

    invoke-virtual {v1, v0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1327
    const v0, 0x7f0c0056

    invoke-virtual {v1, v0, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1329
    const v0, 0x7f0c0095

    const-string v2, "com.miui.player.musicservicecommand.next"

    invoke-direct {p0, v2}, Lcom/miui/player/service/MediaPlaybackService;->getPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1331
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f02009f

    :goto_0
    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1333
    const-string v0, "com.miui.player.musicservicecommand.togglepause"

    invoke-direct {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->getPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1335
    return-object v1

    .line 1331
    :cond_0
    const v0, 0x7f0200a2

    goto :goto_0
.end method

.method private downloadAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2304
    invoke-static {p0}, Lcom/xiaomi/common/util/Network;->isWifi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "other_connect_album"

    invoke-static {p0, v0}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2306
    :cond_0
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mDownloadAlbumThread:Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;

    if-eqz v0, :cond_3

    .line 2307
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mDownloadAlbumThread:Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;

    iget-object v0, v0, Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;->mAlbumName:Ljava/lang/String;

    .line 2308
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mDownloadAlbumThread:Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;

    iget-object v1, v1, Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;->mArtistName:Ljava/lang/String;

    .line 2309
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2319
    :cond_1
    :goto_0
    return-void

    .line 2312
    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2316
    :cond_3
    new-instance v0, Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;-><init>(Lcom/miui/player/service/MediaPlaybackService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mDownloadAlbumThread:Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;

    .line 2317
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mDownloadAlbumThread:Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;

    invoke-virtual {v0}, Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;->start()V

    goto :goto_0
.end method

.method private enqueueNotification(ILandroid/app/Notification;I)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1347
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 1348
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1349
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1350
    sget-object v2, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": notify("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    const/4 v2, 0x0

    move v3, p1

    move v4, p3

    move-object v5, p2

    :try_start_0
    invoke-interface/range {v0 .. v6}, Landroid/app/INotificationManager;->enqueueNotificationWithTagPriority(Ljava/lang/String;Ljava/lang/String;IILandroid/app/Notification;[I)V

    .line 1353
    const/4 v0, 0x0

    aget v0, v6, v0

    if-eq p1, v0, :cond_0

    .line 1354
    sget-object v0, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify: id corrupted: sent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", got back "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v6, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1358
    :cond_0
    :goto_0
    return-void

    .line 1356
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private ensurePlayListCapacity(I)V
    .locals 5
    .parameter "size"

    .prologue
    .line 873
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    array-length v3, v3

    if-le p1, v3, :cond_3

    .line 877
    :cond_0
    mul-int/lit8 v3, p1, 0x2

    new-array v2, v3, [J

    .line 878
    .local v2, newlist:[J
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    array-length v1, v3

    .line 879
    .local v1, len:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 880
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    aget-wide v3, v3, v0

    aput-wide v3, v2, v0

    .line 879
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 878
    .end local v0           #i:I
    .end local v1           #len:I
    :cond_1
    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    goto :goto_0

    .line 882
    .restart local v0       #i:I
    .restart local v1       #len:I
    :cond_2
    iput-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    .line 886
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #newlist:[J
    :cond_3
    return-void
.end method

.method private getNextId()J
    .locals 6

    .prologue
    .line 1132
    const-wide/16 v1, 0x0

    .line 1133
    .local v1, ret:J
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v3, 0x1

    .line 1135
    .local v0, nextIdx:I
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleMode:I

    if-nez v3, :cond_4

    .line 1136
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mRepeatMode:I

    if-nez v3, :cond_2

    .line 1137
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v3, :cond_0

    .line 1138
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    aget-wide v1, v3, v0

    .line 1152
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1153
    const-wide/16 v1, 0x0

    .line 1156
    :cond_1
    return-wide v1

    .line 1141
    :cond_2
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-lt v0, v3, :cond_3

    .line 1142
    const/4 v0, 0x0

    .line 1144
    :cond_3
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    aget-wide v1, v3, v0

    goto :goto_0

    .line 1147
    :cond_4
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleTracer:Lcom/miui/player/service/ShuffleTracer;

    iget v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    iget v5, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v3, v4, v5}, Lcom/miui/player/service/ShuffleTracer;->peekNext(II)I

    move-result v0

    .line 1148
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    aget-wide v1, v3, v0

    goto :goto_0
.end method

.method private getPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "action"

    .prologue
    const/4 v2, 0x0

    .line 1339
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1340
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1341
    const-string v1, "remove_notification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1343
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private gotoIdleState(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1747
    const/4 v0, 0x1

    const v1, 0xea60

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/player/service/MediaPlaybackService;->gotoIdleState(ZII)V

    .line 1748
    return-void
.end method

.method private gotoIdleState(ZII)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1752
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1753
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    int-to-long v2, p3

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1755
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->stopForeground(Z)V

    .line 1757
    if-eqz p1, :cond_0

    .line 1758
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1759
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1763
    :goto_0
    return-void

    .line 1761
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->updateNotificationBar()V

    goto :goto_0
.end method

.method private isAllOnline()Z
    .locals 5

    .prologue
    .line 1193
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    .line 1194
    .local v2, queue:[J
    const/4 v1, 0x1

    .line 1196
    .local v1, isAllOnline:Z
    if-eqz v2, :cond_2

    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-lez v3, :cond_2

    .line 1197
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v3, :cond_0

    .line 1198
    aget-wide v3, v2, v0

    invoke-static {v3, v4}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1199
    const/4 v1, 0x0

    .line 1207
    .end local v0           #i:I
    :cond_0
    :goto_1
    return v1

    .line 1197
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1204
    .end local v0           #i:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static localExists(Landroid/content/Context;Lcom/miui/player/service/BufferedMediaPlayer;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1579
    const-string v0, "mp3"

    invoke-static {p2, v0}, Lcom/miui/player/meta/MetaManager;->getMetaFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1580
    if-eqz v0, :cond_0

    .line 1581
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1582
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 1585
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeAllShuffleList()Z
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1255
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1256
    .local v0, res:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 1258
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    invoke-static {p0}, Lcom/miui/player/util/SqlUtils;->wrapWithBlacklist(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "title"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1262
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_2

    .line 1277
    :cond_0
    if-eqz v6, :cond_1

    .line 1278
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v1, v11

    .line 1281
    :goto_0
    return v1

    .line 1265
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 1266
    .local v8, len:I
    new-array v9, v8, [J

    .line 1267
    .local v9, list:[J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v8, :cond_3

    .line 1268
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 1269
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, v9, v7

    .line 1267
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1271
    :cond_3
    const/4 v1, -0x1

    invoke-virtual {p0, v9, v1}, Lcom/miui/player/service/MediaPlaybackService;->open([JI)Z

    .line 1272
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/player/service/MediaPlaybackService;->setShuffleMode(I)V

    .line 1273
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1277
    if-eqz v6, :cond_4

    .line 1278
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v1, v10

    goto :goto_0

    .line 1275
    .end local v7           #i:I
    .end local v8           #len:I
    .end local v9           #list:[J
    :catch_0
    move-exception v1

    .line 1277
    if-eqz v6, :cond_5

    .line 1278
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move v1, v11

    .line 1281
    goto :goto_0

    .line 1277
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_6

    .line 1278
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
.end method

.method private notifyChange(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 803
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v6

    .line 804
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v5

    .line 805
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v4

    .line 807
    const/4 v1, 0x0

    .line 808
    const/4 v0, 0x0

    .line 809
    const-string v2, "meta_changed_album"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "meta_changed_track"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.miui.player.playstatechanged"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    const/4 v2, 0x1

    .line 811
    :goto_0
    if-eqz v2, :cond_b

    .line 812
    invoke-direct {p0, v4, v5, v6}, Lcom/miui/player/service/MediaPlaybackService;->updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/player/service/MediaPlaybackService$AlbumSource;

    move-result-object v0

    .line 813
    iget-object v1, v0, Lcom/miui/player/service/MediaPlaybackService$AlbumSource;->mFilePath:Ljava/lang/String;

    .line 814
    iget-object v0, v0, Lcom/miui/player/service/MediaPlaybackService$AlbumSource;->mUri:Landroid/net/Uri;

    move-object v8, v0

    move-object v9, v1

    .line 817
    :goto_1
    const/4 v11, 0x0

    .line 818
    const/4 v10, 0x0

    .line 819
    const-string v0, "meta_changed_lyric"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "meta_changed_track"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    const/4 v3, 0x1

    .line 820
    :goto_2
    if-nez v3, :cond_2

    const-string v0, "meta_changed_buffer"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    const/4 v0, 0x1

    .line 821
    :goto_3
    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mLyricManager:Lcom/miui/player/service/LyricManager;

    new-instance v2, Lcom/miui/player/service/MediaPlaybackService$LyricOpenRunnable;

    invoke-direct {v2, p0, v4, v6}, Lcom/miui/player/service/MediaPlaybackService$LyricOpenRunnable;-><init>(Lcom/miui/player/service/MediaPlaybackService;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/miui/player/service/LyricManager;->updateLyricStatus(Lcom/miui/player/service/MediaPlaybackService;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 823
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mLyricManager:Lcom/miui/player/service/LyricManager;

    invoke-virtual {v0}, Lcom/miui/player/service/LyricManager;->getStringArr()Ljava/util/ArrayList;

    move-result-object v1

    .line 824
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mLyricManager:Lcom/miui/player/service/LyricManager;

    invoke-virtual {v0}, Lcom/miui/player/service/LyricManager;->getTimeArr()[I

    move-result-object v0

    .line 825
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mLyricManager:Lcom/miui/player/service/LyricManager;

    invoke-virtual {v2}, Lcom/miui/player/service/LyricManager;->recycleContent()V

    .line 829
    :goto_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 830
    const-string v3, "id"

    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAudioId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 831
    const-string v3, "artist"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 832
    const-string v3, "album"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    const-string v3, "track"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 834
    const-string v3, "album_uri"

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 835
    const-string v3, "album_path"

    invoke-virtual {v2, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 836
    const-string v3, "lyric_status"

    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mLyricManager:Lcom/miui/player/service/LyricManager;

    invoke-virtual {v4}, Lcom/miui/player/service/LyricManager;->status()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 837
    const-string v3, "lyric"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 838
    const-string v1, "lyric_time"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 839
    const-string v0, "playing"

    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->isPlaying()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 840
    const-string v0, "block"

    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->isBlocking()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 841
    const-string v0, "current_time"

    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->position()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 842
    const-string v0, "total_time"

    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->duration()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 843
    const-string v0, "buffer"

    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->isBuffering()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 844
    const-string v0, "buffered_pos"

    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getBufferedPosition()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 845
    const-string v0, "current_system_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 846
    const-string v0, "favorite"

    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAudioId()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getOnlineId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v3, v4, v1}, Lcom/miui/player/provider/FavoriteCache;->contains(Landroid/content/Context;JLjava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 847
    if-eqz p2, :cond_3

    .line 848
    const-string v0, "other"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 850
    :cond_3
    invoke-virtual {p0, v2}, Lcom/miui/player/service/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 852
    const-string v0, "com.miui.player.queuechanged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 853
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->saveQueue(Z)V

    .line 858
    :cond_4
    :goto_5
    return-void

    .line 809
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 819
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 820
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 854
    :cond_8
    const-string v0, "com.miui.player.playbackcomplete"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "com.miui.player.metachanged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "com.miui.player.playstatechanged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 856
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->saveQueue(Z)V

    goto :goto_5

    :cond_a
    move-object v0, v10

    move-object v1, v11

    goto/16 :goto_4

    :cond_b
    move-object v8, v0

    move-object v9, v1

    goto/16 :goto_1
.end method

.method static onlinePlay(Landroid/content/Context;Lcom/miui/player/service/BufferedMediaPlayer;Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;JJ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/miui/player/service/OnlinePlayDeniedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1561
    invoke-static {p0, p3, p4}, Lcom/miui/player/network/MP3Downloader;->getRemoteMediaInfo(Landroid/content/Context;J)Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;

    move-result-object v3

    .line 1562
    if-nez v3, :cond_0

    .line 1576
    :goto_0
    return-void

    .line 1566
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/common/util/Network;->isWifi(Landroid/content/Context;)Z

    move-result v0

    .line 1567
    if-nez v0, :cond_1

    const-string v0, "other_connect_listen"

    invoke-static {p0, v0}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1570
    :goto_1
    if-nez v0, :cond_3

    iget-object v0, v3, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mAppointName:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/player/service/MediaPlaybackService;->localExists(Landroid/content/Context;Lcom/miui/player/service/BufferedMediaPlayer;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1571
    new-instance v0, Lcom/miui/player/service/OnlinePlayDeniedException;

    const-string v1, "online play not allow"

    invoke-direct {v0, v1}, Lcom/miui/player/service/OnlinePlayDeniedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1567
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-wide v4, p5

    .line 1574
    invoke-virtual/range {v0 .. v5}, Lcom/miui/player/service/BufferedMediaPlayer;->prepareWithBuffer(Landroid/content/Context;Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;J)V

    goto :goto_0
.end method

.method private open(Ljava/lang/String;Z)V
    .locals 8
    .parameter "path"
    .parameter "isFirst"

    .prologue
    .line 1110
    monitor-enter p0

    .line 1111
    if-nez p1, :cond_0

    .line 1112
    :try_start_0
    monitor-exit p0

    .line 1129
    :goto_0
    return-void

    .line 1115
    :cond_0
    iput-object p1, p0, Lcom/miui/player/service/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 1116
    invoke-direct {p0, p1, p2}, Lcom/miui/player/service/MediaPlaybackService;->canPlay(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1117
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mLyricManager:Lcom/miui/player/service/LyricManager;

    invoke-virtual {v0}, Lcom/miui/player/service/LyricManager;->reset()V

    .line 1119
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayerResponser:Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;

    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->resetBufferingPath(Ljava/lang/String;)V

    .line 1120
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/player/service/AsyncMusicPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1121
    invoke-direct {p0}, Lcom/miui/player/service/MediaPlaybackService;->getNextId()J

    move-result-wide v3

    .line 1122
    .local v3, nextId:J
    iget-object v6, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v7, p0, Lcom/miui/player/service/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    new-instance v0, Lcom/miui/player/service/MediaPlaybackService$PrepareInfo;

    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/service/MediaPlaybackService$PrepareInfo;-><init>(Lcom/miui/player/service/MediaPlaybackService;ZJLjava/lang/String;)V

    invoke-virtual {v6, v7, v0}, Lcom/miui/player/service/AsyncMusicPlayer;->prepare(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1123
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/service/MediaPlaybackService;->onPlayStateChanged(ZZ)V

    .line 1128
    .end local v3           #nextId:J
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1125
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->stop()V

    .line 1126
    const-string v0, "meta_changed_track"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private openCurrent(Z)V
    .locals 7
    .parameter

    .prologue
    .line 1068
    monitor-enter p0

    .line 1069
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1071
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1074
    :cond_0
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-nez v0, :cond_1

    .line 1075
    monitor-exit p0

    .line 1102
    :goto_0
    return-void

    .line 1078
    :cond_1
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 1079
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 1101
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1083
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 1084
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1085
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiNowPlayingAudio;->EXTERNAL_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mOnlineCursorCols:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiNowPlayingAudio;->EXTERNAL_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1095
    :goto_1
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1096
    invoke-direct {p0, v0, p1}, Lcom/miui/player/service/MediaPlaybackService;->open(Ljava/lang/String;Z)V

    .line 1101
    :goto_2
    monitor-exit p0

    goto :goto_0

    .line 1089
    :cond_4
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mLocalCursorCols:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1098
    :cond_5
    sget-object v0, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query nowplaying cursor failed! id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private removeTracksInternal(II)I
    .locals 8
    .parameter "first"
    .parameter "last"

    .prologue
    const/4 v4, 0x0

    .line 1858
    monitor-enter p0

    .line 1859
    if-ge p2, p1, :cond_0

    :try_start_0
    monitor-exit p0

    .line 1897
    :goto_0
    return v4

    .line 1860
    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 1861
    :cond_1
    iget v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-lt p2, v4, :cond_2

    iget v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 p2, v4, -0x1

    .line 1863
    :cond_2
    const/4 v0, 0x0

    .line 1864
    .local v0, gotonext:Z
    iget v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    if-gt p1, v4, :cond_4

    iget v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    if-gt v4, p2, :cond_4

    .line 1865
    iput p1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    .line 1866
    const/4 v0, 0x1

    .line 1870
    :cond_3
    :goto_1
    iget v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v4, p2

    add-int/lit8 v2, v4, -0x1

    .line 1871
    .local v2, num:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_5

    .line 1872
    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    add-int v5, p1, v1

    iget-object v6, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    add-int/lit8 v7, p2, 0x1

    add-int/2addr v7, v1

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    .line 1871
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1867
    .end local v1           #i:I
    .end local v2           #num:I
    :cond_4
    iget v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    if-le v4, p2, :cond_3

    .line 1868
    iget v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    sub-int v5, p2, p1

    add-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 1898
    .end local v0           #gotonext:Z
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1874
    .restart local v0       #gotonext:Z
    .restart local v1       #i:I
    .restart local v2       #num:I
    :cond_5
    :try_start_1
    iget v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    sub-int v5, p2, p1

    add-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    .line 1876
    if-eqz v0, :cond_7

    .line 1877
    iget v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-nez v4, :cond_8

    .line 1878
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/miui/player/service/MediaPlaybackService;->stop(ZZ)V

    .line 1879
    const/4 v4, -0x1

    iput v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    .line 1880
    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_6

    .line 1881
    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1882
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1895
    :cond_6
    :goto_3
    const-string v4, "meta_changed_track"

    invoke-virtual {p0, v4}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V

    .line 1897
    :cond_7
    sub-int v4, p2, p1

    add-int/lit8 v4, v4, 0x1

    monitor-exit p0

    goto :goto_0

    .line 1885
    :cond_8
    iget v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    iget v5, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-lt v4, v5, :cond_9

    .line 1886
    const/4 v4, 0x0

    iput v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    .line 1888
    :cond_9
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->isPlaying()Z

    move-result v3

    .line 1889
    .local v3, wasPlaying:Z
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/miui/player/service/MediaPlaybackService;->stop(ZZ)V

    .line 1890
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->openCurrent()V

    .line 1891
    if-eqz v3, :cond_6

    .line 1892
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method private updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/player/service/MediaPlaybackService$AlbumSource;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2280
    new-instance v0, Lcom/miui/player/service/MediaPlaybackService$AlbumSource;

    invoke-direct {v0}, Lcom/miui/player/service/MediaPlaybackService$AlbumSource;-><init>()V

    .line 2281
    const-string v1, "display_album"

    invoke-static {p0, v1}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2297
    :cond_0
    :goto_0
    return-object v0

    .line 2284
    :cond_1
    const-string v1, "android_album"

    invoke-static {p0, v1}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2285
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAudioId()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAlbumId()J

    move-result-wide v3

    invoke-static {p0, v1, v2, v3, v4}, Lcom/miui/player/meta/AlbumManager;->getArtworkUri(Landroid/content/Context;JJ)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/player/service/MediaPlaybackService$AlbumSource;->mUri:Landroid/net/Uri;

    .line 2287
    :cond_2
    iget-object v1, v0, Lcom/miui/player/service/MediaPlaybackService$AlbumSource;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_3

    .line 2288
    invoke-virtual {p0, p2, p3}, Lcom/miui/player/service/MediaPlaybackService;->getAlbumFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 2289
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 2291
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/player/service/MediaPlaybackService$AlbumSource;->mFilePath:Ljava/lang/String;

    .line 2294
    :cond_3
    iget-object v1, v0, Lcom/miui/player/service/MediaPlaybackService$AlbumSource;->mFilePath:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/miui/player/service/MediaPlaybackService$AlbumSource;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->needSearch()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2295
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/player/service/MediaPlaybackService;->downloadAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public closeExternalStorageFiles(Ljava/lang/String;)V
    .locals 1
    .parameter "storagePath"

    .prologue
    const/4 v0, 0x1

    .line 733
    invoke-virtual {p0, v0, v0}, Lcom/miui/player/service/MediaPlaybackService;->stop(ZZ)V

    .line 734
    const-string v0, "com.miui.player.queuechanged"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 735
    const-string v0, "meta_changed_track"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V

    .line 736
    return-void
.end method

.method public duration()J
    .locals 2

    .prologue
    .line 2112
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2113
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->duration()J

    move-result-wide v0

    .line 2115
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public enqueue([JI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 928
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 955
    :cond_0
    :goto_0
    return-void

    .line 932
    :cond_1
    monitor-enter p0

    .line 933
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    :try_start_0
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v1, :cond_4

    .line 934
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/player/service/MediaPlaybackService;->addToPlayList([JI)V

    .line 935
    const-string v0, "com.miui.player.queuechanged"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 948
    :cond_2
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    if-gez v0, :cond_3

    .line 949
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    .line 950
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->openCurrent()V

    .line 951
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->play()V

    .line 952
    const-string v0, "meta_changed_track"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V

    .line 954
    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 938
    :cond_4
    const v0, 0x7fffffff

    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/miui/player/service/MediaPlaybackService;->addToPlayList([JI)V

    .line 939
    const-string v0, "com.miui.player.queuechanged"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 940
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 941
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    array-length v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    .line 942
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->openCurrent()V

    .line 943
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->play()V

    .line 944
    const-string v0, "meta_changed_track"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V

    .line 945
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1967
    monitor-enter p0

    .line 1968
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 1969
    const/4 v0, 0x0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1981
    :goto_0
    return-object v0

    .line 1972
    :cond_0
    const/4 v0, 0x0

    .line 1974
    .local v0, ret:Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAudioId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    .line 1975
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 1982
    .end local v0           #ret:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1977
    .restart local v0       #ret:Ljava/lang/String;
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    .line 1981
    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1978
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public getAlbumFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "albumName"
    .parameter "artistName"

    .prologue
    .line 2205
    const/4 v0, 0x0

    .line 2206
    .local v0, albumFile:Ljava/io/File;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2207
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/miui/player/meta/MetaManager;->getAlbumFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2209
    :cond_1
    return-object v0
.end method

.method public getAlbumId()J
    .locals 5

    .prologue
    .line 2071
    monitor-enter p0

    .line 2072
    :try_start_0
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_0

    .line 2073
    const-wide/16 v0, -0x1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2082
    :goto_0
    return-wide v0

    .line 2076
    :cond_0
    const-wide/32 v0, 0x7fffffff

    .line 2078
    .local v0, albumId:J
    :try_start_1
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v4, "album_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    .line 2082
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 2083
    .end local v0           #albumId:J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2079
    .restart local v0       #albumId:J
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2061
    monitor-enter p0

    .line 2062
    const/4 v0, 0x0

    .line 2063
    .local v0, raw:Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 2064
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v3, "album"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2066
    :cond_0
    invoke-static {v0}, Lcom/miui/player/meta/MetaManager;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 2067
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getArtistId()J
    .locals 5

    .prologue
    .line 2044
    monitor-enter p0

    .line 2045
    :try_start_0
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_0

    .line 2046
    const-wide/16 v0, -0x1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2056
    :goto_0
    return-wide v0

    .line 2049
    :cond_0
    const-wide/32 v0, 0x7fffffff

    .line 2051
    .local v0, artistId:J
    :try_start_1
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v4, "artist_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    .line 2056
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 2057
    .end local v0           #artistId:J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2052
    .restart local v0       #artistId:J
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2034
    monitor-enter p0

    .line 2035
    const/4 v0, 0x0

    .line 2036
    .local v0, raw:Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 2037
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v3, "artist"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2039
    :cond_0
    invoke-static {v0}, Lcom/miui/player/meta/MetaManager;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 2040
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAudioId()J
    .locals 2

    .prologue
    .line 2000
    monitor-enter p0

    .line 2001
    :try_start_0
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2002
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    aget-wide v0, v0, v1

    monitor-exit p0

    .line 2005
    :goto_0
    return-wide v0

    .line 2004
    :cond_0
    monitor-exit p0

    .line 2005
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 2004
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAudioIdByPos(I)J
    .locals 3
    .parameter "pos"

    .prologue
    .line 2096
    monitor-enter p0

    .line 2097
    const-wide/16 v0, -0x1

    .line 2098
    .local v0, id:J
    if-ltz p1, :cond_0

    :try_start_0
    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-ge p1, v2, :cond_0

    .line 2099
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    aget-wide v0, v2, p1

    .line 2102
    :cond_0
    monitor-exit p0

    return-wide v0

    .line 2103
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 2150
    monitor-enter p0

    .line 2151
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->getAudioSessionId()I

    move-result v0

    monitor-exit p0

    return v0

    .line 2152
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBufferedPercent()F
    .locals 1

    .prologue
    .line 2178
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->getBufferedPercent()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2182
    :goto_0
    return v0

    .line 2179
    :catch_0
    move-exception v0

    .line 2182
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBufferedPosition()J
    .locals 2

    .prologue
    .line 2169
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->duration()J

    move-result-wide v0

    long-to-float v0, v0

    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v1}, Lcom/miui/player/service/AsyncMusicPlayer;->getBufferedPercent()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 2173
    :goto_0
    return-wide v0

    .line 2170
    :catch_0
    move-exception v0

    .line 2173
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->position()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getLyricStatus()I
    .locals 1

    .prologue
    .line 2213
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mLyricManager:Lcom/miui/player/service/LyricManager;

    invoke-virtual {v0}, Lcom/miui/player/service/LyricManager;->status()I

    move-result v0

    return v0
.end method

.method public getMediaMountedCount()I
    .locals 1

    .prologue
    .line 1950
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method public getOnlineId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2186
    monitor-enter p0

    .line 2187
    :try_start_0
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_0

    .line 2188
    const/4 v1, 0x0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2198
    :goto_0
    return-object v1

    .line 2191
    :cond_0
    const/4 v1, 0x0

    .line 2193
    .local v1, ret:Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v3, "online_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 2194
    .local v0, col:I
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 2198
    .end local v0           #col:I
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 2199
    .end local v1           #ret:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2195
    .restart local v1       #ret:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1958
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayingFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1992
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->getPlayingFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueue()[J
    .locals 5

    .prologue
    .line 1047
    monitor-enter p0

    .line 1048
    :try_start_0
    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    .line 1049
    .local v1, len:I
    new-array v2, v1, [J

    .line 1050
    .local v2, list:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1051
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    aget-wide v3, v3, v0

    aput-wide v3, v2, v0

    .line 1050
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1053
    :cond_0
    monitor-exit p0

    return-object v2

    .line 1054
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #list:[J
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 2013
    monitor-enter p0

    .line 2014
    :try_start_0
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    monitor-exit p0

    return v0

    .line 2015
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getQueueSize()I
    .locals 1

    .prologue
    .line 1058
    monitor-enter p0

    .line 1059
    :try_start_0
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    monitor-exit p0

    return v0

    .line 1060
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 1946
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mRepeatMode:I

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 1936
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleMode:I

    return v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2087
    monitor-enter p0

    .line 2088
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 2089
    const/4 v0, 0x0

    monitor-exit p0

    .line 2091
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "title"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 2092
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isBlocking()Z
    .locals 1

    .prologue
    .line 2160
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->isBlocking()Z

    move-result v0

    return v0
.end method

.method public isBuffering()Z
    .locals 1

    .prologue
    .line 2156
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayerResponser:Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;

    iget-boolean v0, v0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->mIsBuffering:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1648
    iget-boolean v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method public moveQueueItem(II)V
    .locals 6
    .parameter "index1"
    .parameter "index2"

    .prologue
    .line 1008
    monitor-enter p0

    .line 1009
    :try_start_0
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-lt p1, v3, :cond_0

    .line 1010
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 p1, v3, -0x1

    .line 1012
    :cond_0
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-lt p2, v3, :cond_1

    .line 1013
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 p2, v3, -0x1

    .line 1015
    :cond_1
    if-ge p1, p2, :cond_5

    .line 1016
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    aget-wide v1, v3, p1

    .line 1017
    .local v1, tmp:J
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 1018
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    add-int/lit8 v5, v0, 0x1

    aget-wide v4, v4, v5

    aput-wide v4, v3, v0

    .line 1017
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1020
    :cond_2
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    aput-wide v1, v3, p2

    .line 1021
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    if-ne v3, p1, :cond_4

    .line 1022
    iput p2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    .line 1038
    .end local v0           #i:I
    .end local v1           #tmp:J
    :cond_3
    :goto_1
    const-string v3, "com.miui.player.queuechanged"

    invoke-virtual {p0, v3}, Lcom/miui/player/service/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1039
    monitor-exit p0

    .line 1040
    return-void

    .line 1023
    .restart local v0       #i:I
    .restart local v1       #tmp:J
    :cond_4
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    if-lt v3, p1, :cond_3

    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    if-gt v3, p2, :cond_3

    .line 1024
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 1039
    .end local v0           #i:I
    .end local v1           #tmp:J
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1026
    :cond_5
    if-ge p2, p1, :cond_3

    .line 1027
    :try_start_1
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    aget-wide v1, v3, p1

    .line 1028
    .restart local v1       #tmp:J
    move v0, p1

    .restart local v0       #i:I
    :goto_2
    if-le v0, p2, :cond_6

    .line 1029
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    add-int/lit8 v5, v0, -0x1

    aget-wide v4, v4, v5

    aput-wide v4, v3, v0

    .line 1028
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1031
    :cond_6
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    aput-wide v1, v3, p2

    .line 1032
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    if-ne v3, p1, :cond_7

    .line 1033
    iput p2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 1034
    :cond_7
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    if-lt v3, p2, :cond_3

    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    if-gt v3, p1, :cond_3

    .line 1035
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public needSearch()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 2266
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAudioId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2276
    :goto_0
    return v3

    .line 2269
    :cond_0
    const/4 v2, 0x0

    .line 2270
    .local v2, ret:Z
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 2271
    .local v1, path:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2272
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2273
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    move v2, v3

    .end local v0           #f:Ljava/io/File;
    :cond_1
    :goto_1
    move v3, v2

    .line 2276
    goto :goto_0

    .line 2273
    .restart local v0       #f:Ljava/io/File;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public next(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1705
    monitor-enter p0

    .line 1706
    :try_start_0
    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-gtz v2, :cond_0

    .line 1707
    sget-object v0, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    const-string v1, "No play queue"

    invoke-static {v0, v1}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1708
    monitor-exit p0

    .line 1744
    :goto_0
    return-void

    .line 1712
    :cond_0
    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleMode:I

    if-ne v2, v0, :cond_3

    .line 1713
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleTracer:Lcom/miui/player/service/ShuffleTracer;

    invoke-virtual {v2}, Lcom/miui/player/service/ShuffleTracer;->getTracer()I

    move-result v2

    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_1

    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mRepeatMode:I

    if-eq v2, v0, :cond_1

    if-eqz p1, :cond_2

    .line 1715
    :cond_1
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleTracer:Lcom/miui/player/service/ShuffleTracer;

    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v0, v2, v3}, Lcom/miui/player/service/ShuffleTracer;->randNext(II)I

    move-result v0

    iput v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    move v0, v1

    .line 1732
    :cond_2
    :goto_1
    if-eqz v0, :cond_8

    .line 1733
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->gotoIdleState(Z)V

    .line 1734
    const-string v0, "com.miui.player.playbackcomplete"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1735
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1736
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/service/MediaPlaybackService;->onPlayStateChanged(ZZ)V

    .line 1743
    :goto_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1720
    :cond_3
    :try_start_1
    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_6

    .line 1722
    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mRepeatMode:I

    if-nez v2, :cond_4

    if-eqz p1, :cond_2

    .line 1724
    :cond_4
    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mRepeatMode:I

    if-eq v2, v0, :cond_5

    if-eqz p1, :cond_7

    .line 1725
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    move v0, v1

    goto :goto_1

    .line 1728
    :cond_6
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    :cond_7
    move v0, v1

    goto :goto_1

    .line 1738
    :cond_8
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/service/MediaPlaybackService;->stop(ZZ)V

    .line 1739
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->openCurrent()V

    .line 1740
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->play()V

    .line 1741
    const-string v0, "meta_changed_track"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method notifyChange(Ljava/lang/String;)V
    .locals 2
    .parameter "what"

    .prologue
    .line 869
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/player/service/MediaPlaybackService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 870
    return-void
.end method

.method notifyMetaChange(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 865
    const-string v0, "com.miui.player.metachanged"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/miui/player/service/MediaPlaybackService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 866
    return-void
.end method

.method notifyMetaChange(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 861
    const-string v0, "com.miui.player.metachanged"

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/player/service/MediaPlaybackService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 862
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 604
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 605
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mServiceInUse:Z

    .line 606
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 389
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 390
    invoke-static {p0}, Lcom/miui/player/service/ServiceHelper;->registerMediaButtonReceiver(Landroid/content/Context;)V

    .line 391
    new-instance v8, Lcom/miui/player/service/ShakeListener;

    invoke-direct {v8, p0}, Lcom/miui/player/service/ShakeListener;-><init>(Lcom/miui/player/service/MediaPlaybackService;)V

    iput-object v8, p0, Lcom/miui/player/service/MediaPlaybackService;->mShakeListener:Lcom/miui/player/service/ShakeListener;

    .line 392
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService;->mShakeListener:Lcom/miui/player/service/ShakeListener;

    invoke-virtual {v8}, Lcom/miui/player/service/ShakeListener;->initialize()V

    .line 394
    const-string v8, "power"

    invoke-virtual {p0, v8}, Lcom/miui/player/service/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 395
    .local v5, pm:Landroid/os/PowerManager;
    const/4 v8, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, p0, Lcom/miui/player/service/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 396
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8, v10}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 398
    const-string v8, "wifi"

    invoke-virtual {p0, v8}, Lcom/miui/player/service/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 399
    .local v7, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v8

    iput-object v8, p0, Lcom/miui/player/service/MediaPlaybackService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 400
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v8, v10}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 401
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 403
    invoke-static {p0}, Lcom/miui/player/util/SqlUtils;->getCardId(Landroid/content/Context;)I

    move-result v8

    iput v8, p0, Lcom/miui/player/service/MediaPlaybackService;->mCardId:I

    .line 405
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->registerExternalStorageListener()V

    .line 408
    new-instance v8, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;

    invoke-direct {v8, p0}, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;-><init>(Lcom/miui/player/service/MediaPlaybackService;)V

    iput-object v8, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayerResponser:Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;

    .line 409
    new-instance v8, Lcom/miui/player/service/AsyncMusicPlayer;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayerResponser:Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;

    invoke-direct {v8, v9, v10}, Lcom/miui/player/service/AsyncMusicPlayer;-><init>(Ljava/lang/String;Lcom/miui/player/service/AsyncMusicPlayer$AsyncPrepareResponser;)V

    iput-object v8, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    .line 411
    invoke-static {p0}, Lcom/miui/player/ui/EqualizerActivity;->isEqualizerEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 412
    invoke-static {p0}, Lcom/miui/player/ui/EqualizerActivity;->getEqualizerConfigId(Landroid/content/Context;)I

    move-result v1

    .line 413
    .local v1, equalizerConf:I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_0

    .line 414
    invoke-static {p0, v1}, Lcom/miui/player/provider/PlayerProviderUtils;->getEqualizerConfigData(Landroid/content/Context;I)[I

    move-result-object v3

    .line 415
    .local v3, levels:[I
    invoke-virtual {p0, v3}, Lcom/miui/player/service/MediaPlaybackService;->updateEqualizerBands([I)V

    .line 419
    .end local v1           #equalizerConf:I
    .end local v3           #levels:[I
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->reloadQueue()V

    .line 420
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 421
    .local v0, commandFilter:Landroid/content/IntentFilter;
    const-string v8, "com.miui.player.musicservicecommand"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 422
    const-string v8, "com.miui.player.musicservicecommand.togglepause"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 423
    const-string v8, "com.miui.player.musicservicecommand.pause"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 424
    const-string v8, "com.miui.player.musicservicecommand.next"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 425
    const-string v8, "com.miui.player.musicservicecommand.previous"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 426
    const-string v8, "com.miui.player.musicservicecommand.update_meta"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 427
    const-string v8, "com.miui.player.updateshake"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 428
    const-string v8, "com.miui.player.musicservicecommand.quit"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 430
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v0}, Lcom/miui/player/service/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 432
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 433
    .local v6, quitFilter:Landroid/content/IntentFilter;
    const-string v8, "com.miui.player.QUIT"

    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 434
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService;->mQuitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v6}, Lcom/miui/player/service/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 436
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 437
    .local v2, id3ChangedFilter:Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 438
    const-string v8, "file"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 440
    new-instance v8, Lcom/miui/player/service/LockScreenListener;

    invoke-direct {v8}, Lcom/miui/player/service/LockScreenListener;-><init>()V

    iput-object v8, p0, Lcom/miui/player/service/MediaPlaybackService;->mLockScreenListener:Lcom/miui/player/service/LockScreenListener;

    .line 441
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService;->mLockScreenListener:Lcom/miui/player/service/LockScreenListener;

    invoke-virtual {v8, p0}, Lcom/miui/player/service/LockScreenListener;->registerScreenlock(Lcom/miui/player/service/MediaPlaybackService;)V

    .line 443
    new-instance v8, Lcom/miui/player/service/ConnectionListener;

    invoke-direct {v8}, Lcom/miui/player/service/ConnectionListener;-><init>()V

    iput-object v8, p0, Lcom/miui/player/service/MediaPlaybackService;->mConnectionListener:Lcom/miui/player/service/ConnectionListener;

    .line 444
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService;->mConnectionListener:Lcom/miui/player/service/ConnectionListener;

    invoke-virtual {v8, p0}, Lcom/miui/player/service/ConnectionListener;->registerConnReceiver(Lcom/miui/player/service/MediaPlaybackService;)V

    .line 448
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 449
    .local v4, msg:Landroid/os/Message;
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v9, 0xea60

    invoke-virtual {v8, v4, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 450
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 454
    invoke-virtual {p0, v1, v1}, Lcom/miui/player/service/MediaPlaybackService;->onPlayStateChanged(ZZ)V

    .line 455
    invoke-static {p0}, Lcom/miui/player/service/ServiceHelper;->unregisterMediaButtonReceiver(Landroid/content/Context;)V

    .line 457
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/miui/player/service/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 458
    .local v0, am:Landroid/media/AudioManager;
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 461
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    sget-object v1, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    const-string v2, "Service being destroyed while still playing."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_0
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/player/service/AsyncMusicPlayer;->stop(Z)V

    .line 468
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 469
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 471
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 472
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 473
    iput-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 476
    :cond_1
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/miui/player/service/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 477
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mQuitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/miui/player/service/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 479
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mLockScreenListener:Lcom/miui/player/service/LockScreenListener;

    invoke-virtual {v1}, Lcom/miui/player/service/LockScreenListener;->unregisterScreenlock()V

    .line 480
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mConnectionListener:Lcom/miui/player/service/ConnectionListener;

    invoke-virtual {v1}, Lcom/miui/player/service/ConnectionListener;->unregisterConnReceiver()V

    .line 481
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 482
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/miui/player/service/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 483
    iput-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 486
    :cond_2
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mShakeListener:Lcom/miui/player/service/ShakeListener;

    invoke-virtual {v1}, Lcom/miui/player/service/ShakeListener;->release()V

    .line 488
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 489
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 490
    sget-object v1, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " wakelock release  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 494
    :cond_3
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/player/service/AsyncMusicPlayer;->release(Landroid/content/Context;)V

    .line 495
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 496
    return-void
.end method

.method onPlayStateChanged(ZZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 2224
    if-eqz p1, :cond_2

    .line 2225
    invoke-static {p0}, Lcom/miui/player/service/ServiceHelper;->registerMediaButtonReceiver(Landroid/content/Context;)V

    .line 2226
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2227
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2228
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2229
    sget-object v0, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " wakelock acquire "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    :cond_0
    if-nez p2, :cond_1

    .line 2233
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mShakeListener:Lcom/miui/player/service/ShakeListener;

    invoke-virtual {v0}, Lcom/miui/player/service/ShakeListener;->register()V

    .line 2243
    :cond_1
    :goto_0
    return-void

    .line 2236
    :cond_2
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2237
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2238
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2241
    :cond_3
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mShakeListener:Lcom/miui/player/service/ShakeListener;

    invoke-virtual {v0}, Lcom/miui/player/service/ShakeListener;->unregister()V

    goto :goto_0
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 611
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 612
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mServiceInUse:Z

    .line 613
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 617
    iput p3, p0, Lcom/miui/player/service/MediaPlaybackService;->mServiceStartId:I

    .line 618
    iget-object v7, p0, Lcom/miui/player/service/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 620
    if-eqz p1, :cond_1

    .line 621
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, action:Ljava/lang/String;
    const-string v7, "command"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 623
    .local v3, cmd:Ljava/lang/String;
    sget-object v7, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    const-string v8, "onStartCommand=%s, cmd=%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    invoke-static {v7, v8, v9}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 625
    const-string v7, "next"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "com.miui.player.musicservicecommand.next"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 626
    :cond_0
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/miui/player/service/MediaPlaybackService;->next(Z)V

    .line 673
    .end local v0           #action:Ljava/lang/String;
    .end local v3           #cmd:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/miui/player/service/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 674
    iget-object v7, p0, Lcom/miui/player/service/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 675
    .local v4, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/miui/player/service/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v8, 0xea60

    invoke-virtual {v7, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 676
    const/4 v7, 0x2

    return v7

    .line 627
    .end local v4           #msg:Landroid/os/Message;
    .restart local v0       #action:Ljava/lang/String;
    .restart local v3       #cmd:Ljava/lang/String;
    :cond_2
    const-string v7, "previous"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "com.miui.player.musicservicecommand.previous"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 628
    :cond_3
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->prev()V

    goto :goto_0

    .line 629
    :cond_4
    const-string v7, "togglepause"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "com.miui.player.musicservicecommand.togglepause"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 630
    :cond_5
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 631
    const-string v7, "remove_notification"

    const/4 v8, 0x1

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {p0, v7}, Lcom/miui/player/service/MediaPlaybackService;->pause(Z)V

    goto :goto_0

    .line 633
    :cond_6
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->play()V

    goto :goto_0

    .line 635
    :cond_7
    const-string v7, "pause"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "com.miui.player.musicservicecommand.pause"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 636
    :cond_8
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->pause()V

    goto :goto_0

    .line 637
    :cond_9
    const-string v7, "play"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 638
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->play()V

    goto :goto_0

    .line 639
    :cond_a
    const-string v7, "stop"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 640
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->pause()V

    .line 641
    const-wide/16 v7, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/miui/player/service/MediaPlaybackService;->seek(J)J

    goto :goto_0

    .line 642
    :cond_b
    const-string v7, "com.miui.player.requestprogress"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 643
    const-string v7, "com.miui.player.refreshprogress"

    invoke-virtual {p0, v7}, Lcom/miui/player/service/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 644
    :cond_c
    const-string v7, "com.miui.player.togglefavorite"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 645
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAudioId()J

    move-result-wide v1

    .line 646
    .local v1, audioId:J
    invoke-static {p0}, Lcom/miui/player/provider/FavoriteCache;->getFavoritePlaylistId(Landroid/content/Context;)J

    move-result-wide v5

    .line 647
    .local v5, plid:J
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-ltz v7, :cond_1

    .line 648
    const/4 v7, 0x0

    invoke-static {p0, v1, v2, v7}, Lcom/miui/player/provider/FavoriteCache;->contains(Landroid/content/Context;JLjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 649
    const/4 v7, 0x1

    new-array v7, v7, [J

    const/4 v8, 0x0

    aput-wide v1, v7, v8

    invoke-static {p0, v7, v5, v6}, Lcom/miui/player/provider/PlaylistHelper;->removeMembers(Landroid/content/Context;[JJ)I

    goto/16 :goto_0

    .line 651
    :cond_d
    const/4 v7, 0x1

    new-array v7, v7, [J

    const/4 v8, 0x0

    aput-wide v1, v7, v8

    const/4 v8, 0x0

    invoke-static {p0, v7, v5, v6, v8}, Lcom/miui/player/provider/PlaylistHelper;->addToPlaylist(Landroid/content/Context;[JJZ)I

    goto/16 :goto_0

    .line 654
    .end local v1           #audioId:J
    .end local v5           #plid:J
    :cond_e
    const-string v7, "com.miui.player.init_gadget"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 655
    const-string v7, "meta_changed_track"

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 656
    :cond_f
    const-string v7, "com.miui.player.musicservicecommand.update_meta"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 657
    const-string v7, "lyric"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 658
    const-string v7, "meta_changed_lyric"

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 659
    :cond_10
    const-string v7, "album"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 660
    const-string v7, "meta_changed_album"

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 661
    :cond_11
    const-string v7, "track"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 662
    const-string v7, "meta_changed_track"

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 664
    :cond_12
    const-string v7, "com.miui.player.updateshake"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 665
    iget-object v7, p0, Lcom/miui/player/service/MediaPlaybackService;->mShakeListener:Lcom/miui/player/service/ShakeListener;

    invoke-virtual {v7}, Lcom/miui/player/service/ShakeListener;->onUpdatePref()V

    goto/16 :goto_0

    .line 666
    :cond_13
    const-string v7, "com.miui.player.musicservicecommand.quit"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 667
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->quit()V

    goto/16 :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 681
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mServiceInUse:Z

    .line 684
    invoke-virtual {p0, v4}, Lcom/miui/player/service/MediaPlaybackService;->saveQueue(Z)V

    .line 686
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mResumeAfterAudioFocusGain:Z

    if-eqz v1, :cond_1

    .line 703
    :cond_0
    :goto_0
    return v4

    .line 695
    :cond_1
    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 696
    :cond_2
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 697
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 702
    .end local v0           #msg:Landroid/os/Message;
    :cond_3
    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/miui/player/service/MediaPlaybackService;->stopSelf(I)V

    goto :goto_0
.end method

.method public open([JI)Z
    .locals 9
    .parameter "list"
    .parameter "position"

    .prologue
    .line 965
    monitor-enter p0

    .line 966
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAudioId()J

    move-result-wide v3

    .line 967
    .local v3, oldId:J
    array-length v1, p1

    .line 968
    .local v1, listlength:I
    const/4 v2, 0x1

    .line 969
    .local v2, newlist:Z
    iget v5, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-ne v5, v1, :cond_0

    .line 971
    const/4 v2, 0x0

    .line 972
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 973
    aget-wide v5, p1, v0

    iget-object v7, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    aget-wide v7, v7, v0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    .line 974
    const/4 v2, 0x1

    .line 979
    .end local v0           #i:I
    :cond_0
    if-eqz v2, :cond_1

    .line 980
    const/4 v5, -0x1

    invoke-direct {p0, p1, v5}, Lcom/miui/player/service/MediaPlaybackService;->addToPlayList([JI)V

    .line 981
    const-string v5, "com.miui.player.queuechanged"

    invoke-virtual {p0, v5}, Lcom/miui/player/service/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 984
    :cond_1
    if-ltz p2, :cond_4

    .line 985
    iput p2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    .line 989
    :goto_1
    iget-object v5, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleTracer:Lcom/miui/player/service/ShuffleTracer;

    invoke-virtual {v5}, Lcom/miui/player/service/ShuffleTracer;->clear()V

    .line 992
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/miui/player/service/MediaPlaybackService;->stop(ZZ)V

    .line 993
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->openCurrent()V

    .line 994
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAudioId()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-eqz v5, :cond_2

    .line 995
    const-string v5, "meta_changed_track"

    invoke-virtual {p0, v5}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V

    .line 998
    :cond_2
    monitor-exit p0

    return v2

    .line 972
    .restart local v0       #i:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 987
    .end local v0           #i:I
    :cond_4
    iget-object v5, p0, Lcom/miui/player/service/MediaPlaybackService;->mRandom:Ljava/util/Random;

    iget v6, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    iput v5, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 999
    .end local v1           #listlength:I
    .end local v2           #newlist:Z
    .end local v3           #oldId:J
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method openCurrent()V
    .locals 1

    .prologue
    .line 1064
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->openCurrent(Z)V

    .line 1065
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1624
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->pause(Z)V

    .line 1625
    return-void
.end method

.method public pause(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1628
    monitor-enter p0

    .line 1629
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mResumeAfterAudioFocusGain:Z

    .line 1630
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1631
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->pause()V

    .line 1632
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1633
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayerResponser:Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;

    invoke-virtual {v0}, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->stopBuffering()V

    .line 1634
    invoke-direct {p0, p1}, Lcom/miui/player/service/MediaPlaybackService;->gotoIdleState(Z)V

    .line 1635
    const-string v0, "com.miui.player.playstatechanged"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1638
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/service/MediaPlaybackService;->onPlayStateChanged(ZZ)V

    .line 1639
    monitor-exit p0

    .line 1640
    return-void

    .line 1639
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public play()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1214
    invoke-static {v1}, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->setOneShot(Z)V

    .line 1215
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1216
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayerResponser:Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;

    iget-boolean v0, v0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->mIsBuffering:Z

    if-eqz v0, :cond_2

    .line 1217
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayerResponser:Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;

    iget-object v0, v0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->mCurrentBufferingPath:Ljava/lang/String;

    .line 1218
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1219
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayerResponser:Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;

    iput-boolean v3, v0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->mPlayAfterBuffer:Z

    .line 1220
    invoke-virtual {p0, v3, v3}, Lcom/miui/player/service/MediaPlaybackService;->onPlayStateChanged(ZZ)V

    .line 1226
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/miui/player/service/AsyncMusicPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1227
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1228
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1231
    iget-boolean v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    if-nez v0, :cond_1

    .line 1232
    iput-boolean v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1233
    const-string v0, "com.miui.player.playstatechanged"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1235
    :cond_1
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/miui/player/service/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 1236
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->updateNotificationBar()V

    .line 1252
    :goto_1
    return-void

    .line 1223
    :cond_2
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->start()V

    .line 1224
    invoke-virtual {p0, v3, v1}, Lcom/miui/player/service/MediaPlaybackService;->onPlayStateChanged(ZZ)V

    goto :goto_0

    .line 1241
    :cond_3
    invoke-direct {p0}, Lcom/miui/player/service/MediaPlaybackService;->isAllOnline()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1242
    invoke-static {p0}, Lcom/xiaomi/common/util/Network;->isActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1243
    const v0, 0x7f080005

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1245
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    .line 1246
    iput v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    .line 1247
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 1249
    :cond_5
    invoke-direct {p0}, Lcom/miui/player/service/MediaPlaybackService;->makeAllShuffleList()Z

    goto :goto_1
.end method

.method public position()J
    .locals 2

    .prologue
    .line 2122
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2123
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->position()J

    move-result-wide v0

    .line 2125
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public prev()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1676
    monitor-enter p0

    .line 1677
    :try_start_0
    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleMode:I

    if-ne v1, v2, :cond_2

    .line 1680
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleTracer:Lcom/miui/player/service/ShuffleTracer;

    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/player/service/ShuffleTracer;->back(II)I

    move-result v0

    .line 1681
    .local v0, pos:I
    if-gez v0, :cond_0

    .line 1683
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/miui/player/service/MediaPlaybackService;->seek(J)J

    .line 1684
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->play()V

    .line 1685
    monitor-exit p0

    .line 1702
    .end local v0           #pos:I
    :goto_0
    return-void

    .line 1687
    .restart local v0       #pos:I
    :cond_0
    iput v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    .line 1697
    .end local v0           #pos:I
    :cond_1
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/miui/player/service/MediaPlaybackService;->stop(ZZ)V

    .line 1698
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->openCurrent()V

    .line 1699
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->play()V

    .line 1700
    const-string v1, "meta_changed_track"

    invoke-virtual {p0, v1}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V

    .line 1701
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1689
    :cond_2
    :try_start_1
    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    if-lez v1, :cond_3

    .line 1690
    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    .line 1693
    :cond_3
    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    if-gez v1, :cond_1

    .line 1694
    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public quit()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1614
    invoke-virtual {p0, v1}, Lcom/miui/player/service/MediaPlaybackService;->saveQueue(Z)V

    .line 1615
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->pause()V

    .line 1617
    const/16 v0, 0x1388

    invoke-direct {p0, v1, v1, v0}, Lcom/miui/player/service/MediaPlaybackService;->gotoIdleState(ZII)V

    .line 1618
    return-void
.end method

.method public registerExternalStorageListener()V
    .locals 2

    .prologue
    .line 744
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 745
    new-instance v0, Lcom/miui/player/service/MediaPlaybackService$7;

    invoke-direct {v0, p0}, Lcom/miui/player/service/MediaPlaybackService$7;-><init>(Lcom/miui/player/service/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 774
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 775
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 776
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 777
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 778
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 779
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/service/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 781
    :cond_0
    return-void
.end method

.method reloadQueue()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 528
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 529
    .local v9, sp:Landroid/content/SharedPreferences;
    iget v7, p0, Lcom/miui/player/service/MediaPlaybackService;->mCardId:I

    .line 530
    .local v7, id:I
    const-string v0, "cardid"

    invoke-interface {v9, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    const-string v0, "cardid"

    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mCardId:I

    xor-int/lit8 v1, v1, -0x1

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 534
    :cond_0
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mCardId:I

    if-ne v7, v0, :cond_9

    .line 537
    invoke-static {v9, v12}, Lcom/miui/player/service/HistoryManager;->load(Landroid/content/SharedPreferences;I)[J

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    .line 538
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    array-length v0, v0

    iput v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    .line 539
    invoke-static {v9, v12}, Lcom/miui/player/service/HistoryManager;->loadPostion(Landroid/content/SharedPreferences;I)I

    move-result v8

    .line 540
    .local v8, pos:I
    if-ltz v8, :cond_1

    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-lt v8, v0, :cond_3

    .line 542
    :cond_1
    iput v12, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    .line 600
    .end local v8           #pos:I
    :cond_2
    :goto_0
    return-void

    .line 545
    .restart local v8       #pos:I
    :cond_3
    iput v8, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    .line 547
    const-string v0, "repeatmode"

    invoke-interface {v9, v0, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mRepeatMode:I

    .line 548
    const-string v0, "shufflemode"

    invoke-interface {v9, v0, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleMode:I

    .line 550
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleMode:I

    if-ne v0, v13, :cond_4

    .line 552
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleTracer:Lcom/miui/player/service/ShuffleTracer;

    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v0, v9, v1}, Lcom/miui/player/service/ShuffleTracer;->load(Landroid/content/SharedPreferences;I)V

    .line 560
    :cond_4
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v0

    if-nez v0, :cond_9

    .line 561
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v13, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    iget v5, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    aget-wide v10, v3, v5

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 564
    .local v6, crsr:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 565
    :cond_5
    if-eqz v6, :cond_6

    .line 566
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 569
    :cond_6
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 570
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    iget v10, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    aget-wide v10, v5, v10

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 573
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 574
    :cond_7
    sget-object v0, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    const-string v1, "query media store failed !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_8
    if-eqz v6, :cond_9

    .line 578
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 593
    .end local v6           #crsr:Landroid/database/Cursor;
    .end local v8           #pos:I
    :cond_9
    const/16 v0, 0x14

    iput v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mOpenFailedCounter:I

    .line 594
    invoke-direct {p0, v13}, Lcom/miui/player/service/MediaPlaybackService;->openCurrent(Z)V

    .line 595
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 597
    sget-object v0, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    const-string v1, "player initialize failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iput v12, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    goto/16 :goto_0
.end method

.method public removeTrack(J)I
    .locals 4
    .parameter "id"

    .prologue
    .line 1908
    const/4 v1, 0x0

    .line 1909
    .local v1, numremoved:I
    monitor-enter p0

    .line 1910
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v2, :cond_1

    .line 1911
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 1912
    invoke-direct {p0, v0, v0}, Lcom/miui/player/service/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 1913
    add-int/lit8 v0, v0, -0x1

    .line 1910
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1916
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1917
    if-lez v1, :cond_2

    .line 1918
    const-string v2, "com.miui.player.queuechanged"

    invoke-virtual {p0, v2}, Lcom/miui/player/service/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1920
    :cond_2
    return v1

    .line 1916
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public removeTracks(II)I
    .locals 2
    .parameter "first"
    .parameter "last"

    .prologue
    .line 1850
    invoke-direct {p0, p1, p2}, Lcom/miui/player/service/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v0

    .line 1851
    .local v0, numremoved:I
    if-lez v0, :cond_0

    .line 1852
    const-string v1, "com.miui.player.queuechanged"

    invoke-virtual {p0, v1}, Lcom/miui/player/service/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1854
    :cond_0
    return v0
.end method

.method public removeTracks([I)I
    .locals 16
    .parameter "posArr"

    .prologue
    .line 1766
    monitor-enter p0

    .line 1767
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    if-nez v12, :cond_0

    .line 1768
    const/4 v7, 0x0

    monitor-exit p0

    .line 1837
    :goto_0
    return v7

    .line 1771
    :cond_0
    move-object/from16 v0, p1

    array-length v4, v0

    .line 1772
    .local v4, len:I
    if-gtz v4, :cond_1

    .line 1773
    const/4 v7, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1838
    .end local v4           #len:I
    :catchall_0
    move-exception v12

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 1776
    .restart local v4       #len:I
    :cond_1
    const/4 v2, 0x0

    .line 1777
    .local v2, gotoNext:Z
    const/4 v1, 0x0

    .line 1778
    .local v1, beforeCurrent:I
    const/4 v7, 0x0

    .line 1779
    .local v7, removeCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 1780
    :try_start_1
    aget v6, p1, v3

    .line 1781
    .local v6, pos:I
    if-gez v6, :cond_3

    .line 1795
    .end local v6           #pos:I
    :cond_2
    const/4 v8, 0x0

    .line 1796
    .local v8, step:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    sub-int v5, v12, v7

    .line 1797
    .local v5, newLen:I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_8

    .line 1798
    :goto_3
    add-int v12, v3, v8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-gt v12, v13, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    add-int v13, v3, v8

    aget-wide v12, v12, v13

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-gez v12, :cond_6

    .line 1799
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1784
    .end local v5           #newLen:I
    .end local v8           #step:I
    .restart local v6       #pos:I
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-ge v6, v12, :cond_4

    .line 1785
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    const-wide/16 v13, -0x1

    aput-wide v13, v12, v6

    .line 1786
    add-int/lit8 v7, v7, 0x1

    .line 1787
    move-object/from16 v0, p0

    iget v12, v0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    if-ge v6, v12, :cond_5

    .line 1788
    add-int/lit8 v1, v1, 0x1

    .line 1779
    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1789
    :cond_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    if-ne v6, v12, :cond_4

    .line 1790
    const/4 v2, 0x1

    goto :goto_4

    .line 1802
    .end local v6           #pos:I
    .restart local v5       #newLen:I
    .restart local v8       #step:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    add-int v13, v3, v8

    aget-wide v9, v12, v13

    .line 1803
    .local v9, tmp:J
    const-wide/16 v12, 0x0

    cmp-long v12, v9, v12

    if-ltz v12, :cond_7

    .line 1804
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    aput-wide v9, v12, v3

    .line 1797
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1808
    .end local v9           #tmp:J
    :cond_8
    move v3, v5

    :goto_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-ge v3, v12, :cond_9

    .line 1809
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    const-wide/16 v13, 0x0

    aput-wide v13, v12, v3

    .line 1808
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1812
    :cond_9
    move-object/from16 v0, p0

    iput v5, v0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    .line 1813
    move-object/from16 v0, p0

    iget v12, v0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    sub-int/2addr v12, v1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    .line 1815
    move-object/from16 v0, p0

    iget v12, v0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-gtz v12, :cond_c

    .line 1816
    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/miui/player/service/MediaPlaybackService;->stop(ZZ)V

    .line 1817
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    .line 1831
    :cond_a
    :goto_6
    if-lez v7, :cond_b

    .line 1832
    const-string v12, "com.miui.player.queuechanged"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/miui/player/service/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1833
    if-eqz v2, :cond_b

    .line 1834
    const-string v12, "meta_changed_track"

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;Z)V

    .line 1837
    :cond_b
    monitor-exit p0

    goto/16 :goto_0

    .line 1818
    :cond_c
    if-eqz v2, :cond_a

    .line 1819
    move-object/from16 v0, p0

    iget v12, v0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-lt v12, v13, :cond_d

    .line 1820
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    .line 1823
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/service/MediaPlaybackService;->isPlaying()Z

    move-result v11

    .line 1824
    .local v11, wasPlaying:Z
    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/miui/player/service/MediaPlaybackService;->stop(ZZ)V

    .line 1825
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/service/MediaPlaybackService;->openCurrent()V

    .line 1826
    if-eqz v11, :cond_a

    .line 1827
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/service/MediaPlaybackService;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6
.end method

.method requeryTrackInfo(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 317
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 319
    .local v0, position:I
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    .line 320
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 323
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mLyricManager:Lcom/miui/player/service/LyricManager;

    invoke-virtual {v1}, Lcom/miui/player/service/LyricManager;->reset()V

    .line 324
    const-string v1, "meta_changed_track"

    invoke-virtual {p0, v1}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->updateNotificationBar()V

    .line 327
    .end local v0           #position:I
    :cond_0
    return-void
.end method

.method saveQueue(Z)V
    .locals 5
    .parameter "full"

    .prologue
    const/4 v4, 0x0

    .line 499
    iget-boolean v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mQueueIsSaveable:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mCardId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 505
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_2

    .line 506
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    invoke-static {v0, v4, v1, v2}, Lcom/miui/player/service/HistoryManager;->save(Landroid/content/SharedPreferences$Editor;I[JI)V

    .line 507
    const-string v1, "cardid"

    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mCardId:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 510
    :cond_2
    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 512
    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-lez v1, :cond_3

    .line 513
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleTracer:Lcom/miui/player/service/ShuffleTracer;

    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/miui/player/service/ShuffleTracer;->save(Landroid/content/SharedPreferences$Editor;IIZ)V

    .line 517
    :cond_3
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAudioId()J

    move-result-wide v1

    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    invoke-static {v0, v4, v1, v2, v3}, Lcom/miui/player/service/HistoryManager;->savePosition(Landroid/content/SharedPreferences$Editor;IJI)V

    .line 519
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v1}, Lcom/miui/player/service/AsyncMusicPlayer;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    if-nez v1, :cond_4

    .line 520
    const-string v1, "seekpos"

    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->position()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 522
    :cond_4
    const-string v1, "repeatmode"

    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mRepeatMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 523
    const-string v1, "shufflemode"

    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 524
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public declared-synchronized scanFiles([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "paths"
    .parameter "mimeTypes"

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mScanCompletedListener:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    invoke-static {p0, p1, p2, v0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    monitor-exit p0

    return-void

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public seek(J)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 2134
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2135
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 2136
    const-wide/16 p1, 0x0

    .line 2137
    :cond_0
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->duration()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 2138
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->duration()J

    move-result-wide p1

    .line 2139
    :cond_1
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/miui/player/service/AsyncMusicPlayer;->seek(J)V

    move-wide v0, p1

    .line 2143
    :goto_0
    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public setQueuePosition(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 2023
    monitor-enter p0

    .line 2024
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleTracer:Lcom/miui/player/service/ShuffleTracer;

    invoke-virtual {v0}, Lcom/miui/player/service/ShuffleTracer;->clear()V

    .line 2025
    iput p1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    .line 2026
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/service/MediaPlaybackService;->stop(ZZ)V

    .line 2027
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->openCurrent(Z)V

    .line 2028
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->play()V

    .line 2029
    const-string v0, "meta_changed_track"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V

    .line 2030
    monitor-exit p0

    .line 2031
    return-void

    .line 2030
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRepeatMode(I)V
    .locals 1
    .parameter "repeatmode"

    .prologue
    .line 1940
    monitor-enter p0

    .line 1941
    :try_start_0
    iput p1, p0, Lcom/miui/player/service/MediaPlaybackService;->mRepeatMode:I

    .line 1942
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->saveQueue(Z)V

    .line 1943
    monitor-exit p0

    .line 1944
    return-void

    .line 1943
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setShuffleMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1924
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-gtz v0, :cond_0

    .line 1934
    :goto_0
    return-void

    .line 1928
    :cond_0
    monitor-enter p0

    .line 1929
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleMode:I

    invoke-virtual {v0, v1, p1}, Lcom/miui/player/service/AsyncMusicPlayer;->changeMode(II)V

    .line 1930
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleTracer:Lcom/miui/player/service/ShuffleTracer;

    invoke-virtual {v0}, Lcom/miui/player/service/ShuffleTracer;->clear()V

    .line 1931
    iput p1, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleMode:I

    .line 1932
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->saveQueue(Z)V

    .line 1933
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1607
    invoke-virtual {p0, v0, v0}, Lcom/miui/player/service/MediaPlaybackService;->stop(ZZ)V

    .line 1608
    return-void
.end method

.method stop(ZZ)V
    .locals 3
    .parameter "removeStatusIcon"
    .parameter "removeNext"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1589
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayerResponser:Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;

    invoke-virtual {v0}, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->stopBuffering()V

    .line 1590
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1591
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0, p2}, Lcom/miui/player/service/AsyncMusicPlayer;->stop(Z)V

    .line 1593
    :cond_0
    iput-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 1594
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 1595
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1596
    iput-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1598
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/player/service/MediaPlaybackService;->gotoIdleState(Z)V

    .line 1599
    iput-boolean v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1600
    invoke-virtual {p0, v1, v1}, Lcom/miui/player/service/MediaPlaybackService;->onPlayStateChanged(ZZ)V

    .line 1601
    return-void
.end method

.method public updateEqualizerBands([I)V
    .locals 5
    .parameter "levels"

    .prologue
    .line 2433
    if-nez p1, :cond_0

    .line 2434
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/miui/player/service/AsyncMusicPlayer;->updateEqualizerBands([S)V

    .line 2444
    :goto_0
    return-void

    .line 2438
    :cond_0
    array-length v1, p1

    .line 2439
    .local v1, len:I
    new-array v2, v1, [S

    .line 2440
    .local v2, tmp:[S
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 2441
    aget v3, p1, v0

    int-to-short v3, v3

    aput-short v3, v2, v0

    .line 2440
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2443
    :cond_1
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v3, v2}, Lcom/miui/player/service/AsyncMusicPlayer;->updateEqualizerBands([S)V

    goto :goto_0
.end method

.method updateMetaOnConnChanged(Z)V
    .locals 8
    .parameter "connection"

    .prologue
    const/4 v3, 0x0

    .line 2246
    if-eqz p1, :cond_1

    .line 2247
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v6

    .line 2248
    .local v6, artistName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v5

    .line 2249
    .local v5, albumName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v4

    .line 2250
    .local v4, trackName:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mLyricManager:Lcom/miui/player/service/LyricManager;

    invoke-virtual {v0}, Lcom/miui/player/service/LyricManager;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2251
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mLyricManager:Lcom/miui/player/service/LyricManager;

    invoke-virtual {v0}, Lcom/miui/player/service/LyricManager;->reset()V

    .line 2252
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mLyricManager:Lcom/miui/player/service/LyricManager;

    new-instance v2, Lcom/miui/player/service/MediaPlaybackService$LyricOpenRunnable;

    invoke-direct {v2, p0, v4, v6}, Lcom/miui/player/service/MediaPlaybackService$LyricOpenRunnable;-><init>(Lcom/miui/player/service/MediaPlaybackService;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    move v7, v3

    invoke-virtual/range {v0 .. v7}, Lcom/miui/player/service/LyricManager;->updateLyricStatus(Lcom/miui/player/service/MediaPlaybackService;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2255
    :cond_0
    invoke-direct {p0, v4, v5, v6}, Lcom/miui/player/service/MediaPlaybackService;->updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/player/service/MediaPlaybackService$AlbumSource;

    .line 2257
    .end local v4           #trackName:Ljava/lang/String;
    .end local v5           #albumName:Ljava/lang/String;
    .end local v6           #artistName:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method updateMiuiDBAfterID3Changed(Landroid/net/Uri;)V
    .locals 15
    .parameter "uri"

    .prologue
    .line 330
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "artist"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "album"

    aput-object v1, v2, v0

    .line 337
    .local v2, cols:[Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v6}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v11

    .line 338
    .local v11, c:Landroid/database/Cursor;
    if-nez v11, :cond_0

    .line 363
    :goto_0
    return-void

    .line 343
    :cond_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    const-string v0, "_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 345
    .local v9, audioId:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 347
    .local v14, where:Ljava/lang/String;
    const-string v0, "title"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 348
    .local v12, trackName:Ljava/lang/String;
    const-string v0, "artist"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 349
    .local v8, artistName:Ljava/lang/String;
    const-string v0, "album"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 351
    .local v7, albumName:Ljava/lang/String;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 352
    .local v13, values:Landroid/content/ContentValues;
    const-string v0, "album"

    invoke-virtual {v13, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v0, "artist"

    invoke-virtual {v13, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v0, "title"

    invoke-virtual {v13, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap;->EXTERNAL_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v13, v14, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    .end local v7           #albumName:Ljava/lang/String;
    .end local v8           #artistName:Ljava/lang/String;
    .end local v9           #audioId:J
    .end local v12           #trackName:Ljava/lang/String;
    .end local v13           #values:Landroid/content/ContentValues;
    .end local v14           #where:Ljava/lang/String;
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method updateNotificationBar()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1285
    const v5, 0x7f0200a3

    .line 1288
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAudioId()J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long v0, v3, v6

    if-gez v0, :cond_0

    .line 1290
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1291
    const-string v0, ""

    .line 1309
    :goto_0
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1310
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1312
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.miui.player.PLAYBACK_VIEWER"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1313
    invoke-static {p0, v2, v4, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1314
    invoke-direct {p0, v5, v1, v0}, Lcom/miui/player/service/MediaPlaybackService;->createNotificationContent(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 1315
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->isPlaying()Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1316
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1317
    const/4 v0, 0x2

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    sget v2, Lcom/android/internal/statusbar/StatusBarNotification;->PRIORITY_ONGOING:I

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/player/service/MediaPlaybackService;->enqueueNotification(ILandroid/app/Notification;I)V

    .line 1320
    return-void

    .line 1293
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v4

    .line 1294
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/player/meta/MetaManager;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1295
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/player/meta/MetaManager;->getLocaleAlbumName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1296
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1297
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1298
    :goto_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 1299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v4

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1296
    goto :goto_1

    :cond_2
    move v1, v2

    .line 1297
    goto :goto_2

    .line 1300
    :cond_3
    if-eqz v0, :cond_4

    move-object v0, v3

    move-object v1, v4

    .line 1301
    goto :goto_0

    .line 1302
    :cond_4
    if-eqz v1, :cond_5

    .line 1303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v4

    goto/16 :goto_0

    .line 1305
    :cond_5
    const-string v0, ""

    move-object v1, v4

    goto/16 :goto_0
.end method

.method updateTrackOnConnChange(Z)V
    .locals 1
    .parameter "hasLocal"

    .prologue
    .line 2349
    if-eqz p1, :cond_0

    .line 2350
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->next(Z)V

    .line 2355
    :goto_0
    return-void

    .line 2352
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->stop()V

    .line 2353
    const-string v0, "meta_changed_track"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V

    goto :goto_0
.end method
