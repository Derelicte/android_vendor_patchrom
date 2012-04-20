.class public Lcom/miui/gallery/data/LocalAlbum;
.super Lcom/miui/gallery/data/MediaSet;
.source "LocalAlbum.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/LocalAlbum$DeleteDBAlbum;
    }
.end annotation


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mApplication:Lcom/miui/gallery/app/GalleryApp;

.field private mBaseUri:Landroid/net/Uri;

.field private mBucketDate:J

.field private mBucketId:I

.field private mCachedCount:I

.field private mDisplayName:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private final mIsImage:Z

.field private mItemPath:Lcom/miui/gallery/data/Path;

.field private mNotifier:Lcom/miui/gallery/data/ChangeNotifier;

.field private mOrderClause:Ljava/lang/String;

.field private final mProjection:[Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;

.field private mSortName:Ljava/lang/String;

.field private final mWhereClause:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/data/LocalAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;IZ)V
    .locals 1
    .parameter "path"
    .parameter "application"
    .parameter "bucketId"
    .parameter "isImage"

    .prologue
    .line 148
    invoke-static {p3}, Lcom/miui/gallery/data/LocalAlbumSet;->getBucketEntry(I)Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;

    move-result-object v0

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/miui/gallery/data/LocalAlbum;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;ZLcom/miui/gallery/data/LocalAlbumSet$BucketEntry;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;ZLcom/miui/gallery/data/LocalAlbumSet$BucketEntry;)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "isImage"
    .parameter "bucketEntry"

    .prologue
    .line 66
    invoke-static {}, Lcom/miui/gallery/data/LocalAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/data/MediaSet;-><init>(Lcom/miui/gallery/data/Path;J)V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/data/LocalAlbum;->mCachedCount:I

    .line 67
    iput-object p2, p0, Lcom/miui/gallery/data/LocalAlbum;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    .line 68
    invoke-interface {p2}, Lcom/miui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    .line 69
    iput-boolean p3, p0, Lcom/miui/gallery/data/LocalAlbum;->mIsImage:Z

    .line 71
    if-eqz p3, :cond_0

    .line 72
    const-string v0, "bucket_id = ?"

    iput-object v0, p0, Lcom/miui/gallery/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    .line 73
    sget-object v0, Lcom/miui/gallery/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    .line 80
    :goto_0
    invoke-direct {p0, p4}, Lcom/miui/gallery/data/LocalAlbum;->internalSetBucketSource(Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;)V

    .line 82
    invoke-direct {p0}, Lcom/miui/gallery/data/LocalAlbum;->updateOrderClause()V

    .line 83
    return-void

    .line 75
    :cond_0
    const-string v0, "bucket_id = ?"

    iput-object v0, p0, Lcom/miui/gallery/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    .line 76
    sget-object v0, Lcom/miui/gallery/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/miui/gallery/data/LocalAlbum;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/gallery/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/data/LocalAlbum;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/gallery/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/data/LocalAlbum;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/miui/gallery/data/LocalAlbum;->mBucketId:I

    return v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/data/LocalAlbum;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/gallery/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public static getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 6
    .parameter "resolver"
    .parameter "uri"
    .parameter "projection"
    .parameter "id"

    .prologue
    .line 268
    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getMediaItemById(Lcom/miui/gallery/app/GalleryApp;ZZLjava/util/ArrayList;)[Lcom/miui/gallery/data/MediaItem;
    .locals 19
    .parameter "application"
    .parameter "isInternalMedia"
    .parameter "isImage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/app/GalleryApp;",
            "ZZ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Lcom/miui/gallery/data/MediaItem;"
        }
    .end annotation

    .prologue
    .line 209
    .local p3, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v0, v6, [Lcom/miui/gallery/data/MediaItem;

    move-object/from16 v18, v0

    .line 210
    .local v18, result:[Lcom/miui/gallery/data/MediaItem;
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 262
    :goto_0
    return-object v18

    .line 211
    :cond_0
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 212
    .local v14, idLow:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 217
    .local v13, idHigh:I
    if-eqz p2, :cond_1

    .line 218
    sget-object v3, Lcom/miui/gallery/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    .line 219
    .local v3, projection:[Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/data/LocalImage;->getItemPath(Z)Lcom/miui/gallery/data/Path;

    move-result-object v16

    .line 225
    .local v16, itemPath:Lcom/miui/gallery/data/Path;
    :goto_1
    if-eqz p2, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/data/LocalImage;->getBaseUri(Z)Landroid/net/Uri;

    move-result-object v2

    .line 227
    .local v2, baseUri:Landroid/net/Uri;
    :goto_2
    invoke-interface/range {p0 .. p0}, Lcom/miui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 228
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-interface/range {p0 .. p0}, Lcom/miui/gallery/app/GalleryApp;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v10

    .line 229
    .local v10, dataManager:Lcom/miui/gallery/data/DataManager;
    const-string v4, "_id BETWEEN ? AND ?"

    const/4 v6, 0x2

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "_id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 232
    .local v5, cursor:Landroid/database/Cursor;
    if-nez v5, :cond_3

    .line 233
    const-string v6, "LocalAlbum"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "query fail "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 221
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #baseUri:Landroid/net/Uri;
    .end local v3           #projection:[Ljava/lang/String;
    .end local v5           #cursor:Landroid/database/Cursor;
    .end local v10           #dataManager:Lcom/miui/gallery/data/DataManager;
    .end local v16           #itemPath:Lcom/miui/gallery/data/Path;
    :cond_1
    sget-object v3, Lcom/miui/gallery/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    .line 222
    .restart local v3       #projection:[Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/data/LocalVideo;->getItemPath(Z)Lcom/miui/gallery/data/Path;

    move-result-object v16

    .restart local v16       #itemPath:Lcom/miui/gallery/data/Path;
    goto :goto_1

    .line 225
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/data/LocalVideo;->getBaseUri(Z)Landroid/net/Uri;

    move-result-object v2

    goto :goto_2

    .line 237
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    .restart local v2       #baseUri:Landroid/net/Uri;
    .restart local v5       #cursor:Landroid/database/Cursor;
    .restart local v10       #dataManager:Lcom/miui/gallery/data/DataManager;
    :cond_3
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 238
    .local v17, n:I
    const/4 v11, 0x0

    .line 240
    .local v11, i:I
    :cond_4
    :goto_3
    move/from16 v0, v17

    if-ge v11, v0, :cond_7

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 241
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 244
    .local v12, id:I
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v6, v12, :cond_4

    .line 248
    :cond_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-ge v6, v12, :cond_6

    .line 249
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v17

    if-lt v11, v0, :cond_5

    .line 262
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 254
    :cond_6
    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/miui/gallery/data/Path;->getChild(I)Lcom/miui/gallery/data/Path;

    move-result-object v4

    .line 255
    .local v4, childPath:Lcom/miui/gallery/data/Path;
    invoke-static {v2}, Lcom/miui/gallery/util/GalleryDBHelper;->isInternalMedia(Landroid/net/Uri;)Z

    move-result v9

    move-object v6, v10

    move-object/from16 v7, p0

    move/from16 v8, p2

    invoke-static/range {v4 .. v9}, Lcom/miui/gallery/data/LocalAlbum;->loadOrUpdateItem(Lcom/miui/gallery/data/Path;Landroid/database/Cursor;Lcom/miui/gallery/data/DataManager;Lcom/miui/gallery/app/GalleryApp;ZZ)Lcom/miui/gallery/data/MediaItem;

    move-result-object v15

    .line 257
    .local v15, item:Lcom/miui/gallery/data/MediaItem;
    aput-object v15, v18, v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    add-int/lit8 v11, v11, 0x1

    .line 259
    goto :goto_3

    .line 262
    .end local v4           #childPath:Lcom/miui/gallery/data/Path;
    .end local v12           #id:I
    .end local v15           #item:Lcom/miui/gallery/data/MediaItem;
    :cond_7
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v11           #i:I
    .end local v17           #n:I
    :catchall_0
    move-exception v6

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v6
.end method

.method private internalSetBucketSource(Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;)V
    .locals 6
    .parameter "bucketEntry"

    .prologue
    const/4 v5, 0x0

    .line 91
    if-nez p1, :cond_0

    .line 92
    const/4 v2, 0x0

    iput v2, p0, Lcom/miui/gallery/data/LocalAlbum;->mBucketId:I

    .line 93
    const-string v2, ""

    iput-object v2, p0, Lcom/miui/gallery/data/LocalAlbum;->mDisplayName:Ljava/lang/String;

    .line 94
    const-string v2, ""

    iput-object v2, p0, Lcom/miui/gallery/data/LocalAlbum;->mSortName:Ljava/lang/String;

    .line 95
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/miui/gallery/data/LocalAlbum;->mBucketDate:J

    .line 96
    const-string v2, ""

    iput-object v2, p0, Lcom/miui/gallery/data/LocalAlbum;->mFilePath:Ljava/lang/String;

    .line 134
    :goto_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/miui/gallery/data/LocalAlbum;->mCachedCount:I

    .line 136
    invoke-static {}, Lcom/miui/gallery/data/LocalAlbum;->nextVersionNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/data/LocalAlbum;->mDataVersion:J

    .line 137
    return-void

    .line 98
    :cond_0
    iget v2, p1, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->bucketId:I

    iput v2, p0, Lcom/miui/gallery/data/LocalAlbum;->mBucketId:I

    .line 99
    iget-object v2, p1, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->name:Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/gallery/data/LocalAlbum;->mDisplayName:Ljava/lang/String;

    .line 100
    iget-object v2, p1, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->filePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/StorageExplorer/StorageUtils;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, tempSortName:Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/gallery/data/LocalAlbum;->mDisplayName:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/miui/gallery/data/LocalAlbum;->mDisplayName:Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/gallery/data/LocalAlbum;->mSortName:Ljava/lang/String;

    .line 107
    :goto_1
    iget-wide v2, p1, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->date:J

    iput-wide v2, p0, Lcom/miui/gallery/data/LocalAlbum;->mBucketDate:J

    .line 108
    iget-object v2, p1, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->filePath:Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/gallery/data/LocalAlbum;->mFilePath:Ljava/lang/String;

    .line 110
    iget-object v2, p0, Lcom/miui/gallery/data/LocalAlbum;->mFilePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    const-string v2, "LocalAlbum"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create an invalid album: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/miui/gallery/data/LocalAlbum;->mBucketId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iput-object v5, p0, Lcom/miui/gallery/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    .line 116
    iput-object v5, p0, Lcom/miui/gallery/data/LocalAlbum;->mItemPath:Lcom/miui/gallery/data/Path;

    .line 117
    iput-object v5, p0, Lcom/miui/gallery/data/LocalAlbum;->mNotifier:Lcom/miui/gallery/data/ChangeNotifier;

    goto :goto_0

    .line 105
    :cond_1
    iput-object v1, p0, Lcom/miui/gallery/data/LocalAlbum;->mSortName:Ljava/lang/String;

    goto :goto_1

    .line 120
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/data/LocalAlbum;->mFilePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/util/GalleryDBHelper;->isInternalMedia(Ljava/lang/String;)Z

    move-result v0

    .line 121
    .local v0, isInternalMedia:Z
    iget-boolean v2, p0, Lcom/miui/gallery/data/LocalAlbum;->mIsImage:Z

    if-eqz v2, :cond_3

    .line 122
    iget-object v2, p0, Lcom/miui/gallery/data/LocalAlbum;->mFilePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/data/LocalImage;->getBaseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    .line 123
    invoke-static {v0}, Lcom/miui/gallery/data/LocalImage;->getItemPath(Z)Lcom/miui/gallery/data/Path;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/data/LocalAlbum;->mItemPath:Lcom/miui/gallery/data/Path;

    .line 129
    :goto_2
    new-instance v2, Lcom/miui/gallery/data/ChangeNotifier;

    iget-object v3, p0, Lcom/miui/gallery/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/miui/gallery/data/LocalAlbum;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-direct {v2, p0, v3, v4}, Lcom/miui/gallery/data/ChangeNotifier;-><init>(Lcom/miui/gallery/data/MediaSet;Landroid/net/Uri;Lcom/miui/gallery/app/GalleryApp;)V

    iput-object v2, p0, Lcom/miui/gallery/data/LocalAlbum;->mNotifier:Lcom/miui/gallery/data/ChangeNotifier;

    goto :goto_0

    .line 125
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/data/LocalAlbum;->mFilePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/data/LocalVideo;->getBaseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    .line 126
    invoke-static {v0}, Lcom/miui/gallery/data/LocalVideo;->getItemPath(Z)Lcom/miui/gallery/data/Path;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/data/LocalAlbum;->mItemPath:Lcom/miui/gallery/data/Path;

    goto :goto_2
.end method

.method private static loadOrUpdateItem(Lcom/miui/gallery/data/Path;Landroid/database/Cursor;Lcom/miui/gallery/data/DataManager;Lcom/miui/gallery/app/GalleryApp;ZZ)Lcom/miui/gallery/data/MediaItem;
    .locals 1
    .parameter "path"
    .parameter "cursor"
    .parameter "dataManager"
    .parameter "app"
    .parameter "isImage"
    .parameter "isInternalMedia"

    .prologue
    .line 192
    invoke-virtual {p2, p0}, Lcom/miui/gallery/data/DataManager;->peekMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/LocalMediaItem;

    .line 193
    .local v0, item:Lcom/miui/gallery/data/LocalMediaItem;
    if-nez v0, :cond_1

    .line 194
    if-eqz p4, :cond_0

    .line 195
    new-instance v0, Lcom/miui/gallery/data/LocalImage;

    .end local v0           #item:Lcom/miui/gallery/data/LocalMediaItem;
    invoke-direct {v0, p0, p3, p1, p5}, Lcom/miui/gallery/data/LocalImage;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Landroid/database/Cursor;Z)V

    .line 202
    .restart local v0       #item:Lcom/miui/gallery/data/LocalMediaItem;
    :goto_0
    return-object v0

    .line 197
    :cond_0
    new-instance v0, Lcom/miui/gallery/data/LocalVideo;

    .end local v0           #item:Lcom/miui/gallery/data/LocalMediaItem;
    invoke-direct {v0, p0, p3, p1, p5}, Lcom/miui/gallery/data/LocalVideo;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Landroid/database/Cursor;Z)V

    .restart local v0       #item:Lcom/miui/gallery/data/LocalMediaItem;
    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {v0, p1}, Lcom/miui/gallery/data/LocalMediaItem;->updateContent(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private updateOrderClause()V
    .locals 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/miui/gallery/data/LocalAlbum;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/data/LocalAlbum;->mIsImage:Z

    invoke-static {v0, v1}, Lcom/miui/gallery/util/MediaItemComparator;->getOrderClause(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/LocalAlbum;->mOrderClause:Ljava/lang/String;

    .line 154
    return-void
.end method


# virtual methods
.method public delete(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    const/4 v4, 0x0

    .line 349
    invoke-virtual {p0}, Lcom/miui/gallery/data/LocalAlbum;->isValid()Z

    move-result v1

    const-string v2, "must call delete() only for valid album"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 350
    invoke-static {}, Lcom/miui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    .line 352
    invoke-virtual {p0}, Lcom/miui/gallery/data/LocalAlbum;->getMediaItemCount()I

    move-result v1

    invoke-virtual {p0, v4, v1}, Lcom/miui/gallery/data/LocalAlbum;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 353
    .local v0, mediaItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/data/LocalAlbum;->getFilePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/data/LocalAlbum$DeleteDBAlbum;

    invoke-direct {v2, p0}, Lcom/miui/gallery/data/LocalAlbum$DeleteDBAlbum;-><init>(Lcom/miui/gallery/data/LocalAlbum;)V

    invoke-static {p1, v1, v0, v2}, Lcom/miui/gallery/StorageExplorer/AppHelper;->deleteLocalMediaItems(Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;Lcom/miui/gallery/StorageExplorer/AppHelper$DeleteDatabaseInfo;)V

    .line 354
    return-void
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 308
    iget-wide v0, p0, Lcom/miui/gallery/data/LocalAlbum;->mBucketDate:J

    return-wide v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/miui/gallery/data/LocalAlbum;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/miui/gallery/data/LocalAlbum;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 12
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 158
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v11, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/data/LocalAlbum;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-object v11

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/data/LocalAlbum;->updateOrderClause()V

    .line 163
    iget-object v0, p0, Lcom/miui/gallery/data/LocalAlbum;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryApp;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v8

    .line 164
    .local v8, dataManager:Lcom/miui/gallery/data/DataManager;
    iget-object v0, p0, Lcom/miui/gallery/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "limit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 166
    .local v1, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/miui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    .line 167
    iget-object v0, p0, Lcom/miui/gallery/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/miui/gallery/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/gallery/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget v5, p0, Lcom/miui/gallery/data/LocalAlbum;->mBucketId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/miui/gallery/data/LocalAlbum;->mOrderClause:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 171
    .local v3, cursor:Landroid/database/Cursor;
    if-nez v3, :cond_1

    .line 172
    const-string v0, "LocalAlbum"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 179
    .local v9, id:I
    iget-object v0, p0, Lcom/miui/gallery/data/LocalAlbum;->mItemPath:Lcom/miui/gallery/data/Path;

    invoke-virtual {v0, v9}, Lcom/miui/gallery/data/Path;->getChild(I)Lcom/miui/gallery/data/Path;

    move-result-object v2

    .line 180
    .local v2, childPath:Lcom/miui/gallery/data/Path;
    iget-object v5, p0, Lcom/miui/gallery/data/LocalAlbum;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    iget-boolean v6, p0, Lcom/miui/gallery/data/LocalAlbum;->mIsImage:Z

    invoke-static {v1}, Lcom/miui/gallery/util/GalleryDBHelper;->isInternalMedia(Landroid/net/Uri;)Z

    move-result v7

    move-object v4, v8

    invoke-static/range {v2 .. v7}, Lcom/miui/gallery/data/LocalAlbum;->loadOrUpdateItem(Lcom/miui/gallery/data/Path;Landroid/database/Cursor;Lcom/miui/gallery/data/DataManager;Lcom/miui/gallery/app/GalleryApp;ZZ)Lcom/miui/gallery/data/MediaItem;

    move-result-object v10

    .line 182
    .local v10, item:Lcom/miui/gallery/data/MediaItem;
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 185
    .end local v2           #childPath:Lcom/miui/gallery/data/Path;
    .end local v9           #id:I
    .end local v10           #item:Lcom/miui/gallery/data/MediaItem;
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public getMediaItemCount()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 274
    invoke-virtual {p0}, Lcom/miui/gallery/data/LocalAlbum;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v7

    .line 293
    :goto_0
    return v0

    .line 278
    :cond_0
    iget v0, p0, Lcom/miui/gallery/data/LocalAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 279
    iget-object v0, p0, Lcom/miui/gallery/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/gallery/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/data/LocalAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/gallery/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget v5, p0, Lcom/miui/gallery/data/LocalAlbum;->mBucketId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 282
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 283
    const-string v0, "LocalAlbum"

    const-string v1, "query fail"

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 284
    goto :goto_0

    .line 287
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 288
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/data/LocalAlbum;->mCachedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 293
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_2
    iget v0, p0, Lcom/miui/gallery/data/LocalAlbum;->mCachedCount:I

    goto :goto_0

    .line 290
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getSortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/miui/gallery/data/LocalAlbum;->mSortName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x1

    return v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x1

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/miui/gallery/data/LocalAlbum;->mBucketId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/data/LocalAlbum;->mDisplayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/data/LocalAlbum;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reload()J
    .locals 4

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/miui/gallery/data/LocalAlbum;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    const-string v1, "LocalAlbum"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocalAlbum.reload(): update bucket source for invalid album"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/gallery/data/LocalAlbum;->mBucketId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget v1, p0, Lcom/miui/gallery/data/LocalAlbum;->mBucketId:I

    invoke-static {v1}, Lcom/miui/gallery/data/LocalAlbumSet;->getBucketEntry(I)Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;

    move-result-object v0

    .line 322
    .local v0, bucketEntry:Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/data/LocalAlbum;->updateBucketSource(Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;)V

    .line 325
    .end local v0           #bucketEntry:Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/data/LocalAlbum;->mNotifier:Lcom/miui/gallery/data/ChangeNotifier;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/data/LocalAlbum;->mNotifier:Lcom/miui/gallery/data/ChangeNotifier;

    invoke-virtual {v1}, Lcom/miui/gallery/data/ChangeNotifier;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 326
    invoke-static {}, Lcom/miui/gallery/data/LocalAlbum;->nextVersionNumber()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/gallery/data/LocalAlbum;->mDataVersion:J

    .line 327
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/gallery/data/LocalAlbum;->mCachedCount:I

    .line 329
    :cond_1
    iget-wide v1, p0, Lcom/miui/gallery/data/LocalAlbum;->mDataVersion:J

    return-wide v1
.end method

.method public setBucketDate(J)V
    .locals 0
    .parameter "bucketDate"

    .prologue
    .line 140
    iput-wide p1, p0, Lcom/miui/gallery/data/LocalAlbum;->mBucketDate:J

    .line 141
    return-void
.end method

.method public updateBucketSource(Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;)V
    .locals 3
    .parameter "bucketEntry"

    .prologue
    .line 86
    const-string v1, "LocalAlbum"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBucketSource: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-direct {p0, p1}, Lcom/miui/gallery/data/LocalAlbum;->internalSetBucketSource(Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;)V

    .line 88
    return-void

    .line 86
    :cond_0
    iget-object v0, p1, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->filePath:Ljava/lang/String;

    goto :goto_0
.end method
