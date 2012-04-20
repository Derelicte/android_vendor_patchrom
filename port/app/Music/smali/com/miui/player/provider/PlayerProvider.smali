.class public Lcom/miui/player/provider/PlayerProvider;
.super Landroid/content/ContentProvider;
.source "PlayerProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;
    }
.end annotation


# static fields
.field public static INVALID_PLAYLIST_ID:I

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field static final sGetTableAndWhereParam:Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;


# instance fields
.field private mDatabaseHelper:Lcom/miui/player/provider/PlayerDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 333
    new-instance v0, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;

    invoke-direct {v0}, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;-><init>()V

    sput-object v0, Lcom/miui/player/provider/PlayerProvider;->sGetTableAndWhereParam:Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;

    .line 470
    sput v1, Lcom/miui/player/provider/PlayerProvider;->INVALID_PLAYLIST_ID:I

    .line 590
    new-instance v0, Landroid/content/UriMatcher;

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 593
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v2, "playlists"

    const/16 v3, 0x68

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 594
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v2, "playlists/#"

    const/16 v3, 0x69

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 597
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v2, "playlists_audio_map"

    const/16 v3, 0x6a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 599
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v2, "playlists_audio_map/#"

    const/16 v3, 0x6b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 602
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v2, "playlists_audio_map/#/members"

    const/16 v3, 0x6c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 604
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v2, "playlists_audio_map/#/members/#"

    const/16 v3, 0x6d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 607
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v2, "nowplaying_audio_view"

    const/16 v3, 0x6e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 610
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v2, "nowplaying_audio_view/#"

    const/16 v3, 0x6f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 613
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v2, "equalizer"

    const/16 v3, 0x70

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 614
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v2, "equalizer/#"

    const/16 v3, 0x71

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 616
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 327
    return-void
.end method

