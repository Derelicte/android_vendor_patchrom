.class public Lcom/miui/player/provider/PlaylistHelper;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/provider/PlaylistHelper$StringPredication;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/miui/player/provider/PlaylistHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/provider/PlaylistHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    return-void
.end method

.method public static addOnlineToPlaylist(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;J)V
    .locals 14
    .parameter "context"
    .parameter
    .parameter "provider"
    .parameter "playlistId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, songItems:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;>;"
    invoke-static {p1}, Lcom/xiaomi/common/util/CollectionHelper;->isEmpty(Ljava/util/Collection;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 267
    sget-object v12, Lcom/miui/player/provider/PlaylistHelper;->TAG:Ljava/lang/String;

    const-string v13, "ListSelection null"

    invoke-static {v12, v13}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    invoke-static/range {p3 .. p4}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v10

    .line 271
    .local v10, uri:Landroid/net/Uri;
    invoke-static {p0, v10}, Lcom/miui/player/util/SqlUtils;->getRecordCount(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v2

    .line 273
    .local v2, base:I
    invoke-static {p0, v10}, Lcom/miui/player/provider/PlaylistHelper;->getExistOnlineIdList(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/List;

    move-result-object v3

    .line 274
    .local v3, existOnlineIdlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, v3}, Lcom/miui/player/provider/PlaylistHelper;->getDifferenceSongItems(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 275
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 279
    move-object/from16 v0, p2

    invoke-static {p0, p1, v0, v2}, Lcom/miui/player/provider/PlayerProviderUtils;->createMemberInfoByProviderId(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v9

    .line 282
    .local v9, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v11, v12, [Landroid/content/ContentValues;

    .line 283
    .local v11, values:[Landroid/content/ContentValues;
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 286
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v12

    move-wide/from16 v0, p3

    invoke-static {p0, v0, v1, v12}, Lcom/miui/player/ui/UIHelper;->notifyAddToPlaylist(Landroid/content/Context;JI)V

    .line 288
    move-wide/from16 v0, p3

    invoke-static {p0, v0, v1}, Lcom/miui/player/provider/FavoriteCache;->isFavoritePlaylistId(Landroid/content/Context;J)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 289
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v12

    new-array v8, v12, [Ljava/lang/String;

    .line 290
    .local v8, onlineIds:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 291
    .local v4, i:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    .line 292
    .local v7, item:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .local v5, i:I
    iget-object v12, v7, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Id:Ljava/lang/String;

    aput-object v12, v8, v4

    move v4, v5

    .end local v5           #i:I
    .restart local v4       #i:I
    goto :goto_1

    .line 294
    .end local v7           #item:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    :cond_2
    invoke-static {p0, v8}, Lcom/miui/player/provider/FavoriteCache;->add(Landroid/content/Context;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static addToPlaylist(Landroid/content/Context;[JJZ)I
    .locals 6
    .parameter "context"
    .parameter "ids"
    .parameter "playlistId"
    .parameter "notify"

    .prologue
    .line 144
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/miui/player/provider/PlaylistHelper;->addToPlaylist(Landroid/content/Context;[JJZZ)I

    move-result v0

    return v0
.end method

.method public static addToPlaylist(Landroid/content/Context;[JJZZ)I
    .locals 11
    .parameter "context"
    .parameter "ids"
    .parameter "playlistId"
    .parameter "filterDuplicate"
    .parameter "notify"

    .prologue
    .line 158
    if-eqz p1, :cond_0

    array-length v9, p1

    if-nez v9, :cond_1

    .line 159
    :cond_0
    const/4 v9, 0x0

    .line 193
    :goto_0
    return v9

    .line 161
    :cond_1
    invoke-static {p2, p3}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v7

    .line 162
    .local v7, uri:Landroid/net/Uri;
    invoke-static {p0, v7}, Lcom/miui/player/util/SqlUtils;->getRecordCount(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v2

    .line 163
    .local v2, base:I
    if-eqz p4, :cond_3

    .line 164
    invoke-static {p1, v7, p0}, Lcom/miui/player/provider/PlaylistHelper;->getLocalAddAudioList([JLandroid/net/Uri;Landroid/content/Context;)[J

    move-result-object v0

    .line 165
    .local v0, addAudioIdList:[J
    if-nez v0, :cond_2

    .line 166
    const/4 v9, 0x0

    goto :goto_0

    .line 168
    :cond_2
    move-object p1, v0

    .line 171
    .end local v0           #addAudioIdList:[J
    :cond_3
    invoke-static {p0, p1, v2}, Lcom/miui/player/provider/PlayerProviderUtils;->createMemberInfoById(Landroid/content/Context;[JI)[Landroid/content/ContentValues;

    move-result-object v8

    .line 172
    .local v8, values:[Landroid/content/ContentValues;
    if-nez v8, :cond_4

    .line 173
    const/4 v9, 0x0

    goto :goto_0

    .line 176
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 178
    invoke-static {p0, p2, p3}, Lcom/miui/player/provider/FavoriteCache;->isFavoritePlaylistId(Landroid/content/Context;J)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 179
    invoke-static {p0, p1}, Lcom/miui/player/provider/FavoriteCache;->add(Landroid/content/Context;[J)I

    move-result v9

    array-length v10, p1

    if-ge v9, v10, :cond_6

    .line 180
    move-object v1, v8

    .local v1, arr$:[Landroid/content/ContentValues;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_6

    aget-object v3, v1, v4

    .line 181
    .local v3, cv:Landroid/content/ContentValues;
    const-string v9, "online_id"

    invoke-virtual {v3, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 182
    .local v6, onlineId:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 183
    invoke-static {p0, v6}, Lcom/miui/player/provider/FavoriteCache;->add(Landroid/content/Context;Ljava/lang/String;)V

    .line 180
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 189
    .end local v1           #arr$:[Landroid/content/ContentValues;
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #onlineId:Ljava/lang/String;
    :cond_6
    if-eqz p5, :cond_7

    .line 190
    array-length v9, v8

    invoke-static {p0, p2, p3, v9}, Lcom/miui/player/ui/UIHelper;->notifyAddToPlaylist(Landroid/content/Context;JI)V

    .line 193
    :cond_7
    array-length v9, v8

    goto :goto_0
.end method

.method public static addToPlaylistAsync(Landroid/content/Context;[JJZLjava/lang/Runnable;)V
    .locals 7
    .parameter "context"
    .parameter "trackIds"
    .parameter "playlistId"
    .parameter "filterDuplicate"
    .parameter "callback"

    .prologue
    .line 199
    new-instance v0, Lcom/miui/player/provider/PlaylistHelper$1;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/miui/player/provider/PlaylistHelper$1;-><init>(Landroid/content/Context;[JJZLjava/lang/Runnable;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/player/provider/PlaylistHelper$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 216
    return-void
.end method

.method public static clearPlaylist(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "plid"

    .prologue
    const/4 v3, 0x0

    .line 114
    int-to-long v1, p1

    invoke-static {v1, v2}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 115
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method public static createPlaylist(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/net/Uri;
    .locals 7
    .parameter "context"
    .parameter "name"
    .parameter "type"
    .parameter "clear"

    .prologue
    .line 34
    const/4 v1, 0x0

    .line 35
    .local v1, uri:Landroid/net/Uri;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v1

    .line 51
    .end local v1           #uri:Landroid/net/Uri;
    .local v2, uri:Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 38
    .end local v2           #uri:Landroid/net/Uri;
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/miui/player/provider/PlaylistHelper;->queryPlaylistId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 39
    .local v0, id:I
    if-ltz v0, :cond_2

    .line 40
    sget-object v4, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists;->EXTERNAL_URI:Landroid/net/Uri;

    int-to-long v5, v0

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 41
    if-eqz p3, :cond_1

    .line 42
    invoke-static {p0, v0}, Lcom/miui/player/provider/PlaylistHelper;->clearPlaylist(Landroid/content/Context;I)V

    :cond_1
    :goto_1
    move-object v2, v1

    .line 51
    .end local v1           #uri:Landroid/net/Uri;
    .restart local v2       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 45
    .end local v2           #uri:Landroid/net/Uri;
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_2
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 46
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "name"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v4, "list_type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists;->EXTERNAL_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1
.end method

.method public static deletePlaylist(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "plid"

    .prologue
    .line 398
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    invoke-static {p0, v0}, Lcom/miui/player/provider/PlaylistHelper;->deletePlaylist(Landroid/content/Context;[J)V

    .line 399
    return-void
.end method

.method public static deletePlaylist(Landroid/content/Context;[J)V
    .locals 4
    .parameter "context"
    .parameter "plidlist"

    .prologue
    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id IN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/miui/player/util/SqlUtils;->concatAsSet([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, inClause:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists;->EXTERNAL_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 404
    return-void
.end method

.method private static getDifferenceSongItems(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, songItems:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;>;"
    .local p1, exist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v0, to:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;>;"
    new-instance v1, Lcom/miui/player/provider/PlaylistHelper$StringPredication;

    invoke-direct {v1, p1}, Lcom/miui/player/provider/PlaylistHelper$StringPredication;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v0, v1}, Lcom/xiaomi/common/util/CollectionHelper;->differenceList(Ljava/util/List;Ljava/util/List;Lcom/xiaomi/common/util/CollectionHelper$Predication;)I

    .line 261
    return-object v0
.end method

.method private static getExistOnlineIdList(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/List;
    .locals 11
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 219
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "online_id"

    aput-object v0, v2, v10

    .line 221
    .local v2, cols:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "online_id"

    move-object v1, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 228
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 229
    const/4 v8, 0x0

    .line 230
    .local v8, lastId:Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v7, existOnlineIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 233
    .local v9, onlineId:Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    move-object v8, v9

    goto :goto_0

    .line 238
    .end local v9           #onlineId:Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 241
    .end local v7           #existOnlineIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v8           #lastId:Ljava/lang/String;
    :goto_1
    return-object v7

    :cond_2
    move-object v7, v3

    goto :goto_1
.end method

.method private static getLocalAddAudioList([JLandroid/net/Uri;Landroid/content/Context;)[J
    .locals 9
    .parameter "addAudioIdList"
    .parameter "uri"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 122
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "audio_id"

    aput-object v0, v2, v1

    .line 124
    .local v2, cols:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 125
    .local v7, existAudioIdList:[J
    const-string v5, "audio_id"

    move-object v0, p2

    move-object v1, p1

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 127
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 129
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, v2, v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 130
    .local v8, idx:I
    invoke-static {v6, v8}, Lcom/miui/player/util/SqlUtils;->getIdsForCursor(Landroid/database/Cursor;I)[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 132
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 136
    .end local v8           #idx:I
    :cond_0
    if-eqz v7, :cond_1

    array-length v0, v7

    if-nez v0, :cond_2

    .line 140
    .end local p0
    :cond_1
    :goto_0
    return-object p0

    .line 132
    .restart local p0
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 140
    :cond_2
    invoke-static {v7, p0}, Lcom/miui/player/util/SqlUtils;->differenceSet([J[J)[J

    move-result-object p0

    goto :goto_0
.end method

.method public static getLocalTrackListForPlaylist(Landroid/content/Context;J)[J
    .locals 2
    .parameter "context"
    .parameter "plid"

    .prologue
    .line 317
    const-string v0, "audio_id<536870911"

    .line 319
    .local v0, where:Ljava/lang/String;
    invoke-static {p0, p1, p2, v0}, Lcom/miui/player/provider/PlaylistHelper;->getTrackListForPlaylist(Landroid/content/Context;JLjava/lang/String;)[J

    move-result-object v1

    return-object v1
.end method

.method public static getPlaylistCount(Landroid/content/Context;)I
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    .line 346
    const-string v6, " AND "

    .line 347
    .local v6, AND:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v10

    .line 350
    .local v2, cols:[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .local v9, where:Ljava/lang/StringBuilder;
    const-string v0, "name"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const-string v0, " != \'\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const-string v0, "list_type"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const-string v0, " == "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 358
    const/4 v8, 0x0

    .line 360
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v7, 0x3

    .line 362
    .local v7, count:I
    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists;->EXTERNAL_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "name"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 364
    if-eqz v8, :cond_1

    .line 365
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/2addr v7, v0

    .line 368
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 370
    :cond_1
    return v7
.end method

.method public static getRecentlyTrackCount(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 415
    const/4 v6, 0x0

    .line 417
    .local v6, count:I
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v1

    .line 418
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0}, Lcom/miui/player/provider/PlaylistHelper;->recentlyWhere(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/player/util/SqlUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 420
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 422
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 426
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 430
    :cond_1
    return v6

    .line 426
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getTrackListForPlaylist(Landroid/content/Context;JLjava/lang/String;)[J
    .locals 8
    .parameter "context"
    .parameter "plid"
    .parameter "where"

    .prologue
    const/4 v3, 0x0

    .line 323
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "audio_id"

    aput-object v0, v2, v3

    .line 324
    .local v2, ccols:[Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 325
    .local v1, uri:Landroid/net/Uri;
    const/4 v4, 0x0

    const-string v5, "play_order"

    move-object v0, p0

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 328
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 330
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, v2, v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 331
    .local v7, idx:I
    invoke-static {v6, v7}, Lcom/miui/player/util/SqlUtils;->getIdsForCursor(Landroid/database/Cursor;I)[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 333
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 337
    .end local v7           #idx:I
    :goto_0
    return-object v0

    .line 333
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 337
    :cond_0
    sget-object v0, Lcom/miui/player/util/Utils;->LONG_EMPTY_ARRAY:[J

    goto :goto_0
.end method

.method public static queryAllPlaylistNameSet(Landroid/content/Context;)Ljava/util/Set;
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 379
    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists;->EXTERNAL_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v8

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 382
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 384
    :try_start_0
    new-instance v7, Ljava/util/HashSet;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 385
    .local v7, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 390
    .end local v7           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v7       #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 394
    .end local v7           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    return-object v7

    :cond_1
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(I)V

    goto :goto_1
.end method

.method public static queryPlaylistId(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 4
    .parameter "context"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    int-to-long v2, p2

    aput-wide v2, v0, v1

    invoke-static {p0, p1, v0}, Lcom/miui/player/provider/PlaylistHelper;->queryPlaylistId(Landroid/content/Context;Ljava/lang/String;[J)I

    move-result v0

    return v0
.end method

.method private static queryPlaylistId(Landroid/content/Context;Ljava/lang/String;[J)I
    .locals 9
    .parameter "context"
    .parameter "name"
    .parameter "types"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 83
    new-array v2, v3, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 86
    .local v2, projection:[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v8, where:Ljava/lang/StringBuilder;
    const-string v0, "name"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v0, "=?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v0, "list_type"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    if-eqz p2, :cond_0

    .line 92
    const-string v0, " IN "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-static {p2}, Lcom/miui/player/util/SqlUtils;->concatAsSet([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_0
    new-array v4, v3, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 97
    .local v4, args:[Ljava/lang/String;
    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists;->EXTERNAL_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "name"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 100
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 101
    .local v7, id:I
    if-eqz v6, :cond_2

    .line 103
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 107
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_2
    return v7

    .line 107
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static queryPlaylistName(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "plid"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 61
    const/4 v7, 0x0

    .line 62
    .local v7, name:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v4

    .line 63
    .local v2, cols:[Ljava/lang/String;
    sget-object v0, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists;->EXTERNAL_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 64
    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 65
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 67
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 71
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 75
    :cond_1
    return-object v7

    .line 71
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static recentlyWhere(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .parameter "context"

    .prologue
    .line 407
    const-wide/32 v0, 0x93a80

    .line 408
    .local v0, WEEK:J
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "numweeks"

    const/4 v9, 0x2

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 409
    .local v6, pref:I
    int-to-long v7, v6

    const-wide/32 v9, 0x93a80

    mul-long v4, v7, v9

    .line 410
    .local v4, interval:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    sub-long v2, v7, v4

    .line 411
    .local v2, deadline:J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "date_added>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static removeMembers(Landroid/content/Context;[JJ)I
    .locals 1
    .parameter "context"
    .parameter "audioIds"
    .parameter "playlistId"

    .prologue
    .line 300
    invoke-static {p0, p2, p3}, Lcom/miui/player/provider/FavoriteCache;->isFavoritePlaylistId(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-static {p0, p1}, Lcom/miui/player/provider/FavoriteCache;->remove(Landroid/content/Context;[J)I

    .line 304
    :cond_0
    invoke-static {p0, p2, p3, p1}, Lcom/miui/player/provider/PlayerProviderUtils;->removeMembersFromDB(Landroid/content/Context;J[J)I

    move-result v0

    return v0
.end method

.method public static removeOnlineMembers(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;J)I
    .locals 1
    .parameter "context"
    .parameter
    .parameter "provider"
    .parameter "playlistId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)I"
        }
    .end annotation

    .prologue
    .line 309
    .local p1, onlineIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p0, p3, p4}, Lcom/miui/player/provider/FavoriteCache;->isFavoritePlaylistId(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-static {p0, p1}, Lcom/miui/player/provider/FavoriteCache;->onlineRemove(Landroid/content/Context;Ljava/util/Collection;)I

    .line 313
    :cond_0
    invoke-static {p0, p3, p4, p1, p2}, Lcom/miui/player/provider/PlayerProviderUtils;->removeOnlineMembersFromDB(Landroid/content/Context;JLjava/util/Collection;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
