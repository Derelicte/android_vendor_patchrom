.class public Lcom/miui/player/service/AudioPreviewService;
.super Landroid/app/Service;
.source "AudioPreviewService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/service/AudioPreviewService$ServiceStub;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBinded:Z

.field private mBinder:Landroid/os/IBinder;

.field mCachedPosition:I

.field private final mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private final mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field final mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

.field mPausedByTransientLossOfFocus:Z

.field private mPlayer:Lcom/miui/player/service/PlayerProxy;

.field mPrepared:Z

.field private final mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mPrimaryText:Ljava/lang/String;

.field mSecondaryText:Ljava/lang/String;

.field private mStartId:I

.field mSupposedToBePlaying:Z

.field private mUri:Landroid/net/Uri;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/miui/player/service/AudioPreviewService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/service/AudioPreviewService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    iput v1, p0, Lcom/miui/player/service/AudioPreviewService;->mStartId:I

    .line 45
    new-instance v0, Lcom/miui/player/service/PlayerProxy;

    invoke-direct {v0}, Lcom/miui/player/service/PlayerProxy;-><init>()V

    iput-object v0, p0, Lcom/miui/player/service/AudioPreviewService;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/service/AudioPreviewService;->mUri:Landroid/net/Uri;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/player/service/AudioPreviewService;->mCachedPosition:I

    .line 48
    iput-boolean v1, p0, Lcom/miui/player/service/AudioPreviewService;->mPrepared:Z

    .line 49
    iput-boolean v1, p0, Lcom/miui/player/service/AudioPreviewService;->mSupposedToBePlaying:Z

    .line 50
    iput-boolean v1, p0, Lcom/miui/player/service/AudioPreviewService;->mPausedByTransientLossOfFocus:Z

    .line 290
    new-instance v0, Lcom/miui/player/service/AudioPreviewService$2;

    invoke-direct {v0, p0}, Lcom/miui/player/service/AudioPreviewService$2;-><init>(Lcom/miui/player/service/AudioPreviewService;)V

    iput-object v0, p0, Lcom/miui/player/service/AudioPreviewService;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 303
    new-instance v0, Lcom/miui/player/service/AudioPreviewService$3;

    invoke-direct {v0, p0}, Lcom/miui/player/service/AudioPreviewService$3;-><init>(Lcom/miui/player/service/AudioPreviewService;)V

    iput-object v0, p0, Lcom/miui/player/service/AudioPreviewService;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 314
    new-instance v0, Lcom/miui/player/service/AudioPreviewService$4;

    invoke-direct {v0, p0}, Lcom/miui/player/service/AudioPreviewService$4;-><init>(Lcom/miui/player/service/AudioPreviewService;)V

    iput-object v0, p0, Lcom/miui/player/service/AudioPreviewService;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 334
    iput-boolean v1, p0, Lcom/miui/player/service/AudioPreviewService;->mBinded:Z

    .line 335
    new-instance v0, Lcom/miui/player/service/AudioPreviewService$ServiceStub;

    invoke-direct {v0, p0}, Lcom/miui/player/service/AudioPreviewService$ServiceStub;-><init>(Lcom/miui/player/service/AudioPreviewService;)V

    iput-object v0, p0, Lcom/miui/player/service/AudioPreviewService;->mBinder:Landroid/os/IBinder;

    .line 370
    new-instance v0, Lcom/miui/player/service/AudioPreviewService$5;

    invoke-direct {v0, p0}, Lcom/miui/player/service/AudioPreviewService$5;-><init>(Lcom/miui/player/service/AudioPreviewService;)V

    iput-object v0, p0, Lcom/miui/player/service/AudioPreviewService;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 392
    return-void
.end method

.method private resetStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 117
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 118
    invoke-static {v2}, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->setOneShot(Z)V

    .line 119
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/player/service/AudioPreviewService;->mCachedPosition:I

    .line 122
    iput-boolean v2, p0, Lcom/miui/player/service/AudioPreviewService;->mSupposedToBePlaying:Z

    .line 123
    return-void
