.class public final Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;
.super Ljava/lang/Object;
.source "ThumbnailCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$FetchThumbnailTask;,
        Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailReadyListener;,
        Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailCache;
    }
.end annotation


# static fields
.field private static sBigImageThumbCache:Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailCache;

.field private static sFullImageThumbCache:Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailCache;

.field public static sFullThumbTaskManager:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;

.field public static sThumbTaskManager:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 43
    new-instance v0, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailCache;-><init>(I)V

    sput-object v0, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->sBigImageThumbCache:Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailCache;

    .line 44
    new-instance v0, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailCache;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailCache;-><init>(I)V

    sput-object v0, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->sFullImageThumbCache:Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailCache;

    .line 49
    new-instance v0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;

    invoke-direct {v0}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;-><init>()V

    sput-object v0, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->sThumbTaskManager:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;

    .line 50
    sget-object v0, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->sThumbTaskManager:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->setMaxTaskNum(I)V

    .line 51
    sget-object v0, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->sThumbTaskManager:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->setMaxLowTaskNum(I)V

    .line 52
    sget-object v0, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->sThumbTaskManager:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->setWorkThreadNum(I)V

    .line 57
    new-instance v0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;

    invoke-direct {v0}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;-><init>()V

    sput-object v0, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->sFullThumbTaskManager:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;

    .line 58
    sget-object v0, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->sFullThumbTaskManager:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->setMaxTaskNum(I)V

    .line 59
    sget-object v0, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->sFullThumbTaskManager:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->setMaxLowTaskNum(I)V

    .line 62
    sget-object v0, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->sFullThumbTaskManager:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->setWorkThreadNum(I)V

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    return-void
.end method

.method public static fetchThumbnail(Lcom/miui/gallery/StorageExplorer/BaseMeta;I)V
    .locals 2
    .parameter "meta"
    .parameter "type"

    .prologue
    .line 279
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->fetchThumbnail(Lcom/miui/gallery/StorageExplorer/BaseMeta;ILcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailReadyListener;Z)V

    .line 280
    return-void
.end method

.method public static fetchThumbnail(Lcom/miui/gallery/StorageExplorer/BaseMeta;ILcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailReadyListener;Z)V
    .locals 2
    .parameter "meta"
    .parameter "type"
    .parameter "listener"
    .parameter "forceLowPriority"

    .prologue
    .line 284
    if-nez p0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 286
    :cond_0
    new-instance v1, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$FetchThumbnailTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$FetchThumbnailTask;-><init>(Lcom/miui/gallery/StorageExplorer/BaseMeta;ILcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailReadyListener;)V

    .line 287
    .local v1, task:Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$FetchThumbnailTask;
    if-nez p1, :cond_1

    sget-object v0, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->sFullThumbTaskManager:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;

    .line 288
    .local v0, stack:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;
    :goto_1
    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    .line 289
    invoke-virtual {v0, v1}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->pushBack(Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;)V

    goto :goto_0

    .line 287
    .end local v0           #stack:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;
    :cond_1
    sget-object v0, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->sThumbTaskManager:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;

    goto :goto_1

    .line 292
    .restart local v0       #stack:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;
    :cond_2
    invoke-virtual {v0, v1}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->pushBackAsLow(Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;)V

    goto :goto_0
.end method

.method private static getCache(I)Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailCache;
    .locals 1
    .parameter "type"

    .prologue
    .line 71
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->sBigImageThumbCache:Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailCache;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->sFullImageThumbCache:Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailCache;

    goto :goto_0
.end method

.method protected static getCachePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-static {}, Lmiui/os/Environment;->getMIUIStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/.cache/Gallery"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPixelSize(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 75
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const v0, 0x9c40

    :goto_0
    return v0

    :cond_0
    const v0, 0x64140

    goto :goto_0
.end method

