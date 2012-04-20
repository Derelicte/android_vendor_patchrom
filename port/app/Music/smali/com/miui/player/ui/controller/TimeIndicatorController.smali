.class public Lcom/miui/player/ui/controller/TimeIndicatorController;
.super Ljava/lang/Object;
.source "TimeIndicatorController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/controller/TimeIndicatorController$OnProgressSeekListener;,
        Lcom/miui/player/ui/controller/TimeIndicatorController$OnSeekPlayerPositionListener;
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final mCurrentTimeTextView:Landroid/widget/TextView;

.field mDuration:J

.field private final mProgressBar:Landroid/widget/SeekBar;

.field final mSeekListener:Lcom/miui/player/ui/controller/TimeIndicatorController$OnProgressSeekListener;

.field private final mTimeIndicatorView:Landroid/view/View;

.field private final mTotalTimeTextView:Landroid/widget/TextView;

.field mUserTouch:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/miui/player/ui/controller/TimeIndicatorController$OnProgressSeekListener;)V
    .locals 3
    .parameter "container"
    .parameter "listener"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/player/ui/controller/TimeIndicatorController;->mDuration:J

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/ui/controller/TimeIndicatorController;->mUserTouch:Z

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/controller/TimeIndicatorController;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/miui/player/ui/controller/TimeIndicatorController;->mSeekListener:Lcom/miui/player/ui/controller/TimeIndicatorController$OnProgressSeekListener;

    .line 30
    const v0, 0x7f0c0020

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/controller/TimeIndicatorController;->mTimeIndicatorView:Landroid/view/View;

    .line 32
    iget-object v0, p0, Lcom/miui/player/ui/controller/TimeIndicatorController;->mTimeIndicatorView:Landroid/view/View;

    const v1, 0x102000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/miui/player/ui/controller/TimeIndicatorController;->mProgressBar:Landroid/widget/SeekBar;

    .line 33
    iget-object v0, p0, Lcom/miui/player/ui/controller/TimeIndicatorController;->mProgressBar:Landroid/widget/SeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 34
    iget-object v0, p0, Lcom/miui/player/ui/controller/TimeIndicatorController;->mProgressBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/miui/player/ui/controller/TimeIndicatorController$OnSeekPlayerPositionListener;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/controller/TimeIndicatorController$OnSeekPlayerPositionListener;-><init>(Lcom/miui/player/ui/controller/TimeIndicatorController;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 35
    iget-object v0, p0, Lcom/miui/player/ui/controller/TimeIndicatorController;->mProgressBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/miui/player/ui/controller/TimeIndicatorController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    iget-object v0, p0, Lcom/miui/player/ui/controller/TimeIndicatorController;->mTimeIndicatorView:Landroid/view/View;

    const v1, 0x7f0c0096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/ui/controller/TimeIndicatorController;->mCurrentTimeTextView:Landroid/widget/TextView;

    .line 38
    iget-object v0, p0, Lcom/miui/player/ui/controller/TimeIndicatorController;->mTimeIndicatorView:Landroid/view/View;

    const v1, 0x7f0c0097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/ui/controller/TimeIndicatorController;->mTotalTimeTextView:Landroid/widget/TextView;

    .line 40
    return-void
.end method

.method private setTotalTime(J)V
    .locals 6
    .parameter "dur"

    .prologue
    .line 89
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->isBuffering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/miui/player/ui/controller/TimeIndicatorController;->mTotalTimeTextView:Landroid/widget/TextView;

    const v1, 0x7f0800a6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 98
    :goto_0
    return-void

    .line 92
    :cond_0
    iput-wide p1, p0, Lcom/miui/player/ui/controller/TimeIndicatorController;->mDuration:J

    .line 93
    iget-object v0, p0, Lcom/miui/player/ui/controller/TimeIndicatorController;->mTotalTimeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/player/ui/controller/TimeIndicatorController;->mContext:Landroid/content/Context;

    const-wide/16 v2, 0x1f4

    add-long/2addr v2, p1

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const v4, 0x7f0800c2

    invoke-static {v1, v2, v3, v4}, Lcom/miui/player/ui/UIHelper;->makeTimeString(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public refresh(JJFZZ)V
    .locals 7
    .parameter "pos"
    .parameter "dur"
    .parameter "bufferedPer"
    .parameter "isPlaying"
    .parameter "isBuffering"

    .prologue
    const-wide/16 v5, 0x3e8

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 43
    cmp-long v0, p1, v3

    if-ltz v0, :cond_4

    .line 44
    iget-wide v0, p0, Lcom/miui/player/ui/controller/TimeIndicatorController;->mDuration:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_0

    .line 45
    invoke-direct {p0, p3, p4}, Lcom/miui/player/ui/controller/TimeIndicatorController;->setTotalTime(J)V

    .line 48
    :cond_0
    iget-wide v0, p0, Lcom/miui/player/ui/controller/TimeIndicatorController;->mDuration:J

    cmp-long v0, v0, v3

    if-gtz v0, :cond_1

    .line 68
    :goto_0
    return-void

    .line 52
    :cond_1
    if-eqz p6, :cond_2

    .line 53
    iget-object v0, p0, Lcom/miui/player/ui/controller/TimeIndicatorController;->mCurrentTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    :cond_2
    iget-boolean v0, p0, Lcom/miui/player/ui/controller/TimeIndicatorController;->mUserTouch:Z

    if-nez v0, :cond_3

    .line 57
    iget-object v0, p0, Lcom/miui/player/ui/controller/TimeIndicatorController;->mProgressBar:Landroid/widget/SeekBar;

    mul-long v1, v5, p1

    iget-wide v3, p0, Lcom/miui/player/ui/controller/TimeIndicatorController;->mDuration:J

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 58
    iget-object v0, p0, Lcom/miui/player/ui/controller/TimeIndicatorController;->mCurrentTimeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/player/ui/controller/TimeIndicatorController;->mContext:Landroid/content/Context;

    const-wide/16 v2, 0x1f4

    add-long/2addr v2, p1

    div-long/2addr v2, v5

    const v4, 0x7f0800c2

    invoke-static {v1, v2, v3, v4}, Lcom/miui/player/ui/UIHelper;->makeTimeString(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/miui/player/ui/controller/TimeIndicatorController;->mProgressBar:Landroid/widget/SeekBar;

    const/high16 v1, 0x447a

    mul-float/2addr v1, p5

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    goto :goto_0

    .line 63
    :cond_4
    iget-object v0, p0, Lcom/miui/player/ui/controller/TimeIndicatorController;->mCurrentTimeTextView:Landroid/widget/TextView;

    const-string v1, "--:--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/miui/player/ui/controller/TimeIndicatorController;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1
.end method

.method public setVisible(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    .line 71
    iget-object v1, p0, Lcom/miui/player/ui/controller/TimeIndicatorController;->mTimeIndicatorView:Landroid/view/View;

    .line 72
    .local v1, v:Landroid/view/View;
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    .line 74
    .local v2, visibility:I
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 75
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 76
    if-eqz p1, :cond_2

    const/high16 v0, 0x7f04

    .line 77
    .local v0, animId:I
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 79
    .end local v0           #animId:I
    :cond_0
    return-void

    .line 72
    .end local v2           #visibility:I
    :cond_1
    const/4 v2, 0x4

    goto :goto_0

    .line 76
    .restart local v2       #visibility:I
    :cond_2
    const v0, 0x7f040001

    goto :goto_1
.end method