.method private getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;)V
    .locals 4
    .parameter "uri"
    .parameter "match"
    .parameter "userWhere"
    .parameter "out"

    .prologue
    const/4 v3, 0x1

    .line 337
    const/4 v0, 0x0

    .line 338
    .local v0, where:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 386
    :pswitch_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown or unsupported URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 340
    :pswitch_1
    const-string v1, "playlists"

    iput-object v1, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 391
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 392
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    .line 400
    :goto_1
    return-void

    .line 344
    :pswitch_2
    const-string v1, "playlists"

    iput-object v1, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    goto :goto_0

    .line 349
    :pswitch_3
    const-string v1, "playlists_audio_map"

    iput-object v1, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto :goto_0

    .line 353
    :pswitch_4
    const-string v1, "playlists_audio_map"

    iput-object v1, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    goto :goto_0

    .line 358
    :pswitch_5
    const-string v1, "playlists_audio_map"

    iput-object v1, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playlist_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    goto/16 :goto_0

    .line 364
    :pswitch_6
    const-string v1, "playlists_audio_map"

    iput-object v1, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playlist_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 370
    goto/16 :goto_0

    .line 373
    :pswitch_7
    const-string v1, "nowplaying_audio_view"

    iput-object v1, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 377
    :pswitch_8
    const-string v1, "equalizer"

    iput-object v1, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 381
    :pswitch_9
    const-string v1, "equalizer"

    iput-object v1, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 383
    goto/16 :goto_0

    .line 395
    :cond_0
    iput-object p3, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    goto/16 :goto_1

    .line 398
    :cond_1
    iput-object v0, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    goto/16 :goto_1

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private insertInternal(Landroid/net/Uri;[Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 22
    .parameter "uri"
    .parameter "valueArr"

    .prologue
    .line 187
    sget-object v18, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 189
    .local v11, match:I
    const/4 v12, 0x0

    .line 190
    .local v12, newUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/player/provider/PlayerProvider;->mDatabaseHelper:Lcom/miui/player/provider/PlayerDBHelper;

    .line 191
    .local v7, database:Lcom/miui/player/provider/PlayerDBHelper;
    if-nez v7, :cond_0

    .line 192
    new-instance v18, Ljava/lang/UnsupportedOperationException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unknown URI: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 194
    :cond_0
    invoke-virtual {v7}, Lcom/miui/player/provider/PlayerDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 195
    .local v8, db:Landroid/database/sqlite/SQLiteDatabase;
    const v15, 0x1fffffff

    .line 197
    .local v15, startId:I
    packed-switch v11, :pswitch_data_0

    .line 321
    :pswitch_0
    new-instance v18, Ljava/lang/UnsupportedOperationException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Invalid URI "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 199
    :pswitch_1
    move-object/from16 v3, p2

    .local v3, arr$:[Landroid/content/ContentValues;
    array-length v10, v3

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v10, :cond_5

    aget-object v6, v3, v9

    .line 200
    .local v6, cv:Landroid/content/ContentValues;
    if-eqz v6, :cond_1

    .line 201
    new-instance v17, Landroid/content/ContentValues;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 203
    .local v17, values:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v4, v18, v20

    .line 204
    .local v4, currentTime:J
    const-string v18, "date_added"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 205
    const-string v18, "date_modified"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 206
    const-string v18, "playlists"

    const-string v19, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 209
    .local v13, rowId:J
    const-wide/16 v18, 0x0

    cmp-long v18, v13, v18

    if-lez v18, :cond_1

    .line 210
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 199
    .end local v4           #currentTime:J
    .end local v13           #rowId:J
    .end local v17           #values:Landroid/content/ContentValues;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 219
    .end local v3           #arr$:[Landroid/content/ContentValues;
    .end local v6           #cv:Landroid/content/ContentValues;
    .end local v9           #i$:I
    .end local v10           #len$:I
    :pswitch_2
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/miui/player/provider/PlayerProvider;->queryNextOnlineMemberId(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v15

    .line 221
    move-object/from16 v3, p2

    .restart local v3       #arr$:[Landroid/content/ContentValues;
    array-length v10, v3

    .restart local v10       #len$:I
    const/4 v9, 0x0

    .restart local v9       #i$:I
    move/from16 v16, v15

    .end local v15           #startId:I
    .local v16, startId:I
    :goto_1
    if-ge v9, v10, :cond_4

    aget-object v6, v3, v9

    .line 222
    .restart local v6       #cv:Landroid/content/ContentValues;
    if-eqz v6, :cond_12

    .line 223
    new-instance v17, Landroid/content/ContentValues;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 225
    .restart local v17       #values:Landroid/content/ContentValues;
    const-string v18, "audio_id"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_11

    .line 226
    const-string v18, "audio_id"

    add-int/lit8 v15, v16, 0x1

    .end local v16           #startId:I
    .restart local v15       #startId:I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 229
    :goto_2
    const-string v18, "date_added"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v4, v18, v20

    .line 231
    .restart local v4       #currentTime:J
    const-string v18, "date_added"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 234
    .end local v4           #currentTime:J
    :cond_2
    const-string v18, "playlists_audio_map"

    const-string v19, "play_order"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 237
    .restart local v13       #rowId:J
    const-wide/16 v18, 0x0

    cmp-long v18, v13, v18

    if-lez v18, :cond_3

    .line 238
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 221
    .end local v13           #rowId:J
    .end local v17           #values:Landroid/content/ContentValues;
    :cond_3
    :goto_3
    add-int/lit8 v9, v9, 0x1

    move/from16 v16, v15

    .end local v15           #startId:I
    .restart local v16       #startId:I
    goto :goto_1

    .end local v6           #cv:Landroid/content/ContentValues;
    :cond_4
    move/from16 v15, v16

    .line 324
    .end local v16           #startId:I
    .restart local v15       #startId:I
    :cond_5
    :goto_4
    return-object v12

    .line 247
    .end local v3           #arr$:[Landroid/content/ContentValues;
    .end local v9           #i$:I
    .end local v10           #len$:I
    :pswitch_3
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/miui/player/provider/PlayerProvider;->queryNextOnlineMemberId(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v15

    .line 248
    move-object/from16 v3, p2

    .restart local v3       #arr$:[Landroid/content/ContentValues;
    array-length v10, v3

    .restart local v10       #len$:I
    const/4 v9, 0x0

    .restart local v9       #i$:I
    move/from16 v16, v15

    .end local v15           #startId:I
    .restart local v16       #startId:I
    :goto_5
    if-ge v9, v10, :cond_8

    aget-object v6, v3, v9

    .line 249
    .restart local v6       #cv:Landroid/content/ContentValues;
    if-eqz v6, :cond_10

    .line 250
    new-instance v17, Landroid/content/ContentValues;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 252
    .restart local v17       #values:Landroid/content/ContentValues;
    const-string v18, "audio_id"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_f

    .line 253
    const-string v18, "audio_id"

    add-int/lit8 v15, v16, 0x1

    .end local v16           #startId:I
    .restart local v15       #startId:I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 256
    :goto_6
    const-string v18, "date_added"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v4, v18, v20

    .line 258
    .restart local v4       #currentTime:J
    const-string v18, "date_added"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 261
    .end local v4           #currentTime:J
    :cond_6
    const-string v19, "playlist_id"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v18

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v18, "playlists_audio_map"

    const-string v19, "play_order"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 266
    .restart local v13       #rowId:J
    const-wide/16 v18, 0x0

    cmp-long v18, v13, v18

    if-lez v18, :cond_7

    .line 267
    sget-object v18, Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap;->EXTERNAL_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    invoke-static {v0, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 248
    .end local v13           #rowId:J
    .end local v17           #values:Landroid/content/ContentValues;
    :cond_7
    :goto_7
    add-int/lit8 v9, v9, 0x1

    move/from16 v16, v15

    .end local v15           #startId:I
    .restart local v16       #startId:I
    goto :goto_5

    .end local v6           #cv:Landroid/content/ContentValues;
    :cond_8
    move/from16 v15, v16

    .line 272
    .end local v16           #startId:I
    .restart local v15       #startId:I
    goto/16 :goto_4

    .line 275
    .end local v3           #arr$:[Landroid/content/ContentValues;
    .end local v9           #i$:I
    .end local v10           #len$:I
    :pswitch_4
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/miui/player/provider/PlayerProvider;->queryNextOnlineMemberId(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v15

    .line 276
    move-object/from16 v3, p2

    .restart local v3       #arr$:[Landroid/content/ContentValues;
    array-length v10, v3

    .restart local v10       #len$:I
    const/4 v9, 0x0

    .restart local v9       #i$:I
    move/from16 v16, v15

    .end local v15           #startId:I
    .restart local v16       #startId:I
    :goto_8
    if-ge v9, v10, :cond_b

    aget-object v6, v3, v9

    .line 277
    .restart local v6       #cv:Landroid/content/ContentValues;
    if-eqz v6, :cond_e

    .line 278
    new-instance v17, Landroid/content/ContentValues;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 280
    .restart local v17       #values:Landroid/content/ContentValues;
    const-string v18, "audio_id"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_d

    .line 281
    const-string v18, "audio_id"

    add-int/lit8 v15, v16, 0x1

    .end local v16           #startId:I
    .restart local v15       #startId:I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 284
    :goto_9
    const-string v18, "date_added"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v4, v18, v20

    .line 286
    .restart local v4       #currentTime:J
    const-string v18, "date_added"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 289
    .end local v4           #currentTime:J
    :cond_9
    const-string v18, "playlist_id"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 292
    const-string v18, "playlists_audio_map"

    const-string v19, "play_order"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 295
    .restart local v13       #rowId:J
    const-wide/16 v18, 0x0

    cmp-long v18, v13, v18

    if-lez v18, :cond_a

    .line 296
    sget-object v18, Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap;->EXTERNAL_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    invoke-static {v0, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 276
    .end local v13           #rowId:J
    .end local v17           #values:Landroid/content/ContentValues;
    :cond_a
    :goto_a
    add-int/lit8 v9, v9, 0x1

    move/from16 v16, v15

    .end local v15           #startId:I
    .restart local v16       #startId:I
    goto :goto_8

    .end local v6           #cv:Landroid/content/ContentValues;
    :cond_b
    move/from16 v15, v16

    .line 301
    .end local v16           #startId:I
    .restart local v15       #startId:I
    goto/16 :goto_4

    .line 304
    .end local v3           #arr$:[Landroid/content/ContentValues;
    .end local v9           #i$:I
    .end local v10           #len$:I
    :pswitch_5
    move-object/from16 v3, p2

    .restart local v3       #arr$:[Landroid/content/ContentValues;
    array-length v10, v3

    .restart local v10       #len$:I
    const/4 v9, 0x0

    .restart local v9       #i$:I
    :goto_b
    if-ge v9, v10, :cond_5

    aget-object v6, v3, v9

    .line 305
    .restart local v6       #cv:Landroid/content/ContentValues;
    if-eqz v6, :cond_c

    .line 306
    new-instance v17, Landroid/content/ContentValues;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 307
    .restart local v17       #values:Landroid/content/ContentValues;
    const-string v18, "data_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 308
    const-string v18, "equalizer"

    const-string v19, "[0,0,0,0,0]"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 311
    .restart local v13       #rowId:J
    const-wide/16 v18, 0x0

    cmp-long v18, v13, v18

    if-lez v18, :cond_c

    .line 312
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 304
    .end local v13           #rowId:J
    .end local v17           #values:Landroid/content/ContentValues;
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .end local v15           #startId:I
    .restart local v16       #startId:I
    .restart local v17       #values:Landroid/content/ContentValues;
    :cond_d
    move/from16 v15, v16

    .end local v16           #startId:I
    .restart local v15       #startId:I
    goto/16 :goto_9

    .end local v15           #startId:I
    .end local v17           #values:Landroid/content/ContentValues;
    .restart local v16       #startId:I
    :cond_e
    move/from16 v15, v16

    .end local v16           #startId:I
    .restart local v15       #startId:I
    goto :goto_a

    .end local v15           #startId:I
    .restart local v16       #startId:I
    .restart local v17       #values:Landroid/content/ContentValues;
    :cond_f
    move/from16 v15, v16

    .end local v16           #startId:I
    .restart local v15       #startId:I
    goto/16 :goto_6

    .end local v15           #startId:I
    .end local v17           #values:Landroid/content/ContentValues;
    .restart local v16       #startId:I
    :cond_10
    move/from16 v15, v16

    .end local v16           #startId:I
    .restart local v15       #startId:I
    goto/16 :goto_7

    .end local v15           #startId:I
    .restart local v16       #startId:I
    .restart local v17       #values:Landroid/content/ContentValues;
    :cond_11
    move/from16 v15, v16

    .end local v16           #startId:I
    .restart local v15       #startId:I
    goto/16 :goto_2

    .end local v15           #startId:I
    .end local v17           #values:Landroid/content/ContentValues;
    .restart local v16       #startId:I
    :cond_12
    move/from16 v15, v16

    .end local v16           #startId:I
    .restart local v15       #startId:I
    goto/16 :goto_3

    .line 197
    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public static isOnlineAudio(J)Z
    .locals 2
    .parameter "audioId"

    .prologue
    .line 467
    const-wide/32 v0, 0x1fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final moveItem(Landroid/content/ContentResolver;JII)Z
    .locals 6
    .parameter "res"
    .parameter "playlistId"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v5, 0x0

    .line 515
    invoke-static {p1, p2}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "move"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 520
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 521
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "play_order"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 522
    invoke-virtual {p0, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private movePlaylistEntry(Landroid/database/sqlite/SQLiteDatabase;JII)I
    .locals 6
    .parameter "db"
    .parameter "playlistId"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 526
    if-ne p4, p5, :cond_0

    .line 527
    const/4 v0, 0x0

    .line 564
    :goto_0
    return v0

    .line 529
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 531
    const/4 v0, 0x0

    .line 532
    .local v0, numlines:I
    :try_start_0
    const-string v3, "playlists_audio_map"

    .line 533
    .local v3, table:Ljava/lang/String;
    const-string v1, "play_order"

    .line 534
    .local v1, playOrder:Ljava/lang/String;
    const-string v2, "playlist_id"

    .line 536
    .local v2, playlist:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE playlists_audio_map SET play_order=-1 WHERE play_order="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "playlist_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 543
    if-ge p4, p5, :cond_1

    .line 544
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE playlists_audio_map SET play_order=(play_order-1) WHERE play_order<="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "play_order"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "playlist_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 548
    sub-int v4, p5, p4

    add-int/lit8 v0, v4, 0x1

    .line 556
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE playlists_audio_map SET play_order="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "play_order"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=-1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "playlist_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 550
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE playlists_audio_map SET play_order=(play_order+1) WHERE play_order>="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "play_order"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "playlist_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 554
    sub-int v4, p4, p5

    add-int/lit8 v0, v4, 0x1

    goto/16 :goto_1

    .line 564
    .end local v1           #playOrder:Ljava/lang/String;
    .end local v2           #playlist:Ljava/lang/String;
    .end local v3           #table:Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method private queryNextOnlineMemberId(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 12
    .parameter "db"

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 163
    const-string v8, "max(audio_id)"

    .line 166
    .local v8, MAX_AUDIO_ID:Ljava/lang/String;
    const-string v1, "playlists_audio_map"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "max(audio_id)"

    aput-object v0, v2, v11

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 170
    .local v10, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 172
    .local v9, base:I
    if-eqz v10, :cond_0

    .line 173
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 174
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 175
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 178
    :cond_0
    const v0, 0x1fffffff

    if-ge v9, v0, :cond_1

    .line 179
    const v9, 0x1fffffff

    .line 182
    :cond_1
    add-int/lit8 v0, v9, 0x1

    return v0
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 6
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/miui/player/provider/PlayerProvider;->mDatabaseHelper:Lcom/miui/player/provider/PlayerDBHelper;

    .line 134
    .local v0, database:Lcom/miui/player/provider/PlayerDBHelper;
    if-nez v0, :cond_0

    .line 135
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 137
    :cond_0
    invoke-virtual {v0}, Lcom/miui/player/provider/PlayerDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 138
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 139
    const/4 v2, 0x0

    .line 141
    .local v2, numInserted:I
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/player/provider/PlayerProvider;->insertInternal(Landroid/net/Uri;[Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 142
    array-length v2, p2

    .line 143
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 147
    invoke-virtual {p0}, Lcom/miui/player/provider/PlayerProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 148
    return v2

    .line 145
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "uri"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 405
    sget-object v4, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 407
    .local v3, match:I
    iget-object v1, p0, Lcom/miui/player/provider/PlayerProvider;->mDatabaseHelper:Lcom/miui/player/provider/PlayerDBHelper;

    .line 408
    .local v1, database:Lcom/miui/player/provider/PlayerDBHelper;
    if-nez v1, :cond_0

    .line 409
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 411
    :cond_0
    invoke-virtual {v1}, Lcom/miui/player/provider/PlayerDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 413
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lcom/miui/player/provider/PlayerProvider;->sGetTableAndWhereParam:Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;

    monitor-enter v5

    .line 414
    :try_start_0
    sget-object v4, Lcom/miui/player/provider/PlayerProvider;->sGetTableAndWhereParam:Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;

    invoke-direct {p0, p1, v3, p2, v4}, Lcom/miui/player/provider/PlayerProvider;->getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;)V

    .line 416
    sget-object v4, Lcom/miui/player/provider/PlayerProvider;->sGetTableAndWhereParam:Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;

    iget-object v4, v4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v6, Lcom/miui/player/provider/PlayerProvider;->sGetTableAndWhereParam:Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;

    iget-object v6, v6, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    invoke-virtual {v2, v4, v6, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 419
    .local v0, count:I
    invoke-virtual {p0}, Lcom/miui/player/provider/PlayerProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 420
    monitor-exit v5

    .line 422
    return v0

    .line 420
    .end local v0           #count:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 112
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :pswitch_0
    const-string v0, "vnd.android.cursor.item/vnd.google.miui"

    .line 125
    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "vnd.android.cursor.dir/vnd.google.miui"

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 153
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/ContentValues;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {p0, p1, v1}, Lcom/miui/player/provider/PlayerProvider;->insertInternal(Landroid/net/Uri;[Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 156
    .local v0, newUri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/miui/player/provider/PlayerProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 159
    :cond_0
    return-object v0
.end method

.method public onCreate()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 26
    new-instance v0, Lcom/miui/player/provider/PlayerDBHelper;

    invoke-virtual {p0}, Lcom/miui/player/provider/PlayerProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com_miui_player.db"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/player/provider/PlayerDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/miui/player/provider/PlayerProvider;->mDatabaseHelper:Lcom/miui/player/provider/PlayerDBHelper;

    .line 27
    return v3
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "uri"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 33
    sget-object v2, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 35
    .local v11, table:I
    const/4 v5, 0x0

    .line 36
    .local v5, groupBy:Ljava/lang/String;
    iget-object v10, p0, Lcom/miui/player/provider/PlayerProvider;->mDatabaseHelper:Lcom/miui/player/provider/PlayerDBHelper;

    .line 37
    .local v10, database:Lcom/miui/player/provider/PlayerDBHelper;
    if-nez v10, :cond_1

    .line 38
    const/4 v9, 0x0

    .line 107
    :cond_0
    :goto_0
    return-object v9

    .line 40
    :cond_1
    invoke-virtual {v10}, Lcom/miui/player/provider/PlayerDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 41
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 42
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "limit"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 43
    .local v8, limit:Ljava/lang/String;
    packed-switch v11, :pswitch_data_0

    .line 96
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 45
    :pswitch_0
    const-string v2, "playlists"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 101
    :goto_1
    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 103
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/miui/player/provider/PlayerProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 49
    .end local v9           #c:Landroid/database/Cursor;
    :pswitch_1
    const-string v2, "playlists"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 54
    :pswitch_2
    const-string v2, "playlists_audio_map"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_1

    .line 58
    :pswitch_3
    const-string v2, "playlists_audio_map"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 64
    :pswitch_4
    const-string v2, "playlists_audio_map"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playlist_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 70
    :pswitch_5
    const-string v2, "playlists_audio_map"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playlist_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 78
    :pswitch_6
    const-string v2, "nowplaying_audio_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 82
    :pswitch_7
    const-string v2, "nowplaying_audio_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 88
    :pswitch_8
    const-string v2, "equalizer"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 91
    :pswitch_9
    const-string v2, "equalizer"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 18
    .parameter "uri"
    .parameter "initialValues"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 427
    const/4 v9, 0x0

    .line 429
    .local v9, count:I
    sget-object v3, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 430
    .local v12, match:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/player/provider/PlayerProvider;->mDatabaseHelper:Lcom/miui/player/provider/PlayerDBHelper;

    .line 431
    .local v10, database:Lcom/miui/player/provider/PlayerDBHelper;
    if-nez v10, :cond_0

    .line 432
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown URI: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 434
    :cond_0
    invoke-virtual {v10}, Lcom/miui/player/provider/PlayerDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 436
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v16, Lcom/miui/player/provider/PlayerProvider;->sGetTableAndWhereParam:Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;

    monitor-enter v16

    .line 437
    const/4 v13, 0x0

    .line 438
    .local v13, move:Z
    const/16 v3, 0x6d

    if-ne v12, v3, :cond_1

    .line 439
    :try_start_0
    const-string v3, "move"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 440
    .local v14, moveit:Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 441
    const/4 v13, 0x1

    .line 442
    const-string v11, "play_order"

    .line 443
    .local v11, key:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 444
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 445
    .local v8, newpos:I
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v15

    .line 446
    .local v15, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 447
    .local v5, playlist:J
    const/4 v3, 0x3

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .local v7, oldpos:I
    move-object/from16 v3, p0

    .line 448
    invoke-direct/range {v3 .. v8}, Lcom/miui/player/provider/PlayerProvider;->movePlaylistEntry(Landroid/database/sqlite/SQLiteDatabase;JII)I

    move-result v9

    .line 453
    .end local v5           #playlist:J
    .end local v7           #oldpos:I
    .end local v8           #newpos:I
    .end local v11           #key:Ljava/lang/String;
    .end local v14           #moveit:Ljava/lang/String;
    .end local v15           #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    if-nez v13, :cond_2

    .line 454
    sget-object v3, Lcom/miui/player/provider/PlayerProvider;->sGetTableAndWhereParam:Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/miui/player/provider/PlayerProvider;->getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;)V

    .line 455
    sget-object v3, Lcom/miui/player/provider/PlayerProvider;->sGetTableAndWhereParam:Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;

    iget-object v3, v3, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v17, Lcom/miui/player/provider/PlayerProvider;->sGetTableAndWhereParam:Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, p4

    invoke-virtual {v4, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 459
    :cond_2
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    if-lez v9, :cond_3

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/provider/PlayerProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 463
    :cond_3
    return v9

    .line 459
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
