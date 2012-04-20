.class public Lcom/miui/player/ui/controller/NowplayingController;
.super Ljava/lang/Object;
.source "NowplayingController.java"


# instance fields
.field private final mCurrentFrame:Landroid/view/View;

.field private mCurrentPosition:I

.field private final mNextFrame:Landroid/view/View;

.field private final mPrevFrame:Landroid/view/View;

.field private mTitleRefreshListener:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .parameter "container"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/player/ui/controller/NowplayingController;->mCurrentPosition:I

    .line 249
    new-instance v1, Lcom/miui/player/ui/controller/NowplayingController$1;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/controller/NowplayingController$1;-><init>(Lcom/miui/player/ui/controller/NowplayingController;)V

    iput-object v1, p0, Lcom/miui/player/ui/controller/NowplayingController;->mTitleRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    .line 38
    const v1, 0x7f0c0024

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/ui/controller/NowplayingController;->mCurrentFrame:Landroid/view/View;

    .line 39
    const v1, 0x7f0c0028

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/ui/controller/NowplayingController;->mNextFrame:Landroid/view/View;

    .line 40
    const v1, 0x7f0c001e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/ui/controller/NowplayingController;->mPrevFrame:Landroid/view/View;

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 43
    .local v0, color:I
    iget-object v1, p0, Lcom/miui/player/ui/controller/NowplayingController;->mNextFrame:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/miui/player/ui/controller/NowplayingController;->fadeText(Landroid/view/View;I)V

    .line 44
    iget-object v1, p0, Lcom/miui/player/ui/controller/NowplayingController;->mPrevFrame:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/miui/player/ui/controller/NowplayingController;->fadeText(Landroid/view/View;I)V

    .line 45
    return-void
.end method

