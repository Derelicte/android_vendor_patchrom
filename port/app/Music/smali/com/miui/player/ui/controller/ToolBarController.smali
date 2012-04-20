.class public Lcom/miui/player/ui/controller/ToolBarController;
.super Ljava/lang/Object;
.source "ToolBarController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final mContext:Landroid/content/Context;

.field private final mEqualizerIcon:Landroid/widget/ImageView;

.field private final mFavoriteIcon:Landroid/widget/ImageView;

.field private final mInfoIcon:Landroid/widget/ImageView;

.field private final mRepeatIcon:Landroid/widget/ImageView;

.field private final mShuffleIcon:Landroid/widget/ImageView;

.field private final mTrackDetailController:Lcom/miui/player/ui/controller/TrackDetailController;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .parameter "container"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mContext:Landroid/content/Context;

    .line 42
    const v1, 0x7f0c0022

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, v:Landroid/view/View;
    const v1, 0x7f0c0084

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mInfoIcon:Landroid/widget/ImageView;

    .line 44
    iget-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v1, 0x7f0c0085

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mFavoriteIcon:Landroid/widget/ImageView;

    .line 47
    iget-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v1, 0x7f0c0086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mEqualizerIcon:Landroid/widget/ImageView;

    .line 50
    iget-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mEqualizerIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v1, 0x7f0c0087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mRepeatIcon:Landroid/widget/ImageView;

    .line 53
    iget-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mRepeatIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v1, 0x7f0c0088

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mShuffleIcon:Landroid/widget/ImageView;

    .line 56
    iget-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mShuffleIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    new-instance v1, Lcom/miui/player/ui/controller/TrackDetailController;

    iget-object v2, p0, Lcom/miui/player/ui/controller/ToolBarController;->mInfoIcon:Landroid/widget/ImageView;

    invoke-direct {v1, p1, v2}, Lcom/miui/player/ui/controller/TrackDetailController;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mTrackDetailController:Lcom/miui/player/ui/controller/TrackDetailController;

    .line 59
    return-void
.end method

