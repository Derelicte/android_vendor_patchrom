.class public Lcom/miui/gallery/data/StorageImage;
.super Lcom/miui/gallery/data/StorageMediaItem;
.source "StorageImage.java"


# static fields
.field static final ITEM_PATH:Lcom/miui/gallery/data/Path;


# instance fields
.field private final mApplication:Lcom/miui/gallery/app/GalleryApp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "/storage/image/item"

    invoke-static {v0}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/data/StorageImage;->ITEM_PATH:Lcom/miui/gallery/data/Path;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/StorageExplorer/FileInfo;)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "fileInfo"

    .prologue
    .line 22
    invoke-static {}, Lcom/miui/gallery/data/StorageImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/miui/gallery/data/StorageMediaItem;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/StorageExplorer/FileInfo;J)V

    .line 23
    iput-object p2, p0, Lcom/miui/gallery/data/StorageImage;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .parameter "application"
    .parameter "filePath"

    .prologue
    .line 27
    invoke-static {p3}, Lcom/miui/gallery/data/DataManager;->removeBracesFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/StorageExplorer/FileInfo;->getFileInfo(Ljava/lang/String;)Lcom/miui/gallery/StorageExplorer/FileInfo;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/data/StorageImage;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/StorageExplorer/FileInfo;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected getBaseUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gallery/data/LocalImage;->getBaseUri(Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDetails()Lcom/miui/gallery/data/MediaDetails;
    .locals 3

    .prologue
    .line 76
    invoke-super {p0}, Lcom/miui/gallery/data/StorageMediaItem;->getDetails()Lcom/miui/gallery/data/MediaDetails;

    move-result-object v0

    .line 77
    .local v0, details:Lcom/miui/gallery/data/MediaDetails;
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageImage;->getRotation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 78
    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageImage;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/data/MediaDetails;->extractExifInfo(Lcom/miui/gallery/data/MediaDetails;Ljava/lang/String;)V

    .line 79
    return-object v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x2

    return v0
.end method

.method public getSupportedOperations()I
    .locals 5

    .prologue
    .line 42
    const/16 v0, 0x62d

    .line 44
    .local v0, operation:I
    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageImage;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    or-int/lit8 v0, v0, 0x40

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageImage;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/common/BitmapUtils;->isRotationSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    or-int/lit8 v0, v0, 0x2

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageImage;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageImage;->getLongitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/miui/gallery/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    or-int/lit8 v0, v0, 0x10

    .line 55
    :cond_2
    return v0
.end method

.method public requestImage(I)Lcom/miui/gallery/util/ThreadPool$Job;
    .locals 4
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/miui/gallery/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lcom/miui/gallery/data/LocalImage$LocalImageRequest;

    iget-object v1, p0, Lcom/miui/gallery/data/StorageImage;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    iget-object v2, p0, Lcom/miui/gallery/data/StorageImage;->mPath:Lcom/miui/gallery/data/Path;

    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageImage;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/miui/gallery/data/LocalImage$LocalImageRequest;-><init>(Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/data/Path;ILjava/lang/String;)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/miui/gallery/util/ThreadPool$Job;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/gallery/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/miui/gallery/data/LocalImage$LocalLargeImageRequest;

    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageImage;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/data/LocalImage$LocalLargeImageRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public rotate(I)V
    .locals 2
    .parameter "degrees"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/miui/gallery/data/StorageImage;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/StorageExplorer/FileInfo;->updateOrientation(I)V

    .line 66
    invoke-static {}, Lcom/miui/gallery/data/StorageImage;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/StorageImage;->mDataVersion:J

    .line 67
    return-void
.end method
