.class public Lcom/miui/home/launcher/gadget/Player;
.super Landroid/widget/FrameLayout;
.source "Player.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/home/launcher/gadget/Gadget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/gadget/Player$MusicUtils;,
        Lcom/miui/home/launcher/gadget/Player$FadeAnimation;,
        Lcom/miui/home/launcher/gadget/Player$AlbumHelper;,
        Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;
    }
.end annotation


# instance fields
.field private mAlbumHelper:Lcom/miui/home/launcher/gadget/Player$AlbumHelper;

.field private mAlbumImage:Landroid/widget/ImageView;

.field private mAlbumWraper:Landroid/widget/FrameLayout;

.field private mArtistNameStr:Ljava/lang/String;

.field private mCachableWrap:Landroid/view/View;

.field private mCurrentPos:J

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDuration:J

.field private mFavoriteIcon:Landroid/widget/ImageView;

.field private final mHandler:Landroid/os/Handler;

.field private mIsEditMode:Z

.field private mIsFavoriteSong:Z

.field private mIsPlaying:Z

.field private mIsResume:Z

.field private mIsUpdateLyricAndTime:Z

.field private mLastDownY:F

.field private mLastUpdateProgressTime:J

.field private mLastUpdateTime:J

.field private mLyricScrollHelper:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

.field private mLyricWraper:Landroid/widget/ScrollView;

.field private mNeedInitGadget:Z

.field private mPlayButton:Landroid/widget/ImageView;

.field private mProgressBg:Landroid/widget/FrameLayout;

.field private mProgressCurrent:Landroid/widget/ImageView;

.field private mProgressLoading:Landroid/widget/ImageView;

.field private mResumeRunnable:Ljava/lang/Runnable;

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mSv:Lmiui/widget/SpectrumVisualizer;

.field private mTotalTime:Landroid/widget/TextView;

.field private mTouchSlop:F

.field private mTrackName:Landroid/widget/TextView;

.field private mTrackNameStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 192
    new-instance v1, Lcom/miui/home/launcher/gadget/Player$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/gadget/Player$1;-><init>(Lcom/miui/home/launcher/gadget/Player;)V

    iput-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mResumeRunnable:Ljava/lang/Runnable;

    .line 447
    new-instance v1, Lcom/miui/home/launcher/gadget/Player$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/gadget/Player$2;-><init>(Lcom/miui/home/launcher/gadget/Player;)V

    iput-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mHandler:Landroid/os/Handler;

    .line 458
    iput-wide v3, p0, Lcom/miui/home/launcher/gadget/Player;->mLastUpdateTime:J

    .line 459
    iput-wide v3, p0, Lcom/miui/home/launcher/gadget/Player;->mLastUpdateProgressTime:J

    .line 508
    new-instance v1, Lcom/miui/home/launcher/gadget/Player$3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/gadget/Player$3;-><init>(Lcom/miui/home/launcher/gadget/Player;)V

    iput-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 81
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->setupViews()V

    .line 82
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->initReceiver()V

    .line 84
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 85
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/miui/home/launcher/gadget/Player;->mTouchSlop:F

    .line 87
    new-instance v1, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;-><init>(Lcom/miui/home/launcher/gadget/Player;Lcom/miui/home/launcher/gadget/Player$1;)V

    iput-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumHelper:Lcom/miui/home/launcher/gadget/Player$AlbumHelper;

    .line 88
    new-instance v1, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;-><init>(Lcom/miui/home/launcher/gadget/Player;Lcom/miui/home/launcher/gadget/Player$1;)V

    iput-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mLyricScrollHelper:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    .line 89
    return-void
.end method

