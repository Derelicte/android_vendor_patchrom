.class public Lcom/miui/player/provider/FavoriteCache;
.super Ljava/lang/Object;
.source "FavoriteCache.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sFavoriteLocalTracks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sFavoriteOnlineTracks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFavoritePlaylistId:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    const-class v0, Lcom/miui/player/provider/FavoriteCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/provider/FavoriteCache;->TAG:Ljava/lang/String;

    .line 24
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/miui/player/provider/FavoriteCache;->sFavoritePlaylistId:J

    .line 25
    sput-object v2, Lcom/miui/player/provider/FavoriteCache;->sFavoriteLocalTracks:Ljava/util/HashSet;

    .line 26
    sput-object v2, Lcom/miui/player/provider/FavoriteCache;->sFavoriteOnlineTracks:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Landroid/content/Context;[J)I
    .locals 8
    .parameter "context"
    .parameter "ids"

    .prologue
    .line 51
    invoke-static {p0}, Lcom/miui/player/provider/FavoriteCache;->initialize(Landroid/content/Context;)Z

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, addNum:I
    sget-object v6, Lcom/miui/player/provider/FavoriteCache;->sFavoriteLocalTracks:Ljava/util/HashSet;

    .line 54
    .local v6, localTracks:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v6, :cond_1

    .line 55
    move-object v1, p1

    .local v1, arr$:[J
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-wide v3, v1, v2

    .line 56
    .local v3, id:J
    invoke-static {v3, v4}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v7

    if-nez v7, :cond_0

    .line 57
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 55
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    .end local v1           #arr$:[J
    .end local v2           #i$:I
    .end local v3           #id:J
    .end local v5           #len$:I
    :cond_1
    return v0
.end method

.method public static add(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "onlineId"

    .prologue
    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lcom/miui/player/provider/FavoriteCache;->add(Landroid/content/Context;[Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static add(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "onlineIds"

    .prologue
    .line 71
    invoke-static {p0}, Lcom/miui/player/provider/FavoriteCache;->initialize(Landroid/content/Context;)Z

    .line 72
    sget-object v4, Lcom/miui/player/provider/FavoriteCache;->sFavoriteOnlineTracks:Ljava/util/HashSet;

    .line 73
    .local v4, onlineTracks:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    .line 74
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 75
    .local v2, id:Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #id:Ljava/lang/String;
    .end local v3           #len$:I
    :cond_0
    return-void
.end method

.method public static contains(Landroid/content/Context;JLjava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "id"
    .parameter "onlineId"

    .prologue
    .line 85
    invoke-static {p0}, Lcom/miui/player/provider/FavoriteCache;->initialize(Landroid/content/Context;)Z

    .line 86
    const/4 v0, 0x0

    .line 88
    .local v0, favorite:Z
    invoke-static {p1, p2}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    invoke-static {p0, p1, p2}, Lcom/miui/player/provider/FavoriteCache;->localContains(Landroid/content/Context;J)Z

    move-result v0

    .line 97
    :goto_0
    return v0

    .line 90
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    invoke-static {p0, p3}, Lcom/miui/player/provider/FavoriteCache;->onlineContains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 93
    :cond_1
    sget-wide v1, Lcom/miui/player/provider/FavoriteCache;->sFavoritePlaylistId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, p1, p2, v1}, Lcom/miui/player/provider/PlayerProviderUtils;->getOnlineId(Landroid/content/Context;JLjava/lang/Long;)Ljava/lang/String;

    move-result-object p3

    .line 94
    invoke-static {p0, p3}, Lcom/miui/player/provider/FavoriteCache;->onlineContains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static getFavoritePlaylistId(Landroid/content/Context;)J
    .locals 2
    .parameter "context"

    .prologue
    .line 111
    invoke-static {p0}, Lcom/miui/player/provider/FavoriteCache;->initialize(Landroid/content/Context;)Z

    .line 112
    sget-wide v0, Lcom/miui/player/provider/FavoriteCache;->sFavoritePlaylistId:J

    return-wide v0
.end method

.method private static initialize(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 193
    sget-wide v0, Lcom/miui/player/provider/FavoriteCache;->sFavoritePlaylistId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 194
    invoke-static {p0}, Lcom/miui/player/provider/FavoriteCache;->readFavorityPlaylist(Landroid/content/Context;)V

    .line 195
    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFavoritePlaylistId(Landroid/content/Context;J)Z
    .locals 2
    .parameter "context"
    .parameter "playlistId"

    .prologue
    .line 42
    invoke-static {p0}, Lcom/miui/player/provider/FavoriteCache;->initialize(Landroid/content/Context;)Z

    .line 43
    sget-wide v0, Lcom/miui/player/provider/FavoriteCache;->sFavoritePlaylistId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static localContains(Landroid/content/Context;J)Z
    .locals 2
    .parameter "context"
    .parameter "localId"

    .prologue
    .line 101
    invoke-static {p0}, Lcom/miui/player/provider/FavoriteCache;->initialize(Landroid/content/Context;)Z

    .line 102
    sget-object v0, Lcom/miui/player/provider/FavoriteCache;->sFavoriteLocalTracks:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/player/provider/FavoriteCache;->sFavoriteLocalTracks:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onlineContains(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "onlineId"

    .prologue
    .line 106
    invoke-static {p0}, Lcom/miui/player/provider/FavoriteCache;->initialize(Landroid/content/Context;)Z

    .line 107
    sget-object v0, Lcom/miui/player/provider/FavoriteCache;->sFavoriteOnlineTracks:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/player/provider/FavoriteCache;->sFavoriteOnlineTracks:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onlineRemove(Landroid/content/Context;Ljava/util/Collection;)I
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, onlineIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v1, Lcom/miui/player/provider/FavoriteCache;->sFavoriteOnlineTracks:Ljava/util/HashSet;

    .line 141
    .local v1, onlineSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 142
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    .line 143
    .local v0, oldSize:I
    invoke-interface {v1, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 144
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    sub-int v2, v0, v2

    .line 147
    .end local v0           #oldSize:I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static readFavorityPlaylist(Landroid/content/Context;)V
    .locals 10
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 202
    const-string v0, "$miui$"

    invoke-static {p0, v0, v2, v1}, Lcom/miui/player/provider/PlaylistHelper;->createPlaylist(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/net/Uri;

    move-result-object v0

    .line 204
    if-nez v0, :cond_0

    .line 205
    sget-object v0, Lcom/miui/player/provider/FavoriteCache;->TAG:Ljava/lang/String;

    const-string v1, "create favority failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 210
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 211
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 212
    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "audio_id"

    aput-object v0, v2, v1

    const-string v0, "online_id"

    aput-object v0, v2, v3

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playlist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-static {v6, v7}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v5, v4

    .line 218
    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 219
    if-eqz v1, :cond_3

    .line 221
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 223
    invoke-static {v2, v3}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 230
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 226
    :cond_1
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 230
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 234
    :cond_3
    const-class v1, Lcom/miui/player/provider/FavoriteCache;

    monitor-enter v1

    .line 235
    :try_start_2
    sput-wide v6, Lcom/miui/player/provider/FavoriteCache;->sFavoritePlaylistId:J

    .line 236
    sput-object v8, Lcom/miui/player/provider/FavoriteCache;->sFavoriteLocalTracks:Ljava/util/HashSet;

    .line 237
    sput-object v9, Lcom/miui/player/provider/FavoriteCache;->sFavoriteOnlineTracks:Ljava/util/HashSet;

    .line 238
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public static recoverCache([J)I
    .locals 5
    .parameter "validTrackIds"

    .prologue
    .line 123
    sget-object v1, Lcom/miui/player/provider/FavoriteCache;->sFavoriteLocalTracks:Ljava/util/HashSet;

    .line 124
    .local v1, localSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v1, :cond_2

    .line 125
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    .line 126
    .local v2, oldSize:I
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 127
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {p0, v3, v4}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    if-gez v3, :cond_0

    .line 129
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 133
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    sub-int v3, v2, v3

    .line 136
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v2           #oldSize:I
    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static remove(Landroid/content/Context;[J)I
    .locals 18
    .parameter "context"
    .parameter "audioIds"

    .prologue
    .line 151
    sget-object v13, Lcom/miui/player/provider/FavoriteCache;->sFavoriteLocalTracks:Ljava/util/HashSet;

    .line 152
    .local v13, localSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    sget-object v16, Lcom/miui/player/provider/FavoriteCache;->sFavoriteOnlineTracks:Ljava/util/HashSet;

    .line 153
    .local v16, onlineSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v15, onlineList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v13, :cond_4

    if-eqz v16, :cond_4

    .line 155
    invoke-static/range {p0 .. p0}, Lcom/miui/player/provider/FavoriteCache;->size(Landroid/content/Context;)I

    move-result v14

    .line 157
    .local v14, oldSize:I
    move-object/from16 v7, p1

    .local v7, arr$:[J
    array-length v12, v7

    .local v12, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v12, :cond_1

    aget-wide v10, v7, v9

    .line 158
    .local v10, id:J
    invoke-static {v10, v11}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 163
    :cond_0
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 167
    .end local v10           #id:J
    :cond_1
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 168
    invoke-static {v15}, Lcom/miui/player/util/SqlUtils;->concatAsSet(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v17

    .line 169
    .local v17, set:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audio_id IN "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, where:Ljava/lang/String;
    sget-object v2, Lcom/miui/player/provider/PlayerStore$MiuiNowPlayingAudio;->EXTERNAL_URI:Landroid/net/Uri;

    .line 173
    .local v2, uri:Landroid/net/Uri;
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "online_id"

    aput-object v5, v3, v1

    .line 174
    .local v3, proj:[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 175
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 177
    :goto_2
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 181
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 186
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #proj:[Ljava/lang/String;
    .end local v4           #where:Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v17           #set:Ljava/lang/String;
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/miui/player/provider/FavoriteCache;->size(Landroid/content/Context;)I

    move-result v1

    sub-int v1, v14, v1

    .line 189
    .end local v7           #arr$:[J
    .end local v9           #i$:I
    .end local v12           #len$:I
    .end local v14           #oldSize:I
    :goto_3
    return v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public static size(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 29
    invoke-static {p0}, Lcom/miui/player/provider/FavoriteCache;->initialize(Landroid/content/Context;)Z

    .line 30
    const/4 v2, 0x0

    .line 32
    .local v2, ret:I
    sget-object v0, Lcom/miui/player/provider/FavoriteCache;->sFavoriteLocalTracks:Ljava/util/HashSet;

    .line 33
    .local v0, localTracks:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    sget-object v1, Lcom/miui/player/provider/FavoriteCache;->sFavoriteOnlineTracks:Ljava/util/HashSet;

    .line 34
    .local v1, onlineTracks:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 35
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    add-int v2, v3, v4

    .line 38
    :cond_0
    return v2
.end method
