.class public Lcom/miui/player/ui/controller/LyricViewController;
.super Lcom/miui/player/ui/controller/MediaPlaybackController;
.source "LyricViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;,
        Lcom/miui/player/ui/controller/LyricViewController$FadeInAnimationListener;,
        Lcom/miui/player/ui/controller/LyricViewController$LryicChangedAnimationListener;
    }
.end annotation


# instance fields
.field private final mAlbumController:Lcom/miui/player/ui/controller/AlbumViewController;

.field final mAnimationStatus:Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;

.field final mContext:Landroid/content/Context;

.field private mLastLyricStatus:I

.field private mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

.field private final mLyricMovementController:Lcom/miui/player/ui/controller/LyricMovementController;

.field private mLyricStatusView:Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;

.field final mLyricViewWrap:Landroid/view/View;

.field private final mTimeIndicator:Lcom/miui/player/ui/controller/TimeIndicatorController;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;Lcom/miui/player/ui/controller/TimeIndicatorController;Lcom/miui/player/ui/controller/AlbumViewController;Landroid/view/View$OnClickListener;)V
    .locals 3
    .parameter "container"
    .parameter "status"
    .parameter "timeIndicator"
    .parameter "albumController"
    .parameter "lyricClick"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/miui/player/ui/controller/MediaPlaybackController;-><init>()V

    .line 35
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLastLyricStatus:I

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/ui/controller/LyricViewController;->mContext:Landroid/content/Context;

    .line 41
    iput-object p4, p0, Lcom/miui/player/ui/controller/LyricViewController;->mAlbumController:Lcom/miui/player/ui/controller/AlbumViewController;

    .line 42
    iput-object p2, p0, Lcom/miui/player/ui/controller/LyricViewController;->mAnimationStatus:Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;

    .line 43
    const v1, 0x7f0c0029

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricViewWrap:Landroid/view/View;

    .line 44
    iget-object v1, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricViewWrap:Landroid/view/View;

    invoke-virtual {v1, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v1, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricViewWrap:Landroid/view/View;

    const v2, 0x7f0c002a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/player/ui/view/ExtendScrollView;

    .line 46
    .local v0, lyricView:Lcom/miui/player/ui/view/ExtendScrollView;
    new-instance v1, Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;

    iget-object v2, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricViewWrap:Landroid/view/View;

    invoke-direct {v1, v2}, Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricStatusView:Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;

    .line 48
    new-instance v1, Lcom/miui/player/ui/controller/LyricMovementController;

    invoke-direct {v1, v0}, Lcom/miui/player/ui/controller/LyricMovementController;-><init>(Lcom/miui/player/ui/view/ExtendScrollView;)V

    iput-object v1, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricMovementController:Lcom/miui/player/ui/controller/LyricMovementController;

    .line 49
    iget-object v1, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricMovementController:Lcom/miui/player/ui/controller/LyricMovementController;

    invoke-virtual {v1, p5}, Lcom/miui/player/ui/controller/LyricMovementController;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iput-object p3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mTimeIndicator:Lcom/miui/player/ui/controller/TimeIndicatorController;

    .line 52
    return-void
.end method

.method private clearAll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 154
    iput-object v1, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    .line 155
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricMovementController:Lcom/miui/player/ui/controller/LyricMovementController;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/LyricMovementController;->resetLyric(Lcom/miui/player/meta/LyricParser$Lyric;)V

    .line 156
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricMovementController:Lcom/miui/player/ui/controller/LyricMovementController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/LyricMovementController;->clearText()V

    .line 157
    return-void
.end method

.method private updateLyric()Z
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 225
    iget-object v8, p0, Lcom/miui/player/ui/controller/LyricViewController;->mContext:Landroid/content/Context;

    const-string v9, "display_lyric"

    invoke-static {v8, v9}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v7

    .line 230
    :cond_1
    const/4 v4, 0x0

    .line 231
    .local v4, statusChanged:Z
    iget-object v8, p0, Lcom/miui/player/ui/controller/LyricViewController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    if-eqz v8, :cond_2

    .line 232
    iget v8, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLastLyricStatus:I

    iget-object v9, p0, Lcom/miui/player/ui/controller/LyricViewController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    iget v9, v9, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;->mLyricStatus:I

    if-eq v8, v9, :cond_3

    move v4, v6

    .line 233
    :goto_1
    iget-object v8, p0, Lcom/miui/player/ui/controller/LyricViewController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    iget v8, v8, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;->mLyricStatus:I

    iput v8, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLastLyricStatus:I

    .line 236
    :cond_2
    iget v8, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLastLyricStatus:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_4

    iget v8, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLastLyricStatus:I

    if-eqz v8, :cond_4

    move v7, v4

    .line 238
    goto :goto_0

    :cond_3
    move v4, v7

    .line 232
    goto :goto_1

    .line 241
    :cond_4
    iget-object v2, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    .line 242
    .local v2, oldLyric:Lcom/miui/player/meta/LyricParser$Lyric;
    iget-object v8, p0, Lcom/miui/player/ui/controller/LyricViewController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    iget-object v5, v8, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;->mTrackName:Ljava/lang/String;

    .line 243
    .local v5, tr:Ljava/lang/String;
    iget-object v8, p0, Lcom/miui/player/ui/controller/LyricViewController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    iget-object v0, v8, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;->mArtistName:Ljava/lang/String;

    .line 244
    .local v0, ar:Ljava/lang/String;
    iget-object v8, p0, Lcom/miui/player/ui/controller/LyricViewController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    iget-object v3, v8, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;->mTrackPath:Ljava/lang/String;

    .line 245
    .local v3, path:Ljava/lang/String;
    invoke-static {v5, v0, v3}, Lcom/miui/player/meta/MetaManager;->getLyricFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 247
    .local v1, lyricFile:Ljava/io/File;
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    .line 248
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 249
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/miui/player/meta/LyricParser$Lyric;->getOpenTime()J

    move-result-wide v8

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_7

    invoke-virtual {v2}, Lcom/miui/player/meta/LyricParser$Lyric;->getFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 252
    iput-object v2, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    .line 261
    :cond_5
    :goto_2
    if-nez v4, :cond_6

    iget-object v8, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-eq v2, v8, :cond_0

    :cond_6
    move v7, v6

    goto :goto_0

    .line 254
    :cond_7
    invoke-static {v1}, Lcom/miui/player/meta/LyricParser;->parseLyric(Ljava/io/File;)Lcom/miui/player/meta/LyricParser$Lyric;

    move-result-object v8

    iput-object v8, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    .line 255
    iget-object v8, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-nez v8, :cond_5

    .line 256
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_2
.end method


# virtual methods
.method changeLyric()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 160
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    if-nez v3, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/miui/player/ui/controller/LyricViewController;->clearAll()V

    .line 203
    :goto_0
    return v1

    .line 164
    :cond_0
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricMovementController:Lcom/miui/player/ui/controller/LyricMovementController;

    iget-object v4, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    invoke-virtual {v3, v4}, Lcom/miui/player/ui/controller/LyricMovementController;->resetLyric(Lcom/miui/player/meta/LyricParser$Lyric;)V

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, hint:I
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    iget v3, v3, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;->mLyricStatus:I

    packed-switch v3, :pswitch_data_0

    .line 194
    :cond_1
    :goto_1
    :pswitch_0
    if-lez v0, :cond_3

    .line 195
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricMovementController:Lcom/miui/player/ui/controller/LyricMovementController;

    invoke-virtual {v3}, Lcom/miui/player/ui/controller/LyricMovementController;->clearText()V

    .line 196
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricStatusView:Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;

    invoke-virtual {v3, v2}, Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;->setVisible(Z)V

    .line 197
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricStatusView:Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;

    iget-object v4, p0, Lcom/miui/player/ui/controller/LyricViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;->setStatusText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricStatusView:Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;

    const v4, 0x7f080072

    if-eq v0, v4, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v3, v1}, Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;->setIndicatorVisible(Z)V

    :goto_2
    move v1, v2

    .line 203
    goto :goto_0

    .line 168
    :pswitch_1
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mContext:Landroid/content/Context;

    const-string v4, "display_lyric"

    invoke-static {v3, v4}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    const v0, 0x7f080072

    goto :goto_1

    .line 175
    :pswitch_2
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mContext:Landroid/content/Context;

    const-string v4, "display_lyric"

    invoke-static {v3, v4}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    const v0, 0x7f080071

    goto :goto_1

    .line 182
    :pswitch_3
    const v0, 0x7f080005

    .line 183
    goto :goto_1

    .line 185
    :pswitch_4
    const v0, 0x7f080073

    .line 186
    goto :goto_1

    .line 188
    :pswitch_5
    const v0, 0x7f080072

    .line 189
    goto :goto_1

    .line 191
    :pswitch_6
    const v0, 0x7f080071

    goto :goto_1

    .line 200
    :cond_3
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricStatusView:Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;

    invoke-virtual {v3, v1}, Lcom/miui/player/ui/controller/LyricViewController$LyricStatusView;->setVisible(Z)V

    goto :goto_2

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public dirty(I)Z
    .locals 4
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, contentChanged:Z
    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    .line 124
    :cond_0
    iput-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    .line 125
    const/4 v0, 0x1

    .line 130
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 131
    iget-object v2, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricMovementController:Lcom/miui/player/ui/controller/LyricMovementController;

    invoke-virtual {v2, v3}, Lcom/miui/player/ui/controller/LyricMovementController;->resetLyric(Lcom/miui/player/meta/LyricParser$Lyric;)V

    .line 135
    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/player/ui/controller/LyricViewController;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    :goto_1
    return v1

    .line 126
    :cond_4
    if-ne p1, v1, :cond_1

    .line 127
    const/4 v0, 0x1

    goto :goto_0

    .line 135
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public doUpdate()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 97
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mAnimationStatus:Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;

    invoke-interface {v3}, Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;->isActivityPaused()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    invoke-direct {p0}, Lcom/miui/player/ui/controller/LyricViewController;->clearAll()V

    .line 99
    const/4 v2, 0x0

    .line 117
    :cond_0
    :goto_0
    return v2

    .line 102
    :cond_1
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mAlbumController:Lcom/miui/player/ui/controller/AlbumViewController;

    invoke-virtual {v3}, Lcom/miui/player/ui/controller/AlbumViewController;->update()V

    .line 103
    invoke-direct {p0}, Lcom/miui/player/ui/controller/LyricViewController;->updateLyric()Z

    move-result v1

    .line 105
    .local v1, lyricChanged:Z
    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/miui/player/ui/controller/LyricViewController;->isActive()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    invoke-virtual {v3}, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;->isForced()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 110
    :cond_2
    invoke-virtual {p0}, Lcom/miui/player/ui/controller/LyricViewController;->changeLyric()Z

    move-result v2

    goto :goto_0

    .line 112
    :cond_3
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mAnimationStatus:Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;

    invoke-interface {v3, v2}, Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;->setAnimationPlaying(Z)V

    .line 113
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mContext:Landroid/content/Context;

    const v4, 0x7f040001

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 114
    .local v0, fadeOut:Landroid/view/animation/Animation;
    new-instance v3, Lcom/miui/player/ui/controller/LyricViewController$LryicChangedAnimationListener;

    invoke-direct {v3, p0}, Lcom/miui/player/ui/controller/LyricViewController$LryicChangedAnimationListener;-><init>(Lcom/miui/player/ui/controller/LyricViewController;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 115
    iget-object v3, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricViewWrap:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public refreshLyric(J)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricMovementController:Lcom/miui/player/ui/controller/LyricMovementController;

    invoke-virtual {v0, p1, p2}, Lcom/miui/player/ui/controller/LyricMovementController;->refreshLyric(J)V

    .line 210
    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricViewWrap:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController;->mTimeIndicator:Lcom/miui/player/ui/controller/TimeIndicatorController;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/controller/TimeIndicatorController;->setVisible(Z)V

    .line 88
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricViewWrap:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public startEnterAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/miui/player/ui/controller/LyricViewController;->changeLyric()Z

    .line 141
    iget-object v1, p0, Lcom/miui/player/ui/controller/LyricViewController;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f04

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 142
    .local v0, lrcIn:Landroid/view/animation/Animation;
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 143
    iget-object v1, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricViewWrap:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 144
    return-void
.end method

.method public startLeaveAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 148
    iget-object v1, p0, Lcom/miui/player/ui/controller/LyricViewController;->mContext:Landroid/content/Context;

    const v2, 0x7f040001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 149
    .local v0, lrcOut:Landroid/view/animation/Animation;
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 150
    iget-object v1, p0, Lcom/miui/player/ui/controller/LyricViewController;->mLyricViewWrap:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 151
    return-void
.end method
