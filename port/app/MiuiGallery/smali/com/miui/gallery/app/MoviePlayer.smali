.class public Lcom/miui/gallery/app/MoviePlayer;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Lcom/miui/gallery/app/ControllerOverlay$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/app/MoviePlayer$AudioBecomingNoisyReceiver;
    }
.end annotation


# instance fields
.field private final mActionBar:Landroid/app/ActionBar;

.field private final mAudioBecomingNoisyReceiver:Lcom/miui/gallery/app/MoviePlayer$AudioBecomingNoisyReceiver;

.field private final mBookmarker:Lcom/miui/gallery/app/Bookmarker;

.field private mContext:Landroid/content/Context;

.field private final mController:Lcom/miui/gallery/app/ControllerOverlay;

.field private mDragging:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasPaused:Z

.field private final mPlayingChecker:Ljava/lang/Runnable;

.field private final mProgressChecker:Ljava/lang/Runnable;

.field private mResumeableTime:J

.field private mShowing:Z

.field private final mUri:Landroid/net/Uri;

.field private mVideoPosition:I

.field private final mVideoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/miui/gallery/app/MovieActivity;Landroid/net/Uri;Landroid/os/Bundle;Z)V
    .locals 7
    .parameter "rootView"
    .parameter "movieActivity"
    .parameter "videoUri"
    .parameter "savedInstance"
    .parameter "canReplay"

    .prologue
    const-wide v5, 0x7fffffffffffffffL

    const/4 v4, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/miui/gallery/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    .line 76
    iput-wide v5, p0, Lcom/miui/gallery/app/MoviePlayer;->mResumeableTime:J

    .line 77
    iput v4, p0, Lcom/miui/gallery/app/MoviePlayer;->mVideoPosition:I

    .line 78
    iput-boolean v4, p0, Lcom/miui/gallery/app/MoviePlayer;->mHasPaused:Z

    .line 86
    new-instance v2, Lcom/miui/gallery/app/MoviePlayer$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/app/MoviePlayer$1;-><init>(Lcom/miui/gallery/app/MoviePlayer;)V

    iput-object v2, p0, Lcom/miui/gallery/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    .line 97
    new-instance v2, Lcom/miui/gallery/app/MoviePlayer$2;

    invoke-direct {v2, p0}, Lcom/miui/gallery/app/MoviePlayer$2;-><init>(Lcom/miui/gallery/app/MoviePlayer;)V

    iput-object v2, p0, Lcom/miui/gallery/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    .line 107
    invoke-virtual {p2}, Lcom/miui/gallery/app/MovieActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/app/MoviePlayer;->mContext:Landroid/content/Context;

    .line 108
    const v2, 0x7f0b0059

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/VideoView;

    iput-object v2, p0, Lcom/miui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    .line 109
    new-instance v2, Lcom/miui/gallery/app/Bookmarker;

    invoke-direct {v2, p2}, Lcom/miui/gallery/app/Bookmarker;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/gallery/app/MoviePlayer;->mBookmarker:Lcom/miui/gallery/app/Bookmarker;

    .line 110
    invoke-virtual {p2}, Lcom/miui/gallery/app/MovieActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/app/MoviePlayer;->mActionBar:Landroid/app/ActionBar;

    .line 111
    iput-object p3, p0, Lcom/miui/gallery/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 113
    new-instance v2, Lcom/miui/gallery/app/MovieControllerOverlay;

    iget-object v3, p0, Lcom/miui/gallery/app/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/miui/gallery/app/MovieControllerOverlay;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/gallery/app/MoviePlayer;->mController:Lcom/miui/gallery/app/ControllerOverlay;

    .line 114
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    iget-object v2, p0, Lcom/miui/gallery/app/MoviePlayer;->mController:Lcom/miui/gallery/app/ControllerOverlay;

    invoke-interface {v2}, Lcom/miui/gallery/app/ControllerOverlay;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 115
    iget-object v2, p0, Lcom/miui/gallery/app/MoviePlayer;->mController:Lcom/miui/gallery/app/ControllerOverlay;

    invoke-interface {v2, p0}, Lcom/miui/gallery/app/ControllerOverlay;->setListener(Lcom/miui/gallery/app/ControllerOverlay$Listener;)V

    .line 116
    iget-object v2, p0, Lcom/miui/gallery/app/MoviePlayer;->mController:Lcom/miui/gallery/app/ControllerOverlay;

    invoke-interface {v2, p5}, Lcom/miui/gallery/app/ControllerOverlay;->setCanReplay(Z)V

    .line 118
    iget-object v2, p0, Lcom/miui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 119
    iget-object v2, p0, Lcom/miui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 120
    iget-object v2, p0, Lcom/miui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/miui/gallery/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 121
    iget-object v2, p0, Lcom/miui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    new-instance v3, Lcom/miui/gallery/app/MoviePlayer$3;

    invoke-direct {v3, p0}, Lcom/miui/gallery/app/MoviePlayer$3;-><init>(Lcom/miui/gallery/app/MoviePlayer;)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 131
    iget-object v2, p0, Lcom/miui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    new-instance v3, Lcom/miui/gallery/app/MoviePlayer$4;

    invoke-direct {v3, p0}, Lcom/miui/gallery/app/MoviePlayer$4;-><init>(Lcom/miui/gallery/app/MoviePlayer;)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 140
    new-instance v2, Lcom/miui/gallery/app/MoviePlayer$AudioBecomingNoisyReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/gallery/app/MoviePlayer$AudioBecomingNoisyReceiver;-><init>(Lcom/miui/gallery/app/MoviePlayer;Lcom/miui/gallery/app/MoviePlayer$1;)V

    iput-object v2, p0, Lcom/miui/gallery/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/miui/gallery/app/MoviePlayer$AudioBecomingNoisyReceiver;

    .line 141
    iget-object v2, p0, Lcom/miui/gallery/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/miui/gallery/app/MoviePlayer$AudioBecomingNoisyReceiver;

    invoke-virtual {v2}, Lcom/miui/gallery/app/MoviePlayer$AudioBecomingNoisyReceiver;->register()V

    .line 143
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, i:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p2, v1}, Lcom/miui/gallery/app/MovieActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 147
    if-eqz p4, :cond_0

    .line 148
    const-string v2, "video-position"

    invoke-virtual {p4, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/app/MoviePlayer;->mVideoPosition:I

    .line 149
    const-string v2, "resumeable-timeout"

    invoke-virtual {p4, v2, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/app/MoviePlayer;->mResumeableTime:J

    .line 150
    iget-object v2, p0, Lcom/miui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 151
    iget-object v2, p0, Lcom/miui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->suspend()V

    .line 152
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/gallery/app/MoviePlayer;->mHasPaused:Z

    .line 161
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/app/MoviePlayer;->mBookmarker:Lcom/miui/gallery/app/Bookmarker;

    iget-object v3, p0, Lcom/miui/gallery/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/app/Bookmarker;->getBookmark(Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v0

    .line 155
    .local v0, bookmark:Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p2, v2}, Lcom/miui/gallery/app/MoviePlayer;->showResumeDialog(Landroid/content/Context;I)V

    goto :goto_0

    .line 158
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/app/MoviePlayer;->startVideo()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/miui/gallery/app/MoviePlayer;)Landroid/widget/VideoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/app/MoviePlayer;)Lcom/miui/gallery/app/ControllerOverlay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer;->mController:Lcom/miui/gallery/app/ControllerOverlay;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/app/MoviePlayer;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/app/MoviePlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/app/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/miui/gallery/app/MoviePlayer;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/app/MoviePlayer;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/app/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/miui/gallery/app/MoviePlayer;->startVideo()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/gallery/app/MoviePlayer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/app/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/miui/gallery/app/MoviePlayer;->pauseVideo()V

    return-void
