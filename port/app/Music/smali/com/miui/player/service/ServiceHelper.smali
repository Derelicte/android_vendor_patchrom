.class public Lcom/miui/player/service/ServiceHelper;
.super Ljava/lang/Object;
.source "ServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/service/ServiceHelper$ServiceBinder;,
        Lcom/miui/player/service/ServiceHelper$ServiceToken;
    }
.end annotation


# static fields
.field private static sConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/miui/player/service/ServiceHelper$ServiceBinder;",
            ">;"
        }
    .end annotation
.end field

.field public static sService:Lcom/miui/player/service/IMediaPlaybackService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/player/service/ServiceHelper;->sConnectionMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method public static addToCurrentPlaylist(Landroid/content/Context;[J)V
    .locals 1
    .parameter "context"
    .parameter "list"

    .prologue
    .line 239
    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lcom/miui/player/service/ServiceHelper;->addToCurrentPlaylist(Landroid/content/Context;[JI)V

    .line 240
    return-void
.end method

.method public static addToCurrentPlaylist(Landroid/content/Context;[JI)V
    .locals 8
    .parameter "context"
    .parameter "list"
    .parameter "action"

    .prologue
    .line 220
    sget-object v2, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    :try_start_0
    sget-object v2, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/miui/player/service/IMediaPlaybackService;->getQueue()[J

    move-result-object v0

    .line 225
    .local v0, current:[J
    if-eqz v0, :cond_2

    .line 226
    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 227
    invoke-static {v0, p1}, Lcom/miui/player/util/SqlUtils;->differenceSet([J[J)[J

    move-result-object p1

    .line 230
    :cond_2
    sget-object v2, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v2, p1, p2}, Lcom/miui/player/service/IMediaPlaybackService;->enqueue([JI)V

    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000d

    array-length v4, p1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    array-length v7, p1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, message:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    .end local v0           #current:[J
    .end local v1           #message:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/miui/player/service/ServiceHelper$ServiceToken;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 51
    if-nez v0, :cond_1

    .line 54
    :goto_0
    new-instance v1, Landroid/content/ContextWrapper;

    invoke-direct {v1, p0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/miui/player/service/MediaPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 56
    new-instance v0, Lcom/miui/player/service/ServiceHelper$ServiceBinder;

    invoke-direct {v0, p1}, Lcom/miui/player/service/ServiceHelper$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    .line 57
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    sget-object v2, Lcom/miui/player/service/ServiceHelper;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v0, Lcom/miui/player/service/ServiceHelper$ServiceToken;

    invoke-direct {v0, v1}, Lcom/miui/player/service/ServiceHelper$ServiceToken;-><init>(Landroid/content/ContextWrapper;)V

    .line 62
    :goto_1
    return-object v0

    .line 61
    :cond_0
    const-string v0, "Music"

    const-string v1, "Failed to bind to service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move-object p0, v0

    goto :goto_0
.end method

.method public static getCurrentAlbumId()J
    .locals 2

    .prologue
    .line 155
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 157
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getAlbumId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 161
    :goto_0
    return-wide v0

    .line 158
    :catch_0
    move-exception v0

    .line 161
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentArtistId()J
    .locals 2

    .prologue
    .line 165
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 167
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getArtistId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 171
    :goto_0
    return-wide v0

    .line 168
    :catch_0
    move-exception v0

    .line 171
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentAudioId()J
    .locals 2

    .prologue
    .line 175
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 177
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getAudioId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 181
    :goto_0
    return-wide v0

    .line 178
    :catch_0
    move-exception v0

    .line 181
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentOnlineId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 147
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getOnlineId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    .line 148
    :catch_0
    move-exception v0

    .line 151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getQueue()[J
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 127
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getQueue()[J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    .line 128
    :catch_0
    move-exception v0

    .line 131
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getQueuePosition()I
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 108
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getQueuePosition()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 112
    :goto_0
    return v0

    .line 109
    :catch_0
    move-exception v0

    .line 112
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getQueueSize()I
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 137
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getQueueSize()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 141
    :goto_0
    return v0

    .line 138
    :catch_0
    move-exception v0

    .line 141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMusicLoaded()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 200
    sget-object v1, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 202
    :try_start_0
    sget-object v1, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 206
    :cond_0
    :goto_0
    return v0

    .line 203
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isPlaying()Z
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 212
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->isPlaying()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 216
    :goto_0
    return v0

    .line 213
    :catch_0
    move-exception v0

    .line 216
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static moveQueueItem(II)Z
    .locals 1
    .parameter "from"
    .parameter "to"

    .prologue
    .line 501
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 502
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0, p0, p1}, Lcom/miui/player/service/IMediaPlaybackService;->moveQueueItem(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :cond_0
    const/4 v0, 0x1

    .line 508
    :goto_0
    return v0

    .line 505
    :catch_0
    move-exception v0

    .line 508
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static pause()V
    .locals 1

    .prologue
    .line 414
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 422
    :goto_0
    return-void

    .line 419
    :cond_0
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 420
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static playAll(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "position"

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/miui/player/service/ServiceHelper;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZ)V

    .line 301
    return-void
.end method

.method private static playAll(Landroid/content/Context;Landroid/database/Cursor;IZ)V
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "position"
    .parameter "force_shuffle"

    .prologue
    .line 308
    invoke-static {p1}, Lcom/miui/player/provider/PlayerProviderUtils;->guessAudioIdColumnIndex(Landroid/database/Cursor;)I

    move-result v0

    .line 309
    .local v0, idx:I
    invoke-static {p1, v0}, Lcom/miui/player/util/SqlUtils;->getIdsForCursor(Landroid/database/Cursor;I)[J

    move-result-object v1

    .line 310
    .local v1, list:[J
    sget v2, Lcom/miui/player/service/HistoryManager;->LAST_HISTORY_SIZE:I

    invoke-static {p0, v1, p2, p3, v2}, Lcom/miui/player/service/ServiceHelper;->playAll(Landroid/content/Context;[JIZI)V

    .line 311
    return-void
.end method

.method public static playAll(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;IZZ)V
    .locals 11
    .parameter "context"
    .parameter
    .parameter "provider"
    .parameter "position"
    .parameter "append"
    .parameter "forceShuffle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;",
            ">;",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p1, songItems:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;>;"
    invoke-static {p1}, Lcom/xiaomi/common/util/CollectionHelper;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-nez v0, :cond_2

    .line 369
    :cond_0
    const-string v0, "MusicUtils"

    const-string v5, "attempt to play empty song list"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const v0, 0x7f080059

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v6

    invoke-virtual {p0, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 372
    .local v9, message:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {p0, v9, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 411
    .end local v9           #message:Ljava/lang/String;
    .end local p3
    :cond_1
    :goto_0
    return-void

    .line 377
    .restart local p3
    :cond_2
    if-eqz p5, :cond_3

    .line 378
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Lcom/miui/player/service/IMediaPlaybackService;->setShuffleMode(I)V

    .line 379
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getRepeatMode()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_3

    .line 380
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Lcom/miui/player/service/IMediaPlaybackService;->setRepeatMode(I)V

    .line 384
    :cond_3
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getQueue()[J

    move-result-object v1

    .line 385
    .local v1, queue:[J
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getQueuePosition()I

    move-result v2

    .line 386
    .local v2, pos:I
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getCurrentAudioId()J

    move-result-wide v3

    .line 390
    .local v3, audioId:J
    if-eqz p4, :cond_4

    .line 391
    invoke-static {p0, p1, p2, p4}, Lcom/miui/player/provider/PlayerProviderUtils;->updateNowplayingList(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;Z)[J

    move-result-object v8

    .line 392
    .local v8, list:[J
    invoke-static {p0, v8}, Lcom/miui/player/service/ServiceHelper;->addToCurrentPlaylist(Landroid/content/Context;[J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    .end local p3
    :goto_1
    if-nez p4, :cond_1

    .line 406
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.miui.player.PLAYBACK_VIEWER"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x400

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v7

    .line 408
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 394
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #list:[J
    .restart local p3
    :cond_4
    :try_start_1
    invoke-static {p0}, Lcom/miui/player/service/HistoryManager;->moveNowplayingOnlineToHistory(Landroid/content/Context;)V

    .line 395
    invoke-static {p0, p1, p2, p4}, Lcom/miui/player/provider/PlayerProviderUtils;->updateNowplayingList(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;Z)[J

    move-result-object v8

    .line 396
    .restart local v8       #list:[J
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz p5, :cond_5

    const/4 p3, -0x1

    .end local p3
    :cond_5
    invoke-interface {v0, v8, p3}, Lcom/miui/player/service/IMediaPlaybackService;->open([JI)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 397
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    sget v6, Lcom/miui/player/service/HistoryManager;->LAST_HISTORY_SIZE:I

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/miui/player/service/HistoryManager;->shift(Landroid/content/Context;[JIJLandroid/content/SharedPreferences;I)Z

    .line 401
    :cond_6
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 403
    .end local v1           #queue:[J
    .end local v2           #pos:I
    .end local v3           #audioId:J
    .end local v8           #list:[J
    :catch_0
    move-exception v0

    .line 405
    if-nez p4, :cond_1

    .line 406
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.miui.player.PLAYBACK_VIEWER"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x400

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v7

    .line 408
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 405
    .end local v7           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v0

    if-nez p4, :cond_7

    .line 406
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.miui.player.PLAYBACK_VIEWER"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x400

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v7

    .line 408
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 409
    .end local v7           #intent:Landroid/content/Intent;
    :cond_7
    throw v0
.end method

.method public static playAll(Landroid/content/Context;[JI)V
    .locals 2
    .parameter "context"
    .parameter "list"
    .parameter "position"

    .prologue
    .line 304
    const/4 v0, 0x0

    sget v1, Lcom/miui/player/service/HistoryManager;->LAST_HISTORY_SIZE:I

    invoke-static {p0, p1, p2, v0, v1}, Lcom/miui/player/service/ServiceHelper;->playAll(Landroid/content/Context;[JIZI)V

    .line 305
    return-void
.end method

.method private static playAll(Landroid/content/Context;[JIZI)V
    .locals 15
    .parameter "context"
    .parameter "list"
    .parameter "position"
    .parameter "force_shuffle"
    .parameter "history"

    .prologue
    .line 314
    move-object/from16 v0, p1

    array-length v1, v0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-nez v1, :cond_1

    .line 315
    :cond_0
    const-string v1, "MusicUtils"

    const-string v6, "attempt to play empty song list"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const v1, 0x7f080059

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    array-length v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v6, v7

    invoke-virtual {p0, v1, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 318
    .local v12, message:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, v12, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 364
    .end local v12           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 322
    :cond_1
    if-eqz p3, :cond_2

    .line 323
    :try_start_0
    sget-object v1, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    const/4 v6, 0x1

    invoke-interface {v1, v6}, Lcom/miui/player/service/IMediaPlaybackService;->setShuffleMode(I)V

    .line 324
    sget-object v1, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getRepeatMode()I

    move-result v1

    const/4 v6, 0x2

    if-ne v1, v6, :cond_2

    .line 325
    sget-object v1, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    const/4 v6, 0x1

    invoke-interface {v1, v6}, Lcom/miui/player/service/IMediaPlaybackService;->setRepeatMode(I)V

    .line 328
    :cond_2
    sget-object v1, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getAudioId()J

    move-result-wide v8

    .line 329
    .local v8, curid:J
    sget-object v1, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getQueuePosition()I

    move-result v10

    .line 330
    .local v10, curpos:I
    const/4 v1, -0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_3

    move/from16 v0, p2

    if-ne v10, v0, :cond_3

    aget-wide v6, p1, p2

    cmp-long v1, v8, v6

    if-nez v1, :cond_3

    .line 334
    sget-object v1, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getQueue()[J

    move-result-object v13

    .line 335
    .local v13, playlist:[J
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 337
    sget-object v1, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->play()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.miui.player.PLAYBACK_VIEWER"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x400

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v11

    .line 362
    .local v11, intent:Landroid/content/Intent;
    invoke-virtual {p0, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 341
    .end local v11           #intent:Landroid/content/Intent;
    .end local v13           #playlist:[J
    :cond_3
    if-gez p2, :cond_4

    .line 342
    const/16 p2, 0x0

    .line 345
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getQueue()[J

    move-result-object v2

    .line 346
    .local v2, queue:[J
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getQueuePosition()I

    move-result v3

    .line 347
    .local v3, pos:I
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getCurrentAudioId()J

    move-result-wide v4

    .line 348
    .local v4, audioId:J
    invoke-static {p0}, Lcom/miui/player/service/HistoryManager;->moveNowplayingOnlineToHistory(Landroid/content/Context;)V

    .line 352
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-static {p0, v0, v1}, Lcom/miui/player/provider/PlayerProviderUtils;->updateNowplayingList(Landroid/content/Context;[JZ)[J

    move-result-object p1

    .line 353
    sget-object v6, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz p3, :cond_6

    const/4 v1, -0x1

    :goto_1
    move-object/from16 v0, p1

    invoke-interface {v6, v0, v1}, Lcom/miui/player/service/IMediaPlaybackService;->open([JI)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 354
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    move-object v1, p0

    move/from16 v7, p4

    invoke-static/range {v1 .. v7}, Lcom/miui/player/service/HistoryManager;->shift(Landroid/content/Context;[JIJLandroid/content/SharedPreferences;I)Z

    .line 357
    :cond_5
    sget-object v1, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 360
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.miui.player.PLAYBACK_VIEWER"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x400

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v11

    .line 362
    .restart local v11       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v11           #intent:Landroid/content/Intent;
    :cond_6
    move/from16 v1, p2

    .line 353
    goto :goto_1

    .line 358
    .end local v2           #queue:[J
    .end local v3           #pos:I
    .end local v4           #audioId:J
    .end local v8           #curid:J
    .end local v10           #curpos:I
    :catch_0
    move-exception v1

    .line 360
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.miui.player.PLAYBACK_VIEWER"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x400

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v11

    .line 362
    .restart local v11       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 360
    .end local v11           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.miui.player.PLAYBACK_VIEWER"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x400

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v11

    .line 362
    .restart local v11       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 363
    throw v1
.end method

.method public static playHistory(Landroid/content/Context;I)V
    .locals 21
    .parameter "context"
    .parameter "history"

    .prologue
    .line 254
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 255
    .local v16, sp:Landroid/content/SharedPreferences;
    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/miui/player/service/HistoryManager;->load(Landroid/content/SharedPreferences;I)[J

    move-result-object v13

    .line 256
    .local v13, queue:[J
    if-eqz v13, :cond_0

    array-length v0, v13

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/miui/player/provider/MediaProviderHelper;->queryValidTrackIdArr(Landroid/content/Context;)[J

    move-result-object v17

    .line 260
    .local v17, validIds:[J
    if-eqz v17, :cond_0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    .line 264
    const/4 v15, 0x0

    .line 265
    .local v15, removeLen:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    array-length v0, v13

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_3

    .line 266
    aget-wide v18, v13, v6

    invoke-static/range {v18 .. v19}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v18

    if-nez v18, :cond_2

    aget-wide v18, v13, v6

    invoke-static/range {v17 .. v19}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v18

    if-gez v18, :cond_2

    .line 268
    const-wide/16 v18, -0x1

    aput-wide v18, v13, v6

    .line 269
    add-int/lit8 v15, v15, 0x1

    .line 265
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 273
    :cond_3
    if-lez v15, :cond_6

    .line 274
    array-length v0, v13

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v15, v0, :cond_4

    .line 276
    const/16 v18, 0x0

    const/16 v19, 0x1

    sget v20, Lcom/miui/player/service/HistoryManager;->LAST_HISTORY_SIZE:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/player/service/ServiceHelper;->playAll(Landroid/content/Context;[JIZI)V

    goto :goto_0

    .line 280
    :cond_4
    array-length v0, v13

    move/from16 v18, v0

    sub-int v18, v18, v15

    move/from16 v0, v18

    new-array v14, v0, [J

    .line 281
    .local v14, remain:[J
    const/4 v6, 0x0

    .line 282
    move-object v5, v13

    .local v5, arr$:[J
    array-length v11, v5

    .local v11, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    move v7, v6

    .end local v6           #i:I
    .local v7, i:I
    :goto_2
    if-ge v8, v11, :cond_5

    aget-wide v9, v5, v8

    .line 283
    .local v9, id:J
    const-wide/16 v18, 0x0

    cmp-long v18, v9, v18

    if-ltz v18, :cond_7

    .line 284
    add-int/lit8 v6, v7, 0x1

    .end local v7           #i:I
    .restart local v6       #i:I
    aput-wide v9, v14, v7

    .line 282
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    .end local v6           #i:I
    .restart local v7       #i:I
    goto :goto_2

    .line 288
    .end local v9           #id:J
    :cond_5
    move-object v13, v14

    .line 291
    .end local v5           #arr$:[J
    .end local v7           #i:I
    .end local v8           #i$:I
    .end local v11           #len$:I
    .end local v14           #remain:[J
    :cond_6
    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/miui/player/service/HistoryManager;->loadPostion(Landroid/content/SharedPreferences;I)I

    move-result v12

    .line 292
    .local v12, pos:I
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    invoke-static {v0, v13, v12, v1, v2}, Lcom/miui/player/service/ServiceHelper;->playAll(Landroid/content/Context;[JIZI)V

    goto/16 :goto_0

    .end local v12           #pos:I
    .restart local v5       #arr$:[J
    .restart local v7       #i:I
    .restart local v8       #i$:I
    .restart local v9       #id:J
    .restart local v11       #len$:I
    .restart local v14       #remain:[J
    :cond_7
    move v6, v7

    .end local v7           #i:I
    .restart local v6       #i:I
    goto :goto_3
.end method

.method public static quitMediaPlay(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 524
    sget-object v1, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 526
    :try_start_0
    sget-object v1, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->quit()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :goto_0
    invoke-static {p0}, Lcom/miui/player/service/SleepModeManager;->deleteTimer(Landroid/content/Context;)V

    .line 534
    return-void

    .line 530
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.player.musicservicecommand.quit"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 531
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 527
    .end local v0           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static recoverQueue([J)I
    .locals 12
    .parameter "validTrackIds"

    .prologue
    .line 425
    sget-object v11, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-nez v11, :cond_1

    .line 426
    const/4 v8, 0x0

    .line 454
    :cond_0
    :goto_0
    return v8

    .line 429
    :cond_1
    const/4 v8, 0x0

    .line 431
    .local v8, removed:I
    :try_start_0
    sget-object v11, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v11}, Lcom/miui/player/service/IMediaPlaybackService;->getQueue()[J

    move-result-object v6

    .line 432
    .local v6, queue:[J
    if-eqz v6, :cond_0

    array-length v11, v6

    if-lez v11, :cond_0

    .line 433
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v4, 0x0

    .line 434
    .local v4, j:I
    array-length v11, v6

    new-array v7, v11, [I

    .line 436
    .local v7, removeIdxArr:[I
    move-object v0, v6

    .local v0, arr$:[J
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_1
    if-ge v3, v5, :cond_2

    aget-wide v9, v0, v3

    .line 437
    .local v9, track:J
    invoke-static {p0, v9, v10}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v11

    if-gez v11, :cond_4

    .line 438
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aput v4, v7, v2

    .line 440
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 436
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_1

    .line 443
    .end local v9           #track:J
    :cond_2
    if-lez v2, :cond_0

    .line 444
    array-length v11, v7

    if-ge v2, v11, :cond_3

    .line 445
    const/4 v11, -0x1

    aput v11, v7, v2

    .line 447
    :cond_3
    invoke-static {v7}, Lcom/miui/player/service/ServiceHelper;->removeQueueTracksBatch([I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    goto :goto_0

    .line 451
    .end local v0           #arr$:[J
    .end local v2           #i:I
    .end local v3           #i$:I
    .end local v4           #j:I
    .end local v5           #len$:I
    .end local v6           #queue:[J
    .end local v7           #removeIdxArr:[I
    :catch_0
    move-exception v11

    goto :goto_0

    .restart local v0       #arr$:[J
    .restart local v2       #i:I
    .restart local v3       #i$:I
    .restart local v4       #j:I
    .restart local v5       #len$:I
    .restart local v6       #queue:[J
    .restart local v7       #removeIdxArr:[I
    .restart local v9       #track:J
    :cond_4
    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_2
.end method

.method static registerMediaButtonReceiver(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 537
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 538
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/miui/player/receiver/MediaButtonIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 541
    return-void
.end method

.method public static removeQueueItem(J)I
    .locals 1
    .parameter "id"

    .prologue
    .line 490
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 491
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0, p0, p1}, Lcom/miui/player/service/IMediaPlaybackService;->removeTrack(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 496
    :goto_0
    return v0

    .line 493
    :catch_0
    move-exception v0

    .line 496
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeQueueTracksBatch([I)I
    .locals 1
    .parameter "posArr"

    .prologue
    .line 468
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 469
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0, p0}, Lcom/miui/player/service/IMediaPlaybackService;->removeTracksBatch([I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 474
    :goto_0
    return v0

    .line 471
    :catch_0
    move-exception v0

    .line 474
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static scanFiles([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .parameter "paths"
    .parameter "mimeTypes"

    .prologue
    .line 513
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 514
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0, p0, p1}, Lcom/miui/player/service/IMediaPlaybackService;->scanFiles([Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :cond_0
    const/4 v0, 0x1

    .line 520
    :goto_0
    return v0

    .line 517
    :catch_0
    move-exception v0

    .line 520
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shuffleAll(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 250
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/miui/player/service/ServiceHelper;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZ)V

    .line 251
    return-void
.end method

.method public static toggleQueuePosition(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 116
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 118
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0, p0}, Lcom/miui/player/service/IMediaPlaybackService;->setQueuePosition(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static unbindFromService(Lcom/miui/player/service/ServiceHelper$ServiceToken;)V
    .locals 4
    .parameter "token"

    .prologue
    .line 66
    if-nez p0, :cond_1

    .line 67
    const-string v2, "MusicUtils"

    const-string v3, "Trying to unbind with null token"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/miui/player/service/ServiceHelper$ServiceToken;->mWrappedContext:Landroid/content/ContextWrapper;

    .line 71
    .local v0, cw:Landroid/content/ContextWrapper;
    sget-object v2, Lcom/miui/player/service/ServiceHelper;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/player/service/ServiceHelper$ServiceBinder;

    .line 72
    .local v1, sb:Lcom/miui/player/service/ServiceHelper$ServiceBinder;
    if-nez v1, :cond_2

    .line 73
    const-string v2, "MusicUtils"

    const-string v3, "Trying to unbind for unknown Context"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 77
    sget-object v2, Lcom/miui/player/service/ServiceHelper;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    const/4 v2, 0x0

    sput-object v2, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    goto :goto_0
.end method

.method static unregisterMediaButtonReceiver(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 544
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 545
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/miui/player/receiver/MediaButtonIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 548
    return-void
.end method
