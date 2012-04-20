.class public Lcom/miui/gallery/data/AlbumCache;
.super Ljava/lang/Object;
.source "AlbumCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;
    }
.end annotation


# static fields
.field private static mMediaSetDataVersion:J

.field private static sAllMediaSet:Lcom/miui/gallery/data/MediaSet;

.field private static sCache:Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;

    invoke-direct {v0}, Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;-><init>()V

    sput-object v0, Lcom/miui/gallery/data/AlbumCache;->sCache:Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;

    .line 30
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/miui/gallery/data/AlbumCache;->mMediaSetDataVersion:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static declared-synchronized cloneAlbum(Lcom/miui/gallery/data/DBAlbum;)V
    .locals 3
    .parameter "src"

    .prologue
    .line 47
    const-class v2, Lcom/miui/gallery/data/AlbumCache;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBAlbum;->getBucketPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/data/AlbumCache;->getAlbum(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;

    move-result-object v0

    .line 48
    .local v0, currentAlbum:Lcom/miui/gallery/data/DBAlbum;
    invoke-virtual {v0, p0}, Lcom/miui/gallery/data/DBAlbum;->clone(Lcom/miui/gallery/data/DBAlbum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit v2

    return-void

    .line 47
    .end local v0           #currentAlbum:Lcom/miui/gallery/data/DBAlbum;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getAlbum(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;
    .locals 3
    .parameter "bucketPath"

    .prologue
    .line 75
    const-class v2, Lcom/miui/gallery/data/AlbumCache;

    monitor-enter v2

    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 83
    :cond_0
    :goto_0
    monitor-exit v2

    return-object v0

    .line 77
    :cond_1
    :try_start_0
    sget-object v1, Lcom/miui/gallery/data/AlbumCache;->sCache:Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;

    invoke-virtual {v1, p0}, Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;->get(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;

    move-result-object v0

    .line 78
    .local v0, data:Lcom/miui/gallery/data/DBAlbum;
    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/miui/gallery/data/DBAlbum;

    .end local v0           #data:Lcom/miui/gallery/data/DBAlbum;
    invoke-direct {v0, p0}, Lcom/miui/gallery/data/DBAlbum;-><init>(Ljava/lang/String;)V

    .line 80
    .restart local v0       #data:Lcom/miui/gallery/data/DBAlbum;
    sget-object v1, Lcom/miui/gallery/data/AlbumCache;->sCache:Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;

    invoke-virtual {v1, p0, v0}, Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;->put(Ljava/lang/String;Lcom/miui/gallery/data/DBAlbum;)Lcom/miui/gallery/data/DBAlbum;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 75
    .end local v0           #data:Lcom/miui/gallery/data/DBAlbum;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getAlbumByPath(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/DBAlbum;
    .locals 6
    .parameter "path"

    .prologue
    .line 33
    const-class v5, Lcom/miui/gallery/data/AlbumCache;

    monitor-enter v5

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, bucketId:Ljava/lang/String;
    sget-object v4, Lcom/miui/gallery/data/AlbumCache;->sCache:Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;

    invoke-virtual {v4}, Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 36
    .local v3, pathSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 37
    .local v2, pathIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 39
    .local v1, bucketPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/gallery/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    sget-object v4, Lcom/miui/gallery/data/AlbumCache;->sCache:Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;

    invoke-virtual {v4, v1}, Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;->get(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 43
    .end local v1           #bucketPath:Ljava/lang/String;
    :goto_0
    monitor-exit v5

    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 33
    .end local v0           #bucketId:Ljava/lang/String;
    .end local v2           #pathIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #pathSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static initCache(Lcom/miui/gallery/data/MediaSet;)V
    .locals 1
    .parameter "set"

    .prologue
    .line 52
    sput-object p0, Lcom/miui/gallery/data/AlbumCache;->sAllMediaSet:Lcom/miui/gallery/data/MediaSet;

    .line 53
    invoke-static {}, Lcom/miui/gallery/util/AlbumUtils;->findAllAlbums()Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/data/AlbumCache;->sCache:Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;

    .line 54
    invoke-static {}, Lcom/miui/gallery/data/AlbumCache;->reloadCache()V

    .line 55
    return-void
.end method

.method public static declared-synchronized reloadCache()V
    .locals 9

    .prologue
    .line 58
    const-class v6, Lcom/miui/gallery/data/AlbumCache;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lcom/miui/gallery/data/AlbumCache;->sAllMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v5}, Lcom/miui/gallery/data/MediaSet;->reload()J

    move-result-wide v3

    .line 59
    .local v3, newDataVersion:J
    sget-wide v7, Lcom/miui/gallery/data/AlbumCache;->mMediaSetDataVersion:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v5, v7, v3

    if-nez v5, :cond_1

    .line 72
    :cond_0
    monitor-exit v6

    return-void

    .line 64
    :cond_1
    :try_start_1
    sput-wide v3, Lcom/miui/gallery/data/AlbumCache;->mMediaSetDataVersion:J

    .line 67
    sget-object v5, Lcom/miui/gallery/data/AlbumCache;->sAllMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v5}, Lcom/miui/gallery/data/MediaSet;->getAllAlbums()Ljava/util/ArrayList;

    move-result-object v0

    .line 68
    .local v0, albums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaSet;>;"
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 69
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v5}, Lcom/miui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/gallery/data/AlbumCache;->getAlbum(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;

    move-result-object v1

    .line 70
    .local v1, dbAlbum:Lcom/miui/gallery/data/DBAlbum;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/miui/gallery/data/DBAlbum;->setIsFromSystemDatabase(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    .end local v0           #albums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaSet;>;"
    .end local v1           #dbAlbum:Lcom/miui/gallery/data/DBAlbum;
    .end local v2           #index:I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method
