.class public Lcom/miui/gallery/data/ImageCacheService;
.super Ljava/lang/Object;
.source "ImageCacheService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/ImageCacheService$ImageData;
    }
.end annotation


# instance fields
.field private mExternalCache:Lcom/miui/gallery/common/BlobCache;

.field private mInternalCache:Lcom/miui/gallery/common/BlobCache;

.field private mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/ImageCacheService;->mLock:Ljava/lang/Object;

    .line 44
    invoke-virtual {p0}, Lcom/miui/gallery/data/ImageCacheService;->initCache()V

    .line 45
    return-void
.end method

.method private static isSameKey([B[B)Z
    .locals 5
    .parameter "key"
    .parameter "buffer"

    .prologue
    const/4 v2, 0x0

    .line 166
    array-length v1, p0

    .line 167
    .local v1, n:I
    array-length v3, p1

    if-ge v3, v1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v2

    .line 170
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 171
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-ne v3, v4, :cond_0

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static makeKey(Lcom/miui/gallery/data/Path;I)[B
    .locals 2
    .parameter "path"
    .parameter "type"

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/GalleryUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCacheByPath(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/common/BlobCache;
    .locals 6
    .parameter "path"

    .prologue
    const/4 v5, 0x0

    .line 98
    const/4 v2, 0x0

    .line 100
    .local v2, result:Lcom/miui/gallery/common/BlobCache;
    invoke-virtual {p1}, Lcom/miui/gallery/data/Path;->getParent()Lcom/miui/gallery/data/Path;

    move-result-object v1

    .line 101
    .local v1, parent:Lcom/miui/gallery/data/Path;
    invoke-static {v1}, Lcom/miui/gallery/util/GalleryDBHelper;->getImageVideoPathType(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;

    move-result-object v0

    .line 103
    .local v0, itemPathType:Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;
    iget-boolean v3, v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isValid:Z

    if-eqz v3, :cond_1

    .line 105
    iget-boolean v3, v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isInternalMedia:Z

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/data/ImageCacheService;->mInternalCache:Lcom/miui/gallery/common/BlobCache;

    .line 113
    :goto_0
    return-object v2

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/data/ImageCacheService;->mExternalCache:Lcom/miui/gallery/common/BlobCache;

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p1}, Lcom/miui/gallery/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v3

    const-string v4, "storage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 108
    iget-object v2, p0, Lcom/miui/gallery/data/ImageCacheService;->mExternalCache:Lcom/miui/gallery/common/BlobCache;

    goto :goto_0

    .line 110
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the path form is wrong"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v5, v3, v4}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getImageData(Lcom/miui/gallery/data/Path;I)Lcom/miui/gallery/data/ImageCacheService$ImageData;
    .locals 9
    .parameter "path"
    .parameter "type"

    .prologue
    const/4 v6, 0x0

    .line 117
    invoke-static {p1, p2}, Lcom/miui/gallery/data/ImageCacheService;->makeKey(Lcom/miui/gallery/data/Path;I)[B

    move-result-object v3

    .line 118
    .local v3, key:[B
    invoke-static {v3}, Lcom/miui/gallery/common/Utils;->crc64Long([B)J

    move-result-wide v1

    .line 120
    .local v1, cacheKey:J
    const/4 v5, 0x0

    .line 121
    .local v5, value:[B
    :try_start_0
    iget-object v8, p0, Lcom/miui/gallery/data/ImageCacheService;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/ImageCacheService;->getCacheByPath(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/common/BlobCache;

    move-result-object v0

    .line 123
    .local v0, cache:Lcom/miui/gallery/common/BlobCache;
    if-nez v0, :cond_1

    .line 124
    monitor-exit v8

    .line 137
    .end local v0           #cache:Lcom/miui/gallery/common/BlobCache;
    :cond_0
    :goto_0
    return-object v6

    .line 127
    .restart local v0       #cache:Lcom/miui/gallery/common/BlobCache;
    :cond_1
    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/common/BlobCache;->lookup(J)[B

    move-result-object v5

    .line 128
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    if-eqz v5, :cond_0

    .line 130
    :try_start_2
    invoke-static {v3, v5}, Lcom/miui/gallery/data/ImageCacheService;->isSameKey([B[B)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 131
    array-length v4, v3

    .line 132
    .local v4, offset:I
    new-instance v7, Lcom/miui/gallery/data/ImageCacheService$ImageData;

    invoke-direct {v7, v5, v4}, Lcom/miui/gallery/data/ImageCacheService$ImageData;-><init>([BI)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v7

    goto :goto_0

    .line 128
    .end local v0           #cache:Lcom/miui/gallery/common/BlobCache;
    .end local v4           #offset:I
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 134
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public initCache()V
    .locals 6

    .prologue
    .line 68
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/miui/gallery/data/ImageCacheService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 70
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sIsStorageReady()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    iget-object v1, p0, Lcom/miui/gallery/data/ImageCacheService;->mExternalCache:Lcom/miui/gallery/common/BlobCache;

    if-nez v1, :cond_0

    .line 73
    sget v1, Lcom/miui/gallery/util/CacheManager;->CACHE_EXTERNAL_IMAGE:I

    const/16 v3, 0x1388

    const/high16 v4, 0xc80

    const/4 v5, 0x3

    invoke-static {v0, v1, v3, v4, v5}, Lcom/miui/gallery/util/CacheManager;->getExternalCache(Landroid/content/Context;IIII)Lcom/miui/gallery/common/BlobCache;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/data/ImageCacheService;->mExternalCache:Lcom/miui/gallery/common/BlobCache;

    .line 85
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/data/ImageCacheService;->mInternalCache:Lcom/miui/gallery/common/BlobCache;

    if-nez v1, :cond_1

    .line 86
    sget v1, Lcom/miui/gallery/util/CacheManager;->CACHE_INTERNAL_IMAGE:I

    const/16 v3, 0x1388

    const/high16 v4, 0xc80

    const/4 v5, 0x3

    invoke-static {v0, v1, v3, v4, v5}, Lcom/miui/gallery/util/CacheManager;->getInternalCache(Landroid/content/Context;IIII)Lcom/miui/gallery/common/BlobCache;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/data/ImageCacheService;->mInternalCache:Lcom/miui/gallery/common/BlobCache;

    .line 90
    :cond_1
    monitor-exit v2

    .line 91
    return-void

    .line 79
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/data/ImageCacheService;->mExternalCache:Lcom/miui/gallery/common/BlobCache;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/miui/gallery/data/ImageCacheService;->mExternalCache:Lcom/miui/gallery/common/BlobCache;

    invoke-virtual {v1}, Lcom/miui/gallery/common/BlobCache;->close()V

    .line 81
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/data/ImageCacheService;->mExternalCache:Lcom/miui/gallery/common/BlobCache;

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public postCleanCache()V
    .locals 2

    .prologue
    .line 57
    iget-object v1, p0, Lcom/miui/gallery/data/ImageCacheService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 59
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/miui/gallery/data/ImageCacheService;->mExternalCache:Lcom/miui/gallery/common/BlobCache;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/data/ImageCacheService;->mInternalCache:Lcom/miui/gallery/common/BlobCache;

    .line 63
    invoke-virtual {p0}, Lcom/miui/gallery/data/ImageCacheService;->initCache()V

    .line 64
    monitor-exit v1

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putImageData(Lcom/miui/gallery/data/Path;I[B)V
    .locals 9
    .parameter "path"
    .parameter "type"
    .parameter "value"

    .prologue
    .line 141
    iget-object v7, p0, Lcom/miui/gallery/data/ImageCacheService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 142
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/ImageCacheService;->getCacheByPath(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/common/BlobCache;

    move-result-object v1

    .line 143
    .local v1, cache:Lcom/miui/gallery/common/BlobCache;
    if-nez v1, :cond_0

    .line 144
    monitor-exit v7

    .line 159
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-static {p1, p2}, Lcom/miui/gallery/data/ImageCacheService;->makeKey(Lcom/miui/gallery/data/Path;I)[B

    move-result-object v5

    .line 148
    .local v5, key:[B
    invoke-static {v5}, Lcom/miui/gallery/common/Utils;->crc64Long([B)J

    move-result-wide v2

    .line 149
    .local v2, cacheKey:J
    array-length v6, v5

    array-length v8, p3

    add-int/2addr v6, v8

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 150
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 151
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Lcom/miui/gallery/common/BlobCache;->insert(J[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    :goto_1
    :try_start_2
    monitor-exit v7

    goto :goto_0

    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    .end local v1           #cache:Lcom/miui/gallery/common/BlobCache;
    .end local v2           #cacheKey:J
    .end local v5           #key:[B
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 155
    .restart local v0       #buffer:Ljava/nio/ByteBuffer;
    .restart local v1       #cache:Lcom/miui/gallery/common/BlobCache;
    .restart local v2       #cacheKey:J
    .restart local v5       #key:[B
    :catch_0
    move-exception v4

    .line 156
    .local v4, ex:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
