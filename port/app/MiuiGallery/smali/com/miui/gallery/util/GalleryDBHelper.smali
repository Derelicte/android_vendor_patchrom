.class public Lcom/miui/gallery/util/GalleryDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "GalleryDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;,
        Lcom/miui/gallery/util/GalleryDBHelper$InsertAlbum;,
        Lcom/miui/gallery/util/GalleryDBHelper$UpdateAlbum;,
        Lcom/miui/gallery/util/GalleryDBHelper$FindAllAlbums;,
        Lcom/miui/gallery/util/GalleryDBHelper$FindAlbum;,
        Lcom/miui/gallery/util/GalleryDBHelper$DoCommand;,
        Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;
    }
.end annotation


# static fields
.field public static final BASE_URI_EXTERNAL:Landroid/net/Uri;

.field public static final BASE_URI_INTERNAL:Landroid/net/Uri;

.field private static final mAlbumColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPreferenceHelper:Lcom/miui/gallery/settings/PreferenceHelper;

.field private mSqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->BASE_URI_EXTERNAL:Landroid/net/Uri;

    .line 49
    const-string v0, "internal"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->BASE_URI_INTERNAL:Landroid/net/Uri;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 59
    const-string v0, "gallery.db"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v6}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 60
    new-instance v0, Lcom/miui/gallery/settings/PreferenceHelper;

    invoke-direct {v0, p1}, Lcom/miui/gallery/settings/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/util/GalleryDBHelper;->mPreferenceHelper:Lcom/miui/gallery/settings/PreferenceHelper;

    .line 62
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;

    const-string v2, "_id"

    invoke-direct {v1, v4, v2, v4}, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;

    const-string v2, "bucket_id"

    invoke-direct {v1, v5, v2, v5}, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;

    const/4 v2, 0x2

    const-string v3, "bucket_path"

    invoke-direct {v1, v2, v3, v5}, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;

    const/4 v2, 0x3

    const-string v3, "recent_visit_time"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;

    const/4 v2, 0x4

    const-string v3, "visit_count"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;

    const/4 v2, 0x5

    const-string v3, "is_hidden_recent"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;

    const/4 v2, 0x6

    const-string v3, "is_manually_recent"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;

    const/4 v2, 0x7

    const-string v3, "is_hidden"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;

    const/16 v2, 0x8

    const-string v3, "sort_by"

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;

    const-string v2, "cover_path"

    invoke-direct {v1, v6, v2, v4}, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-direct {p0}, Lcom/miui/gallery/util/GalleryDBHelper;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/util/GalleryDBHelper;->mSqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 75
    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/util/GalleryDBHelper;Lcom/miui/gallery/data/DBAlbum;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/GalleryDBHelper;->createContentValue(Lcom/miui/gallery/data/DBAlbum;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method private createContentValue(Lcom/miui/gallery/data/DBAlbum;)Landroid/content/ContentValues;
    .locals 6
    .parameter "album"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 306
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 307
    .local v0, values:Landroid/content/ContentValues;
    sget-object v1, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    sget v4, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->BUCKET_ID:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;

    iget-object v1, v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/gallery/data/DBAlbum;->getBucketId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    sget-object v1, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    sget v4, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->BUCKET_PATH:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;

    iget-object v1, v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/gallery/data/DBAlbum;->getBucketPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    sget-object v1, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    sget v4, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->RECENT_VISIT_TIME:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;

    iget-object v1, v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/gallery/data/DBAlbum;->getRecentVisitTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 313
    sget-object v1, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    sget v4, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->VISIT_COUNT:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;

    iget-object v1, v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/gallery/data/DBAlbum;->getVisitCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 315
    sget-object v1, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    sget v4, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->IS_HIDDEN_RECENT:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;

    iget-object v4, v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/gallery/data/DBAlbum;->getIsHiddenRecent()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 317
    sget-object v1, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    sget v4, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->IS_MANUALLY_RECENT:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;

    iget-object v4, v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/gallery/data/DBAlbum;->getIsManuallyRecent()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 319
    sget-object v1, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    sget v4, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->IS_HIDDEN:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;

    iget-object v1, v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/gallery/data/DBAlbum;->getIsHidden()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 321
    sget-object v1, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    sget v2, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->SORT_BY:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;

    iget-object v1, v1, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/gallery/data/DBAlbum;->getSortBy()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    return-object v0

    :cond_0
    move v1, v3

    .line 315
    goto :goto_0

    :cond_1
    move v1, v3

    .line 317
    goto :goto_1

    :cond_2
    move v2, v3

    .line 319
    goto :goto_2
.end method

.method public static findFilePathById(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "uri"
    .parameter "id"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 417
    const-string v7, ""

    .line 418
    .local v7, filePath:Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v9, [Ljava/lang/String;

    const-string v1, "%s"

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "_data"

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    const-string v1, "%s = ?"

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "_id"

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 426
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 427
    const-string v0, "GalleryDBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v7

    .line 439
    .end local v7           #filePath:Ljava/lang/String;
    .local v8, filePath:Ljava/lang/String;
    :goto_0
    return-object v8

    .line 431
    .end local v8           #filePath:Ljava/lang/String;
    .restart local v7       #filePath:Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 435
    :cond_1
    if-eqz v6, :cond_2

    .line 436
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v8, v7

    .line 439
    .end local v7           #filePath:Ljava/lang/String;
    .restart local v8       #filePath:Ljava/lang/String;
    goto :goto_0

    .line 435
    .end local v8           #filePath:Ljava/lang/String;
    .restart local v7       #filePath:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 436
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getImageVideoPathType(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;
    .locals 4
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 389
    new-instance v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;

    invoke-direct {v0}, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;-><init>()V

    .line 391
    .local v0, result:Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;
    invoke-static {}, Lcom/miui/gallery/data/LocalImage;->getExternalItemPath()Lcom/miui/gallery/data/Path;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 392
    iput-boolean v2, v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isValid:Z

    .line 393
    iput-boolean v2, v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isImage:Z

    .line 394
    iput-boolean v3, v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isInternalMedia:Z

    .line 413
    :goto_0
    return-object v0

    .line 395
    :cond_0
    invoke-static {}, Lcom/miui/gallery/data/LocalImage;->getInternalItemPath()Lcom/miui/gallery/data/Path;

    move-result-object v1

    if-ne p0, v1, :cond_1

    .line 396
    iput-boolean v2, v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isValid:Z

    .line 397
    iput-boolean v2, v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isImage:Z

    .line 398
    iput-boolean v2, v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isInternalMedia:Z

    goto :goto_0

    .line 399
    :cond_1
    invoke-static {}, Lcom/miui/gallery/data/LocalVideo;->getExternalItemPath()Lcom/miui/gallery/data/Path;

    move-result-object v1

    if-ne p0, v1, :cond_2

    .line 400
    iput-boolean v2, v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isValid:Z

    .line 401
    iput-boolean v3, v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isImage:Z

    .line 402
    iput-boolean v3, v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isInternalMedia:Z

    goto :goto_0

    .line 403
    :cond_2
    invoke-static {}, Lcom/miui/gallery/data/LocalVideo;->getInternalItemPath()Lcom/miui/gallery/data/Path;

    move-result-object v1

    if-ne p0, v1, :cond_3

    .line 404
    iput-boolean v2, v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isValid:Z

    .line 405
    iput-boolean v3, v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isImage:Z

    .line 406
    iput-boolean v2, v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isInternalMedia:Z

    goto :goto_0

    .line 408
    :cond_3
    iput-boolean v3, v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isValid:Z

    .line 409
    iput-boolean v3, v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isImage:Z

    .line 410
    iput-boolean v3, v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isInternalMedia:Z

    goto :goto_0
.end method

.method public static isInternalMedia(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 375
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://media/internal/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isInternalMedia(Ljava/lang/String;)Z
    .locals 1
    .parameter "filePath"

    .prologue
    .line 379
    invoke-static {p0}, Lcom/miui/gallery/StorageExplorer/StorageUtils;->isInternal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private openDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 163
    const/4 v1, 0x0

    .line 168
    .local v1, sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/util/GalleryDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 175
    :goto_0
    return-object v1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0}, Lcom/miui/gallery/util/GalleryDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 172
    :catch_1
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized executeDbCommand(Lcom/miui/gallery/util/GalleryDBHelper$DoCommand;)V
    .locals 1
    .parameter "command"

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/util/GalleryDBHelper;->mSqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {p1, v0}, Lcom/miui/gallery/util/GalleryDBHelper$DoCommand;->execute(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public findAlbum(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;
    .locals 2
    .parameter "bucketId"

    .prologue
    .line 139
    new-instance v0, Lcom/miui/gallery/util/GalleryDBHelper$FindAlbum;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/util/GalleryDBHelper$FindAlbum;-><init>(Lcom/miui/gallery/util/GalleryDBHelper;Ljava/lang/String;)V

    .line 140
    .local v0, command:Lcom/miui/gallery/util/GalleryDBHelper$FindAlbum;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/util/GalleryDBHelper;->executeDbCommand(Lcom/miui/gallery/util/GalleryDBHelper$DoCommand;)V

    .line 141
    invoke-virtual {v0}, Lcom/miui/gallery/util/GalleryDBHelper$FindAlbum;->getResult()Lcom/miui/gallery/data/DBAlbum;

    move-result-object v1

    return-object v1
.end method

.method public findAlbumByFilePath(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;
    .locals 1
    .parameter "filePath"

    .prologue
    .line 135
    invoke-static {p1}, Lcom/miui/gallery/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/util/GalleryDBHelper;->findAlbum(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;

    move-result-object v0

    return-object v0
.end method

.method public findAllAlbums()Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Lcom/miui/gallery/util/GalleryDBHelper$FindAllAlbums;

    invoke-direct {v0, p0}, Lcom/miui/gallery/util/GalleryDBHelper$FindAllAlbums;-><init>(Lcom/miui/gallery/util/GalleryDBHelper;)V

    .line 152
    .local v0, command:Lcom/miui/gallery/util/GalleryDBHelper$FindAllAlbums;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/util/GalleryDBHelper;->executeDbCommand(Lcom/miui/gallery/util/GalleryDBHelper$DoCommand;)V

    .line 153
    invoke-virtual {v0}, Lcom/miui/gallery/util/GalleryDBHelper$FindAllAlbums;->getResult()Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;

    move-result-object v1

    return-object v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .parameter "db"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 100
    sget-object v2, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;

    iget-boolean v2, v2, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->mIsTextType:Z

    if-eqz v2, :cond_2

    .line 101
    const-string v3, " %s TEXT"

    new-array v4, v6, [Ljava/lang/Object;

    sget-object v2, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;

    iget-object v2, v2, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->mName:Ljava/lang/String;

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :goto_1
    if-nez v1, :cond_0

    .line 109
    const-string v2, " PRIMARY KEY "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_0
    sget-object v2, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 113
    const-string v2, " , "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_2
    const-string v3, " %s INTEGER"

    new-array v4, v6, [Ljava/lang/Object;

    sget-object v2, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;

    iget-object v2, v2, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->mName:Ljava/lang/String;

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 117
    :cond_3
    const-string v2, "CREATE TABLE %s (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "album"

    aput-object v4, v3, v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 123
    if-lt p2, p3, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database cannot be downgraded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    const/16 v0, 0x9

    if-ge p2, v0, :cond_1

    .line 128
    const-string v0, "DROP TABLE IF EXISTS album"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/GalleryDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 132
    :cond_1
    return-void
.end method