.method static synthetic access$1200(Lcom/miui/home/launcher/gadget/Player;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->updateLyricAndTime()V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/home/launcher/gadget/Player;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/home/launcher/gadget/Player;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mTrackNameStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/home/launcher/gadget/Player;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mArtistNameStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/home/launcher/gadget/Player;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/Player;->checkException(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/miui/home/launcher/gadget/Player;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/Player;->updateSongStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/miui/home/launcher/gadget/Player;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/Player;->updateTrack(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/gadget/Player;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->updateSpectrumVisualizer()V

    return-void
.end method

.method static synthetic access$2000(Lcom/miui/home/launcher/gadget/Player;)Lcom/miui/home/launcher/gadget/Player$AlbumHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumHelper:Lcom/miui/home/launcher/gadget/Player$AlbumHelper;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/miui/home/launcher/gadget/Player;)Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mLyricScrollHelper:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/miui/home/launcher/gadget/Player;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/Player;->updateBufferedProgress(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/miui/home/launcher/gadget/Player;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/miui/home/launcher/gadget/Player;->mIsResume:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/miui/home/launcher/gadget/Player;)Landroid/widget/ScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/miui/home/launcher/gadget/Player;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/miui/home/launcher/gadget/Player;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/miui/home/launcher/gadget/Player;->mTouchSlop:F

    return v0
.end method

.method static synthetic access$4000(Lcom/miui/home/launcher/gadget/Player;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/miui/home/launcher/gadget/Player;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/miui/home/launcher/gadget/Player;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumWraper:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/miui/home/launcher/gadget/Player;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->updateMetaStatus()V

    return-void
.end method

.method private checkException(Ljava/lang/String;)Z
    .locals 6
    .parameter "trackName"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, errorState:Ljava/lang/String;
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 361
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    const v3, 0x30c0038

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 365
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 366
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->reset()V

    .line 369
    invoke-direct {p0, v4, v5}, Lcom/miui/home/launcher/gadget/Player;->updateCurrentProgress(J)V

    .line 370
    invoke-direct {p0, v4, v5}, Lcom/miui/home/launcher/gadget/Player;->updateBufferedProgress(J)V

    .line 371
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player;->mLyricScrollHelper:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    #calls: Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->clearup()V
    invoke-static {v2}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->access$1000(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;)V

    .line 372
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumHelper:Lcom/miui/home/launcher/gadget/Player$AlbumHelper;

    #calls: Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->reset()V
    invoke-static {v2}, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->access$1100(Lcom/miui/home/launcher/gadget/Player$AlbumHelper;)V

    .line 373
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->updateSpectrumVisualizer()V

    .line 374
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->updateDrawingCache()V

    .line 375
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->updateMetaStatus()V

    .line 376
    iput-boolean v1, p0, Lcom/miui/home/launcher/gadget/Player;->mNeedInitGadget:Z

    .line 379
    :goto_1
    return v1

    .line 362
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0051

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 379
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private cleanup()V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/Player;->mIsResume:Z

    .line 230
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->updateSpectrumVisualizer()V

    .line 231
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->updateDrawingCache()V

    .line 232
    return-void
.end method

.method private initReceiver()V
    .locals 3

    .prologue
    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.miui.player.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v1, "com.miui.player.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v1, "com.miui.player.playbackcomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v1, "com.miui.player.refreshprogress"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/home/launcher/gadget/Player;->mNeedInitGadget:Z

    .line 101
    return-void
.end method

.method private lyricAndTimeNextRefresh()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 486
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 487
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 488
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mLyricScrollHelper:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    #calls: Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->hasLyric()Z
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->access$800(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x50

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 493
    :goto_0
    return-void

    .line 491
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 383
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mCurrentTime:Landroid/widget/TextView;

    const-string v1, "-- : --"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mTotalTime:Landroid/widget/TextView;

    const-string v1, "-- : --"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iput-boolean v2, p0, Lcom/miui/home/launcher/gadget/Player;->mIsUpdateLyricAndTime:Z

    .line 386
    iput-object v3, p0, Lcom/miui/home/launcher/gadget/Player;->mArtistNameStr:Ljava/lang/String;

    .line 387
    iput-object v3, p0, Lcom/miui/home/launcher/gadget/Player;->mTrackNameStr:Ljava/lang/String;

    .line 389
    iput-boolean v2, p0, Lcom/miui/home/launcher/gadget/Player;->mIsFavoriteSong:Z

    .line 390
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/miui/home/launcher/gadget/Player;->mIsFavoriteSong:Z

    if-eqz v0, :cond_0

    const v0, 0x7f020076

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 393
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    iput-boolean v2, p0, Lcom/miui/home/launcher/gadget/Player;->mIsPlaying:Z

    .line 396
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mPlayButton:Landroid/widget/ImageView;

    const v1, 0x7f020084

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 397
    return-void

    .line 390
    :cond_0
    const v0, 0x7f020077

    goto :goto_0
.end method

.method private setupViews()V
    .locals 3

    .prologue
    const v2, 0x7f07002b

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    const v1, 0x7f03001a

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/gadget/Player;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 108
    const v0, 0x7f070031

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v0, 0x7f07002d

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v0, 0x7f07002f

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v0, 0x7f07003a

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v0, 0x7f07002e

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mPlayButton:Landroid/widget/ImageView;

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v0, 0x7f070030

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    .line 117
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v0, 0x7f070032

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mTrackName:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f070034

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mCurrentTime:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f070038

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mTotalTime:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f070029

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mCachableWrap:Landroid/view/View;

    .line 124
    const v0, 0x7f07002a

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumWraper:Landroid/widget/FrameLayout;

    .line 125
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    .line 127
    const v0, 0x7f070039

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    .line 128
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setSmoothScrollingEnabled(Z)V

    .line 130
    const v0, 0x7f07003e

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SpectrumVisualizer;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mSv:Lmiui/widget/SpectrumVisualizer;

    .line 131
    const v0, 0x7f070037

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mProgressCurrent:Landroid/widget/ImageView;

    .line 132
    const v0, 0x7f070036

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mProgressLoading:Landroid/widget/ImageView;

    .line 133
    const v0, 0x7f070035

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mProgressBg:Landroid/widget/FrameLayout;

    .line 134
    return-void
.end method

.method private showBuffering()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 400
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mTotalTime:Landroid/widget/TextView;

    const v1, 0x7f0b0050

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 401
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mCurrentTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    const v2, 0x7f0b005f

    invoke-static {v1, v3, v4, v2}, Lcom/miui/home/launcher/gadget/Player$MusicUtils;->makeTimeString(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    invoke-direct {p0, v3, v4}, Lcom/miui/home/launcher/gadget/Player;->updateCurrentProgress(J)V

    .line 403
    return-void
.end method

.method private updateBufferedProgress(J)V
    .locals 5
    .parameter "bufferPos"

    .prologue
    .line 424
    iget-wide v1, p0, Lcom/miui/home/launcher/gadget/Player;->mDuration:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mProgressLoading:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 426
    .local v0, progressLP:Landroid/view/ViewGroup$LayoutParams;
    iget-wide v1, p0, Lcom/miui/home/launcher/gadget/Player;->mDuration:J

    cmp-long v1, p1, v1

    if-gez v1, :cond_1

    .line 427
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mProgressBg:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-long v1, v1

    mul-long/2addr v1, p1

    iget-wide v3, p0, Lcom/miui/home/launcher/gadget/Player;->mDuration:J

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 431
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mProgressLoading:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    .end local v0           #progressLP:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void

    .line 429
    .restart local v0       #progressLP:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method private updateBufferedProgress(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 419
    const-string v2, "buffered_pos"

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 420
    .local v0, bufferPos:J
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/gadget/Player;->updateBufferedProgress(J)V

    .line 421
    return-void
.end method

.method private updateCurrentProgress(J)V
    .locals 5
    .parameter "pos"

    .prologue
    .line 435
    iget-wide v1, p0, Lcom/miui/home/launcher/gadget/Player;->mDuration:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mProgressCurrent:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 437
    .local v0, progressLP:Landroid/view/ViewGroup$LayoutParams;
    iget-wide v1, p0, Lcom/miui/home/launcher/gadget/Player;->mDuration:J

    cmp-long v1, p1, v1

    if-gez v1, :cond_1

    .line 438
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mProgressBg:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-long v1, v1

    mul-long/2addr v1, p1

    iget-wide v3, p0, Lcom/miui/home/launcher/gadget/Player;->mDuration:J

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 442
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mProgressCurrent:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    .end local v0           #progressLP:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void

    .line 440
    .restart local v0       #progressLP:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method private updateDrawingCache()V
    .locals 2

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Player;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 267
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 268
    iget-boolean v1, p0, Lcom/miui/home/launcher/gadget/Player;->mIsUpdateLyricAndTime:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/home/launcher/gadget/Player;->mIsResume:Z

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 270
    :cond_1
    return-void

    .line 268
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateLyricAndTime()V
    .locals 6

    .prologue
    .line 461
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 462
    .local v0, currentTime:J
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player;->mLyricScrollHelper:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    #calls: Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->hasLyric()Z
    invoke-static {v2}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->access$800(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 463
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player;->mLyricScrollHelper:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    iget-wide v3, p0, Lcom/miui/home/launcher/gadget/Player;->mCurrentPos:J

    #calls: Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->scrollLyric(J)V
    invoke-static {v2, v3, v4}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->access$1300(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;J)V

    .line 465
    :cond_0
    iget-wide v2, p0, Lcom/miui/home/launcher/gadget/Player;->mLastUpdateTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 466
    iget-wide v2, p0, Lcom/miui/home/launcher/gadget/Player;->mCurrentPos:J

    iget-wide v4, p0, Lcom/miui/home/launcher/gadget/Player;->mLastUpdateTime:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/miui/home/launcher/gadget/Player;->mCurrentPos:J

    .line 467
    iget-wide v2, p0, Lcom/miui/home/launcher/gadget/Player;->mCurrentPos:J

    iget-wide v4, p0, Lcom/miui/home/launcher/gadget/Player;->mDuration:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 468
    iget-wide v2, p0, Lcom/miui/home/launcher/gadget/Player;->mDuration:J

    iput-wide v2, p0, Lcom/miui/home/launcher/gadget/Player;->mCurrentPos:J

    .line 471
    :cond_1
    iget-boolean v2, p0, Lcom/miui/home/launcher/gadget/Player;->mIsUpdateLyricAndTime:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/miui/home/launcher/gadget/Player;->mIsResume:Z

    if-eqz v2, :cond_3

    .line 472
    iget-wide v2, p0, Lcom/miui/home/launcher/gadget/Player;->mLastUpdateProgressTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 473
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->updateProgressBarAndTime()V

    .line 474
    iput-wide v0, p0, Lcom/miui/home/launcher/gadget/Player;->mLastUpdateProgressTime:J

    .line 476
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->lyricAndTimeNextRefresh()V

    .line 477
    iput-wide v0, p0, Lcom/miui/home/launcher/gadget/Player;->mLastUpdateTime:J

    .line 481
    :goto_0
    return-void

    .line 479
    :cond_3
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/miui/home/launcher/gadget/Player;->mLastUpdateTime:J

    goto :goto_0
.end method

.method private updateMetaStatus()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f020051

    const v4, 0x7f020050

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, metaStatus:I
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumHelper:Lcom/miui/home/launcher/gadget/Player$AlbumHelper;

    #calls: Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->hasAlbum()Z
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->access$700(Lcom/miui/home/launcher/gadget/Player$AlbumHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    or-int/lit8 v0, v0, 0x2

    .line 294
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mLyricScrollHelper:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    #calls: Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->hasLyric()Z
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->access$800(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    or-int/lit8 v0, v0, 0x1

    .line 301
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 323
    :goto_2
    return-void

    .line 292
    :cond_0
    and-int/lit8 v0, v0, -0x3

    goto :goto_0

    .line 299
    :cond_1
    and-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 303
    :pswitch_0
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 304
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 308
    :pswitch_1
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 309
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 310
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 313
    :pswitch_2
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 314
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 315
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumHelper:Lcom/miui/home/launcher/gadget/Player$AlbumHelper;

    #calls: Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->getAlbumBitmap()Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->access$900(Lcom/miui/home/launcher/gadget/Player$AlbumHelper;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 318
    :pswitch_3
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 319
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 320
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumHelper:Lcom/miui/home/launcher/gadget/Player$AlbumHelper;

    #calls: Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->getAlbumBitmap()Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->access$900(Lcom/miui/home/launcher/gadget/Player$AlbumHelper;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateProgressBarAndTime()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    const v6, 0x7f0b005f

    const-wide/16 v4, 0x3e8

    .line 497
    iget-wide v0, p0, Lcom/miui/home/launcher/gadget/Player;->mCurrentPos:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/home/launcher/gadget/Player;->mDuration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mCurrentTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/miui/home/launcher/gadget/Player;->mCurrentPos:J

    add-long/2addr v2, v4

    div-long/2addr v2, v4

    invoke-static {v1, v2, v3, v6}, Lcom/miui/home/launcher/gadget/Player$MusicUtils;->makeTimeString(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mTotalTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/miui/home/launcher/gadget/Player;->mDuration:J

    add-long/2addr v2, v4

    div-long/2addr v2, v4

    invoke-static {v1, v2, v3, v6}, Lcom/miui/home/launcher/gadget/Player$MusicUtils;->makeTimeString(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    iget-wide v0, p0, Lcom/miui/home/launcher/gadget/Player;->mCurrentPos:J

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/gadget/Player;->updateCurrentProgress(J)V

    .line 506
    :cond_0
    return-void
.end method

.method private updateSongStatus(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    .line 326
    const-string v8, "current_time"

    const-wide/16 v9, -0x1

    invoke-virtual {p1, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/miui/home/launcher/gadget/Player;->mCurrentPos:J

    .line 327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 328
    .local v1, currentTime:J
    const-string v8, "current_system_time"

    invoke-virtual {p1, v8, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 329
    .local v6, time:J
    iget-wide v8, p0, Lcom/miui/home/launcher/gadget/Player;->mCurrentPos:J

    sub-long v10, v1, v6

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/miui/home/launcher/gadget/Player;->mCurrentPos:J

    .line 330
    const-string v8, "total_time"

    const-wide/16 v9, -0x1

    invoke-virtual {p1, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/miui/home/launcher/gadget/Player;->mDuration:J

    .line 331
    const-string v8, "playing"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/miui/home/launcher/gadget/Player;->mIsPlaying:Z

    .line 332
    iget-object v9, p0, Lcom/miui/home/launcher/gadget/Player;->mPlayButton:Landroid/widget/ImageView;

    iget-boolean v8, p0, Lcom/miui/home/launcher/gadget/Player;->mIsPlaying:Z

    if-eqz v8, :cond_1

    const v8, 0x7f020080

    :goto_0
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 335
    const-string v8, "favorite"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/miui/home/launcher/gadget/Player;->mIsFavoriteSong:Z

    .line 336
    iget-object v9, p0, Lcom/miui/home/launcher/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-boolean v8, p0, Lcom/miui/home/launcher/gadget/Player;->mIsFavoriteSong:Z

    if-eqz v8, :cond_2

    const v8, 0x7f020076

    :goto_1
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 338
    iget-object v8, p0, Lcom/miui/home/launcher/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    const-string v8, "buffer"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 341
    .local v4, isBuffering:Z
    const-string v8, "block"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 342
    .local v3, isBlocking:Z
    iget-boolean v8, p0, Lcom/miui/home/launcher/gadget/Player;->mIsPlaying:Z

    if-eqz v8, :cond_3

    if-nez v3, :cond_3

    if-nez v4, :cond_3

    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, p0, Lcom/miui/home/launcher/gadget/Player;->mIsUpdateLyricAndTime:Z

    .line 344
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->updateDrawingCache()V

    .line 345
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->updateSpectrumVisualizer()V

    .line 347
    const/16 v0, 0x64

    .line 348
    .local v0, MAX_INVALID_DURATION:I
    if-nez v4, :cond_0

    iget-wide v8, p0, Lcom/miui/home/launcher/gadget/Player;->mDuration:J

    const-wide/16 v10, 0x64

    cmp-long v8, v8, v10

    if-gtz v8, :cond_4

    :cond_0
    iget-boolean v8, p0, Lcom/miui/home/launcher/gadget/Player;->mNeedInitGadget:Z

    if-nez v8, :cond_4

    const/4 v5, 0x1

    .line 349
    .local v5, isShowBuffering:Z
    :goto_3
    if-eqz v5, :cond_5

    .line 350
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->showBuffering()V

    .line 354
    :goto_4
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/miui/home/launcher/gadget/Player;->mNeedInitGadget:Z

    .line 355
    return-void

    .line 332
    .end local v0           #MAX_INVALID_DURATION:I
    .end local v3           #isBlocking:Z
    .end local v4           #isBuffering:Z
    .end local v5           #isShowBuffering:Z
    :cond_1
    const v8, 0x7f020084

    goto :goto_0

    .line 336
    :cond_2
    const v8, 0x7f020077

    goto :goto_1

    .line 342
    .restart local v3       #isBlocking:Z
    .restart local v4       #isBuffering:Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 348
    .restart local v0       #MAX_INVALID_DURATION:I
    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    .line 352
    .restart local v5       #isShowBuffering:Z
    :cond_5
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->updateProgressBarAndTime()V

    goto :goto_4
.end method

.method private updateSpectrumVisualizer()V
    .locals 2

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/miui/home/launcher/gadget/Player;->mIsUpdateLyricAndTime:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/gadget/Player;->mIsResume:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mSv:Lmiui/widget/SpectrumVisualizer;

    invoke-virtual {v0}, Lmiui/widget/SpectrumVisualizer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Player;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mSv:Lmiui/widget/SpectrumVisualizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/SpectrumVisualizer;->enableUpdate(Z)V

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mSv:Lmiui/widget/SpectrumVisualizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/SpectrumVisualizer;->enableUpdate(Z)V

    goto :goto_0
.end method

.method private updateTrack(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 408
    const-string v1, "track"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mTrackNameStr:Ljava/lang/String;

    .line 409
    const-string v1, "artist"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mArtistNameStr:Ljava/lang/String;

    .line 410
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player;->mArtistNameStr:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/home/launcher/gadget/Player$MusicUtils;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 411
    .local v0, ar:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mTrackName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player;->mTrackNameStr:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/miui/home/launcher/gadget/Player$MusicUtils;->getTrackInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mProgressCurrent:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 414
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mProgressLoading:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 415
    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/miui/home/launcher/gadget/Player;->updateCurrentProgress(J)V

    .line 416
    return-void
.end method


# virtual methods
.method public onAdded()V
    .locals 0

    .prologue
    .line 1181
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 137
    iget-boolean v2, p0, Lcom/miui/home/launcher/gadget/Player;->mIsEditMode:Z

    if-eqz v2, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player;->mTrackNameStr:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 143
    :cond_2
    const/4 v0, 0x0

    .line 144
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 171
    :pswitch_1
    iget-boolean v2, p0, Lcom/miui/home/launcher/gadget/Player;->mIsPlaying:Z

    if-eqz v2, :cond_4

    .line 172
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "com.miui.player.PLAYBACK_VIEWER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .restart local v0       #intent:Landroid/content/Intent;
    :goto_1
    const-string v2, "from_widget"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 177
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 146
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "com.miui.player.NOWPLAYING_PLAYLIST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .restart local v0       #intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 148
    const-string v2, "from_widget"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 153
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.miui.player.musicservicecommand.previous"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 158
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.miui.player.musicservicecommand.togglepause"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 160
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player;->mPlayButton:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/miui/home/launcher/gadget/Player;->mIsPlaying:Z

    if-eqz v1, :cond_3

    const v1, 0x7f020084

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    const v1, 0x7f020080

    goto :goto_2

    .line 165
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.miui.player.musicservicecommand.next"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 174
    :cond_4
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.MUSIC_PLAYER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 181
    :pswitch_6
    iget-boolean v2, p0, Lcom/miui/home/launcher/gadget/Player;->mIsFavoriteSong:Z

    if-nez v2, :cond_5

    :goto_3
    iput-boolean v1, p0, Lcom/miui/home/launcher/gadget/Player;->mIsFavoriteSong:Z

    .line 182
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/miui/home/launcher/gadget/Player;->mIsFavoriteSong:Z

    if-eqz v1, :cond_6

    const v1, 0x7f020076

    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.miui.player.togglefavorite"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 181
    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    .line 182
    :cond_6
    const v1, 0x7f020077

    goto :goto_4

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x7f07002b
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 1150
    return-void
.end method

.method public onDeleted()V
    .locals 0

    .prologue
    .line 1187
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->cleanup()V

    .line 237
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 238
    return-void
.end method

.method public onEditDisable()V
    .locals 1

    .prologue
    .line 1167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/Player;->mIsEditMode:Z

    .line 1169
    return-void
.end method

.method public onEditNormal()V
    .locals 1

    .prologue
    .line 1173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/Player;->mIsEditMode:Z

    .line 1175
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 225
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 218
    :pswitch_1
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mLyricScrollHelper:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/gadget/Player;->mLastDownY:F

    #calls: Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->sendMessageIfNeeded(FF)V
    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->access$300(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;FF)V

    goto :goto_0

    .line 222
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/gadget/Player;->mLastDownY:F

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->cleanup()V

    .line 243
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 247
    iput-boolean v2, p0, Lcom/miui/home/launcher/gadget/Player;->mIsResume:Z

    .line 248
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mCachableWrap:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 249
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->updateDrawingCache()V

    .line 251
    iget-boolean v1, p0, Lcom/miui/home/launcher/gadget/Player;->mNeedInitGadget:Z

    if-eqz v1, :cond_1

    .line 252
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.player.init_gadget"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    .local v0, initntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 263
    .end local v0           #initntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mLyricScrollHelper:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    #calls: Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->lyricProgressRequest()V
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->access$400(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;)V

    .line 258
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumHelper:Lcom/miui/home/launcher/gadget/Player$AlbumHelper;

    #calls: Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->getTrackChange()Z
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->access$500(Lcom/miui/home/launcher/gadget/Player$AlbumHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumHelper:Lcom/miui/home/launcher/gadget/Player$AlbumHelper;

    #calls: Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->getDisplayAlbumBitmap()V
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->access$600(Lcom/miui/home/launcher/gadget/Player$AlbumHelper;)V

    .line 262
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->updateMetaStatus()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1154
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mCachableWrap:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1159
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasWindowFocus"

    .prologue
    .line 203
    if-eqz p1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mResumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 205
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mResumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/gadget/Player;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 209
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 210
    return-void

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->updateSpectrumVisualizer()V

    goto :goto_0
.end method

.method public updateConfig(Landroid/os/Bundle;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 1164
    return-void
.end method
