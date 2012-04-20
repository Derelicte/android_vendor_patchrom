.class public Lcom/miui/player/service/HistoryManager;
.super Ljava/lang/Object;
.source "HistoryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/service/HistoryManager$EntryKey;
    }
.end annotation


# static fields
.field static ENTRY_KEYS:[Lcom/miui/player/service/HistoryManager$EntryKey;

.field public static final LAST_HISTORY_SIZE:I

.field private static sHistoryPlaylistId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/player/service/HistoryManager$EntryKey;

    new-instance v1, Lcom/miui/player/service/HistoryManager$EntryKey;

    invoke-direct {v1, v2}, Lcom/miui/player/service/HistoryManager$EntryKey;-><init>(I)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/miui/player/service/HistoryManager$EntryKey;

    invoke-direct {v1, v3}, Lcom/miui/player/service/HistoryManager$EntryKey;-><init>(I)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/miui/player/service/HistoryManager$EntryKey;

    invoke-direct {v1, v4}, Lcom/miui/player/service/HistoryManager$EntryKey;-><init>(I)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/miui/player/service/HistoryManager$EntryKey;

    invoke-direct {v1, v5}, Lcom/miui/player/service/HistoryManager$EntryKey;-><init>(I)V

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/player/service/HistoryManager;->ENTRY_KEYS:[Lcom/miui/player/service/HistoryManager$EntryKey;

    .line 57
    sget-object v0, Lcom/miui/player/service/HistoryManager;->ENTRY_KEYS:[Lcom/miui/player/service/HistoryManager$EntryKey;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/miui/player/service/HistoryManager;->LAST_HISTORY_SIZE:I

    .line 249
    const/4 v0, -0x1

    sput v0, Lcom/miui/player/service/HistoryManager;->sHistoryPlaylistId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static isEmpty(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 225
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getQueueSize()I

    move-result v6

    if-lez v6, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v5

    .line 228
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 229
    .local v4, sp:Landroid/content/SharedPreferences;
    sget-object v0, Lcom/miui/player/service/HistoryManager;->ENTRY_KEYS:[Lcom/miui/player/service/HistoryManager$EntryKey;

    .local v0, arr$:[Lcom/miui/player/service/HistoryManager$EntryKey;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 230
    .local v2, key:Lcom/miui/player/service/HistoryManager$EntryKey;
    iget-object v6, v2, Lcom/miui/player/service/HistoryManager$EntryKey;->mQueue:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 235
    .end local v2           #key:Lcom/miui/player/service/HistoryManager$EntryKey;
    :cond_2
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static load(Landroid/content/SharedPreferences;I)[J
    .locals 10
    .parameter "sp"
    .parameter "index"

    .prologue
    .line 66
    sget-object v8, Lcom/miui/player/service/HistoryManager;->ENTRY_KEYS:[Lcom/miui/player/service/HistoryManager$EntryKey;

    aget-object v8, v8, p1

    iget-object v8, v8, Lcom/miui/player/service/HistoryManager$EntryKey;->mQueue:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {p0, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, q:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ge v8, v9, :cond_2

    .line 68
    :cond_0
    sget-object v7, Lcom/miui/player/util/Utils;->LONG_EMPTY_ARRAY:[J

    .line 79
    :cond_1
    return-object v7

    .line 71
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v0, a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v8, -0x1

    invoke-static {v0, v4, v8}, Lcom/xiaomi/common/util/CollectionHelper;->decodeFromString(Ljava/util/Collection;Ljava/lang/String;I)V

    .line 73
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v7, v8, [J

    .line 74
    .local v7, values:[J
    const/4 v1, 0x0

    .line 75
    .local v1, i:I
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 76
    .local v5, v:J
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    aput-wide v5, v7, v1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0
.end method

.method private static loadAllHistoryId(Landroid/content/SharedPreferences;)Ljava/util/List;
    .locals 6
    .parameter "sp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    sget-object v4, Lcom/miui/player/service/HistoryManager;->ENTRY_KEYS:[Lcom/miui/player/service/HistoryManager$EntryKey;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 85
    sget-object v4, Lcom/miui/player/service/HistoryManager;->ENTRY_KEYS:[Lcom/miui/player/service/HistoryManager$EntryKey;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/miui/player/service/HistoryManager$EntryKey;->mQueue:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, q:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v0, a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, -0x1

    invoke-static {v0, v3, v4}, Lcom/xiaomi/common/util/CollectionHelper;->decodeFromString(Ljava/util/Collection;Ljava/lang/String;I)V

    .line 89
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 84
    .end local v0           #a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v3           #q:Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public static loadAudioId(Landroid/content/SharedPreferences;I)J
    .locals 3
    .parameter "sp"
    .parameter "index"

    .prologue
    .line 113
    sget-object v0, Lcom/miui/player/service/HistoryManager;->ENTRY_KEYS:[Lcom/miui/player/service/HistoryManager$EntryKey;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/miui/player/service/HistoryManager$EntryKey;->mAudioId:Ljava/lang/String;

    const-wide/16 v1, -0x1

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static loadPostion(Landroid/content/SharedPreferences;I)I
    .locals 2
    .parameter "sp"
    .parameter "index"

    .prologue
    .line 103
    sget-object v0, Lcom/miui/player/service/HistoryManager;->ENTRY_KEYS:[Lcom/miui/player/service/HistoryManager$EntryKey;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/miui/player/service/HistoryManager$EntryKey;->mPosition:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static moveHistoryToNowplayingOnline(Landroid/content/Context;Ljava/util/List;)Z
    .locals 11
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, audioIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 189
    const/4 v8, 0x0

    .line 190
    .local v8, isAllHistory:Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio_id IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/player/util/SqlUtils;->concatAsSet(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "playlist_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/miui/player/service/HistoryManager;->queryHistoryPlaylistId(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, where:Ljava/lang/String;
    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap;->EXTERNAL_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v10

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 196
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 198
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne v0, v1, :cond_1

    move v8, v9

    .line 200
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 204
    :cond_0
    if-nez v8, :cond_2

    .line 212
    :goto_1
    return v10

    :cond_1
    move v8, v10

    .line 198
    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 208
    :cond_2
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 209
    .local v7, cv:Landroid/content/ContentValues;
    const-string v0, "playlist_id"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 210
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap;->EXTERNAL_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v7, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v10, v9

    .line 212
    goto :goto_1
.end method

.method public static moveNowplayingOnlineToHistory(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 184
    invoke-static {p0}, Lcom/miui/player/service/HistoryManager;->queryHistoryPlaylistId(Landroid/content/Context;)I

    move-result v0

    .line 185
    .local v0, plid:I
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/miui/player/service/HistoryManager;->updatePlaylistId(Landroid/content/Context;II)I

    .line 186
    return-void
.end method

.method private static queryHistoryPlaylistId(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 252
    sget v1, Lcom/miui/player/service/HistoryManager;->sHistoryPlaylistId:I

    if-gez v1, :cond_1

    .line 253
    const-string v2, "$$history"

    monitor-enter v2

    .line 254
    :try_start_0
    sget v1, Lcom/miui/player/service/HistoryManager;->sHistoryPlaylistId:I

    if-gez v1, :cond_0

    .line 255
    const-string v1, "$$history"

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {p0, v1, v3, v4}, Lcom/miui/player/provider/PlaylistHelper;->createPlaylist(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/net/Uri;

    move-result-object v0

    .line 257
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 258
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    long-to-int v1, v3

    sput v1, Lcom/miui/player/service/HistoryManager;->sHistoryPlaylistId:I

    .line 261
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :cond_1
    sget v1, Lcom/miui/player/service/HistoryManager;->sHistoryPlaylistId:I

    return v1

    .line 261
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static removeOldestHistory(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 5
    .parameter "context"
    .parameter "sp"

    .prologue
    .line 216
    invoke-static {p1}, Lcom/miui/player/service/HistoryManager;->loadAllHistoryId(Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v0

    .line 217
    .local v0, removed:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio_id NOT IN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/miui/player/util/SqlUtils;->concatAsSet(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "playlist_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/miui/player/service/HistoryManager;->queryHistoryPlaylistId(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, where:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap;->EXTERNAL_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 222
    return-void
.end method

.method public static save(Landroid/content/SharedPreferences$Editor;I[JI)V
    .locals 2
    .parameter "editor"
    .parameter "index"
    .parameter "values"
    .parameter "len"

    .prologue
    .line 124
    if-eqz p2, :cond_0

    array-length v0, p2

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 125
    :cond_0
    sget-object v0, Lcom/miui/player/service/HistoryManager;->ENTRY_KEYS:[Lcom/miui/player/service/HistoryManager$EntryKey;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/miui/player/service/HistoryManager$EntryKey;->mQueue:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_1
    sget-object v0, Lcom/miui/player/service/HistoryManager;->ENTRY_KEYS:[Lcom/miui/player/service/HistoryManager$EntryKey;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/miui/player/service/HistoryManager$EntryKey;->mQueue:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/xiaomi/common/util/CollectionHelper;->compressToString([JI)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static savePosition(Landroid/content/SharedPreferences$Editor;IJI)V
    .locals 1
    .parameter "editor"
    .parameter "index"
    .parameter "audioId"
    .parameter "position"

    .prologue
    .line 139
    if-ltz p4, :cond_0

    .line 140
    sget-object v0, Lcom/miui/player/service/HistoryManager;->ENTRY_KEYS:[Lcom/miui/player/service/HistoryManager$EntryKey;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/miui/player/service/HistoryManager$EntryKey;->mPosition:Ljava/lang/String;

    invoke-interface {p0, v0, p4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 141
    sget-object v0, Lcom/miui/player/service/HistoryManager;->ENTRY_KEYS:[Lcom/miui/player/service/HistoryManager$EntryKey;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/miui/player/service/HistoryManager$EntryKey;->mAudioId:Ljava/lang/String;

    invoke-interface {p0, v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 146
    :goto_0
    return-void

    .line 143
    :cond_0
    sget-object v0, Lcom/miui/player/service/HistoryManager;->ENTRY_KEYS:[Lcom/miui/player/service/HistoryManager$EntryKey;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/miui/player/service/HistoryManager$EntryKey;->mPosition:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 144
    sget-object v0, Lcom/miui/player/service/HistoryManager;->ENTRY_KEYS:[Lcom/miui/player/service/HistoryManager$EntryKey;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/miui/player/service/HistoryManager$EntryKey;->mAudioId:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static shift(Landroid/content/Context;[JIJLandroid/content/SharedPreferences;I)Z
    .locals 8
    .parameter "context"
    .parameter "queue"
    .parameter "pos"
    .parameter "audioId"
    .parameter "sp"
    .parameter "replaceFrom"

    .prologue
    const/4 v3, 0x1

    .line 156
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 157
    :cond_0
    const/4 v3, 0x0

    .line 180
    :goto_0
    return v3

    .line 160
    :cond_1
    invoke-interface {p5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 162
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    :goto_1
    if-lez p6, :cond_2

    .line 163
    sget-object v4, Lcom/miui/player/service/HistoryManager;->ENTRY_KEYS:[Lcom/miui/player/service/HistoryManager$EntryKey;

    aget-object v1, v4, p6

    .line 164
    .local v1, key:Lcom/miui/player/service/HistoryManager$EntryKey;
    sget-object v4, Lcom/miui/player/service/HistoryManager;->ENTRY_KEYS:[Lcom/miui/player/service/HistoryManager$EntryKey;

    add-int/lit8 v5, p6, -0x1

    aget-object v2, v4, v5

    .line 165
    .local v2, newer:Lcom/miui/player/service/HistoryManager$EntryKey;
    iget-object v4, v1, Lcom/miui/player/service/HistoryManager$EntryKey;->mPosition:Ljava/lang/String;

    iget-object v5, v2, Lcom/miui/player/service/HistoryManager$EntryKey;->mPosition:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-interface {p5, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 166
    iget-object v4, v1, Lcom/miui/player/service/HistoryManager$EntryKey;->mAudioId:Ljava/lang/String;

    iget-object v5, v2, Lcom/miui/player/service/HistoryManager$EntryKey;->mAudioId:Ljava/lang/String;

    const-wide/16 v6, -0x1

    invoke-interface {p5, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 167
    iget-object v4, v1, Lcom/miui/player/service/HistoryManager$EntryKey;->mQueue:Ljava/lang/String;

    iget-object v5, v2, Lcom/miui/player/service/HistoryManager$EntryKey;->mQueue:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {p5, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 168
    add-int/lit8 p6, p6, -0x1

    .line 169
    goto :goto_1

    .line 172
    .end local v1           #key:Lcom/miui/player/service/HistoryManager$EntryKey;
    .end local v2           #newer:Lcom/miui/player/service/HistoryManager$EntryKey;
    :cond_2
    array-length v4, p1

    invoke-static {v0, v3, p1, v4}, Lcom/miui/player/service/HistoryManager;->save(Landroid/content/SharedPreferences$Editor;I[JI)V

    .line 173
    invoke-static {v0, v3, p3, p4, p2}, Lcom/miui/player/service/HistoryManager;->savePosition(Landroid/content/SharedPreferences$Editor;IJI)V

    .line 175
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 178
    invoke-static {p0, p5}, Lcom/miui/player/service/HistoryManager;->removeOldestHistory(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method

.method private static updatePlaylistId(Landroid/content/Context;II)I
    .locals 8
    .parameter "context"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 239
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 240
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "playlist_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap;->EXTERNAL_URI:Landroid/net/Uri;

    const-string v4, "playlist_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 246
    .local v0, count:I
    return v0
.end method