.end method

.method private static isMediaKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 378
    const/16 v0, 0x4f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x58

    if-eq p0, v0, :cond_0

    const/16 v0, 0x57

    if-eq p0, v0, :cond_0

    const/16 v0, 0x55

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pauseVideo()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 268
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer;->mController:Lcom/miui/gallery/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/miui/gallery/app/ControllerOverlay;->showPaused()V

    .line 269
    return-void
.end method

.method private playVideo()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 262
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer;->mController:Lcom/miui/gallery/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/miui/gallery/app/ControllerOverlay;->showPlaying()V

    .line 263
    invoke-direct {p0}, Lcom/miui/gallery/app/MoviePlayer;->setProgress()I

    .line 264
    return-void
.end method

.method private setProgress()I
    .locals 3

    .prologue
    .line 235
    iget-boolean v2, p0, Lcom/miui/gallery/app/MoviePlayer;->mDragging:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/miui/gallery/app/MoviePlayer;->mShowing:Z

    if-nez v2, :cond_1

    .line 236
    :cond_0
    const/4 v1, 0x0

    .line 241
    :goto_0
    return v1

    .line 238
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    .line 239
    .local v1, position:I
    iget-object v2, p0, Lcom/miui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    .line 240
    .local v0, duration:I
    iget-object v2, p0, Lcom/miui/gallery/app/MoviePlayer;->mController:Lcom/miui/gallery/app/ControllerOverlay;

    invoke-interface {v2, v1, v0}, Lcom/miui/gallery/app/ControllerOverlay;->setTimes(II)V

    goto :goto_0
