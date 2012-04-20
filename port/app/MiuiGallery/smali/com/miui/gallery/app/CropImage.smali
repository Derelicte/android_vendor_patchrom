.class public Lcom/miui/gallery/app/CropImage;
.super Lcom/miui/gallery/app/AbstractGalleryActivity;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/app/CropImage$LoadBitmapDataTask;,
        Lcom/miui/gallery/app/CropImage$LoadDataTask;,
        Lcom/miui/gallery/app/CropImage$SaveOutput;
    }
.end annotation


# static fields
.field public static final DOWNLOAD_BUCKET:Ljava/io/File;

.field private static final EXIF_TAGS:[Ljava/lang/String;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapInIntent:Landroid/graphics/Bitmap;

.field private mBitmapTileProvider:Lcom/miui/gallery/ui/BitmapTileProvider;

.field private mCropView:Lcom/miui/gallery/ui/CropView;

.field private mDoFaceDetection:Z

.field private mLoadBitmapTask:Lcom/miui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadTask:Lcom/miui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mMainHandler:Landroid/os/Handler;

.field private mMediaItem:Lcom/miui/gallery/data/MediaItem;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

.field private mSaveTask:Lcom/miui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/Future",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field private mUseRegionDecoder:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 124
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    .line 953
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DateTime"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Make"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Model"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Flash"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "GPSLatitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "GPSLongitude"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GPSLatitudeRef"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GPSLongitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "GPSAltitude"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "GPSAltitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "GPSTimeStamp"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "GPSDateStamp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "WhiteBalance"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "FocalLength"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "GPSProcessingMethod"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/app/CropImage;->EXIF_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Lcom/miui/gallery/app/AbstractGalleryActivity;-><init>()V

    .line 129
    iput v1, p0, Lcom/miui/gallery/app/CropImage;->mState:I

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/app/CropImage;->mDoFaceDetection:Z

    .line 145
    iput-boolean v1, p0, Lcom/miui/gallery/app/CropImage;->mUseRegionDecoder:Z

    .line 940
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/app/CropImage;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/app/CropImage;Landroid/graphics/BitmapRegionDecoder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/CropImage;->onBitmapRegionDecoderAvailable(Landroid/graphics/BitmapRegionDecoder;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/miui/gallery/app/CropImage;Lcom/miui/gallery/util/Future;)Lcom/miui/gallery/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/miui/gallery/app/CropImage;->mLoadBitmapTask:Lcom/miui/gallery/util/Future;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/app/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/CropImage;->onBitmapAvailable(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/app/CropImage;Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/app/CropImage;->saveBitmapToUri(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/app/CropImage;Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/app/CropImage;->setAsWallpaper(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/app/CropImage;Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/app/CropImage;->saveToMediaProvider(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$702(Lcom/miui/gallery/app/CropImage;Lcom/miui/gallery/util/Future;)Lcom/miui/gallery/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/miui/gallery/app/CropImage;->mSaveTask:Lcom/miui/gallery/util/Future;

    return-object p1
.end method

.method static synthetic access$800(Lcom/miui/gallery/app/CropImage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$902(Lcom/miui/gallery/app/CropImage;Lcom/miui/gallery/util/Future;)Lcom/miui/gallery/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/miui/gallery/app/CropImage;->mLoadTask:Lcom/miui/gallery/util/Future;

    return-object p1
.end method

.method private convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1
    .parameter "extension"

    .prologue
    .line 521
    const-string v0, "png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0
.end method

.method private static copyExif(Lcom/miui/gallery/data/MediaItem;Ljava/lang/String;II)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 972
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 973
    invoke-static {p0, v0}, Lcom/miui/gallery/picasasource/PicasaSource;->extractExifValues(Lcom/miui/gallery/data/MediaObject;Landroid/media/ExifInterface;)V

    .line 974
    const-string v1, "ImageWidth"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    const-string v1, "ImageLength"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const-string v1, "Orientation"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    invoke-virtual {v0}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 981
    :goto_0
    return-void

    .line 978
    :catch_0
    move-exception v0

    .line 979
    const-string v1, "CropImage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot copy exif: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static copyExif(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 985
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 986
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 988
    const-string v3, "ImageWidth"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    const-string v3, "ImageLength"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    const-string v3, "Orientation"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    sget-object v3, Lcom/miui/gallery/app/CropImage;->EXIF_TAGS:[Ljava/lang/String;

    array-length v4, v3

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 993
    invoke-virtual {v1, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 994
    if-eqz v6, :cond_0

    .line 995
    invoke-virtual {v2, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1000
    :cond_1
    const-string v0, "FNumber"

    invoke-virtual {v1, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1001
    if-eqz v0, :cond_2

    .line 1003
    :try_start_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 1004
    const-string v3, "FNumber"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v5, 0x4120

    mul-float/2addr v1, v5

    const/high16 v5, 0x3f00

    add-float/2addr v1, v5

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/10"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1033
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 1037
    :goto_2
    return-void

    .line 1006
    :catch_0
    move-exception v1

    .line 1007
    const-string v1, "CropImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot parse aperture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1034
    :catch_1
    move-exception v0

    .line 1035
    const-string v1, "CropImage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot copy exif: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static determineCompressFormat(Lcom/miui/gallery/data/MediaObject;)Ljava/lang/String;
    .locals 3
    .parameter "obj"

    .prologue
    .line 293
    const-string v0, "JPEG"

    .line 294
    .local v0, compressFormat:Ljava/lang/String;
    instance-of v2, p0, Lcom/miui/gallery/data/MediaItem;

    if-eqz v2, :cond_1

    .line 295
    check-cast p0, Lcom/miui/gallery/data/MediaItem;

    .end local p0
    invoke-virtual {p0}, Lcom/miui/gallery/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, mime:Ljava/lang/String;
    const-string v2, "png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    :cond_0
    const-string v0, "PNG"

    .line 302
    .end local v1           #mime:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private drawInTiles(Landroid/graphics/Canvas;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 13
    .parameter "canvas"
    .parameter "decoder"
    .parameter "rect"
    .parameter "dest"
    .parameter "sample"

    .prologue
    .line 705
    move/from16 v0, p5

    mul-int/lit16 v5, v0, 0x200

    .line 706
    .local v5, tileSize:I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 707
    .local v4, tileRect:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 708
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v10, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 709
    move/from16 v0, p5

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 710
    move-object/from16 v0, p4

    iget v10, v0, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    move-object/from16 v0, p4

    iget v11, v0, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 711
    move/from16 v0, p5

    int-to-float v10, v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    move/from16 v0, p5

    int-to-float v11, v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 713
    new-instance v3, Landroid/graphics/Paint;

    const/4 v10, 0x2

    invoke-direct {v3, v10}, Landroid/graphics/Paint;-><init>(I)V

    .line 714
    .local v3, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->left:I

    .local v6, tx:I
    const/4 v8, 0x0

    .line 715
    .local v8, x:I
    :goto_0
    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->right:I

    if-ge v6, v10, :cond_2

    .line 716
    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .local v7, ty:I
    const/4 v9, 0x0

    .line 717
    .local v9, y:I
    :goto_1
    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v10, :cond_1

    .line 718
    add-int v10, v6, v5

    add-int v11, v7, v5

    invoke-virtual {v4, v6, v7, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 719
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 723
    monitor-enter p2

    .line 724
    :try_start_0
    invoke-virtual {p2, v4, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 725
    .local v1, bitmap:Landroid/graphics/Bitmap;
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    int-to-float v10, v8

    int-to-float v11, v9

    invoke-virtual {p1, v1, v10, v11, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 727
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 717
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    add-int/2addr v7, v5

    add-int/lit16 v9, v9, 0x200

    goto :goto_1

    .line 725
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 715
    :cond_1
    add-int/2addr v6, v5

    add-int/lit16 v8, v8, 0x200

    goto :goto_0

    .line 731
    .end local v7           #ty:I
    .end local v9           #y:I
    :cond_2
    return-void
.end method

.method private getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 22
    .parameter "rect"

    .prologue
    .line 571
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_6

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 573
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 575
    .local v8, extras:Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 576
    .local v10, outputX:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 577
    .local v11, outputY:I
    if-eqz v8, :cond_0

    .line 578
    const-string v2, "outputX"

    invoke-virtual {v8, v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 579
    const-string v2, "outputY"

    invoke-virtual {v8, v2, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 582
    :cond_0
    mul-int v2, v10, v11

    const v4, 0x4c4b40

    if-le v2, v4, :cond_1

    .line 583
    const-wide v4, 0x415312d000000000L

    int-to-double v0, v10

    move-wide/from16 v20, v0

    div-double v4, v4, v20

    int-to-double v0, v11

    move-wide/from16 v20, v0

    div-double v4, v4, v20

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    move/from16 v16, v0

    .line 585
    .local v16, scale:F
    const-string v2, "CropImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scale down the cropped image: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    int-to-float v2, v10

    mul-float v2, v2, v16

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 587
    int-to-float v2, v11

    mul-float v2, v2, v16

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 592
    .end local v16           #scale:F
    :cond_1
    const/high16 v17, 0x3f80

    .line 593
    .local v17, scaleX:F
    const/high16 v18, 0x3f80

    .line 594
    .local v18, scaleY:F
    new-instance v6, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v6, v2, v4, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 595
    .local v6, dest:Landroid/graphics/Rect;
    if-eqz v8, :cond_2

    const-string v2, "scale"

    const/4 v4, 0x1

    invoke-virtual {v8, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 596
    :cond_2
    int-to-float v2, v10

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float v17, v2, v4

    .line 597
    int-to-float v2, v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float v18, v2, v4

    .line 598
    if-eqz v8, :cond_3

    const-string v2, "scaleUpIfNeeded"

    const/4 v4, 0x0

    invoke-virtual {v8, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_5

    .line 600
    :cond_3
    const/high16 v2, 0x3f80

    cmpl-float v2, v17, v2

    if-lez v2, :cond_4

    const/high16 v17, 0x3f80

    .line 601
    :cond_4
    const/high16 v2, 0x3f80

    cmpl-float v2, v18, v2

    if-lez v2, :cond_5

    const/high16 v18, 0x3f80

    .line 606
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v17

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 607
    .local v13, rectWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v18

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 608
    .local v12, rectHeight:I
    sub-int v2, v10, v13

    int-to-float v2, v2

    const/high16 v4, 0x4000

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int v4, v11, v12

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int v5, v10, v13

    int-to-float v5, v5

    const/high16 v20, 0x4000

    div-float v5, v5, v20

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int v20, v11, v12

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v6, v2, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 613
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    .line 615
    .local v19, source:Landroid/graphics/Bitmap;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 617
    .local v14, result:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 618
    .local v3, canvas:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v1, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 656
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v14           #result:Landroid/graphics/Bitmap;
    .end local v19           #source:Landroid/graphics/Bitmap;
    :goto_1
    return-object v14

    .line 571
    .end local v6           #dest:Landroid/graphics/Rect;
    .end local v8           #extras:Landroid/os/Bundle;
    .end local v10           #outputX:I
    .end local v11           #outputY:I
    .end local v12           #rectHeight:I
    .end local v13           #rectWidth:I
    .end local v17           #scaleX:F
    .end local v18           #scaleY:F
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 622
    .restart local v6       #dest:Landroid/graphics/Rect;
    .restart local v8       #extras:Landroid/os/Bundle;
    .restart local v10       #outputX:I
    .restart local v11       #outputY:I
    .restart local v12       #rectHeight:I
    .restart local v13       #rectWidth:I
    .restart local v17       #scaleX:F
    .restart local v18       #scaleY:F
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/gallery/app/CropImage;->mUseRegionDecoder:Z

    if-eqz v2, :cond_9

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaItem;->getFullImageRotation()I

    move-result v15

    .line 624
    .local v15, rotation:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/CropView;->getImageWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/CropView;->getImageHeight()I

    move-result v4

    rsub-int v5, v15, 0x168

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4, v5}, Lcom/miui/gallery/app/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    .line 626
    rsub-int v2, v15, 0x168

    invoke-static {v6, v10, v11, v2}, Lcom/miui/gallery/app/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    .line 628
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 629
    .local v9, options:Landroid/graphics/BitmapFactory$Options;
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v7

    .line 631
    .local v7, sample:I
    iput v7, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 632
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v2, v4, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/2addr v2, v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ne v2, v4, :cond_8

    if-nez v15, :cond_8

    .line 636
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/app/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    monitor-enter v4

    .line 637
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/app/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v9}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    monitor-exit v4

    goto :goto_1

    .line 638
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 640
    :cond_8
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 642
    .restart local v14       #result:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 643
    .restart local v3       #canvas:Landroid/graphics/Canvas;
    invoke-static {v3, v10, v11, v15}, Lcom/miui/gallery/app/CropImage;->rotateCanvas(Landroid/graphics/Canvas;III)V

    .line 644
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/app/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/miui/gallery/app/CropImage;->drawInTiles(Landroid/graphics/Canvas;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto/16 :goto_1

    .line 647
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v7           #sample:I
    .end local v9           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v14           #result:Landroid/graphics/Bitmap;
    .end local v15           #rotation:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaItem;->getRotation()I

    move-result v15

    .line 648
    .restart local v15       #rotation:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/CropView;->getImageWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/CropView;->getImageHeight()I

    move-result v4

    rsub-int v5, v15, 0x168

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4, v5}, Lcom/miui/gallery/app/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    .line 650
    rsub-int v2, v15, 0x168

    invoke-static {v6, v10, v11, v2}, Lcom/miui/gallery/app/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    .line 651
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 652
    .restart local v14       #result:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 653
    .restart local v3       #canvas:Landroid/graphics/Canvas;
    invoke-static {v3, v10, v11, v15}, Lcom/miui/gallery/app/CropImage;->rotateCanvas(Landroid/graphics/Canvas;III)V

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v2, v0, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method private getFileExtension()Ljava/lang/String;
    .locals 4

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "outputFormat"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, requestFormat:Ljava/lang/String;
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-static {v2}, Lcom/miui/gallery/app/CropImage;->determineCompressFormat(Lcom/miui/gallery/data/MediaObject;)Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, outputFormat:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 537
    const-string v2, "png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "png"

    :goto_1
    return-object v2

    .end local v0           #outputFormat:Ljava/lang/String;
    :cond_1
    move-object v0, v1

    .line 532
    goto :goto_0

    .line 537
    .restart local v0       #outputFormat:Ljava/lang/String;
    :cond_2
    const-string v2, "jpg"

    goto :goto_1
.end method

.method private getMediaItemFromIntentData()Lcom/miui/gallery/data/MediaItem;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 914
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 915
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v2

    .line 916
    if-nez v1, :cond_0

    .line 917
    const-string v1, "CropImage"

    const-string v2, "no data given"

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    :goto_0
    return-object v0

    .line 920
    :cond_0
    invoke-virtual {v2, v1}, Lcom/miui/gallery/data/DataManager;->findPathByUri(Landroid/net/Uri;)Lcom/miui/gallery/data/Path;

    move-result-object v3

    .line 921
    if-nez v3, :cond_1

    .line 922
    const-string v2, "CropImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot get path for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 925
    :cond_1
    invoke-virtual {v2, v3}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/MediaItem;

    goto :goto_0
.end method

.method private getOutputMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/miui/gallery/app/CropImage;->getFileExtension()Ljava/lang/String;

    move-result-object v0

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "image/png"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "image/jpeg"

    goto :goto_0
.end method

.method private initializeData()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 799
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 801
    if-eqz v3, :cond_4

    .line 802
    const-string v0, "noFaceDetection"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    const-string v0, "noFaceDetection"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/app/CropImage;->mDoFaceDetection:Z

    .line 806
    :cond_0
    const-string v0, "data"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/miui/gallery/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    .line 808
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 809
    new-instance v0, Lcom/miui/gallery/ui/BitmapTileProvider;

    iget-object v3, p0, Lcom/miui/gallery/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    const/16 v4, 0x140

    invoke-direct {v0, v3, v4}, Lcom/miui/gallery/ui/BitmapTileProvider;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/miui/gallery/app/CropImage;->mBitmapTileProvider:Lcom/miui/gallery/ui/BitmapTileProvider;

    .line 811
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    iget-object v3, p0, Lcom/miui/gallery/app/CropImage;->mBitmapTileProvider:Lcom/miui/gallery/ui/BitmapTileProvider;

    invoke-virtual {v0, v3, v2}, Lcom/miui/gallery/ui/CropView;->setDataModel(Lcom/miui/gallery/ui/TileImageView$Model;I)V

    .line 812
    iget-boolean v0, p0, Lcom/miui/gallery/app/CropImage;->mDoFaceDetection:Z

    if-eqz v0, :cond_3

    .line 813
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    iget-object v2, p0, Lcom/miui/gallery/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/ui/CropView;->detectFaces(Landroid/graphics/Bitmap;)V

    .line 817
    :goto_1
    iput v1, p0, Lcom/miui/gallery/app/CropImage;->mState:I

    .line 859
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 803
    goto :goto_0

    .line 815
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/CropView;->initializeHighlightRectangle()V

    goto :goto_1

    .line 822
    :cond_4
    const/4 v0, 0x0

    const v3, 0x7f0d0030

    invoke-virtual {p0, v3}, Lcom/miui/gallery/app/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v3, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 825
    invoke-direct {p0}, Lcom/miui/gallery/app/CropImage;->getMediaItemFromIntentData()Lcom/miui/gallery/data/MediaItem;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    .line 826
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    if-eqz v0, :cond_1

    .line 828
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaItem;->getSupportedOperations()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    .line 830
    :goto_3
    if-eqz v1, :cond_6

    .line 831
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getThreadPool()Lcom/miui/gallery/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/app/CropImage$LoadDataTask;

    iget-object v2, p0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/app/CropImage$LoadDataTask;-><init>(Lcom/miui/gallery/app/CropImage;Lcom/miui/gallery/data/MediaItem;)V

    new-instance v2, Lcom/miui/gallery/app/CropImage$4;

    invoke-direct {v2, p0}, Lcom/miui/gallery/app/CropImage$4;-><init>(Lcom/miui/gallery/app/CropImage;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/ThreadPool;->submit(Lcom/miui/gallery/util/ThreadPool$Job;Lcom/miui/gallery/util/FutureListener;)Lcom/miui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/CropImage;->mLoadTask:Lcom/miui/gallery/util/Future;

    goto :goto_2

    :cond_5
    move v1, v2

    .line 828
    goto :goto_3

    .line 845
    :cond_6
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getThreadPool()Lcom/miui/gallery/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/app/CropImage$LoadBitmapDataTask;

    iget-object v2, p0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/app/CropImage$LoadBitmapDataTask;-><init>(Lcom/miui/gallery/app/CropImage;Lcom/miui/gallery/data/MediaItem;)V

    new-instance v2, Lcom/miui/gallery/app/CropImage$5;

    invoke-direct {v2, p0}, Lcom/miui/gallery/app/CropImage$5;-><init>(Lcom/miui/gallery/app/CropImage;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/ThreadPool;->submit(Lcom/miui/gallery/util/ThreadPool$Job;Lcom/miui/gallery/util/FutureListener;)Lcom/miui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/CropImage;->mLoadBitmapTask:Lcom/miui/gallery/util/Future;

    goto :goto_2
.end method

.method private onBitmapAvailable(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x0

    .line 762
    if-nez p1, :cond_0

    .line 763
    const-string v1, "fail to load image"

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 764
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->finish()V

    .line 779
    :goto_0
    return-void

    .line 767
    :cond_0
    iput-boolean v2, p0, Lcom/miui/gallery/app/CropImage;->mUseRegionDecoder:Z

    .line 768
    const/4 v1, 0x1

    iput v1, p0, Lcom/miui/gallery/app/CropImage;->mState:I

    .line 770
    iput-object p1, p0, Lcom/miui/gallery/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 771
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 772
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    iget-object v1, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    new-instance v2, Lcom/miui/gallery/ui/BitmapTileProvider;

    const/16 v3, 0x200

    invoke-direct {v2, p1, v3}, Lcom/miui/gallery/ui/BitmapTileProvider;-><init>(Landroid/graphics/Bitmap;I)V

    iget-object v3, p0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v3}, Lcom/miui/gallery/data/MediaItem;->getRotation()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/CropView;->setDataModel(Lcom/miui/gallery/ui/TileImageView$Model;I)V

    .line 774
    iget-boolean v1, p0, Lcom/miui/gallery/app/CropImage;->mDoFaceDetection:Z

    if-eqz v1, :cond_1

    .line 775
    iget-object v1, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/ui/CropView;->detectFaces(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 777
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/CropView;->initializeHighlightRectangle()V

    goto :goto_0
.end method

.method private onBitmapRegionDecoderAvailable(Landroid/graphics/BitmapRegionDecoder;)V
    .locals 6
    .parameter "regionDecoder"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 736
    if-nez p1, :cond_0

    .line 737
    const-string v3, "fail to load image"

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 738
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->finish()V

    .line 759
    :goto_0
    return-void

    .line 741
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/app/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 742
    iput-boolean v3, p0, Lcom/miui/gallery/app/CropImage;->mUseRegionDecoder:Z

    .line 743
    iput v3, p0, Lcom/miui/gallery/app/CropImage;->mState:I

    .line 745
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 746
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v2

    .line 747
    .local v2, width:I
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    .line 748
    .local v0, height:I
    const/4 v3, -0x1

    const v4, 0x75300

    invoke-static {v2, v0, v3, v4}, Lcom/miui/gallery/common/BitmapUtils;->computeSampleSize(IIII)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 750
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5, v5, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v3, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 752
    iget-object v3, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    new-instance v4, Lcom/miui/gallery/ui/TileImageViewAdapter;

    iget-object v5, p0, Lcom/miui/gallery/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, p1}, Lcom/miui/gallery/ui/TileImageViewAdapter;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/BitmapRegionDecoder;)V

    iget-object v5, p0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v5}, Lcom/miui/gallery/data/MediaItem;->getFullImageRotation()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/ui/CropView;->setDataModel(Lcom/miui/gallery/ui/TileImageView$Model;I)V

    .line 754
    iget-boolean v3, p0, Lcom/miui/gallery/app/CropImage;->mDoFaceDetection:Z

    if-eqz v3, :cond_1

    .line 755
    iget-object v3, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    iget-object v4, p0, Lcom/miui/gallery/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/CropView;->detectFaces(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 757
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/CropView;->initializeHighlightRectangle()V

    goto :goto_0
.end method

.method private onSaveClicked()V
    .locals 7

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 544
    .local v1, extra:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/CropView;->getCropRectangle()Landroid/graphics/RectF;

    move-result-object v0

    .line 545
    .local v0, cropRect:Landroid/graphics/RectF;
    if-nez v0, :cond_0

    .line 568
    :goto_0
    return-void

    .line 546
    :cond_0
    const/4 v3, 0x2

    iput v3, p0, Lcom/miui/gallery/app/CropImage;->mState:I

    .line 547
    if-eqz v1, :cond_1

    const-string v3, "set-as-wallpaper"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v2, 0x7f0d00ca

    .line 550
    .local v2, messageId:I
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p0, v2}, Lcom/miui/gallery/app/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p0, v3, v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 552
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getThreadPool()Lcom/miui/gallery/util/ThreadPool;

    move-result-object v3

    new-instance v4, Lcom/miui/gallery/app/CropImage$SaveOutput;

    invoke-direct {v4, p0, v0}, Lcom/miui/gallery/app/CropImage$SaveOutput;-><init>(Lcom/miui/gallery/app/CropImage;Landroid/graphics/RectF;)V

    new-instance v5, Lcom/miui/gallery/app/CropImage$3;

    invoke-direct {v5, p0}, Lcom/miui/gallery/app/CropImage$3;-><init>(Lcom/miui/gallery/app/CropImage;)V

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/util/ThreadPool;->submit(Lcom/miui/gallery/util/ThreadPool$Job;Lcom/miui/gallery/util/FutureListener;)Lcom/miui/gallery/util/Future;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/app/CropImage;->mSaveTask:Lcom/miui/gallery/util/Future;

    goto :goto_0

    .line 547
    .end local v2           #messageId:I
    :cond_1
    const v2, 0x7f0d003b

    goto :goto_1
.end method

.method private static rotateCanvas(Landroid/graphics/Canvas;III)V
    .locals 2
    .parameter "canvas"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"

    .prologue
    .line 662
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 663
    int-to-float v0, p3

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 664
    div-int/lit8 v0, p3, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 665
    neg-int v0, p1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    neg-int v1, p2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 669
    :goto_0
    return-void

    .line 667
    :cond_0
    neg-int v0, p2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    neg-int v1, p1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method private static rotateRectangle(Landroid/graphics/Rect;III)V
    .locals 3
    .parameter "rect"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"

    .prologue
    .line 673
    if-eqz p3, :cond_0

    const/16 v2, 0x168

    if-ne p3, v2, :cond_1

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 675
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 676
    .local v1, w:I
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 677
    .local v0, h:I
    sparse-switch p3, :sswitch_data_0

    .line 699
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 679
    :sswitch_0
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 680
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 681
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 682
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 686
    :sswitch_1
    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 687
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 688
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 689
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 693
    :sswitch_2
    iget v2, p0, Landroid/graphics/Rect;->top:I

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 694
    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 695
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 696
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 677
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private saveBitmapToOutputStream(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    .locals 4
    .parameter "jc"
    .parameter "bitmap"
    .parameter "format"
    .parameter "os"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 492
    new-instance v0, Lcom/miui/gallery/util/InterruptableOutputStream;

    invoke-direct {v0, p4}, Lcom/miui/gallery/util/InterruptableOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 493
    .local v0, ios:Lcom/miui/gallery/util/InterruptableOutputStream;
    new-instance v2, Lcom/miui/gallery/app/CropImage$2;

    invoke-direct {v2, p0, v0}, Lcom/miui/gallery/app/CropImage$2;-><init>(Lcom/miui/gallery/app/CropImage;Lcom/miui/gallery/util/InterruptableOutputStream;)V

    invoke-interface {p1, v2}, Lcom/miui/gallery/util/ThreadPool$JobContext;->setCancelListener(Lcom/miui/gallery/util/ThreadPool$CancelListener;)V

    .line 499
    const/16 v2, 0x5a

    :try_start_0
    invoke-virtual {p2, p3, v2, p4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 504
    invoke-interface {p1, v3}, Lcom/miui/gallery/util/ThreadPool$JobContext;->setCancelListener(Lcom/miui/gallery/util/ThreadPool$CancelListener;)V

    .line 505
    invoke-static {p4}, Lcom/miui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :goto_0
    return v1

    .line 502
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 504
    :cond_1
    invoke-interface {p1, v3}, Lcom/miui/gallery/util/ThreadPool$JobContext;->setCancelListener(Lcom/miui/gallery/util/ThreadPool$CancelListener;)V

    .line 505
    invoke-static {p4}, Lcom/miui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 504
    :catchall_0
    move-exception v1

    invoke-interface {p1, v3}, Lcom/miui/gallery/util/ThreadPool$JobContext;->setCancelListener(Lcom/miui/gallery/util/ThreadPool$CancelListener;)V

    .line 505
    invoke-static {p4}, Lcom/miui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v1
.end method

.method private saveBitmapToUri(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    .locals 3
    .parameter "jc"
    .parameter "bitmap"
    .parameter "uri"

    .prologue
    .line 511
    :try_start_0
    invoke-direct {p0}, Lcom/miui/gallery/app/CropImage;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/app/CropImage;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/miui/gallery/app/CropImage;->saveBitmapToOutputStream(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 517
    :goto_0
    return v1

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v1, "CropImage"

    const-string v2, "cannot write output"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 517
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private saveCroppedImageToFile(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;
    .locals 9
    .parameter "jc"
    .parameter "cropped"
    .parameter "filePath"

    .prologue
    .line 397
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 398
    .local v2, oldPath:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, filename:Ljava/lang/String;
    const/16 v5, 0x2e

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 402
    .local v4, pos:I
    if-ltz v4, :cond_0

    .line 403
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 404
    :cond_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/gallery/app/CropImage;->saveMedia(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 405
    .local v3, output:Ljava/io/File;
    if-eqz v3, :cond_1

    .line 406
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/miui/gallery/app/CropImage;->copyExif(Ljava/lang/String;Ljava/lang/String;II)V

    .line 409
    :cond_1
    return-object v3
.end method

.method private saveGenericImage(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 10
    .parameter "jc"
    .parameter "cropped"

    .prologue
    const-wide/16 v8, 0x3e8

    .line 460
    sget-object v5, Lcom/miui/gallery/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/miui/gallery/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_0

    .line 461
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "cannot create download folder"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 464
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 465
    .local v1, now:J
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, filename:Ljava/lang/String;
    sget-object v5, Lcom/miui/gallery/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-direct {p0, p1, p2, v5, v0}, Lcom/miui/gallery/app/CropImage;->saveMedia(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 469
    .local v3, output:Ljava/io/File;
    if-nez v3, :cond_1

    const/4 v5, 0x0

    .line 485
    :goto_0
    return-object v5

    .line 471
    :cond_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 472
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "title"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v5, "_display_name"

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v5, "datetaken"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 475
    const-string v5, "date_modified"

    div-long v6, v1, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 476
    const-string v5, "date_added"

    div-long v6, v1, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 477
    const-string v5, "mime_type"

    invoke-direct {p0}, Lcom/miui/gallery/app/CropImage;->getOutputMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v5, "orientation"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 479
    const-string v5, "_data"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v5, "_size"

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 481
    const-string v5, "width"

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 482
    const-string v5, "height"

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 485
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0
.end method

.method private saveLocalImage(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 9
    .parameter "jc"
    .parameter "cropped"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    check-cast v0, Lcom/miui/gallery/data/LocalImage;

    .line 430
    .local v0, localImage:Lcom/miui/gallery/data/LocalImage;
    iget-object v5, v0, Lcom/miui/gallery/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v5}, Lcom/miui/gallery/app/CropImage;->saveCroppedImageToFile(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 432
    .local v3, output:Ljava/io/File;
    if-nez v3, :cond_0

    .line 433
    const-string v5, "CropImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to save cropped image for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/miui/gallery/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/4 v5, 0x0

    .line 455
    :goto_0
    return-object v5

    .line 437
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long v1, v5, v7

    .line 438
    .local v1, now:J
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 439
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "title"

    iget-object v6, v0, Lcom/miui/gallery/data/LocalImage;->caption:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v5, "_display_name"

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v5, "datetaken"

    iget-wide v6, v0, Lcom/miui/gallery/data/LocalImage;->dateTakenInMs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 442
    const-string v5, "date_modified"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 443
    const-string v5, "date_added"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 444
    const-string v5, "mime_type"

    invoke-direct {p0}, Lcom/miui/gallery/app/CropImage;->getOutputMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v5, "orientation"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 446
    const-string v5, "_data"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v5, "_size"

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 448
    const-string v5, "width"

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 449
    const-string v5, "height"

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 451
    iget-wide v5, v0, Lcom/miui/gallery/data/LocalImage;->latitude:D

    iget-wide v7, v0, Lcom/miui/gallery/data/LocalImage;->longitude:D

    invoke-static {v5, v6, v7, v8}, Lcom/miui/gallery/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 452
    const-string v5, "latitude"

    iget-wide v6, v0, Lcom/miui/gallery/data/LocalImage;->latitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 453
    const-string v5, "longitude"

    iget-wide v6, v0, Lcom/miui/gallery/data/LocalImage;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 455
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/gallery/data/LocalImage;->getBaseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    goto/16 :goto_0
.end method

.method private saveMedia(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .parameter "jc"
    .parameter "cropped"
    .parameter "directory"
    .parameter "filename"

    .prologue
    const/4 v4, 0x0

    .line 317
    invoke-direct {p0}, Lcom/miui/gallery/app/CropImage;->getFileExtension()Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, fileExtension:Ljava/lang/String;
    invoke-static {p3, p4, v2}, Lcom/miui/gallery/util/GalleryUtils;->getFileForSaving(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 319
    .local v0, candidate:Ljava/io/File;
    if-nez v0, :cond_1

    move-object v0, v4

    .line 343
    .end local v0           #candidate:Ljava/io/File;
    :cond_0
    :goto_0
    return-object v0

    .line 324
    .restart local v0       #candidate:Ljava/io/File;
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-direct {p0, v2}, Lcom/miui/gallery/app/CropImage;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v5

    invoke-direct {p0, p1, p2, v5, v3}, Lcom/miui/gallery/app/CropImage;->saveBitmapToOutputStream(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 338
    invoke-interface {p1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 339
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-object v0, v4

    .line 340
    goto :goto_0

    .line 329
    :catchall_0
    move-exception v5

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 331
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 332
    .local v1, e:Ljava/io/IOException;
    const-string v5, "CropImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to save image: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-object v0, v4

    .line 335
    goto :goto_0
.end method

.method private savePicasaImage(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 17
    .parameter "jc"
    .parameter "cropped"

    .prologue
    .line 359
    sget-object v13, Lcom/miui/gallery/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_0

    sget-object v13, Lcom/miui/gallery/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    move-result v13

    if-nez v13, :cond_0

    .line 360
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "cannot create download folder"

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 363
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-static {v13}, Lcom/miui/gallery/picasasource/PicasaSource;->getImageTitle(Lcom/miui/gallery/data/MediaObject;)Ljava/lang/String;

    move-result-object v3

    .line 364
    .local v3, filename:Ljava/lang/String;
    const/16 v13, 0x2e

    invoke-virtual {v3, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 365
    .local v11, pos:I
    if-ltz v11, :cond_1

    const/4 v13, 0x0

    invoke-virtual {v3, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 366
    :cond_1
    sget-object v13, Lcom/miui/gallery/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/miui/gallery/app/CropImage;->saveMedia(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 367
    .local v10, output:Ljava/io/File;
    if-nez v10, :cond_2

    const/4 v13, 0x0

    .line 392
    :goto_0
    return-object v13

    .line 369
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    invoke-static/range {v13 .. v16}, Lcom/miui/gallery/app/CropImage;->copyExif(Lcom/miui/gallery/data/MediaItem;Ljava/lang/String;II)V

    .line 371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    div-long v8, v13, v15

    .line 372
    .local v8, now:J
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 373
    .local v12, values:Landroid/content/ContentValues;
    const-string v13, "title"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-static {v14}, Lcom/miui/gallery/picasasource/PicasaSource;->getImageTitle(Lcom/miui/gallery/data/MediaObject;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v13, "_display_name"

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v13, "datetaken"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-static {v14}, Lcom/miui/gallery/picasasource/PicasaSource;->getDateTaken(Lcom/miui/gallery/data/MediaObject;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 376
    const-string v13, "date_modified"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 377
    const-string v13, "date_added"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 378
    const-string v13, "mime_type"

    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/app/CropImage;->getOutputMimeType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v13, "orientation"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 380
    const-string v13, "_data"

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v13, "_size"

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 382
    const-string v13, "width"

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 383
    const-string v13, "height"

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-static {v13}, Lcom/miui/gallery/picasasource/PicasaSource;->getLatitude(Lcom/miui/gallery/data/MediaObject;)D

    move-result-wide v4

    .line 386
    .local v4, latitude:D
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-static {v13}, Lcom/miui/gallery/picasasource/PicasaSource;->getLongitude(Lcom/miui/gallery/data/MediaObject;)D

    move-result-wide v6

    .line 387
    .local v6, longitude:D
    invoke-static {v4, v5, v6, v7}, Lcom/miui/gallery/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 388
    const-string v13, "latitude"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 389
    const-string v13, "longitude"

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 392
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    goto/16 :goto_0
.end method

.method private saveStorageImage(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 5
    .parameter "jc"
    .parameter "cropped"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    check-cast v0, Lcom/miui/gallery/data/StorageImage;

    .line 414
    .local v0, imageItem:Lcom/miui/gallery/data/StorageImage;
    invoke-virtual {v0}, Lcom/miui/gallery/data/StorageImage;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lcom/miui/gallery/app/CropImage;->saveCroppedImageToFile(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 416
    .local v1, output:Ljava/io/File;
    if-nez v1, :cond_0

    .line 417
    const-string v2, "CropImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to save cropped image for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/miui/gallery/data/StorageImage;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v2, 0x0

    .line 425
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/miui/gallery/data/StorageMediaItem;->getContentUri(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method private saveToMediaProvider(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 1
    .parameter "jc"
    .parameter "cropped"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-static {v0}, Lcom/miui/gallery/picasasource/PicasaSource;->isPicasaImage(Lcom/miui/gallery/data/MediaObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/app/CropImage;->savePicasaImage(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    .line 354
    :goto_0
    return-object v0

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    instance-of v0, v0, Lcom/miui/gallery/data/LocalImage;

    if-eqz v0, :cond_1

    .line 350
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/app/CropImage;->saveLocalImage(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    instance-of v0, v0, Lcom/miui/gallery/data/StorageImage;

    if-eqz v0, :cond_2

    .line 352
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/app/CropImage;->saveStorageImage(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 354
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/app/CropImage;->saveGenericImage(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private setAsWallpaper(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z
    .locals 3
    .parameter "jc"
    .parameter "wallpaper"

    .prologue
    .line 307
    :try_start_0
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, e:Ljava/io/IOException;
    const-string v1, "CropImage"

    const-string v2, "fail to set wall paper"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setCropParameters()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 782
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 783
    if-nez v0, :cond_1

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 786
    const-string v2, "aspectY"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 787
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 788
    iget-object v3, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v3, v1}, Lcom/miui/gallery/ui/CropView;->setAspectRatio(F)V

    .line 791
    :cond_2
    const-string v1, "spotlightX"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 792
    const-string v2, "spotlightY"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 793
    cmpl-float v2, v1, v4

    if-eqz v2, :cond_0

    cmpl-float v2, v0, v4

    if-eqz v2, :cond_0

    .line 794
    iget-object v2, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    invoke-virtual {v2, v1, v0}, Lcom/miui/gallery/ui/CropView;->setSpotlightRatio(FF)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    const/4 v3, 0x4

    .line 156
    invoke-super {p0, p1}, Lcom/miui/gallery/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 157
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/miui/gallery/app/CropImage;->requestWindowFeature(I)Z

    .line 158
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/miui/gallery/app/CropImage;->requestWindowFeature(I)Z

    .line 161
    const v1, 0x7f04000a

    invoke-virtual {p0, v1}, Lcom/miui/gallery/app/CropImage;->setContentView(I)V

    .line 162
    new-instance v1, Lcom/miui/gallery/ui/CropView;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/CropView;-><init>(Lcom/miui/gallery/app/GalleryActivity;)V

    iput-object v1, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    .line 163
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    invoke-interface {v1, v2}, Lcom/miui/gallery/ui/GLRoot;->setContentPane(Lcom/miui/gallery/ui/GLView;)V

    .line 165
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 166
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 169
    new-instance v1, Lcom/miui/gallery/app/CropImage$1;

    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/app/CropImage$1;-><init>(Lcom/miui/gallery/app/CropImage;Lcom/miui/gallery/ui/GLRoot;)V

    iput-object v1, p0, Lcom/miui/gallery/app/CropImage;->mMainHandler:Landroid/os/Handler;

    .line 201
    invoke-direct {p0}, Lcom/miui/gallery/app/CropImage;->setCropParameters()V

    .line 202
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 211
    invoke-super {p0, p1}, Lcom/miui/gallery/app/AbstractGalleryActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 212
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 224
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 239
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 226
    :sswitch_0
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->finish()V

    goto :goto_0

    .line 230
    :sswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/CropImage;->setResult(I)V

    .line 231
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->finish()V

    goto :goto_0

    .line 235
    :sswitch_2
    invoke-direct {p0}, Lcom/miui/gallery/app/CropImage;->onSaveClicked()V

    goto :goto_0

    .line 224
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0b0020 -> :sswitch_1
        0x7f0b0085 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 879
    invoke-super {p0}, Lcom/miui/gallery/app/AbstractGalleryActivity;->onPause()V

    .line 881
    iget-object v1, p0, Lcom/miui/gallery/app/CropImage;->mLoadTask:Lcom/miui/gallery/util/Future;

    .line 882
    .local v1, loadTask:Lcom/miui/gallery/util/Future;,"Lcom/miui/gallery/util/Future<Landroid/graphics/BitmapRegionDecoder;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/miui/gallery/util/Future;->isDone()Z

    move-result v4

    if-nez v4, :cond_0

    .line 884
    invoke-interface {v1}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 885
    invoke-interface {v1}, Lcom/miui/gallery/util/Future;->waitDone()V

    .line 886
    iget-object v4, p0, Lcom/miui/gallery/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage;->mLoadBitmapTask:Lcom/miui/gallery/util/Future;

    .line 890
    .local v0, loadBitmapTask:Lcom/miui/gallery/util/Future;,"Lcom/miui/gallery/util/Future<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->isDone()Z

    move-result v4

    if-nez v4, :cond_1

    .line 892
    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 893
    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->waitDone()V

    .line 894
    iget-object v4, p0, Lcom/miui/gallery/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 897
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/app/CropImage;->mSaveTask:Lcom/miui/gallery/util/Future;

    .line 898
    .local v3, saveTask:Lcom/miui/gallery/util/Future;,"Lcom/miui/gallery/util/Future<Landroid/content/Intent;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/miui/gallery/util/Future;->isDone()Z

    move-result v4

    if-nez v4, :cond_2

    .line 900
    invoke-interface {v3}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 901
    invoke-interface {v3}, Lcom/miui/gallery/util/Future;->waitDone()V

    .line 902
    iget-object v4, p0, Lcom/miui/gallery/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 904
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v2

    .line 905
    .local v2, root:Lcom/miui/gallery/ui/GLRoot;
    invoke-interface {v2}, Lcom/miui/gallery/ui/GLRoot;->lockRenderThread()V

    .line 907
    :try_start_0
    iget-object v4, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/CropView;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 909
    invoke-interface {v2}, Lcom/miui/gallery/ui/GLRoot;->unlockRenderThread()V

    .line 911
    return-void

    .line 909
    :catchall_0
    move-exception v4

    invoke-interface {v2}, Lcom/miui/gallery/ui/GLRoot;->unlockRenderThread()V

    throw v4
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 863
    invoke-super {p0}, Lcom/miui/gallery/app/AbstractGalleryActivity;->onResume()V

    .line 864
    iget v1, p0, Lcom/miui/gallery/app/CropImage;->mState:I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/app/CropImage;->initializeData()V

    .line 865
    :cond_0
    iget v1, p0, Lcom/miui/gallery/app/CropImage;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/miui/gallery/app/CropImage;->onSaveClicked()V

    .line 868
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v0

    .line 869
    .local v0, root:Lcom/miui/gallery/ui/GLRoot;
    invoke-interface {v0}, Lcom/miui/gallery/ui/GLRoot;->lockRenderThread()V

    .line 871
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/CropView;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 873
    invoke-interface {v0}, Lcom/miui/gallery/ui/GLRoot;->unlockRenderThread()V

    .line 875
    return-void

    .line 873
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/miui/gallery/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "saveState"

    .prologue
    .line 206
    const-string v0, "state"

    iget v1, p0, Lcom/miui/gallery/app/CropImage;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    return-void
.end method
