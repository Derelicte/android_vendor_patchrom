.class public Lcom/miui/player/ui/controller/PlayerCommonController;
.super Ljava/lang/Object;
.source "PlayerCommonController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;,
        Lcom/miui/player/ui/controller/PlayerCommonController$RepeatClickCallback;,
        Lcom/miui/player/ui/controller/PlayerCommonController$OnForwardRepeatingClick;,
        Lcom/miui/player/ui/controller/PlayerCommonController$OnBackwardRepeatingClick;,
        Lcom/miui/player/ui/controller/PlayerCommonController$OnPauseResumeClickListener;,
        Lcom/miui/player/ui/controller/PlayerCommonController$OnNextClickListener;,
        Lcom/miui/player/ui/controller/PlayerCommonController$OnPrevClickListener;
    }
.end annotation


# instance fields
.field private final mCommonBar:Landroid/view/View;

.field private final mNextButton:Lcom/miui/player/ui/view/RepeatingImageButton;

.field private final mPauseButton:Landroid/widget/ImageView;

.field private final mPauseResId:I

.field private final mPlayResId:I

.field private final mPrevButton:Lcom/miui/player/ui/view/RepeatingImageButton;

.field private final mRepeatClickCallback:Lcom/miui/player/ui/controller/PlayerCommonController$RepeatClickCallback;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/miui/player/ui/controller/PlayerCommonController$RepeatClickCallback;IIII)V
    .locals 5
    .parameter "container"
    .parameter "repeatClickCallback"
    .parameter "playId"
    .parameter "pauseId"
    .parameter "prevId"
    .parameter "nextId"

    .prologue
    const-wide/16 v3, 0x104

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mRepeatClickCallback:Lcom/miui/player/ui/controller/PlayerCommonController$RepeatClickCallback;

    .line 27
    iput p3, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mPlayResId:I

    .line 28
    iput p4, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mPauseResId:I

    .line 29
    const v0, 0x7f0c0023

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mCommonBar:Landroid/view/View;

    .line 31
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mCommonBar:Landroid/view/View;

    const v1, 0x7f0c0016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/player/ui/view/RepeatingImageButton;

    iput-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mPrevButton:Lcom/miui/player/ui/view/RepeatingImageButton;

    .line 32
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mPrevButton:Lcom/miui/player/ui/view/RepeatingImageButton;

    invoke-virtual {v0, p5}, Lcom/miui/player/ui/view/RepeatingImageButton;->setImageResource(I)V

    .line 33
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mPrevButton:Lcom/miui/player/ui/view/RepeatingImageButton;

    new-instance v1, Lcom/miui/player/ui/controller/PlayerCommonController$OnPrevClickListener;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/controller/PlayerCommonController$OnPrevClickListener;-><init>(Lcom/miui/player/ui/controller/PlayerCommonController;)V

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/view/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mPrevButton:Lcom/miui/player/ui/view/RepeatingImageButton;

    new-instance v1, Lcom/miui/player/ui/controller/PlayerCommonController$OnBackwardRepeatingClick;

    iget-object v2, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mRepeatClickCallback:Lcom/miui/player/ui/controller/PlayerCommonController$RepeatClickCallback;

    invoke-direct {v1, p0, v2}, Lcom/miui/player/ui/controller/PlayerCommonController$OnBackwardRepeatingClick;-><init>(Lcom/miui/player/ui/controller/PlayerCommonController;Lcom/miui/player/ui/controller/PlayerCommonController$RepeatClickCallback;)V

    invoke-virtual {v0, v1, v3, v4}, Lcom/miui/player/ui/view/RepeatingImageButton;->setRepeatListener(Lcom/miui/player/ui/view/RepeatingImageButton$RepeatListener;J)V

    .line 37
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mCommonBar:Landroid/view/View;

    const v1, 0x7f0c0018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/player/ui/view/RepeatingImageButton;

    iput-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mNextButton:Lcom/miui/player/ui/view/RepeatingImageButton;

    .line 38
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mNextButton:Lcom/miui/player/ui/view/RepeatingImageButton;

    invoke-virtual {v0, p6}, Lcom/miui/player/ui/view/RepeatingImageButton;->setImageResource(I)V

    .line 39
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mNextButton:Lcom/miui/player/ui/view/RepeatingImageButton;

    new-instance v1, Lcom/miui/player/ui/controller/PlayerCommonController$OnNextClickListener;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/controller/PlayerCommonController$OnNextClickListener;-><init>(Lcom/miui/player/ui/controller/PlayerCommonController;)V

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/view/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mNextButton:Lcom/miui/player/ui/view/RepeatingImageButton;

    new-instance v1, Lcom/miui/player/ui/controller/PlayerCommonController$OnForwardRepeatingClick;

    iget-object v2, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mRepeatClickCallback:Lcom/miui/player/ui/controller/PlayerCommonController$RepeatClickCallback;

    invoke-direct {v1, p0, v2}, Lcom/miui/player/ui/controller/PlayerCommonController$OnForwardRepeatingClick;-><init>(Lcom/miui/player/ui/controller/PlayerCommonController;Lcom/miui/player/ui/controller/PlayerCommonController$RepeatClickCallback;)V

    invoke-virtual {v0, v1, v3, v4}, Lcom/miui/player/ui/view/RepeatingImageButton;->setRepeatListener(Lcom/miui/player/ui/view/RepeatingImageButton$RepeatListener;J)V

    .line 43
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mCommonBar:Landroid/view/View;

    const v1, 0x7f0c0017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mPauseButton:Landroid/widget/ImageView;

    .line 44
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mPauseButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/player/ui/controller/PlayerCommonController$OnPauseResumeClickListener;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/controller/PlayerCommonController$OnPauseResumeClickListener;-><init>(Lcom/miui/player/ui/controller/PlayerCommonController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method

.method public static scanBackward(IJLcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;)V
    .locals 11
    .parameter "repcnt"
    .parameter "delta"
    .parameter "scanInfo"

    .prologue
    .line 171
    sget-object v4, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 172
    .local v4, service:Lcom/miui/player/service/IMediaPlaybackService;
    if-nez v4, :cond_0

    .line 210
    :goto_0
    return-void

    .line 177
    :cond_0
    if-nez p0, :cond_1

    .line 178
    :try_start_0
    invoke-interface {v4}, Lcom/miui/player/service/IMediaPlaybackService;->position()J

    move-result-wide v5

    iput-wide v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->startSeekPos:J

    .line 179
    const-wide/16 v5, 0x0

    iput-wide v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->lastEventTime:J

    .line 180
    const/4 v5, 0x0

    iput-boolean v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->isSeeking:Z

    goto :goto_0

    .line 208
    :catch_0
    move-exception v5

    goto :goto_0

    .line 182
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->isSeeking:Z

    .line 183
    const-wide/16 v5, 0x1388

    cmp-long v5, p1, v5

    if-gez v5, :cond_5

    .line 185
    const-wide/16 v5, 0xa

    mul-long/2addr p1, v5

    .line 190
    :goto_1
    iget-wide v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->startSeekPos:J

    sub-long v2, v5, p1

    .line 191
    .local v2, newpos:J
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gez v5, :cond_2

    .line 193
    invoke-interface {v4}, Lcom/miui/player/service/IMediaPlaybackService;->prev()V

    .line 194
    invoke-interface {v4}, Lcom/miui/player/service/IMediaPlaybackService;->duration()J

    move-result-wide v0

    .line 195
    .local v0, duration:J
    iget-wide v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->startSeekPos:J

    add-long/2addr v5, v0

    iput-wide v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->startSeekPos:J

    .line 196
    add-long/2addr v2, v0

    .line 198
    .end local v0           #duration:J
    :cond_2
    iget-wide v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->lastEventTime:J

    sub-long v5, p1, v5

    const-wide/16 v7, 0xfa

    cmp-long v5, v5, v7

    if-gtz v5, :cond_3

    if-gez p0, :cond_4

    .line 199
    :cond_3
    invoke-interface {v4, v2, v3}, Lcom/miui/player/service/IMediaPlaybackService;->seek(J)J

    .line 200
    iput-wide p1, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->lastEventTime:J

    .line 202
    :cond_4
    if-ltz p0, :cond_6

    .line 203
    iput-wide v2, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->posOverride:J

    goto :goto_0

    .line 188
    .end local v2           #newpos:J
    :cond_5
    const-wide/32 v5, 0xc350

    const-wide/16 v7, 0x1388

    sub-long v7, p1, v7

    const-wide/16 v9, 0x28

    mul-long/2addr v7, v9

    add-long p1, v5, v7

    goto :goto_1

    .line 205
    .restart local v2       #newpos:J
    :cond_6
    const-wide/16 v5, -0x1

    iput-wide v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->posOverride:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static scanForward(IJLcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;)V
    .locals 11
    .parameter "repcnt"
    .parameter "delta"
    .parameter "scanInfo"

    .prologue
    const-wide/16 v7, 0x1388

    .line 213
    sget-object v4, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 214
    .local v4, service:Lcom/miui/player/service/IMediaPlaybackService;
    if-nez v4, :cond_0

    .line 252
    :goto_0
    return-void

    .line 219
    :cond_0
    if-nez p0, :cond_1

    .line 220
    :try_start_0
    invoke-interface {v4}, Lcom/miui/player/service/IMediaPlaybackService;->position()J

    move-result-wide v5

    iput-wide v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->startSeekPos:J

    .line 221
    const-wide/16 v5, 0x0

    iput-wide v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->lastEventTime:J

    .line 222
    const/4 v5, 0x0

    iput-boolean v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->isSeeking:Z

    goto :goto_0

    .line 250
    :catch_0
    move-exception v5

    goto :goto_0

    .line 224
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->isSeeking:Z

    .line 225
    cmp-long v5, p1, v7

    if-gez v5, :cond_5

    .line 227
    const-wide/16 v5, 0xa

    mul-long/2addr p1, v5

    .line 232
    :goto_1
    iget-wide v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->startSeekPos:J

    add-long v2, v5, p1

    .line 233
    .local v2, newpos:J
    invoke-interface {v4}, Lcom/miui/player/service/IMediaPlaybackService;->duration()J

    move-result-wide v0

    .line 234
    .local v0, duration:J
    cmp-long v5, v2, v0

    if-ltz v5, :cond_2

    .line 236
    invoke-interface {v4}, Lcom/miui/player/service/IMediaPlaybackService;->next()V

    .line 237
    iget-wide v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->startSeekPos:J

    sub-long/2addr v5, v0

    iput-wide v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->startSeekPos:J

    .line 238
    sub-long/2addr v2, v0

    .line 240
    :cond_2
    iget-wide v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->lastEventTime:J

    sub-long v5, p1, v5

    const-wide/16 v7, 0xfa

    cmp-long v5, v5, v7

    if-gtz v5, :cond_3

    if-gez p0, :cond_4

    .line 241
    :cond_3
    invoke-interface {v4, v2, v3}, Lcom/miui/player/service/IMediaPlaybackService;->seek(J)J

    .line 242
    iput-wide p1, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->lastEventTime:J

    .line 244
    :cond_4
    if-ltz p0, :cond_6

    .line 245
    iput-wide v2, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->posOverride:J

    goto :goto_0

    .line 230
    .end local v0           #duration:J
    .end local v2           #newpos:J
    :cond_5
    const-wide/32 v5, 0xc350

    sub-long v7, p1, v7

    const-wide/16 v9, 0x28

    mul-long/2addr v7, v9

    add-long p1, v5, v7

    goto :goto_1

    .line 247
    .restart local v0       #duration:J
    .restart local v2       #newpos:J
    :cond_6
    const-wide/16 v5, -0x1

    iput-wide v5, p3, Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;->posOverride:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public refresh()V
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mPauseButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mPauseResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mPauseButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/miui/player/ui/controller/PlayerCommonController;->mPlayResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
