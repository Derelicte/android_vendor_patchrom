.class public Lcom/miui/player/model/AlbumListAdapter;
.super Lcom/miui/player/model/SectionCursorAdapter;
.source "AlbumListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/model/AlbumListAdapter$AlbumDrawableWorker;,
        Lcom/miui/player/model/AlbumListAdapter$ViewHolder;,
        Lcom/miui/player/model/AlbumListAdapter$AlbumConverter;
    }
.end annotation


# static fields
.field public static final ALBUM_ARTIST_COLUMNS:[Ljava/lang/String;

.field public static final ALBUM_COLUMNS:[Ljava/lang/String;

.field private static sDrawableProvider:Lcom/miui/player/model/AsyncDrawableProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/player/model/AsyncDrawableProvider",
            "<",
            "Lcom/miui/player/meta/AlbumInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTempBuilder:Ljava/lang/StringBuilder;


# instance fields
.field private final mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

.field private mAlbumArtIdx:I

.field private final mAlbumIdToTrackNum:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumIdx:I

.field private final mArtistId:J

.field private mArtistIdx:I

.field private mIdIdx:I

.field private final mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/player/ui/controller/MultiChoiceController",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "artist"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v4

    const-string v1, "album_art"

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/player/model/AlbumListAdapter;->ALBUM_COLUMNS:[Ljava/lang/String;

    .line 42
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "artist"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v4

    const-string v1, "album_art"

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/player/model/AlbumListAdapter;->ALBUM_ARTIST_COLUMNS:[Ljava/lang/String;

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/miui/player/model/AlbumListAdapter;->sTempBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/player/ui/AlbumBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[IJLcom/miui/player/ui/view/AlphabetFastIndexer;Lcom/miui/player/ui/controller/MultiChoiceController;)V
    .locals 14
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "artistId"
    .parameter "fastIndexer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miui/player/ui/AlbumBrowserActivity;",
            "I",
            "Landroid/database/Cursor;",
            "[",
            "Ljava/lang/String;",
            "[IJ",
            "Lcom/miui/player/ui/view/AlphabetFastIndexer;",
            "Lcom/miui/player/ui/controller/MultiChoiceController",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p10, multiChoice:Lcom/miui/player/ui/controller/MultiChoiceController;,"Lcom/miui/player/ui/controller/MultiChoiceController<Ljava/lang/Long;>;"
    const-string v9, "album"

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p9

    invoke-direct/range {v2 .. v9}, Lcom/miui/player/model/SectionCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/miui/player/ui/view/AlphabetFastIndexer;Ljava/lang/String;)V

    .line 259
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/miui/player/model/AlbumListAdapter;->mAlbumIdToTrackNum:Ljava/util/Map;

    .line 98
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/miui/player/model/AlbumListAdapter;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    .line 99
    move-wide/from16 v0, p7

    iput-wide v0, p0, Lcom/miui/player/model/AlbumListAdapter;->mArtistId:J

    .line 100
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/miui/player/model/AlbumListAdapter;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 104
    .local v12, r:Landroid/content/res/Resources;
    sget-object v2, Lcom/miui/player/model/AlbumListAdapter;->sDrawableProvider:Lcom/miui/player/model/AsyncDrawableProvider;

    if-nez v2, :cond_0

    .line 105
    const v2, 0x7f020005

    invoke-static {v12, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 106
    .local v10, b:Landroid/graphics/Bitmap;
    new-instance v11, Lcom/miui/player/meta/AlbumManager$FastBitmapDrawable;

    invoke-direct {v11, v10}, Lcom/miui/player/meta/AlbumManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 107
    .local v11, dftAlbum:Landroid/graphics/drawable/Drawable;
    new-instance v13, Lcom/miui/player/model/AlbumListAdapter$AlbumDrawableWorker;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v13, v2, v3}, Lcom/miui/player/model/AlbumListAdapter$AlbumDrawableWorker;-><init>(II)V

    .line 108
    .local v13, worker:Lcom/miui/player/model/AlbumListAdapter$AlbumDrawableWorker;
    new-instance v2, Lcom/miui/player/model/AsyncDrawableProvider;

    invoke-direct {v2, v13, v11}, Lcom/miui/player/model/AsyncDrawableProvider;-><init>(Lcom/miui/player/model/AsyncDrawableProvider$AsyncDrawableWorker;Landroid/graphics/drawable/Drawable;)V

    sput-object v2, Lcom/miui/player/model/AlbumListAdapter;->sDrawableProvider:Lcom/miui/player/model/AsyncDrawableProvider;

    .line 111
    .end local v10           #b:Landroid/graphics/Bitmap;
    .end local v11           #dftAlbum:Landroid/graphics/drawable/Drawable;
    .end local v13           #worker:Lcom/miui/player/model/AlbumListAdapter$AlbumDrawableWorker;
    :cond_0
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/miui/player/model/AlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 112
    return-void
.end method

.method private static collectAlbumInfo(Landroid/content/Context;JLjava/util/Map;)V
    .locals 16
    .parameter "context"
    .parameter "artistId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p3, albumToTrackNum:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "album_id"

    aput-object v3, v4, v2

    .line 265
    .local v4, cols:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 267
    .local v10, albumIdIdx:I
    const/4 v15, 0x0

    .line 268
    .local v15, where:Ljava/lang/String;
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "artist_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 272
    :cond_0
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/miui/player/util/SqlUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "album_id"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 279
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_4

    .line 281
    :try_start_0
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->clear()V

    .line 283
    const-wide/16 v12, -0x1

    .line 284
    .local v12, lastAlbumId:J
    const/4 v14, 0x0

    .line 286
    .local v14, numTrack:I
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_2

    .line 287
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 288
    .local v8, albumId:J
    cmp-long v2, v8, v12

    if-eqz v2, :cond_1

    .line 289
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const/4 v14, 0x1

    .line 292
    move-wide v12, v8

    .line 286
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 302
    .end local v8           #albumId:J
    .end local v12           #lastAlbumId:J
    .end local v14           #numTrack:I
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 294
    .restart local v8       #albumId:J
    .restart local v12       #lastAlbumId:J
    .restart local v14       #numTrack:I
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 298
    .end local v8           #albumId:J
    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-eqz v2, :cond_3

    .line 299
    :try_start_1
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 307
    .end local v12           #lastAlbumId:J
    .end local v14           #numTrack:I
    :cond_4
    return-void
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 115
    if-eqz p1, :cond_0

    .line 116
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/AlbumListAdapter;->mIdIdx:I

    .line 117
    const-string v0, "album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/AlbumListAdapter;->mAlbumIdx:I

    .line 118
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/AlbumListAdapter;->mArtistIdx:I

    .line 119
    const-string v0, "album_art"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/AlbumListAdapter;->mAlbumArtIdx:I

    .line 121
    :cond_0
    return-void
.end method

.method public static quitCache()V
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/miui/player/model/AlbumListAdapter;->sDrawableProvider:Lcom/miui/player/model/AsyncDrawableProvider;

    if-eqz v0, :cond_0

    .line 210
    sget-object v0, Lcom/miui/player/model/AlbumListAdapter;->sDrawableProvider:Lcom/miui/player/model/AsyncDrawableProvider;

    invoke-virtual {v0}, Lcom/miui/player/model/AsyncDrawableProvider;->quit()V

    .line 212
    :cond_0
    return-void
.end method

.method public static removeCache()V
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/miui/player/model/AlbumListAdapter;->sDrawableProvider:Lcom/miui/player/model/AsyncDrawableProvider;

    if-eqz v0, :cond_0

    .line 216
    sget-object v0, Lcom/miui/player/model/AlbumListAdapter;->sDrawableProvider:Lcom/miui/player/model/AsyncDrawableProvider;

    invoke-virtual {v0}, Lcom/miui/player/model/AsyncDrawableProvider;->removeAll()V

    .line 218
    :cond_0
    return-void
.end method

.method public static removeCacheAlbum(Lcom/miui/player/meta/AlbumInfo;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 221
    sget-object v0, Lcom/miui/player/model/AlbumListAdapter;->sDrawableProvider:Lcom/miui/player/model/AsyncDrawableProvider;

    if-eqz v0, :cond_0

    .line 222
    sget-object v0, Lcom/miui/player/model/AlbumListAdapter;->sDrawableProvider:Lcom/miui/player/model/AsyncDrawableProvider;

    invoke-virtual {v0, p0}, Lcom/miui/player/model/AsyncDrawableProvider;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 225
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static startCache(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 203
    sget-object v0, Lcom/miui/player/model/AlbumListAdapter;->sDrawableProvider:Lcom/miui/player/model/AsyncDrawableProvider;

    if-eqz v0, :cond_0

    .line 204
    sget-object v0, Lcom/miui/player/model/AlbumListAdapter;->sDrawableProvider:Lcom/miui/player/model/AsyncDrawableProvider;

    invoke-virtual {v0, p0}, Lcom/miui/player/model/AsyncDrawableProvider;->start(Landroid/content/Context;)V

    .line 206
    :cond_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 18
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 139
    invoke-super/range {p0 .. p3}, Lcom/miui/player/model/SectionCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 140
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/player/model/AlbumListAdapter$ViewHolder;

    .line 141
    .local v13, vh:Lcom/miui/player/model/AlbumListAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/miui/player/model/AlbumListAdapter;->mAlbumIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, albumName:Ljava/lang/String;
    iget-object v14, v13, Lcom/miui/player/model/AlbumListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/player/model/AlbumListAdapter;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-static {v15, v5}, Lcom/miui/player/meta/MetaManager;->getLocaleAlbumName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    move-object/from16 v0, p0

    iget v14, v0, Lcom/miui/player/model/AlbumListAdapter;->mArtistIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, artistName:Ljava/lang/String;
    sget-object v7, Lcom/miui/player/model/AlbumListAdapter;->sTempBuilder:Ljava/lang/StringBuilder;

    .line 147
    .local v7, builder:Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 148
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/player/model/AlbumListAdapter;->mArtistId:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-gez v14, :cond_0

    .line 149
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/player/model/AlbumListAdapter;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-static {v14, v6}, Lcom/miui/player/meta/MetaManager;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 150
    const-string v14, "\n"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/player/model/AlbumListAdapter;->mAlbumIdToTrackNum:Ljava/util/Map;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/player/model/AlbumListAdapter;->mIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 154
    .local v8, count:Ljava/lang/Integer;
    if-nez v8, :cond_1

    .line 155
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 157
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 158
    .local v12, r:Landroid/content/res/Resources;
    const/high16 v14, 0x7f09

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v8, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v14, v13, Lcom/miui/player/model/AlbumListAdapter$ViewHolder;->details:Landroid/widget/TextView;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v11, v13, Lcom/miui/player/model/AlbumListAdapter$ViewHolder;->album:Landroid/widget/ImageView;

    .line 165
    .local v11, iv:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/miui/player/model/AlbumListAdapter;->mAlbumArtIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, art:Ljava/lang/String;
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 168
    .local v2, aid:J
    new-instance v1, Lcom/miui/player/meta/AlbumInfo;

    invoke-direct/range {v1 .. v6}, Lcom/miui/player/meta/AlbumInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .local v1, info:Lcom/miui/player/meta/AlbumInfo;
    sget-object v14, Lcom/miui/player/model/AlbumListAdapter;->sDrawableProvider:Lcom/miui/player/model/AsyncDrawableProvider;

    invoke-virtual {v14, v1, v11}, Lcom/miui/player/model/AsyncDrawableProvider;->requestDrawable(Ljava/lang/Object;Landroid/widget/ImageView;)Z

    .line 171
    iget-object v11, v13, Lcom/miui/player/model/AlbumListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 172
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getCurrentAlbumId()J

    move-result-wide v9

    .line 173
    .local v9, currentalbumid:J
    cmp-long v14, v9, v2

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/player/model/AlbumListAdapter;->mArtistId:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-ltz v14, :cond_2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/player/model/AlbumListAdapter;->mArtistId:J

    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getCurrentArtistId()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-nez v14, :cond_4

    .line 174
    :cond_2
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->isPlaying()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 176
    const v14, 0x7f02004d

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/player/model/AlbumListAdapter;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Lcom/miui/player/ui/controller/MultiChoiceController;->bindItemView(Landroid/view/View;I)V

    .line 185
    return-void

    .line 178
    :cond_3
    const v14, 0x7f02004c

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 181
    :cond_4
    const/16 v14, 0x8

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/miui/player/model/AlbumListAdapter;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 190
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 191
    const/4 p1, 0x0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/miui/player/model/AlbumListAdapter;->mActivity:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/AlbumBrowserActivity;->swapCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    invoke-direct {p0, p1}, Lcom/miui/player/model/AlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 195
    if-eqz p1, :cond_1

    .line 196
    iget-object v0, p0, Lcom/miui/player/model/AlbumListAdapter;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/miui/player/model/AlbumListAdapter;->mArtistId:J

    iget-object v3, p0, Lcom/miui/player/model/AlbumListAdapter;->mAlbumIdToTrackNum:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/player/model/AlbumListAdapter;->collectAlbumInfo(Landroid/content/Context;JLjava/util/Map;)V

    .line 198
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/player/model/SectionCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 200
    :cond_2
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 125
    invoke-super {p0, p1, p2, p3}, Lcom/miui/player/model/SectionCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 126
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/miui/player/model/AlbumListAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/miui/player/model/AlbumListAdapter$ViewHolder;-><init>()V

    .line 127
    .local v1, vh:Lcom/miui/player/model/AlbumListAdapter$ViewHolder;
    const v2, 0x7f0c0003

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/miui/player/model/AlbumListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 128
    const v2, 0x7f0c000b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/miui/player/model/AlbumListAdapter$ViewHolder;->details:Landroid/widget/TextView;

    .line 129
    const v2, 0x7f0c000c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/miui/player/model/AlbumListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 130
    const v2, 0x7f0c0001

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/miui/player/model/AlbumListAdapter$ViewHolder;->album:Landroid/widget/ImageView;

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 133
    return-object v0
.end method