.method private fadeText(Landroid/view/View;I)V
    .locals 5
    .parameter "parent"
    .parameter "color"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 48
    const v2, 0x7f0c006a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 49
    .local v0, primary:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    invoke-virtual {v0, v3, v3, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 51
    const v2, 0x7f0c006b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 52
    .local v1, secondary:Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    invoke-virtual {v1, v3, v3, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 54
    return-void
.end method

.method private setFrameInfo(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "v"
    .parameter "tr"
    .parameter "ar"
    .parameter "al"

    .prologue
    .line 82
    const v4, 0x7f0c006a

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 83
    .local v2, primary:Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const v4, 0x7f0c006b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 86
    .local v3, secondary:Landroid/widget/TextView;
    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 88
    .local v0, context:Landroid/content/Context;
    invoke-static {v0, p3, p4}, Lcom/miui/player/ui/UIHelper;->getDescript(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 89
    .local v1, details:Ljava/lang/CharSequence;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #details:Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 91
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setFrameInfoByPos(Landroid/content/Context;Lcom/miui/player/service/IMediaPlaybackService;Landroid/view/View;I)V
    .locals 15
    .parameter "context"
    .parameter "service"
    .parameter "frame"
    .parameter "toCurrent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 97
    const/4 v13, 0x0

    .line 98
    .local v13, tr:Ljava/lang/String;
    const/4 v8, 0x0

    .line 99
    .local v8, ar:Ljava/lang/String;
    const/4 v7, 0x0

    .line 101
    .local v7, al:Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lcom/miui/player/service/IMediaPlaybackService;->getQueuePosition()I

    move-result v1

    add-int v12, v1, p4

    .line 102
    .local v12, pos:I
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/miui/player/service/IMediaPlaybackService;->getAudioIdByPos(I)J

    move-result-wide v9

    .line 103
    .local v9, audioId:J
    const/16 v14, 0x8

    .line 104
    .local v14, visibility:I
    const-wide/16 v5, 0x0

    cmp-long v1, v9, v5

    if-ltz v1, :cond_4

    .line 105
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "title"

    aput-object v5, v3, v1

    const/4 v1, 0x1

    const-string v5, "artist"

    aput-object v5, v3, v1

    const/4 v1, 0x2

    const-string v5, "album"

    aput-object v5, v3, v1

    .line 111
    .local v3, cols:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 112
    .local v2, uri:Landroid/net/Uri;
    const/4 v4, 0x0

    .line 113
    .local v4, where:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    sget-object v2, Lcom/miui/player/provider/PlayerStore$MiuiNowPlayingAudio;->EXTERNAL_URI:Landroid/net/Uri;

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audio_id="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 120
    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 121
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_1

    .line 123
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 125
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 126
    const/4 v1, 0x2

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 129
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 132
    :cond_1
    const/4 v14, 0x0

    .line 133
    move-object/from16 v0, p3

    invoke-direct {p0, v0, v13, v8, v7}, Lcom/miui/player/ui/controller/NowplayingController;->setFrameInfo(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #cols:[Ljava/lang/String;
    .end local v4           #where:Ljava/lang/String;
    .end local v11           #c:Landroid/database/Cursor;
    :goto_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v5, 0x8

    if-eq v1, v5, :cond_2

    .line 140
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 142
    :cond_2
    return-void

    .line 117
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v3       #cols:[Ljava/lang/String;
    .restart local v4       #where:Ljava/lang/String;
    :cond_3
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 129
    .restart local v11       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1

    .line 135
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #cols:[Ljava/lang/String;
    .end local v4           #where:Ljava/lang/String;
    .end local v11           #c:Landroid/database/Cursor;
    :cond_4
    move-object/from16 v0, p3

    invoke-direct {p0, v0, v13, v8, v7}, Lcom/miui/player/ui/controller/NowplayingController;->setFrameInfo(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v14, 0x4

    goto :goto_1
.end method


# virtual methods
.method public getContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/miui/player/ui/controller/NowplayingController;->mCurrentFrame:Landroid/view/View;

    return-object v0
.end method

.method public setNowplayingInfo()V
    .locals 6

    .prologue
    .line 145
    sget-object v1, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 146
    .local v1, service:Lcom/miui/player/service/IMediaPlaybackService;
    if-nez v1, :cond_0

    .line 161
    :goto_0
    return-void

    .line 150
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/miui/player/ui/controller/NowplayingController;->mCurrentFrame:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 151
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/miui/player/ui/controller/NowplayingController;->mCurrentFrame:Landroid/view/View;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/miui/player/ui/controller/NowplayingController;->setFrameInfo(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v2, p0, Lcom/miui/player/ui/controller/NowplayingController;->mNextFrame:Landroid/view/View;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/player/ui/controller/NowplayingController;->setFrameInfoByPos(Landroid/content/Context;Lcom/miui/player/service/IMediaPlaybackService;Landroid/view/View;I)V

    .line 155
    iget-object v2, p0, Lcom/miui/player/ui/controller/NowplayingController;->mPrevFrame:Landroid/view/View;

    const/4 v3, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/player/ui/controller/NowplayingController;->setFrameInfoByPos(Landroid/content/Context;Lcom/miui/player/service/IMediaPlaybackService;Landroid/view/View;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v0           #context:Landroid/content/Context;
    :goto_1
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getQueuePosition()I

    move-result v2

    iput v2, p0, Lcom/miui/player/ui/controller/NowplayingController;->mCurrentPosition:I

    goto :goto_0

    .line 157
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/miui/player/ui/controller/NowplayingController;->mCurrentFrame:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    return-void
.end method

.method public setPrevFrameVisible(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    .line 57
    const/16 v1, 0x8

    .line 58
    .local v1, v:I
    if-eqz p1, :cond_0

    .line 59
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getQueuePosition()I

    move-result v2

    if-lez v2, :cond_3

    .line 60
    const/4 v1, 0x0

    .line 66
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 67
    .local v0, anim:I
    iget-object v2, p0, Lcom/miui/player/ui/controller/NowplayingController;->mPrevFrame:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 68
    if-nez v1, :cond_4

    .line 69
    const/high16 v0, 0x7f04

    .line 75
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/miui/player/ui/controller/NowplayingController;->mPrevFrame:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    if-eqz v0, :cond_2

    .line 77
    iget-object v2, p0, Lcom/miui/player/ui/controller/NowplayingController;->mPrevFrame:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/player/ui/controller/NowplayingController;->mPrevFrame:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 79
    :cond_2
    return-void

    .line 62
    .end local v0           #anim:I
    :cond_3
    const/4 v1, 0x4

    goto :goto_0

    .line 71
    .restart local v0       #anim:I
    :cond_4
    const v0, 0x7f040001

    goto :goto_1
.end method

.method public update(Z)V
    .locals 11
    .parameter "playingAnim"

    .prologue
    .line 164
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getQueuePosition()I

    move-result v6

    .line 165
    .local v6, pos:I
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getQueueSize()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v6, v9, :cond_4

    const/4 v3, 0x1

    .line 166
    .local v3, hasNext:Z
    :goto_0
    if-lez v6, :cond_5

    const/4 v4, 0x1

    .line 167
    .local v4, hasPrev:Z
    :goto_1
    iget-object v9, p0, Lcom/miui/player/ui/controller/NowplayingController;->mCurrentFrame:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 168
    .local v0, context:Landroid/content/Context;
    const/4 v7, 0x0

    .line 169
    .local v7, prevAnim:Landroid/view/animation/Animation;
    const/4 v1, 0x0

    .line 170
    .local v1, currentAnim:Landroid/view/animation/Animation;
    const/4 v5, 0x0

    .line 172
    .local v5, nextAnim:Landroid/view/animation/Animation;
    if-eqz p1, :cond_2

    .line 173
    iget v9, p0, Lcom/miui/player/ui/controller/NowplayingController;->mCurrentPosition:I

    add-int/lit8 v10, v6, -0x1

    if-ne v9, v10, :cond_6

    .line 175
    const v9, 0x7f040005

    invoke-static {v0, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 176
    .local v2, first:Landroid/view/animation/Animation;
    const v9, 0x7f040004

    invoke-static {v0, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    .line 177
    .local v8, second:Landroid/view/animation/Animation;
    iget-object v9, p0, Lcom/miui/player/ui/controller/NowplayingController;->mCurrentFrame:Landroid/view/View;

    iget-object v10, p0, Lcom/miui/player/ui/controller/NowplayingController;->mTitleRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-static {v2, v9, v8, v10}, Lcom/miui/player/ui/UIHelper;->addSubsequentAnimation(Landroid/view/animation/Animation;Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 178
    move-object v1, v2

    .line 181
    const v9, 0x7f040005

    invoke-static {v0, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 182
    if-eqz v3, :cond_0

    .line 183
    const/high16 v9, 0x7f04

    invoke-static {v0, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    .line 184
    iget-object v9, p0, Lcom/miui/player/ui/controller/NowplayingController;->mNextFrame:Landroid/view/View;

    const/4 v10, 0x0

    invoke-static {v2, v9, v8, v10}, Lcom/miui/player/ui/UIHelper;->addSubsequentAnimation(Landroid/view/animation/Animation;Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 186
    :cond_0
    move-object v5, v2

    .line 189
    const v9, 0x7f040005

    invoke-static {v0, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 190
    if-eqz v4, :cond_1

    .line 191
    const/high16 v9, 0x7f04

    invoke-static {v0, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    .line 192
    iget-object v9, p0, Lcom/miui/player/ui/controller/NowplayingController;->mPrevFrame:Landroid/view/View;

    const/4 v10, 0x0

    invoke-static {v2, v9, v8, v10}, Lcom/miui/player/ui/UIHelper;->addSubsequentAnimation(Landroid/view/animation/Animation;Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 194
    :cond_1
    move-object v7, v2

    .line 238
    .end local v2           #first:Landroid/view/animation/Animation;
    .end local v8           #second:Landroid/view/animation/Animation;
    :cond_2
    :goto_2
    if-eqz v1, :cond_c

    .line 239
    iget-object v9, p0, Lcom/miui/player/ui/controller/NowplayingController;->mCurrentFrame:Landroid/view/View;

    invoke-virtual {v9, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 240
    iget-object v9, p0, Lcom/miui/player/ui/controller/NowplayingController;->mNextFrame:Landroid/view/View;

    invoke-virtual {v9, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 241
    iget-object v9, p0, Lcom/miui/player/ui/controller/NowplayingController;->mPrevFrame:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_3

    .line 242
    iget-object v9, p0, Lcom/miui/player/ui/controller/NowplayingController;->mPrevFrame:Landroid/view/View;

    invoke-virtual {v9, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 247
    :cond_3
    :goto_3
    return-void

    .line 165
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #currentAnim:Landroid/view/animation/Animation;
    .end local v3           #hasNext:Z
    .end local v4           #hasPrev:Z
    .end local v5           #nextAnim:Landroid/view/animation/Animation;
    .end local v7           #prevAnim:Landroid/view/animation/Animation;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 166
    .restart local v3       #hasNext:Z
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 195
    .restart local v0       #context:Landroid/content/Context;
    .restart local v1       #currentAnim:Landroid/view/animation/Animation;
    .restart local v4       #hasPrev:Z
    .restart local v5       #nextAnim:Landroid/view/animation/Animation;
    .restart local v7       #prevAnim:Landroid/view/animation/Animation;
    :cond_6
    iget v9, p0, Lcom/miui/player/ui/controller/NowplayingController;->mCurrentPosition:I

    add-int/lit8 v10, v6, 0x1

    if-ne v9, v10, :cond_9

    .line 196
    const v9, 0x7f040003

    invoke-static {v0, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 197
    .restart local v2       #first:Landroid/view/animation/Animation;
    const v9, 0x7f040002

    invoke-static {v0, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    .line 198
    .restart local v8       #second:Landroid/view/animation/Animation;
    iget-object v9, p0, Lcom/miui/player/ui/controller/NowplayingController;->mCurrentFrame:Landroid/view/View;

    iget-object v10, p0, Lcom/miui/player/ui/controller/NowplayingController;->mTitleRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-static {v2, v9, v8, v10}, Lcom/miui/player/ui/UIHelper;->addSubsequentAnimation(Landroid/view/animation/Animation;Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 199
    move-object v1, v2

    .line 201
    const v9, 0x7f040003

    invoke-static {v0, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 202
    if-eqz v3, :cond_7

    .line 203
    const/high16 v9, 0x7f04

    invoke-static {v0, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    .line 204
    iget-object v9, p0, Lcom/miui/player/ui/controller/NowplayingController;->mNextFrame:Landroid/view/View;

    const/4 v10, 0x0

    invoke-static {v2, v9, v8, v10}, Lcom/miui/player/ui/UIHelper;->addSubsequentAnimation(Landroid/view/animation/Animation;Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 206
    :cond_7
    move-object v5, v2

    .line 209
    const v9, 0x7f040003

    invoke-static {v0, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 210
    if-eqz v4, :cond_8

    .line 211
    const/high16 v9, 0x7f04

    invoke-static {v0, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    .line 212
    iget-object v9, p0, Lcom/miui/player/ui/controller/NowplayingController;->mPrevFrame:Landroid/view/View;

    const/4 v10, 0x0

    invoke-static {v2, v9, v8, v10}, Lcom/miui/player/ui/UIHelper;->addSubsequentAnimation(Landroid/view/animation/Animation;Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 214
    :cond_8
    move-object v7, v2

    .line 215
    goto :goto_2

    .end local v2           #first:Landroid/view/animation/Animation;
    .end local v8           #second:Landroid/view/animation/Animation;
    :cond_9
    iget v9, p0, Lcom/miui/player/ui/controller/NowplayingController;->mCurrentPosition:I

    if-eq v9, v6, :cond_2

    .line 216
    const v9, 0x7f040001

    invoke-static {v0, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 217
    .restart local v2       #first:Landroid/view/animation/Animation;
    const/high16 v9, 0x7f04

    invoke-static {v0, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    .line 218
    .restart local v8       #second:Landroid/view/animation/Animation;
    iget-object v9, p0, Lcom/miui/player/ui/controller/NowplayingController;->mCurrentFrame:Landroid/view/View;

    iget-object v10, p0, Lcom/miui/player/ui/controller/NowplayingController;->mTitleRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-static {v2, v9, v8, v10}, Lcom/miui/player/ui/UIHelper;->addSubsequentAnimation(Landroid/view/animation/Animation;Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 219
    move-object v1, v2

    .line 221
    const v9, 0x7f040001

    invoke-static {v0, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 222
    if-eqz v3, :cond_a

    .line 223
    const/high16 v9, 0x7f04

    invoke-static {v0, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    .line 224
    iget-object v9, p0, Lcom/miui/player/ui/controller/NowplayingController;->mNextFrame:Landroid/view/View;

    const/4 v10, 0x0

    invoke-static {v2, v9, v8, v10}, Lcom/miui/player/ui/UIHelper;->addSubsequentAnimation(Landroid/view/animation/Animation;Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 226
    :cond_a
    move-object v5, v2

    .line 229
    const v9, 0x7f040001

    invoke-static {v0, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 230
    if-eqz v4, :cond_b

    .line 231
    const/high16 v9, 0x7f04

    invoke-static {v0, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    .line 232
    iget-object v9, p0, Lcom/miui/player/ui/controller/NowplayingController;->mPrevFrame:Landroid/view/View;

    const/4 v10, 0x0

    invoke-static {v2, v9, v8, v10}, Lcom/miui/player/ui/UIHelper;->addSubsequentAnimation(Landroid/view/animation/Animation;Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 234
    :cond_b
    move-object v7, v2

    goto/16 :goto_2

    .line 245
    .end local v2           #first:Landroid/view/animation/Animation;
    .end local v8           #second:Landroid/view/animation/Animation;
    :cond_c
    invoke-virtual {p0}, Lcom/miui/player/ui/controller/NowplayingController;->setNowplayingInfo()V

    goto/16 :goto_3
.end method