.method private refreshEqualizer()V
    .locals 2

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/miui/player/ui/controller/ToolBarController;->isEqualizerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/miui/player/ui/controller/ToolBarController;->mEqualizerIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200af

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/controller/ToolBarController;->mEqualizerIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200ae

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private refreshFavorite(Z)V
    .locals 2
    .parameter "favorite"

    .prologue
    .line 191
    if-eqz p1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/miui/player/ui/controller/ToolBarController;->mFavoriteIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200b1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/controller/ToolBarController;->mFavoriteIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200b0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private refreshRepeatMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 215
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/miui/player/ui/controller/ToolBarController;->mRepeatIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200b5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/miui/player/ui/controller/ToolBarController;->mRepeatIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 219
    :cond_2
    if-nez p1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/miui/player/ui/controller/ToolBarController;->mRepeatIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private refreshShuffleMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 207
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/miui/player/ui/controller/ToolBarController;->mShuffleIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    if-nez p1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/miui/player/ui/controller/ToolBarController;->mShuffleIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200b9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private toggleEqualizer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 131
    invoke-virtual {p0}, Lcom/miui/player/ui/controller/ToolBarController;->isEqualizerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/miui/player/ui/controller/ToolBarController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/player/ui/EqualizerActivity;->setEqualizerEnabled(Landroid/content/Context;Z)V

    .line 158
    :goto_0
    invoke-direct {p0}, Lcom/miui/player/ui/controller/ToolBarController;->refreshEqualizer()V

    .line 159
    return-void

    .line 134
    :cond_0
    sget-boolean v0, Lcom/miui/player/util/PreferenceCache;->IS_LPA_DECODE:Z

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/miui/player/ui/controller/ToolBarController;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/miui/player/ui/EqualizerActivity;->setEqualizerEnabled(Landroid/content/Context;Z)V

    goto :goto_0

    .line 137
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/miui/player/ui/controller/ToolBarController$1;

    invoke-direct {v2, p0}, Lcom/miui/player/ui/controller/ToolBarController$1;-><init>(Lcom/miui/player/ui/controller/ToolBarController;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080091

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private toggleFavorite()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 117
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getCurrentAudioId()J

    move-result-wide v0

    .line 118
    .local v0, audioId:J
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getCurrentOnlineId()Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, onlineId:Ljava/lang/String;
    iget-object v8, p0, Lcom/miui/player/ui/controller/ToolBarController;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/miui/player/provider/FavoriteCache;->getFavoritePlaylistId(Landroid/content/Context;)J

    move-result-wide v4

    .line 120
    .local v4, plid:J
    iget-object v8, p0, Lcom/miui/player/ui/controller/ToolBarController;->mContext:Landroid/content/Context;

    invoke-static {v8, v0, v1, v3}, Lcom/miui/player/provider/FavoriteCache;->contains(Landroid/content/Context;JLjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    move v2, v6

    .line 121
    .local v2, favorite:Z
    :goto_0
    if-eqz v2, :cond_1

    .line 122
    iget-object v8, p0, Lcom/miui/player/ui/controller/ToolBarController;->mContext:Landroid/content/Context;

    new-array v9, v6, [J

    aput-wide v0, v9, v7

    invoke-static {v8, v9, v4, v5, v6}, Lcom/miui/player/provider/PlaylistHelper;->addToPlaylist(Landroid/content/Context;[JJZ)I

    .line 127
    :goto_1
    invoke-direct {p0, v2}, Lcom/miui/player/ui/controller/ToolBarController;->refreshFavorite(Z)V

    .line 128
    return-void

    .end local v2           #favorite:Z
    :cond_0
    move v2, v7

    .line 120
    goto :goto_0

    .line 124
    .restart local v2       #favorite:Z
    :cond_1
    iget-object v8, p0, Lcom/miui/player/ui/controller/ToolBarController;->mContext:Landroid/content/Context;

    new-array v6, v6, [J

    aput-wide v0, v6, v7

    invoke-static {v8, v6, v4, v5}, Lcom/miui/player/provider/PlaylistHelper;->removeMembers(Landroid/content/Context;[JJ)I

    goto :goto_1
.end method

.method private toggleInfo()V
    .locals 2

    .prologue
    .line 112
    iget-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mTrackDetailController:Lcom/miui/player/ui/controller/TrackDetailController;

    invoke-virtual {v1}, Lcom/miui/player/ui/controller/TrackDetailController;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 113
    .local v0, visible:Z
    :goto_0
    iget-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mTrackDetailController:Lcom/miui/player/ui/controller/TrackDetailController;

    invoke-virtual {v1, v0}, Lcom/miui/player/ui/controller/TrackDetailController;->setVisible(Z)V

    .line 114
    return-void

    .line 112
    .end local v0           #visible:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toggleRepeat()V
    .locals 3

    .prologue
    .line 162
    sget-object v1, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 163
    .local v1, service:Lcom/miui/player/service/IMediaPlaybackService;
    if-nez v1, :cond_0

    .line 173
    :goto_0
    return-void

    .line 168
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getRepeatMode()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v0, v2, 0x3

    .line 169
    .local v0, mode:I
    invoke-interface {v1, v0}, Lcom/miui/player/service/IMediaPlaybackService;->setRepeatMode(I)V

    .line 170
    invoke-direct {p0, v0}, Lcom/miui/player/ui/controller/ToolBarController;->refreshRepeatMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    .end local v0           #mode:I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private toggleShuffle()V
    .locals 3

    .prologue
    .line 176
    sget-object v1, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 177
    .local v1, service:Lcom/miui/player/service/IMediaPlaybackService;
    if-nez v1, :cond_0

    .line 188
    :goto_0
    return-void

    .line 182
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getShuffleMode()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v0, v2, 0x2

    .line 183
    .local v0, mode:I
    invoke-interface {v1, v0}, Lcom/miui/player/service/IMediaPlaybackService;->setShuffleMode(I)V

    .line 184
    invoke-direct {p0, v0}, Lcom/miui/player/ui/controller/ToolBarController;->refreshShuffleMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    .end local v0           #mode:I
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public hideDetailInfo()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 62
    iget-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mTrackDetailController:Lcom/miui/player/ui/controller/TrackDetailController;

    invoke-virtual {v1}, Lcom/miui/player/ui/controller/TrackDetailController;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mTrackDetailController:Lcom/miui/player/ui/controller/TrackDetailController;

    invoke-virtual {v1, v0}, Lcom/miui/player/ui/controller/TrackDetailController;->setVisible(Z)V

    .line 64
    const/4 v0, 0x1

    .line 67
    :cond_0
    return v0
.end method

.method public isEqualizerEnabled()Z
    .locals 1

    .prologue
    .line 86
    sget-boolean v0, Lcom/miui/player/util/PreferenceCache;->IS_LPA_DECODE:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/controller/ToolBarController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/player/ui/EqualizerActivity;->isEqualizerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 109
    :goto_0
    return-void

    .line 93
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/player/ui/controller/ToolBarController;->toggleInfo()V

    goto :goto_0

    .line 96
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/player/ui/controller/ToolBarController;->toggleEqualizer()V

    goto :goto_0

    .line 99
    :pswitch_2
    invoke-direct {p0}, Lcom/miui/player/ui/controller/ToolBarController;->toggleFavorite()V

    goto :goto_0

    .line 102
    :pswitch_3
    invoke-direct {p0}, Lcom/miui/player/ui/controller/ToolBarController;->toggleRepeat()V

    goto :goto_0

    .line 105
    :pswitch_4
    invoke-direct {p0}, Lcom/miui/player/ui/controller/ToolBarController;->toggleShuffle()V

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x7f0c0084
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public refresh()V
    .locals 5

    .prologue
    .line 71
    iget-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getCurrentAudioId()J

    move-result-wide v2

    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getCurrentOnlineId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/miui/player/provider/FavoriteCache;->contains(Landroid/content/Context;JLjava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/player/ui/controller/ToolBarController;->refreshFavorite(Z)V

    .line 73
    invoke-direct {p0}, Lcom/miui/player/ui/controller/ToolBarController;->refreshEqualizer()V

    .line 75
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 76
    .local v0, service:Lcom/miui/player/service/IMediaPlaybackService;
    if-eqz v0, :cond_0

    .line 78
    :try_start_0
    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getRepeatMode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/player/ui/controller/ToolBarController;->refreshRepeatMode(I)V

    .line 79
    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getShuffleMode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/player/ui/controller/ToolBarController;->refreshShuffleMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v1

    goto :goto_0
.end method
