.class public Lcom/miui/player/ui/menu/TrackBrowserMenu;
.super Lcom/miui/player/ui/menu/BaseTrackBrowserMenu;
.source "TrackBrowserMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/menu/TrackBrowserMenu$ContextInfoProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/player/ui/menu/BaseTrackBrowserMenu",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

.field private final mKeyColumn:Ljava/lang/String;

.field private mKeyIdx:I

.field private final mProvider:Lcom/miui/player/ui/menu/TrackBrowserMenu$ContextInfoProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/miui/player/ui/menu/TrackBrowserMenu;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/ui/menu/TrackBrowserMenu;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/miui/player/ui/base/TemplateListActivity;Lcom/miui/player/ui/menu/TrackBrowserMenu$ContextInfoProvider;ILjava/lang/String;)V
    .locals 1
    .parameter "a"
    .parameter "provider"
    .parameter "msgId"
    .parameter "keyColumn"

    .prologue
    .line 38
    invoke-direct {p0, p1, p3}, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu;-><init>(Lcom/miui/player/ui/base/TemplateListActivity;I)V

    .line 376
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/player/ui/menu/TrackBrowserMenu;->mKeyIdx:I

    .line 39
    iput-object p1, p0, Lcom/miui/player/ui/menu/TrackBrowserMenu;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    .line 40
    iput-object p2, p0, Lcom/miui/player/ui/menu/TrackBrowserMenu;->mProvider:Lcom/miui/player/ui/menu/TrackBrowserMenu$ContextInfoProvider;

    .line 41
    iput-object p4, p0, Lcom/miui/player/ui/menu/TrackBrowserMenu;->mKeyColumn:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private collectTracksEditInfo(Landroid/database/Cursor;Lcom/miui/player/meta/MediaFileManager$MediaEditInfoFactory;[JI)[Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;
    .locals 16
    .parameter "c"
    .parameter "factory"
    .parameter "sortedOperands"
    .parameter "count"

    .prologue
    .line 279
    invoke-static/range {p1 .. p1}, Lcom/miui/player/provider/PlayerProviderUtils;->guessAudioIdColumnIndex(Landroid/database/Cursor;)I

    move-result v7

    .line 280
    .local v7, idIdx:I
    const-string v14, "_data"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 281
    .local v9, pathIdx:I
    const-string v14, "title"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 282
    .local v12, titleIdx:I
    const-string v14, "artist"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 283
    .local v4, artistIdx:I
    const-string v14, "album"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 285
    .local v2, albumIdx:I
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    .line 287
    .local v10, position:I
    const/4 v5, 0x0

    .line 288
    .local v5, i:I
    move/from16 v0, p4

    new-array v11, v0, [Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;

    .line 289
    .local v11, ret:[Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move v6, v5

    .end local v5           #i:I
    .local v6, i:I
    :goto_0
    move/from16 v0, p4

    if-ge v6, v0, :cond_1

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v14

    if-nez v14, :cond_1

    .line 290
    if-eqz p3, :cond_0

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move-object/from16 v0, p3

    invoke-static {v0, v14, v15}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v14

    if-ltz v14, :cond_2

    .line 291
    :cond_0
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 292
    .local v8, path:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 293
    .local v13, tr:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, ar:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, al:Ljava/lang/String;
    add-int/lit8 v5, v6, 0x1

    .end local v6           #i:I
    .restart local v5       #i:I
    move-object/from16 v0, p2

    invoke-interface {v0, v8, v13, v3, v1}, Lcom/miui/player/meta/MediaFileManager$MediaEditInfoFactory;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;

    move-result-object v14

    aput-object v14, v11, v6

    .line 289
    .end local v1           #al:Ljava/lang/String;
    .end local v3           #ar:Ljava/lang/String;
    .end local v8           #path:Ljava/lang/String;
    .end local v13           #tr:Ljava/lang/String;
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move v6, v5

    .end local v5           #i:I
    .restart local v6       #i:I
    goto :goto_0

    .line 299
    :cond_1
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 300
    return-object v11

    :cond_2
    move v5, v6

    .end local v6           #i:I
    .restart local v5       #i:I
    goto :goto_1
.end method


# virtual methods
.method protected addToPlaylist(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;J)V
    .locals 8
    .parameter "ctx"
    .parameter "playlistId"

    .prologue
    .line 127
    iget-object v6, p1, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mCursor:Landroid/database/Cursor;

    .line 128
    .local v6, cursor:Landroid/database/Cursor;
    invoke-static {v6}, Lcom/miui/player/provider/PlayerProviderUtils;->guessAudioIdColumnIndex(Landroid/database/Cursor;)I

    move-result v7

    .line 129
    .local v7, idIdx:I
    invoke-static {v6, v7}, Lcom/miui/player/util/SqlUtils;->getIdsForCursor(Landroid/database/Cursor;I)[J

    move-result-object v1

    .line 130
    .local v1, list:[J
    if-eqz v1, :cond_0

    array-length v0, v1

    if-lez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/miui/player/ui/menu/TrackBrowserMenu;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-wide v2, p2

    invoke-static/range {v0 .. v5}, Lcom/miui/player/provider/PlaylistHelper;->addToPlaylistAsync(Landroid/content/Context;[JJZLjava/lang/Runnable;)V

    .line 133
    :cond_0
    return-void
.end method

.method protected addToPlaylist(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;JLjava/util/Set;)V
    .locals 3
    .parameter "ctx"
    .parameter "playlistId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;",
            "J",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p4, selected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {p0, p1, p4}, Lcom/miui/player/ui/menu/TrackBrowserMenu;->getAudioIdArr(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;Ljava/util/Set;)[J

    move-result-object v0

    .line 138
    .local v0, list:[J
    iget-object v1, p0, Lcom/miui/player/ui/menu/TrackBrowserMenu;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, p2, p3, v2}, Lcom/miui/player/provider/PlaylistHelper;->addToPlaylist(Landroid/content/Context;[JJZ)I

    .line 139
    return-void
.end method

.method protected collectTracksEditInfo(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$MenuTrace;Lcom/miui/player/meta/MediaFileManager$MediaEditInfoFactory;Ljava/util/Set;)[Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;
    .locals 4
    .parameter "ctx"
    .parameter "trace"
    .parameter "factory"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;",
            "Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$MenuTrace;",
            "Lcom/miui/player/meta/MediaFileManager$MediaEditInfoFactory;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)[",
            "Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;"
        }
    .end annotation

    .prologue
    .line 144
    .local p4, selected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .line 145
    .local v1, sortedOperands:[J
    const/4 v0, 0x0

    .line 146
    .local v0, count:I
    iget v2, p2, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$MenuTrace;->mType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 147
    iget-object v2, p1, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 155
    :cond_0
    :goto_0
    iget-object v2, p1, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v2, p3, v1, v0}, Lcom/miui/player/ui/menu/TrackBrowserMenu;->collectTracksEditInfo(Landroid/database/Cursor;Lcom/miui/player/meta/MediaFileManager$MediaEditInfoFactory;[JI)[Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;

    move-result-object v2

    return-object v2

    .line 149
    :cond_1
    invoke-virtual {p0, p1, p4}, Lcom/miui/player/ui/menu/TrackBrowserMenu;->getAudioIdArr(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;Ljava/util/Set;)[J

    move-result-object v1

    .line 150
    if-eqz v1, :cond_0

    .line 151
    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    .line 152
    array-length v0, v1

    goto :goto_0
.end method

.method protected findLocalAudioId(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;Ljava/util/Set;)Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;
    .locals 12
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;"
        }
    .end annotation

    .prologue
    .line 160
    .local p2, selected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 161
    .local v4, memberId:J
    const/4 v3, 0x0

    .line 163
    .local v3, info:Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;
    iget-object v1, p1, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mCursor:Landroid/database/Cursor;

    .line 164
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    .line 165
    .local v6, oldPos:I
    const-string v7, "_id"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 167
    .local v2, idIdx:I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_0

    .line 168
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    cmp-long v7, v7, v4

    if-nez v7, :cond_1

    .line 169
    new-instance v3, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;

    .end local v3           #info:Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;
    invoke-direct {v3, v4, v5}, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;-><init>(J)V

    .line 170
    .restart local v3       #info:Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;
    invoke-static {v1}, Lcom/miui/player/provider/PlayerProviderUtils;->guessAudioIdColumnIndex(Landroid/database/Cursor;)I

    move-result v0

    .line 171
    .local v0, audioIdx:I
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v3, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;->mAudioId:J

    .line 172
    const-string v7, "title"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;->mTitle:Ljava/lang/String;

    .line 173
    const-string v7, "album"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;->mAlbum:Ljava/lang/String;

    .line 174
    const-string v7, "artist"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;->mArtist:Ljava/lang/String;

    .line 175
    const-string v7, "_data"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;->mData:Ljava/lang/String;

    .line 176
    iget-object v7, p0, Lcom/miui/player/ui/menu/TrackBrowserMenu;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    iget-object v8, v3, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;->mTitle:Ljava/lang/String;

    iget-object v9, v3, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;->mArtist:Ljava/lang/String;

    iget-wide v10, v3, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;->mAudioId:J

    invoke-static {v7, v8, v9, v10, v11}, Lcom/miui/player/provider/PlayerProviderUtils;->getDownloadedAudioId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v3, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$TrackRecordInfo;->mLocalAudioId:J

    .line 182
    .end local v0           #audioIdx:I
    :cond_0
    invoke-interface {v1, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 183
    return-object v3

    .line 167
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method

.method protected getAudioIdArr(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;Ljava/util/Set;)[J
    .locals 15
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 195
    .local p2, selected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mCursor:Landroid/database/Cursor;

    .line 196
    .local v4, cursor:Landroid/database/Cursor;
    if-eqz v4, :cond_0

    if-nez p2, :cond_2

    .line 197
    :cond_0
    const/4 v12, 0x0

    .line 217
    :cond_1
    :goto_0
    return-object v12

    .line 200
    :cond_2
    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    .line 201
    .local v11, oldPos:I
    const-string v13, "_id"

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 202
    .local v8, idx:I
    invoke-static {v4}, Lcom/miui/player/provider/PlayerProviderUtils;->guessAudioIdColumnIndex(Landroid/database/Cursor;)I

    move-result v3

    .line 203
    .local v3, audioIdIdx:I
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->size()I

    move-result v13

    new-array v12, v13, [J

    .line 204
    .local v12, ret:[J
    const/4 v6, 0x0

    .line 206
    .local v6, i:I
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->size()I

    move-result v14

    if-ne v13, v14, :cond_5

    const/4 v5, 0x1

    .line 207
    .local v5, full:Z
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v13

    if-nez v13, :cond_6

    array-length v13, v12

    if-ge v6, v13, :cond_6

    .line 208
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 209
    .local v9, memberId:J
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 210
    .local v1, audioId:J
    if-nez v5, :cond_3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 211
    :cond_3
    add-int/lit8 v7, v6, 0x1

    .end local v6           #i:I
    .local v7, i:I
    aput-wide v1, v12, v6

    move v6, v7

    .line 207
    .end local v7           #i:I
    .restart local v6       #i:I
    :cond_4
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 206
    .end local v1           #audioId:J
    .end local v5           #full:Z
    .end local v9           #memberId:J
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 215
    .restart local v5       #full:Z
    :cond_6
    invoke-interface {v4, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 217
    array-length v13, v12

    if-ge v6, v13, :cond_1

    invoke-static {v12, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v12

    goto :goto_0
.end method

.method protected getContextInfo()Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/player/ui/menu/TrackBrowserMenu;->mProvider:Lcom/miui/player/ui/menu/TrackBrowserMenu$ContextInfoProvider;

    invoke-interface {v0}, Lcom/miui/player/ui/menu/TrackBrowserMenu$ContextInfoProvider;->getContextInfo()Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getContextInfo()Lcom/miui/player/ui/menu/common/MenuContextInfo;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/miui/player/ui/menu/TrackBrowserMenu;->getContextInfo()Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getKeyFromItem(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 3
    .parameter "obj"

    .prologue
    .line 379
    instance-of v1, p1, Landroid/database/Cursor;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 380
    check-cast v0, Landroid/database/Cursor;

    .line 381
    .local v0, c:Landroid/database/Cursor;
    iget v1, p0, Lcom/miui/player/ui/menu/TrackBrowserMenu;->mKeyIdx:I

    if-gez v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/miui/player/ui/menu/TrackBrowserMenu;->mKeyColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/player/ui/menu/TrackBrowserMenu;->mKeyIdx:I

    .line 384
    :cond_0
    iget v1, p0, Lcom/miui/player/ui/menu/TrackBrowserMenu;->mKeyIdx:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 387
    .end local v0           #c:Landroid/database/Cursor;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getKeyFromItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/menu/TrackBrowserMenu;->getKeyFromItem(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected getMenuTrace(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;Ljava/util/Set;)Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$MenuTrace;
    .locals 25
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$MenuTrace;"
        }
    .end annotation

    .prologue
    .line 51
    .local p2, selected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mCursor:Landroid/database/Cursor;

    .line 52
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v17

    .line 54
    .local v17, oldPos:I
    const/4 v8, 0x0

    .line 55
    .local v8, hasLocal:Z
    const/4 v9, 0x0

    .line 56
    .local v9, hasOnline:Z
    const/4 v10, 0x0

    .line 58
    .local v10, hasUnfavorite:Z
    const-string v24, "_id"

    move-object/from16 v0, v24

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 59
    .local v14, memberIdIdx:I
    const-string v24, "title"

    move-object/from16 v0, v24

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 60
    .local v21, titleIdx:I
    const-string v24, "artist"

    move-object/from16 v0, v24

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 61
    .local v3, artistIdx:I
    const-string v24, "audio_id"

    move-object/from16 v0, v24

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 62
    .local v6, audioIdIdx:I
    const-string v24, "online_id"

    move-object/from16 v0, v24

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 64
    .local v19, onlineIdIdx:I
    const-string v24, "mp3"

    invoke-static/range {v24 .. v24}, Lcom/miui/player/meta/MetaManager;->getMetaDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    .line 65
    .local v15, musicDir:Ljava/lang/String;
    if-nez v15, :cond_0

    .line 66
    const/16 v23, 0x0

    .line 122
    :goto_0
    return-object v23

    .line 69
    :cond_0
    invoke-static {}, Lcom/miui/player/meta/MetaManager;->getAllSortedDownloadedMP3Names()[Ljava/lang/String;

    move-result-object v20

    .line 71
    .local v20, sortedFileNames:[Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v24

    if-nez v24, :cond_a

    .line 72
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 73
    .local v12, memberId:J
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2

    .line 71
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 77
    :cond_2
    move-wide v4, v12

    .line 78
    .local v4, audioId:J
    if-ltz v6, :cond_3

    .line 79
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 82
    :cond_3
    if-eqz v8, :cond_4

    if-nez v9, :cond_7

    .line 83
    :cond_4
    const/4 v11, 0x1

    .line 84
    .local v11, isLocal:Z
    invoke-static {v4, v5}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 85
    move/from16 v0, v21

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 86
    .local v22, tr:Ljava/lang/String;
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, ar:Ljava/lang/String;
    const-string v24, "mp3"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v2, v1}, Lcom/miui/player/meta/MetaManager;->getMetaFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 88
    .local v16, name:Ljava/lang/String;
    if-eqz v16, :cond_b

    if-eqz v20, :cond_b

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v24

    if-ltz v24, :cond_b

    const/4 v11, 0x1

    .line 91
    .end local v2           #ar:Ljava/lang/String;
    .end local v16           #name:Ljava/lang/String;
    .end local v22           #tr:Ljava/lang/String;
    :cond_5
    :goto_2
    if-nez v8, :cond_6

    .line 92
    move v8, v11

    .line 95
    :cond_6
    if-nez v9, :cond_7

    .line 96
    if-nez v11, :cond_c

    const/4 v9, 0x1

    .line 100
    .end local v11           #isLocal:Z
    :cond_7
    :goto_3
    if-nez v10, :cond_9

    .line 101
    const/16 v18, 0x0

    .line 102
    .local v18, onlineId:Ljava/lang/String;
    if-ltz v19, :cond_8

    .line 103
    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 106
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/menu/TrackBrowserMenu;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-static {v0, v4, v5, v1}, Lcom/miui/player/provider/FavoriteCache;->contains(Landroid/content/Context;JLjava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_d

    const/4 v10, 0x1

    .line 109
    .end local v18           #onlineId:Ljava/lang/String;
    :cond_9
    :goto_4
    if-eqz v8, :cond_1

    if-eqz v9, :cond_1

    if-eqz v10, :cond_1

    .line 114
    .end local v4           #audioId:J
    .end local v12           #memberId:J
    :cond_a
    new-instance v23, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$MenuTrace;

    invoke-direct/range {v23 .. v23}, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$MenuTrace;-><init>()V

    .line 115
    .local v23, trace:Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$MenuTrace;
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->size()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$MenuTrace;->mSize:I

    .line 116
    move-object/from16 v0, v23

    iput-boolean v8, v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$MenuTrace;->mHasLocal:Z

    .line 117
    move-object/from16 v0, v23

    iput-boolean v9, v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$MenuTrace;->mHasOnline:Z

    .line 118
    move-object/from16 v0, v23

    iput-boolean v10, v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$MenuTrace;->mHasUnfavorite:Z

    .line 119
    const/16 v24, 0x3

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$MenuTrace;->mType:I

    .line 121
    move/from16 v0, v17

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto/16 :goto_0

    .line 88
    .end local v23           #trace:Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$MenuTrace;
    .restart local v2       #ar:Ljava/lang/String;
    .restart local v4       #audioId:J
    .restart local v11       #isLocal:Z
    .restart local v12       #memberId:J
    .restart local v16       #name:Ljava/lang/String;
    .restart local v22       #tr:Ljava/lang/String;
    :cond_b
    const/4 v11, 0x0

    goto :goto_2

    .line 96
    .end local v2           #ar:Ljava/lang/String;
    .end local v16           #name:Ljava/lang/String;
    .end local v22           #tr:Ljava/lang/String;
    :cond_c
    const/4 v9, 0x0

    goto :goto_3

    .line 106
    .end local v11           #isLocal:Z
    .restart local v18       #onlineId:Ljava/lang/String;
    :cond_d
    const/4 v10, 0x0

    goto :goto_4
.end method

.method protected getOnlineAudioLocalPath(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;Ljava/util/Set;)Ljava/util/ArrayList;
    .locals 12
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    .local p2, selected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v5, p1, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mCursor:Landroid/database/Cursor;

    .line 223
    .local v5, cursor:Landroid/database/Cursor;
    if-eqz v5, :cond_0

    if-nez p2, :cond_1

    .line 224
    :cond_0
    const/4 v7, 0x0

    .line 246
    :goto_0
    return-object v7

    .line 227
    :cond_1
    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    .line 228
    .local v6, oldPos:I
    invoke-static {v5}, Lcom/miui/player/provider/PlayerProviderUtils;->guessAudioIdColumnIndex(Landroid/database/Cursor;)I

    move-result v4

    .line 229
    .local v4, audioIdIdx:I
    const-string v11, "title"

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 230
    .local v9, titleIdx:I
    const-string v11, "artist"

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 232
    .local v1, artistIdx:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v7, onlinePath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    if-nez v11, :cond_3

    .line 234
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 235
    .local v2, audioId:J
    invoke-static {v2, v3}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 236
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 237
    .local v10, tr:Ljava/lang/String;
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, ar:Ljava/lang/String;
    const-string v11, "mp3"

    invoke-static {v10, v0, v11}, Lcom/miui/player/meta/MetaManager;->getMetaFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 239
    .local v8, path:Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 240
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .end local v0           #ar:Ljava/lang/String;
    .end local v8           #path:Ljava/lang/String;
    .end local v10           #tr:Ljava/lang/String;
    :cond_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 244
    .end local v2           #audioId:J
    :cond_3
    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0
.end method

.method protected getSelectedSongList(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;Ljava/util/Set;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;
    .locals 30
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;"
        }
    .end annotation

    .prologue
    .line 305
    .local p2, selected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mCursor:Landroid/database/Cursor;

    .line 306
    .local v15, cursor:Landroid/database/Cursor;
    invoke-interface {v15}, Landroid/database/Cursor;->getPosition()I

    move-result v22

    .line 308
    .local v22, oldPos:I
    const-string v2, "_id"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 309
    .local v20, memberIdIdx:I
    const-string v2, "title"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 310
    .local v27, titleIdx:I
    const-string v2, "artist"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 311
    .local v10, artistIdx:I
    const-string v2, "album"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 312
    .local v8, albumIdx:I
    const-string v2, "audio_id"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 313
    .local v13, audioIdIdx:I
    const-string v2, "online_id"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 315
    .local v23, onlineIdIdx:I
    const/16 v24, 0x0

    .line 316
    .local v24, provider:Ljava/lang/String;
    invoke-static {}, Lcom/miui/player/meta/MetaManager;->getAllSortedDownloadedMP3Names()[Ljava/lang/String;

    move-result-object v26

    .line 317
    .local v26, sortedFileNames:[Ljava/lang/String;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .local v17, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;>;"
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_6

    .line 319
    move/from16 v0, v20

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 320
    .local v18, memberId:J
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 318
    :cond_0
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 324
    :cond_1
    move-wide/from16 v11, v18

    .line 325
    .local v11, audioId:J
    if-ltz v13, :cond_2

    .line 326
    invoke-interface {v15, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 329
    :cond_2
    invoke-static {v11, v12}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 330
    move/from16 v0, v27

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 331
    .local v28, tr:Ljava/lang/String;
    invoke-interface {v15, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 332
    .local v9, ar:Ljava/lang/String;
    const-string v2, "mp3"

    move-object/from16 v0, v28

    invoke-static {v0, v9, v2}, Lcom/miui/player/meta/MetaManager;->getMetaFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 333
    .local v21, name:Ljava/lang/String;
    if-eqz v21, :cond_4

    if-nez v26, :cond_3

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_4

    .line 334
    :cond_3
    new-instance v16, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    invoke-direct/range {v16 .. v16}, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;-><init>()V

    .line 335
    .local v16, item:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    move/from16 v0, v23

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Id:Ljava/lang/String;

    .line 336
    move-object/from16 v0, v28

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Name:Ljava/lang/String;

    .line 337
    move-object/from16 v0, v16

    iput-object v9, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Artist:Ljava/lang/String;

    .line 338
    invoke-interface {v15, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Album:Ljava/lang/String;

    .line 339
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    .end local v16           #item:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    :cond_4
    if-nez v24, :cond_0

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/player/ui/menu/TrackBrowserMenu;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    sget-object v3, Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap;->EXTERNAL_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "provider_id"

    aput-object v6, v4, v5

    const-string v5, "audio_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v6, v7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 349
    .local v14, c:Landroid/database/Cursor;
    if-eqz v14, :cond_0

    .line 351
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 352
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v24

    .line 355
    :cond_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v2

    .line 363
    .end local v9           #ar:Ljava/lang/String;
    .end local v11           #audioId:J
    .end local v14           #c:Landroid/database/Cursor;
    .end local v18           #memberId:J
    .end local v21           #name:Ljava/lang/String;
    .end local v28           #tr:Ljava/lang/String;
    :cond_6
    const/16 v25, 0x0

    .line 364
    .local v25, songList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz v24, :cond_7

    .line 365
    new-instance v25, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    .end local v25           #songList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;
    invoke-direct/range {v25 .. v25}, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;-><init>()V

    .line 366
    .restart local v25       #songList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;->Provider:Ljava/lang/String;

    .line 367
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;->Songs:Ljava/util/ArrayList;

    .line 372
    :goto_2
    move/from16 v0, v22

    invoke-interface {v15, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 373
    return-object v25

    .line 369
    :cond_7
    sget-object v2, Lcom/miui/player/ui/menu/TrackBrowserMenu;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nothing to be downloaded. item count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " provider="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected playAll(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;Ljava/util/Set;)V
    .locals 3
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p2, selected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {p0, p1, p2}, Lcom/miui/player/ui/menu/TrackBrowserMenu;->getAudioIdArr(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;Ljava/util/Set;)[J

    move-result-object v0

    .line 266
    .local v0, list:[J
    iget-object v1, p0, Lcom/miui/player/ui/menu/TrackBrowserMenu;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/miui/player/service/ServiceHelper;->playAll(Landroid/content/Context;[JI)V

    .line 267
    return-void
.end method

.method protected queue(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;)V
    .locals 4
    .parameter "ctx"

    .prologue
    .line 251
    iget-object v0, p1, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mCursor:Landroid/database/Cursor;

    .line 252
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/miui/player/provider/PlayerProviderUtils;->guessAudioIdColumnIndex(Landroid/database/Cursor;)I

    move-result v1

    .line 253
    .local v1, idIdx:I
    invoke-static {v0, v1}, Lcom/miui/player/util/SqlUtils;->getIdsForCursor(Landroid/database/Cursor;I)[J

    move-result-object v2

    .line 254
    .local v2, list:[J
    iget-object v3, p0, Lcom/miui/player/ui/menu/TrackBrowserMenu;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-static {v3, v2}, Lcom/miui/player/service/ServiceHelper;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    .line 255
    return-void
.end method

.method protected queue(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;Ljava/util/Set;I)V
    .locals 2
    .parameter "ctx"
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p2, selected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {p0, p1, p2}, Lcom/miui/player/ui/menu/TrackBrowserMenu;->getAudioIdArr(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;Ljava/util/Set;)[J

    move-result-object v0

    .line 260
    .local v0, list:[J
    iget-object v1, p0, Lcom/miui/player/ui/menu/TrackBrowserMenu;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-static {v1, v0}, Lcom/miui/player/service/ServiceHelper;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    .line 261
    return-void
.end method

.method protected removeFromPlaylist(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;JLjava/util/Set;)V
    .locals 2
    .parameter "ctx"
    .parameter "playlistId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;",
            "J",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p4, selected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {p0, p1, p4}, Lcom/miui/player/ui/menu/TrackBrowserMenu;->getAudioIdArr(Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;Ljava/util/Set;)[J

    move-result-object v0

    .line 272
    .local v0, audioIds:[J
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/miui/player/ui/menu/TrackBrowserMenu;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-static {v1, v0, p2, p3}, Lcom/miui/player/provider/PlaylistHelper;->removeMembers(Landroid/content/Context;[JJ)I

    .line 275
    :cond_0
    return-void
.end method