.method public static getThumbnail(Lcom/miui/gallery/StorageExplorer/BaseMeta;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "meta"
    .parameter "type"

    .prologue
    .line 79
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->getThumbnail(Lcom/miui/gallery/StorageExplorer/BaseMeta;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getThumbnail(Lcom/miui/gallery/StorageExplorer/BaseMeta;IZ)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "meta"
    .parameter "type"
    .parameter "preciseInSize"

    .prologue
    .line 83
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->getThumbnail(Lcom/miui/gallery/StorageExplorer/BaseMeta;IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getThumbnail(Lcom/miui/gallery/StorageExplorer/BaseMeta;IZZ)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "meta"
    .parameter "type"
    .parameter "preciseInSize"
    .parameter "cacheOnly"

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 87
    if-ltz p1, :cond_0

    if-le p1, v7, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-object v0

    .line 89
    :cond_1
    invoke-static {p0}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->hash(Lcom/miui/gallery/StorageExplorer/BaseMeta;)Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, key:Ljava/lang/String;
    invoke-static {p1}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->getCache(I)Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailCache;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailCache;->getThumbnail(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 93
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_3

    if-ne p1, v7, :cond_3

    .line 95
    invoke-static {v4}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, filePath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 98
    invoke-static {v3}, Lcom/miui/gallery/StorageExplorer/ImageLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/gallery/StorageExplorer/ImageLoader;->getDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 99
    if-nez v0, :cond_4

    .line 100
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 107
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    if-nez p2, :cond_3

    iget-boolean v6, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mHasExifThumbnail:Z

    if-eqz v6, :cond_3

    .line 110
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    iget-object v6, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mPath:Ljava/lang/String;

    invoke-direct {v1, v6}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, exif:Landroid/media/ExifInterface;
    if-eqz v1, :cond_3

    .line 112
    invoke-virtual {v1}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v5

    .line 113
    .local v5, thumbData:[B
    if-eqz v5, :cond_3

    .line 114
    const/4 v6, 0x0

    array-length v7, v5

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/gallery/StorageExplorer/ImageLoader;->getDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 123
    .end local v1           #exif:Landroid/media/ExifInterface;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #filePath:Ljava/lang/String;
    .end local v5           #thumbData:[B
    :cond_3
    :goto_2
    if-eqz p3, :cond_5

    .line 124
    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 127
    add-int/lit8 v6, p1, 0x1

    invoke-static {p0, v6, p2, p3}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->getThumbnail(Lcom/miui/gallery/StorageExplorer/BaseMeta;IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 103
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #filePath:Ljava/lang/String;
    :cond_4
    invoke-static {p1}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->getCache(I)Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailCache;

    move-result-object v6

    invoke-virtual {v6, v4, v0}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailCache;->putThumbnail(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 131
    .end local v2           #file:Ljava/io/File;
    .end local v3           #filePath:Ljava/lang/String;
    :cond_5
    if-nez v0, :cond_0

    .line 132
    invoke-static {p1}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->getPixelSize(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/miui/gallery/StorageExplorer/BaseMeta;->getThumbnail(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    .line 134
    invoke-static {v4, p1, v0}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->putThumbnail(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)V

    .line 135
    invoke-static {p1}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->getCache(I)Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailCache;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 118
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #filePath:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public static getVideoThumbnailPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_vt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hash(Lcom/miui/gallery/StorageExplorer/BaseMeta;)Ljava/lang/String;
    .locals 3
    .parameter "meta"

    .prologue
    .line 189
    if-nez p0, :cond_0

    const-string v0, ""

    .line 190
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mPath:Ljava/lang/String;

    iget-wide v1, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mDateModified:J

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->hash(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    .line 194
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    .line 199
    :goto_0
    return-object v1

    .line 196
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->hash(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static hash(Ljava/lang/String;J)Ljava/lang/String;
    .locals 1
    .parameter "path"
    .parameter "modifiedDate"

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->getMd5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static putThumbnail(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter "key"
    .parameter "type"
    .parameter "drawable"

    .prologue
    .line 143
    const/4 v1, 0x0

    .line 144
    .local v1, resizedDrawable:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v2, 0x1

    .local v2, saveType:I
    :goto_0
    if-lt v2, p1, :cond_3

    .line 145
    invoke-static {v2}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->getCache(I)Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailCache;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailCache;->getThumbnail(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 144
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 148
    :cond_1
    instance-of v3, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v3, :cond_2

    .line 149
    invoke-static {v2}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->getCache(I)Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailCache;

    move-result-object v3

    invoke-virtual {v3, p0, p2}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailCache;->putThumbnail(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    move-object v3, p2

    .line 153
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->getPixelSize(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/StorageExplorer/ImageLoader;->getDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 156
    if-eqz v1, :cond_0

    .line 158
    invoke-static {v2}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->getCache(I)Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailCache;

    move-result-object v3

    invoke-virtual {v3, p0, v1}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailCache;->putThumbnail(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 161
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, file:Ljava/io/File;
    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 163
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->saveToFile(Landroid/graphics/Bitmap;Ljava/io/File;)V

    goto :goto_1

    .line 166
    .end local v0           #file:Ljava/io/File;
    :cond_3
    return-void
.end method

.method private static resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "src"
    .parameter "pixelSize"

    .prologue
    .line 247
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 266
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 249
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 250
    .local v4, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 251
    .local v0, h:I
    mul-int v5, v4, v0

    if-le v5, p1, :cond_0

    .line 253
    int-to-double v5, p1

    int-to-double v7, v4

    div-double/2addr v5, v7

    int-to-double v7, v0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 254
    .local v2, scale:D
    const/4 v1, 0x0

    .line 257
    .local v1, result:Landroid/graphics/Bitmap;
    int-to-double v5, v4

    mul-double/2addr v5, v2

    double-to-int v5, v5

    int-to-double v6, v0

    mul-double/2addr v6, v2

    double-to-int v6, v6

    const/4 v7, 0x1

    :try_start_0
    invoke-static {p0, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_1
    move-object p0, v1

    .line 266
    goto :goto_0

    .line 262
    :catch_0
    move-exception v5

    goto :goto_1

    .line 263
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public static saveToFile(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 7
    .parameter "bitmap"
    .parameter "file"

    .prologue
    .line 169
    if-nez p0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 170
    :cond_0
    const/4 v1, 0x0

    .line 172
    .local v1, outputStream:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    const/16 v4, 0x1ff

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Lmiui/os/ExtraFileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 173
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v1           #outputStream:Ljava/io/OutputStream;
    .local v2, outputStream:Ljava/io/OutputStream;
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {p0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 175
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 176
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1ff

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    invoke-static {v2}, Lcom/miui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 181
    .end local v2           #outputStream:Ljava/io/OutputStream;
    .restart local v1       #outputStream:Ljava/io/OutputStream;
    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, ex:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    invoke-static {v1}, Lcom/miui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v1}, Lcom/miui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v3

    .end local v1           #outputStream:Ljava/io/OutputStream;
    .restart local v2       #outputStream:Ljava/io/OutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #outputStream:Ljava/io/OutputStream;
    .restart local v1       #outputStream:Ljava/io/OutputStream;
    goto :goto_2

    .line 177
    .end local v1           #outputStream:Ljava/io/OutputStream;
    .restart local v2       #outputStream:Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #outputStream:Ljava/io/OutputStream;
    .restart local v1       #outputStream:Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static setMaxTaskNum(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 66
    sget-object v0, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->sThumbTaskManager:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;

    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->clearPendingTask()V

    .line 67
    sget-object v0, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->sThumbTaskManager:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->setMaxNum(I)V

    .line 68
    return-void
.end method
