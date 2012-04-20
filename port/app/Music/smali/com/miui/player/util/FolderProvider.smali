.class public Lcom/miui/player/util/FolderProvider;
.super Ljava/lang/Object;
.source "FolderProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/util/FolderProvider$FolderPrefParser;,
        Lcom/miui/player/util/FolderProvider$FolderItemKeyGetter;,
        Lcom/miui/player/util/FolderProvider$FolderItemComparator;,
        Lcom/miui/player/util/FolderProvider$Columns;,
        Lcom/miui/player/util/FolderProvider$FolderItem;,
        Lcom/miui/player/util/FolderProvider$FolderStatus;
    }
.end annotation


# static fields
.field static final EMPTY_FOLDER:[Ljava/lang/String;

.field private static final MIUI_DOWNLOAD_PATH:Ljava/lang/String;

.field private static final sComparator:Lcom/miui/player/util/FolderProvider$FolderItemComparator;

.field private static sInstance:Lcom/miui/player/util/FolderProvider;


# instance fields
.field private mChangedMark:Z

.field private mFolderItemList:[Lcom/miui/player/util/FolderProvider$FolderItem;

.field private mHasMiuiDownload:Z

.field private final mParser:Lcom/miui/player/util/FolderProvider$FolderPrefParser;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/player/util/PlayerConfiguration;->MIUI_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mp3/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/util/FolderProvider;->MIUI_DOWNLOAD_PATH:Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/miui/player/util/FolderProvider$FolderItemComparator;

    invoke-direct {v0}, Lcom/miui/player/util/FolderProvider$FolderItemComparator;-><init>()V

    sput-object v0, Lcom/miui/player/util/FolderProvider;->sComparator:Lcom/miui/player/util/FolderProvider$FolderItemComparator;

    .line 365
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/miui/player/util/FolderProvider;->EMPTY_FOLDER:[Ljava/lang/String;

    .line 428
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/player/util/FolderProvider;->sInstance:Lcom/miui/player/util/FolderProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/miui/player/util/FolderProvider$FolderPrefParser;

    invoke-direct {v0}, Lcom/miui/player/util/FolderProvider$FolderPrefParser;-><init>()V

    iput-object v0, p0, Lcom/miui/player/util/FolderProvider;->mParser:Lcom/miui/player/util/FolderProvider$FolderPrefParser;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/util/FolderProvider;->mFolderItemList:[Lcom/miui/player/util/FolderProvider$FolderItem;

    .line 32
    iput-boolean v1, p0, Lcom/miui/player/util/FolderProvider;->mChangedMark:Z

    .line 33
    iput-boolean v1, p0, Lcom/miui/player/util/FolderProvider;->mHasMiuiDownload:Z

    .line 36
    return-void
.end method

.method private static collectFolderItemList(Landroid/content/Context;Lcom/miui/player/util/FolderProvider$FolderPrefParser;)[Lcom/miui/player/util/FolderProvider$FolderItem;
    .locals 13
    .parameter "context"
    .parameter "parser"

    .prologue
    .line 251
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v0

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3}, Lcom/miui/player/util/SqlUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 256
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 257
    const/4 v0, 0x0

    new-array v10, v0, [Lcom/miui/player/util/FolderProvider$FolderItem;

    .line 281
    :goto_0
    return-object v10

    .line 261
    :cond_0
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/miui/player/util/FolderProvider$FolderPrefParser;->getUnselectedFolders(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v12

    .line 262
    .local v12, unselectFolders:[Ljava/lang/String;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 263
    .local v9, itemMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/miui/player/util/FolderProvider$FolderItem;>;"
    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 264
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/player/util/FolderProvider;->parseFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 265
    .local v7, folderPath:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 266
    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/player/util/FolderProvider$FolderItem;

    .line 267
    .local v8, item:Lcom/miui/player/util/FolderProvider$FolderItem;
    if-eqz v8, :cond_2

    .line 268
    iget v0, v8, Lcom/miui/player/util/FolderProvider$FolderItem;->mTrackCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v8, Lcom/miui/player/util/FolderProvider$FolderItem;->mTrackCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 281
    .end local v7           #folderPath:Ljava/lang/String;
    .end local v8           #item:Lcom/miui/player/util/FolderProvider$FolderItem;
    .end local v9           #itemMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/miui/player/util/FolderProvider$FolderItem;>;"
    .end local v12           #unselectFolders:[Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 270
    .restart local v7       #folderPath:Ljava/lang/String;
    .restart local v8       #item:Lcom/miui/player/util/FolderProvider$FolderItem;
    .restart local v9       #itemMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/miui/player/util/FolderProvider$FolderItem;>;"
    .restart local v12       #unselectFolders:[Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {v12, v7}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_3

    const/4 v11, 0x1

    .line 271
    .local v11, selected:Z
    :goto_2
    new-instance v8, Lcom/miui/player/util/FolderProvider$FolderItem;

    .end local v8           #item:Lcom/miui/player/util/FolderProvider$FolderItem;
    const/4 v0, 0x1

    invoke-direct {v8, v7, v0, v11}, Lcom/miui/player/util/FolderProvider$FolderItem;-><init>(Ljava/lang/String;IZ)V

    .line 272
    .restart local v8       #item:Lcom/miui/player/util/FolderProvider$FolderItem;
    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 270
    .end local v11           #selected:Z
    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    .line 277
    .end local v7           #folderPath:Ljava/lang/String;
    .end local v8           #item:Lcom/miui/player/util/FolderProvider$FolderItem;
    :cond_4
    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v0

    new-array v10, v0, [Lcom/miui/player/util/FolderProvider$FolderItem;

    .line 278
    .local v10, list:[Lcom/miui/player/util/FolderProvider$FolderItem;
    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method static findSortKey()I
    .locals 3

    .prologue
    .line 86
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/miui/player/util/FolderProvider$Columns;->ALL_COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 87
    sget-object v1, Lcom/miui/player/util/FolderProvider$Columns;->ALL_COLUMNS:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, "title"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    :goto_1
    return v0

    .line 86
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static getFoldersPersistStr([Lcom/miui/player/util/FolderProvider$FolderItem;)Ljava/lang/String;
    .locals 6
    .parameter "folders"

    .prologue
    .line 385
    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_1

    .line 386
    :cond_0
    const/4 v5, 0x0

    .line 396
    :goto_0
    return-object v5

    .line 389
    :cond_1
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 390
    .local v3, jsonArray:Lorg/json/JSONArray;
    move-object v0, p0

    .local v0, arr$:[Lcom/miui/player/util/FolderProvider$FolderItem;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v1, v0, v2

    .line 391
    .local v1, folder:Lcom/miui/player/util/FolderProvider$FolderItem;
    iget-boolean v5, v1, Lcom/miui/player/util/FolderProvider$FolderItem;->mSelected:Z

    if-nez v5, :cond_2

    .line 392
    iget-object v5, v1, Lcom/miui/player/util/FolderProvider$FolderItem;->mFolderPath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 390
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 396
    .end local v1           #folder:Lcom/miui/player/util/FolderProvider$FolderItem;
    :cond_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static instance()Lcom/miui/player/util/FolderProvider;
    .locals 2

    .prologue
    .line 430
    sget-object v0, Lcom/miui/player/util/FolderProvider;->sInstance:Lcom/miui/player/util/FolderProvider;

    if-nez v0, :cond_1

    .line 431
    const-class v1, Lcom/miui/player/util/FolderProvider;

    monitor-enter v1

    .line 432
    :try_start_0
    sget-object v0, Lcom/miui/player/util/FolderProvider;->sInstance:Lcom/miui/player/util/FolderProvider;

    if-nez v0, :cond_0

    .line 433
    new-instance v0, Lcom/miui/player/util/FolderProvider;

    invoke-direct {v0}, Lcom/miui/player/util/FolderProvider;-><init>()V

    sput-object v0, Lcom/miui/player/util/FolderProvider;->sInstance:Lcom/miui/player/util/FolderProvider;

    .line 435
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    :cond_1
    sget-object v0, Lcom/miui/player/util/FolderProvider;->sInstance:Lcom/miui/player/util/FolderProvider;

    return-object v0

    .line 435
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static isMiuiMusicDownloadFolder(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 226
    sget-object v0, Lcom/miui/player/util/FolderProvider;->MIUI_DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static parseFolderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "path"

    .prologue
    .line 315
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 316
    .local v0, last:I
    if-gez v0, :cond_1

    .line 325
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 320
    .restart local p0
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 321
    .local v1, start:I
    if-lez v1, :cond_0

    .line 325
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static parseFolderPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "filePath"

    .prologue
    .line 310
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 311
    .local v0, index:I
    if-lez v0, :cond_0

    const/4 v1, 0x0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static parseUnselectedFolders(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "json"

    .prologue
    .line 369
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 370
    .local v2, jsonArray:Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 371
    .local v3, len:I
    new-array v0, v3, [Ljava/lang/String;

    .line 372
    .local v0, folder:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 373
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 376
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    .end local v0           #folder:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #jsonArray:Lorg/json/JSONArray;
    .end local v3           #len:I
    :goto_1
    return-object v0

    .line 378
    :catch_0
    move-exception v4

    .line 381
    sget-object v0, Lcom/miui/player/util/FolderProvider;->EMPTY_FOLDER:[Ljava/lang/String;

    goto :goto_1
.end method

.method public static queryTrackListForFolder(Landroid/content/Context;[Ljava/lang/String;)[J
    .locals 8
    .parameter "context"
    .parameter "pathArr"

    .prologue
    const/4 v1, 0x0

    .line 400
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 401
    :cond_0
    sget-object v0, Lcom/miui/player/util/Utils;->LONG_EMPTY_ARRAY:[J

    .line 424
    :goto_0
    return-object v0

    .line 404
    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 405
    .local v2, cols:[Ljava/lang/String;
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "_data"

    invoke-static {v0, v1}, Lcom/miui/player/util/SqlUtils;->pathLikeWhere(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 408
    .local v7, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v7}, Lcom/miui/player/util/SqlUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "title"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 416
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 418
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v6, v0}, Lcom/miui/player/util/SqlUtils;->getIdsForCursor(Landroid/database/Cursor;I)[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 420
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 424
    :cond_2
    sget-object v0, Lcom/miui/player/util/Utils;->LONG_EMPTY_ARRAY:[J

    goto :goto_0
.end method

.method private static sort([Lcom/miui/player/util/FolderProvider$FolderItem;)Z
    .locals 6
    .parameter "folders"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 286
    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 306
    :cond_1
    :goto_0
    return v2

    .line 290
    :cond_2
    const/4 v0, 0x0

    .line 291
    .local v0, i:I
    const/4 v0, 0x0

    :goto_1
    array-length v4, p0

    if-ge v0, v4, :cond_3

    .line 292
    aget-object v4, p0, v0

    iget-object v4, v4, Lcom/miui/player/util/FolderProvider$FolderItem;->mFolderPath:Ljava/lang/String;

    invoke-static {v4}, Lcom/miui/player/util/FolderProvider;->isMiuiMusicDownloadFolder(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 297
    :cond_3
    array-length v4, p0

    if-ge v0, v4, :cond_5

    .line 298
    aget-object v1, p0, v3

    .line 299
    .local v1, temp:Lcom/miui/player/util/FolderProvider$FolderItem;
    aget-object v4, p0, v0

    aput-object v4, p0, v3

    .line 300
    aput-object v1, p0, v0

    .line 301
    array-length v4, p0

    sget-object v5, Lcom/miui/player/util/FolderProvider;->sComparator:Lcom/miui/player/util/FolderProvider$FolderItemComparator;

    invoke-static {p0, v2, v4, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 306
    .end local v1           #temp:Lcom/miui/player/util/FolderProvider$FolderItem;
    :goto_2
    array-length v4, p0

    if-lt v0, v4, :cond_1

    move v2, v3

    goto :goto_0

    .line 291
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 303
    :cond_5
    sget-object v4, Lcom/miui/player/util/FolderProvider;->sComparator:Lcom/miui/player/util/FolderProvider$FolderItemComparator;

    invoke-static {p0, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_2
.end method


# virtual methods
.method public containsMiuiDownload(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lcom/miui/player/util/FolderProvider;->updateFolderItemList(Landroid/content/Context;)Z

    .line 137
    iget-boolean v0, p0, Lcom/miui/player/util/FolderProvider;->mHasMiuiDownload:Z

    return v0
.end method

.method public getAllFolderStatus(Landroid/content/Context;)[Lcom/miui/player/util/FolderProvider$FolderStatus;
    .locals 7
    .parameter "context"

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/miui/player/util/FolderProvider;->updateFolderItemList(Landroid/content/Context;)Z

    .line 108
    iget-object v2, p0, Lcom/miui/player/util/FolderProvider;->mFolderItemList:[Lcom/miui/player/util/FolderProvider$FolderItem;

    .line 109
    .local v2, folders:[Lcom/miui/player/util/FolderProvider$FolderItem;
    array-length v5, v2

    new-array v4, v5, [Lcom/miui/player/util/FolderProvider$FolderStatus;

    .line 110
    .local v4, statusArr:[Lcom/miui/player/util/FolderProvider$FolderStatus;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_0

    .line 111
    aget-object v1, v2, v3

    .line 112
    .local v1, folder:Lcom/miui/player/util/FolderProvider$FolderItem;
    iget-object v0, v1, Lcom/miui/player/util/FolderProvider$FolderItem;->mFolderPath:Ljava/lang/String;

    .line 113
    .local v0, display:Ljava/lang/String;
    new-instance v5, Lcom/miui/player/util/FolderProvider$FolderStatus;

    iget-boolean v6, v1, Lcom/miui/player/util/FolderProvider$FolderItem;->mSelected:Z

    invoke-direct {v5, v0, v6}, Lcom/miui/player/util/FolderProvider$FolderStatus;-><init>(Ljava/lang/String;Z)V

    aput-object v5, v4, v3

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    .end local v0           #display:Ljava/lang/String;
    .end local v1           #folder:Lcom/miui/player/util/FolderProvider$FolderItem;
    :cond_0
    return-object v4
.end method

.method public getSelectedFolderCount(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/miui/player/util/FolderProvider;->updateFolderItemList(Landroid/content/Context;)Z

    .line 142
    const/4 v1, 0x0

    .line 143
    .local v1, count:I
    iget-object v0, p0, Lcom/miui/player/util/FolderProvider;->mFolderItemList:[Lcom/miui/player/util/FolderProvider$FolderItem;

    .local v0, arr$:[Lcom/miui/player/util/FolderProvider$FolderItem;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 144
    .local v3, item:Lcom/miui/player/util/FolderProvider$FolderItem;
    iget-boolean v5, v3, Lcom/miui/player/util/FolderProvider$FolderItem;->mSelected:Z

    if-eqz v5, :cond_0

    .line 145
    add-int/lit8 v1, v1, 0x1

    .line 143
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    .end local v3           #item:Lcom/miui/player/util/FolderProvider$FolderItem;
    :cond_1
    return v1
.end method

.method public getUnselectedFoldersAsSet(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/miui/player/util/FolderProvider;->mParser:Lcom/miui/player/util/FolderProvider$FolderPrefParser;

    invoke-virtual {v0, p1}, Lcom/miui/player/util/FolderProvider$FolderPrefParser;->getUnselectedFoldersAsSet(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public markForceUpdate()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/util/FolderProvider;->mFolderItemList:[Lcom/miui/player/util/FolderProvider$FolderItem;

    .line 193
    return-void
.end method

.method public queryFolderItem(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/player/util/FolderProvider$FolderItem;
    .locals 7
    .parameter "context"
    .parameter "folderPath"

    .prologue
    const/4 v5, 0x0

    .line 120
    if-nez p2, :cond_1

    move-object v3, v5

    .line 132
    :cond_0
    :goto_0
    return-object v3

    .line 124
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/player/util/FolderProvider;->updateFolderItemList(Landroid/content/Context;)Z

    .line 125
    iget-object v1, p0, Lcom/miui/player/util/FolderProvider;->mFolderItemList:[Lcom/miui/player/util/FolderProvider$FolderItem;

    .line 126
    .local v1, folders:[Lcom/miui/player/util/FolderProvider$FolderItem;
    move-object v0, v1

    .local v0, arr$:[Lcom/miui/player/util/FolderProvider$FolderItem;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v3, v0, v2

    .line 127
    .local v3, item:Lcom/miui/player/util/FolderProvider$FolderItem;
    iget-object v6, v3, Lcom/miui/player/util/FolderProvider$FolderItem;->mFolderPath:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v3           #item:Lcom/miui/player/util/FolderProvider$FolderItem;
    :cond_2
    move-object v3, v5

    .line 132
    goto :goto_0
.end method

.method public querySelectedFolders(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 15
    .parameter "context"

    .prologue
    .line 153
    invoke-virtual/range {p0 .. p1}, Lcom/miui/player/util/FolderProvider;->updateFolderItemList(Landroid/content/Context;)Z

    .line 154
    iget-object v4, p0, Lcom/miui/player/util/FolderProvider;->mFolderItemList:[Lcom/miui/player/util/FolderProvider$FolderItem;

    .line 155
    .local v4, folders:[Lcom/miui/player/util/FolderProvider$FolderItem;
    sget-object v1, Lcom/miui/player/util/FolderProvider$Columns;->ALL_COLUMNS:[Ljava/lang/String;

    .line 156
    .local v1, columns:[Ljava/lang/String;
    new-instance v2, Landroid/database/MatrixCursor;

    array-length v13, v4

    invoke-direct {v2, v1, v13}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 157
    .local v2, cursor:Landroid/database/MatrixCursor;
    const/4 v7, 0x0

    .line 158
    .local v7, i:I
    move-object v0, v4

    .local v0, arr$:[Lcom/miui/player/util/FolderProvider$FolderItem;
    array-length v11, v0

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    move v8, v7

    .end local v7           #i:I
    .local v8, i:I
    :goto_0
    if-ge v9, v11, :cond_1

    aget-object v3, v0, v9

    .line 159
    .local v3, folder:Lcom/miui/player/util/FolderProvider$FolderItem;
    iget-boolean v13, v3, Lcom/miui/player/util/FolderProvider$FolderItem;->mSelected:Z

    if-eqz v13, :cond_3

    .line 160
    array-length v13, v1

    new-array v12, v13, [Ljava/lang/Object;

    .line 161
    .local v12, record:[Ljava/lang/Object;
    const/4 v13, 0x0

    add-int/lit8 v7, v8, 0x1

    .end local v8           #i:I
    .restart local v7       #i:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 162
    const/4 v13, 0x1

    iget-object v14, v3, Lcom/miui/player/util/FolderProvider$FolderItem;->mFolderName:Ljava/lang/String;

    aput-object v14, v12, v13

    .line 163
    const/4 v13, 0x2

    iget-object v14, v3, Lcom/miui/player/util/FolderProvider$FolderItem;->mFolderPath:Ljava/lang/String;

    aput-object v14, v12, v13

    .line 164
    const/4 v13, 0x3

    iget v14, v3, Lcom/miui/player/util/FolderProvider$FolderItem;->mTrackCount:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 165
    const/4 v14, 0x4

    iget-boolean v13, v3, Lcom/miui/player/util/FolderProvider$FolderItem;->mSelected:Z

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    :goto_1
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v14

    .line 166
    invoke-virtual {v2, v12}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 158
    .end local v12           #record:[Ljava/lang/Object;
    :goto_2
    add-int/lit8 v9, v9, 0x1

    move v8, v7

    .end local v7           #i:I
    .restart local v8       #i:I
    goto :goto_0

    .line 165
    .end local v8           #i:I
    .restart local v7       #i:I
    .restart local v12       #record:[Ljava/lang/Object;
    :cond_0
    const/4 v13, 0x0

    goto :goto_1

    .line 170
    .end local v3           #folder:Lcom/miui/player/util/FolderProvider$FolderItem;
    .end local v7           #i:I
    .end local v12           #record:[Ljava/lang/Object;
    .restart local v8       #i:I
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/miui/player/util/FolderProvider;->containsMiuiDownload(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v6, 0x1

    .line 171
    .local v6, headerCount:I
    :goto_3
    new-instance v5, Lcom/miui/player/util/FolderProvider$FolderItemKeyGetter;

    invoke-direct {v5}, Lcom/miui/player/util/FolderProvider$FolderItemKeyGetter;-><init>()V

    .line 172
    .local v5, getter:Lcom/miui/player/model/SectionCursor$SortKeyGetter;
    invoke-static {v4, v5, v6}, Lcom/miui/player/model/SectionCursor;->collectSectionInfo([Ljava/lang/Object;Lcom/miui/player/model/SectionCursor$SortKeyGetter;I)Lcom/miui/player/model/SectionCursor$SectionInfo;

    move-result-object v10

    .line 174
    .local v10, info:Lcom/miui/player/model/SectionCursor$SectionInfo;
    invoke-static {v2, v10}, Lcom/miui/player/model/SectionCursor;->wrap(Landroid/database/Cursor;Lcom/miui/player/model/SectionCursor$SectionInfo;)Lcom/miui/player/model/SectionCursor;

    move-result-object v13

    return-object v13

    .line 170
    .end local v5           #getter:Lcom/miui/player/model/SectionCursor$SortKeyGetter;
    .end local v6           #headerCount:I
    .end local v10           #info:Lcom/miui/player/model/SectionCursor$SectionInfo;
    :cond_2
    const/4 v6, 0x0

    goto :goto_3

    .restart local v3       #folder:Lcom/miui/player/util/FolderProvider$FolderItem;
    :cond_3
    move v7, v8

    .end local v8           #i:I
    .restart local v7       #i:I
    goto :goto_2
.end method

.method public updateFolderItemList(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 238
    iget-object v2, p0, Lcom/miui/player/util/FolderProvider;->mFolderItemList:[Lcom/miui/player/util/FolderProvider$FolderItem;

    if-eqz v2, :cond_0

    .line 239
    iget-boolean v1, p0, Lcom/miui/player/util/FolderProvider;->mChangedMark:Z

    .line 240
    .local v1, mark:Z
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/player/util/FolderProvider;->mChangedMark:Z

    .line 247
    .end local v1           #mark:Z
    :goto_0
    return v1

    .line 244
    :cond_0
    iget-object v2, p0, Lcom/miui/player/util/FolderProvider;->mParser:Lcom/miui/player/util/FolderProvider$FolderPrefParser;

    invoke-static {p1, v2}, Lcom/miui/player/util/FolderProvider;->collectFolderItemList(Landroid/content/Context;Lcom/miui/player/util/FolderProvider$FolderPrefParser;)[Lcom/miui/player/util/FolderProvider$FolderItem;

    move-result-object v0

    .line 245
    .local v0, list:[Lcom/miui/player/util/FolderProvider$FolderItem;
    invoke-static {v0}, Lcom/miui/player/util/FolderProvider;->sort([Lcom/miui/player/util/FolderProvider$FolderItem;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/player/util/FolderProvider;->mHasMiuiDownload:Z

    .line 246
    iput-object v0, p0, Lcom/miui/player/util/FolderProvider;->mFolderItemList:[Lcom/miui/player/util/FolderProvider$FolderItem;

    .line 247
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public updateFolderItemSelected(Landroid/content/Context;[Lcom/miui/player/util/FolderProvider$FolderStatus;)Z
    .locals 8
    .parameter "context"
    .parameter "statusArr"

    .prologue
    .line 201
    iget-object v4, p0, Lcom/miui/player/util/FolderProvider;->mFolderItemList:[Lcom/miui/player/util/FolderProvider$FolderItem;

    .line 202
    .local v4, list:[Lcom/miui/player/util/FolderProvider$FolderItem;
    if-eqz v4, :cond_0

    array-length v6, v4

    array-length v7, p2

    if-eq v6, v7, :cond_1

    .line 203
    :cond_0
    const/4 v0, 0x0

    .line 222
    :goto_0
    return v0

    .line 206
    :cond_1
    const/4 v0, 0x0

    .line 207
    .local v0, changed:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v6, v4

    if-ge v2, v6, :cond_3

    .line 208
    aget-object v1, v4, v2

    .line 209
    .local v1, folder:Lcom/miui/player/util/FolderProvider$FolderItem;
    aget-object v6, p2, v2

    iget-boolean v5, v6, Lcom/miui/player/util/FolderProvider$FolderStatus;->mSelected:Z

    .line 210
    .local v5, selected:Z
    iget-boolean v6, v1, Lcom/miui/player/util/FolderProvider$FolderItem;->mSelected:Z

    if-eq v6, v5, :cond_2

    .line 211
    iput-boolean v5, v1, Lcom/miui/player/util/FolderProvider$FolderItem;->mSelected:Z

    .line 212
    const/4 v0, 0x1

    .line 207
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 216
    .end local v1           #folder:Lcom/miui/player/util/FolderProvider$FolderItem;
    .end local v5           #selected:Z
    :cond_3
    if-eqz v0, :cond_4

    .line 217
    invoke-static {v4}, Lcom/miui/player/util/FolderProvider;->getFoldersPersistStr([Lcom/miui/player/util/FolderProvider$FolderItem;)Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, json:Ljava/lang/String;
    const-string v6, "filter_music_folder"

    invoke-static {p1, v6, v3}, Lcom/miui/player/util/PreferenceCache;->setPrefAsString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .end local v3           #json:Ljava/lang/String;
    :cond_4
    iput-boolean v0, p0, Lcom/miui/player/util/FolderProvider;->mChangedMark:Z

    goto :goto_0
.end method
