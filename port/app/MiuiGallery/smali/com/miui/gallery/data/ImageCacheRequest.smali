.class abstract Lcom/miui/gallery/data/ImageCacheRequest;
.super Ljava/lang/Object;
.source "ImageCacheRequest.java"

# interfaces
.implements Lcom/miui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field protected mApplication:Lcom/miui/gallery/app/GalleryApp;

.field private mPath:Lcom/miui/gallery/data/Path;

.field private mTargetSize:I

.field private mType:I


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/data/Path;II)V
    .locals 0
    .parameter "application"
    .parameter "path"
    .parameter "type"
    .parameter "targetSize"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/miui/gallery/data/ImageCacheRequest;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    .line 40
    iput-object p2, p0, Lcom/miui/gallery/data/ImageCacheRequest;->mPath:Lcom/miui/gallery/data/Path;

    .line 41
    iput p3, p0, Lcom/miui/gallery/data/ImageCacheRequest;->mType:I

    .line 42
    iput p4, p0, Lcom/miui/gallery/data/ImageCacheRequest;->mTargetSize:I

    .line 43
    return-void
.end method


# virtual methods
.method public abstract onDecodeOriginal(Lcom/miui/gallery/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
.end method

.method public run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "jc"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 46
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/miui/gallery/data/ImageCacheRequest;->mPath:Lcom/miui/gallery/data/Path;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v6, p0, Lcom/miui/gallery/data/ImageCacheRequest;->mType:I

    if-ne v6, v9, :cond_1

    const-string v6, "THUMB"

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, debugTag:Ljava/lang/String;
    iget-object v6, p0, Lcom/miui/gallery/data/ImageCacheRequest;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v6}, Lcom/miui/gallery/app/GalleryApp;->getImageCacheService()Lcom/miui/gallery/data/ImageCacheService;

    move-result-object v2

    .line 51
    .local v2, cacheService:Lcom/miui/gallery/data/ImageCacheService;
    iget-object v6, p0, Lcom/miui/gallery/data/ImageCacheRequest;->mPath:Lcom/miui/gallery/data/Path;

    iget v8, p0, Lcom/miui/gallery/data/ImageCacheRequest;->mType:I

    invoke-virtual {v2, v6, v8}, Lcom/miui/gallery/data/ImageCacheService;->getImageData(Lcom/miui/gallery/data/Path;I)Lcom/miui/gallery/data/ImageCacheService$ImageData;

    move-result-object v3

    .line 52
    .local v3, data:Lcom/miui/gallery/data/ImageCacheService$ImageData;
    invoke-interface {p1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v1, v7

    .line 86
    :cond_0
    :goto_1
    return-object v1

    .line 46
    .end local v2           #cacheService:Lcom/miui/gallery/data/ImageCacheService;
    .end local v3           #data:Lcom/miui/gallery/data/ImageCacheService$ImageData;
    .end local v4           #debugTag:Ljava/lang/String;
    :cond_1
    iget v6, p0, Lcom/miui/gallery/data/ImageCacheRequest;->mType:I

    if-ne v6, v10, :cond_2

    const-string v6, "MICROTHUMB"

    goto :goto_0

    :cond_2
    const-string v6, "?"

    goto :goto_0

    .line 54
    .restart local v2       #cacheService:Lcom/miui/gallery/data/ImageCacheService;
    .restart local v3       #data:Lcom/miui/gallery/data/ImageCacheService$ImageData;
    .restart local v4       #debugTag:Ljava/lang/String;
    :cond_3
    if-eqz v3, :cond_4

    .line 55
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 56
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 57
    iget-object v6, v3, Lcom/miui/gallery/data/ImageCacheService$ImageData;->mData:[B

    iget v7, v3, Lcom/miui/gallery/data/ImageCacheService$ImageData;->mOffset:I

    iget-object v8, v3, Lcom/miui/gallery/data/ImageCacheService$ImageData;->mData:[B

    array-length v8, v8

    iget v9, v3, Lcom/miui/gallery/data/ImageCacheService$ImageData;->mOffset:I

    sub-int/2addr v8, v9

    invoke-static {p1, v6, v7, v8, v5}, Lcom/miui/gallery/data/DecodeUtils;->requestDecode(Lcom/miui/gallery/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 59
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 60
    const-string v6, "ImageCacheRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "decode cached failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 64
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_4
    iget v6, p0, Lcom/miui/gallery/data/ImageCacheRequest;->mType:I

    invoke-virtual {p0, p1, v6}, Lcom/miui/gallery/data/ImageCacheRequest;->onDecodeOriginal(Lcom/miui/gallery/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 65
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    invoke-interface {p1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v1, v7

    goto :goto_1

    .line 67
    :cond_5
    if-nez v1, :cond_6

    .line 68
    const-string v6, "ImageCacheRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decode orig failed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v7

    .line 69
    goto :goto_1

    .line 72
    :cond_6
    iget v6, p0, Lcom/miui/gallery/data/ImageCacheRequest;->mType:I

    if-ne v6, v10, :cond_7

    .line 80
    :goto_2
    invoke-interface {p1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v1, v7

    goto :goto_1

    .line 77
    :cond_7
    iget v6, p0, Lcom/miui/gallery/data/ImageCacheRequest;->mTargetSize:I

    invoke-static {v1, v6, v9}, Lcom/miui/gallery/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    .line 82
    :cond_8
    invoke-static {v1}, Lcom/miui/gallery/common/BitmapUtils;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 83
    .local v0, array:[B
    invoke-interface {p1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_9

    move-object v1, v7

    goto/16 :goto_1

    .line 85
    :cond_9
    iget-object v6, p0, Lcom/miui/gallery/data/ImageCacheRequest;->mPath:Lcom/miui/gallery/data/Path;

    iget v7, p0, Lcom/miui/gallery/data/ImageCacheRequest;->mType:I

    invoke-virtual {v2, v6, v7, v0}, Lcom/miui/gallery/data/ImageCacheService;->putImageData(Lcom/miui/gallery/data/Path;I[B)V

    goto/16 :goto_1
.end method

.method public bridge synthetic run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/ImageCacheRequest;->run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