.end method

.method private updateMetaInfo(Ljava/lang/String;)V
    .locals 10
    .parameter "path"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 198
    iput-object v2, p0, Lcom/miui/player/service/AudioPreviewService;->mPrimaryText:Ljava/lang/String;

    .line 199
    iput-object v2, p0, Lcom/miui/player/service/AudioPreviewService;->mSecondaryText:Ljava/lang/String;

    .line 201
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/service/AudioPreviewService;->mUri:Landroid/net/Uri;

    .line 202
    iget-object v3, p0, Lcom/miui/player/service/AudioPreviewService;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 204
    .local v9, scheme:Ljava/lang/String;
    new-instance v0, Lcom/miui/player/service/AudioPreviewService$1;

    invoke-virtual {p0}, Lcom/miui/player/service/AudioPreviewService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/miui/player/service/AudioPreviewService$1;-><init>(Lcom/miui/player/service/AudioPreviewService;Landroid/content/ContentResolver;)V

    .line 235
    .local v0, mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;
    const-string v3, "content"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    iget-object v3, p0, Lcom/miui/player/service/AudioPreviewService;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v4, "media"

    if-ne v3, v4, :cond_0

    .line 238
    iget-object v3, p0, Lcom/miui/player/service/AudioPreviewService;->mUri:Landroid/net/Uri;

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "title"

    aput-object v5, v4, v1

    const-string v5, "artist"

    aput-object v5, v4, v6

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v3, p0, Lcom/miui/player/service/AudioPreviewService;->mUri:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_1
    const-string v3, "file"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 250
    iget-object v3, p0, Lcom/miui/player/service/AudioPreviewService;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 251
    .local v8, file:Ljava/lang/String;
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v4, v1

    const-string v5, "title"

    aput-object v5, v4, v6

    const-string v5, "artist"

    aput-object v5, v4, v7

    const-string v5, "_data=?"

    new-array v6, v6, [Ljava/lang/String;

    aput-object v8, v6, v1

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    .end local v8           #file:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/miui/player/service/AudioPreviewService;->setNames()V

    goto :goto_0
.end method

.method private updateNotificationBar()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 277
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 278
    .local v0, builder:Landroid/app/Notification$Builder;
    iget-object v2, p0, Lcom/miui/player/service/AudioPreviewService;->mPrimaryText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 279
    iget-object v2, p0, Lcom/miui/player/service/AudioPreviewService;->mPrimaryText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 280
    iget-object v2, p0, Lcom/miui/player/service/AudioPreviewService;->mSecondaryText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 281
    const v2, 0x7f0200a3

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 283
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 284
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.miui.player.oneshot_open_ui"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 287
    const/16 v2, 0x64

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/miui/player/service/AudioPreviewService;->startForeground(ILandroid/app/Notification;)V

    .line 288
    return-void
.end method


# virtual methods
.method public duration()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    invoke-virtual {v0}, Lcom/miui/player/service/PlayerProxy;->getDuration()I

    move-result v0

    return v0
.end method

.method public getPrimaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService;->mPrimaryText:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService;->mSecondaryText:Ljava/lang/String;

    return-object v0
.end method

.method public getUriString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method gotoBackground()V
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/player/service/AudioPreviewService;->stopForeground(Z)V

    .line 361
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 365
    :cond_0
    iget-boolean v0, p0, Lcom/miui/player/service/AudioPreviewService;->mBinded:Z

    if-nez v0, :cond_1

    .line 366
    iget v0, p0, Lcom/miui/player/service/AudioPreviewService;->mStartId:I

    invoke-virtual {p0, v0}, Lcom/miui/player/service/AudioPreviewService;->stopSelf(I)V

    .line 368
    :cond_1
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/miui/player/service/AudioPreviewService;->mSupposedToBePlaying:Z

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/miui/player/service/AudioPreviewService;->mPrepared:Z

    return v0
.end method

.method notifyStatus(Ljava/lang/String;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 328
    iget-object v1, p0, Lcom/miui/player/service/AudioPreviewService;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 329
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/miui/player/service/AudioPreviewService;->sendBroadcast(Landroid/content/Intent;)V

    .line 332
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 2
    .parameter "focusChange"

    .prologue
    const/4 v1, 0x0

    .line 160
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    if-nez v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 171
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/player/service/AudioPreviewService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/service/AudioPreviewService;->mPausedByTransientLossOfFocus:Z

    .line 173
    invoke-virtual {p0}, Lcom/miui/player/service/AudioPreviewService;->pause()V

    goto :goto_0

    .line 166
    :pswitch_2
    iput-boolean v1, p0, Lcom/miui/player/service/AudioPreviewService;->mPausedByTransientLossOfFocus:Z

    .line 167
    invoke-virtual {p0}, Lcom/miui/player/service/AudioPreviewService;->pause()V

    goto :goto_0

    .line 177
    :pswitch_3
    iget-boolean v0, p0, Lcom/miui/player/service/AudioPreviewService;->mPausedByTransientLossOfFocus:Z

    if-eqz v0, :cond_0

    .line 178
    iput-boolean v1, p0, Lcom/miui/player/service/AudioPreviewService;->mPausedByTransientLossOfFocus:Z

    .line 179
    invoke-virtual {p0}, Lcom/miui/player/service/AudioPreviewService;->start()V

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/service/AudioPreviewService;->mBinded:Z

    .line 340
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 58
    iget-object v2, p0, Lcom/miui/player/service/AudioPreviewService;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    iget-object v3, p0, Lcom/miui/player/service/AudioPreviewService;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v2, v3}, Lcom/miui/player/service/PlayerProxy;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 59
    iget-object v2, p0, Lcom/miui/player/service/AudioPreviewService;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    iget-object v3, p0, Lcom/miui/player/service/AudioPreviewService;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v2, v3}, Lcom/miui/player/service/PlayerProxy;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 60
    iget-object v2, p0, Lcom/miui/player/service/AudioPreviewService;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    iget-object v3, p0, Lcom/miui/player/service/AudioPreviewService;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v2, v3}, Lcom/miui/player/service/PlayerProxy;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 61
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/miui/player/service/AudioPreviewService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/miui/player/service/AudioPreviewService;->mAudioManager:Landroid/media/AudioManager;

    .line 62
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/miui/player/service/AudioPreviewService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 63
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    sget-object v3, Lcom/miui/player/service/AudioPreviewService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/service/AudioPreviewService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 64
    iget-object v2, p0, Lcom/miui/player/service/AudioPreviewService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 66
    invoke-static {p0}, Lcom/miui/player/service/ServiceHelper;->registerMediaButtonReceiver(Landroid/content/Context;)V

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 68
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "oneshot_togglepause"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    const-string v2, "oneshot_pause"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string v2, "oneshot_play"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    iget-object v2, p0, Lcom/miui/player/service/AudioPreviewService;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/miui/player/service/AudioPreviewService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 73
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    iput-boolean v1, p0, Lcom/miui/player/service/AudioPreviewService;->mPrepared:Z

    .line 84
    iput-boolean v1, p0, Lcom/miui/player/service/AudioPreviewService;->mSupposedToBePlaying:Z

    .line 85
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 86
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    invoke-virtual {v0}, Lcom/miui/player/service/PlayerProxy;->release()V

    .line 88
    invoke-static {p0}, Lcom/miui/player/service/ServiceHelper;->unregisterMediaButtonReceiver(Landroid/content/Context;)V

    .line 89
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/player/service/AudioPreviewService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 90
    invoke-static {v1}, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->setOneShot(Z)V

    .line 92
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 96
    :cond_0
    sget-object v0, Lcom/miui/player/service/AudioPreviewService;->TAG:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 98
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/service/AudioPreviewService;->mBinded:Z

    .line 346
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 77
    iput p3, p0, Lcom/miui/player/service/AudioPreviewService;->mStartId:I

    .line 78
    const/4 v0, 0x2

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/service/AudioPreviewService;->mBinded:Z

    .line 352
    invoke-virtual {p0}, Lcom/miui/player/service/AudioPreviewService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    iget v0, p0, Lcom/miui/player/service/AudioPreviewService;->mStartId:I

    invoke-virtual {p0, v0}, Lcom/miui/player/service/AudioPreviewService;->stopSelf(I)V

    .line 355
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    invoke-virtual {v0}, Lcom/miui/player/service/PlayerProxy;->pause()V

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/service/AudioPreviewService;->mSupposedToBePlaying:Z

    .line 150
    const-string v0, "oneshot_playstate_changed"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/AudioPreviewService;->notifyStatus(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/miui/player/service/AudioPreviewService;->gotoBackground()V

    .line 152
    return-void
.end method

.method public position()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/miui/player/service/AudioPreviewService;->mCachedPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/miui/player/service/AudioPreviewService;->mCachedPosition:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    invoke-virtual {v0}, Lcom/miui/player/service/PlayerProxy;->getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method public prepareAsync(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 127
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/miui/player/service/AudioPreviewService;->mPrepared:Z

    .line 128
    invoke-direct {p0}, Lcom/miui/player/service/AudioPreviewService;->resetStatus()V

    .line 129
    invoke-direct {p0, p1}, Lcom/miui/player/service/AudioPreviewService;->updateMetaInfo(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/miui/player/service/AudioPreviewService;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    invoke-virtual {v1}, Lcom/miui/player/service/PlayerProxy;->reset()V

    .line 131
    iget-object v1, p0, Lcom/miui/player/service/AudioPreviewService;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    iget-object v2, p0, Lcom/miui/player/service/AudioPreviewService;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, p0, v2}, Lcom/miui/player/service/PlayerProxy;->setDataSourceAndPrepareAsync(Landroid/content/Context;Landroid/net/Uri;)V

    .line 132
    const-string v1, "oneshot_metainfo_changed"

    invoke-virtual {p0, v1}, Lcom/miui/player/service/AudioPreviewService;->notifyStatus(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/miui/player/service/AudioPreviewService;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const v1, 0x7f0800a4

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public seek(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    invoke-virtual {v0, p1}, Lcom/miui/player/service/PlayerProxy;->seekTo(I)V

    .line 156
    return-void
.end method

.method setNames()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService;->mPrimaryText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/service/AudioPreviewService;->mPrimaryText:Ljava/lang/String;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService;->mSecondaryText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/service/AudioPreviewService;->mSecondaryText:Ljava/lang/String;

    .line 270
    :cond_1
    const-string v0, "oneshot_metainfo_changed"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/AudioPreviewService;->notifyStatus(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcom/miui/player/service/AudioPreviewService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    invoke-direct {p0}, Lcom/miui/player/service/AudioPreviewService;->updateNotificationBar()V

    .line 274
    :cond_2
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/miui/player/service/AudioPreviewService;->resetStatus()V

    .line 142
    iget-object v0, p0, Lcom/miui/player/service/AudioPreviewService;->mPlayer:Lcom/miui/player/service/PlayerProxy;

    invoke-virtual {v0}, Lcom/miui/player/service/PlayerProxy;->start()V

    .line 143
    const-string v0, "oneshot_playstate_changed"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/AudioPreviewService;->notifyStatus(Ljava/lang/String;)V

    .line 144
    invoke-direct {p0}, Lcom/miui/player/service/AudioPreviewService;->updateNotificationBar()V

    .line 145
    return-void
.end method