.end method

.method private showResumeDialog(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "bookmark"

    .prologue
    .line 175
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 176
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0d0032

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 177
    const v1, 0x7f0d0033

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    div-int/lit16 v4, p2, 0x3e8

    invoke-static {p1, v4}, Lcom/miui/gallery/util/GalleryUtils;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 180
    new-instance v1, Lcom/miui/gallery/app/MoviePlayer$5;

    invoke-direct {v1, p0}, Lcom/miui/gallery/app/MoviePlayer$5;-><init>(Lcom/miui/gallery/app/MoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 186
    const v1, 0x7f0d0034

    new-instance v2, Lcom/miui/gallery/app/MoviePlayer$6;

    invoke-direct {v2, p0, p2}, Lcom/miui/gallery/app/MoviePlayer$6;-><init>(Lcom/miui/gallery/app/MoviePlayer;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 194
    const v1, 0x7f0d0038

    new-instance v2, Lcom/miui/gallery/app/MoviePlayer$7;

    invoke-direct {v2, p0}, Lcom/miui/gallery/app/MoviePlayer$7;-><init>(Lcom/miui/gallery/app/MoviePlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 201
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 202
    return-void
.end method

.method private showSystemUi(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 164
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 166
    .local v0, flag:I
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setSystemUiVisibility(I)V

    .line 167
    return-void

    .line 164
    .end local v0           #flag:I
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private startVideo()V
    .locals 5

    .prologue
    .line 247
    iget-object v1, p0, Lcom/miui/gallery/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, scheme:Ljava/lang/String;
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "rtsp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/app/MoviePlayer;->mController:Lcom/miui/gallery/app/ControllerOverlay;

    invoke-interface {v1}, Lcom/miui/gallery/app/ControllerOverlay;->showLoading()V

    .line 250
    iget-object v1, p0, Lcom/miui/gallery/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/gallery/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 251
    iget-object v1, p0, Lcom/miui/gallery/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/gallery/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 256
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    .line 257
    invoke-direct {p0}, Lcom/miui/gallery/app/MoviePlayer;->setProgress()I

    .line 258
    return-void

    .line 253
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/app/MoviePlayer;->mController:Lcom/miui/gallery/app/ControllerOverlay;

    invoke-interface {v1}, Lcom/miui/gallery/app/ControllerOverlay;->showPlaying()V

    goto :goto_0
.end method


# virtual methods
.method public onCompletion()V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer;->mController:Lcom/miui/gallery/app/ControllerOverlay;

    invoke-interface {v0}, Lcom/miui/gallery/app/ControllerOverlay;->showEnded()V

    .line 284
    invoke-virtual {p0}, Lcom/miui/gallery/app/MoviePlayer;->onCompletion()V

    .line 285
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 228
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/miui/gallery/app/MoviePlayer$AudioBecomingNoisyReceiver;

    invoke-virtual {v0}, Lcom/miui/gallery/app/MoviePlayer$AudioBecomingNoisyReceiver;->unregister()V

    .line 229
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "player"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 277
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer;->mController:Lcom/miui/gallery/app/ControllerOverlay;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/miui/gallery/app/ControllerOverlay;->showErrorMessage(Ljava/lang/String;)V

    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public onHidden()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 327
    iput-boolean v1, p0, Lcom/miui/gallery/app/MoviePlayer;->mShowing:Z

    .line 328
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 329
    invoke-direct {p0, v1}, Lcom/miui/gallery/app/MoviePlayer;->showSystemUi(Z)V

    .line 330
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 341
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 342
    invoke-static {p1}, Lcom/miui/gallery/app/MoviePlayer;->isMediaKey(I)Z

    move-result v0

    .line 370
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 345
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 370
    const/4 v0, 0x0

    goto :goto_0

    .line 348
    :sswitch_1
    iget-object v1, p0, Lcom/miui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 349
    invoke-direct {p0}, Lcom/miui/gallery/app/MoviePlayer;->pauseVideo()V

    goto :goto_0

    .line 351
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/app/MoviePlayer;->playVideo()V

    goto :goto_0

    .line 355
    :sswitch_2
    iget-object v1, p0, Lcom/miui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    invoke-direct {p0}, Lcom/miui/gallery/app/MoviePlayer;->pauseVideo()V

    goto :goto_0

    .line 360
    :sswitch_3
    iget-object v1, p0, Lcom/miui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 361
    invoke-direct {p0}, Lcom/miui/gallery/app/MoviePlayer;->playVideo()V

    goto :goto_0

    .line 345
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x7e -> :sswitch_3
        0x7f -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 374
    invoke-static {p1}, Lcom/miui/gallery/app/MoviePlayer;->isMediaKey(I)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/app/MoviePlayer;->mHasPaused:Z

    .line 206
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/app/MoviePlayer;->mVideoPosition:I

    .line 208
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer;->mBookmarker:Lcom/miui/gallery/app/Bookmarker;

    iget-object v1, p0, Lcom/miui/gallery/app/MoviePlayer;->mUri:Landroid/net/Uri;

    iget v2, p0, Lcom/miui/gallery/app/MoviePlayer;->mVideoPosition:I

    iget-object v3, p0, Lcom/miui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getDuration()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/app/Bookmarker;->setBookmark(Landroid/net/Uri;II)V

    .line 209
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x2bf20

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/gallery/app/MoviePlayer;->mResumeableTime:J

    .line 211
    return-void
.end method

.method public onPlayPause()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/miui/gallery/app/MoviePlayer;->pauseVideo()V

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/app/MoviePlayer;->playVideo()V

    goto :goto_0
.end method

.method public onReplay()V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/miui/gallery/app/MoviePlayer;->startVideo()V

    .line 335
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/miui/gallery/app/MoviePlayer;->mHasPaused:Z

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/miui/gallery/app/MoviePlayer;->mVideoPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 216
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/gallery/app/MoviePlayer;->mResumeableTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/miui/gallery/app/MoviePlayer;->pauseVideo()V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gallery/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 224
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 170
    const-string v0, "video-position"

    iget v1, p0, Lcom/miui/gallery/app/MoviePlayer;->mVideoPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    const-string v0, "resumeable-timeout"

    iget-wide v1, p0, Lcom/miui/gallery/app/MoviePlayer;->mResumeableTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 172
    return-void
.end method

.method public onSeekEnd(I)V
    .locals 1
    .parameter "time"

    .prologue
    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/app/MoviePlayer;->mDragging:Z

    .line 313
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 314
    invoke-direct {p0}, Lcom/miui/gallery/app/MoviePlayer;->setProgress()I

    .line 315
    return-void
.end method

.method public onSeekMove(I)V
    .locals 1
    .parameter "time"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 308
    return-void
.end method

.method public onSeekStart()V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/app/MoviePlayer;->mDragging:Z

    .line 303
    return-void
.end method

.method public onShown()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 319
    iput-boolean v1, p0, Lcom/miui/gallery/app/MoviePlayer;->mShowing:Z

    .line 320
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 321
    invoke-direct {p0, v1}, Lcom/miui/gallery/app/MoviePlayer;->showSystemUi(Z)V

    .line 322
    invoke-direct {p0}, Lcom/miui/gallery/app/MoviePlayer;->setProgress()I

    .line 323
    return-void
.end method
