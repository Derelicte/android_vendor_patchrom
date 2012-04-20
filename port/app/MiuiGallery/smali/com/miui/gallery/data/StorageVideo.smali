.class public Lcom/miui/gallery/data/StorageVideo;
.super Lcom/miui/gallery/data/StorageMediaItem;
.source "StorageVideo.java"


# static fields
.field static final ITEM_PATH:Lcom/miui/gallery/data/Path;


# instance fields
.field private final mApplication:Lcom/miui/gallery/app/GalleryApp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "/storage/video/item"

    invoke-static {v0}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/data/StorageVideo;->ITEM_PATH:Lcom/miui/gallery/data/Path;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/StorageExplorer/FileInfo;)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "fileInfo"

    .prologue
    .line 21
    invoke-static {}, Lcom/miui/gallery/data/StorageVideo;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/miui/gallery/data/StorageMediaItem;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/StorageExplorer/FileInfo;J)V

    .line 22
    iput-object p2, p0, Lcom/miui/gallery/data/StorageVideo;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .parameter "application"
    .parameter "filePath"

    .prologue
    .line 26
    invoke-static {p3}, Lcom/miui/gallery/StorageExplorer/FileInfo;->getFileInfo(Ljava/lang/String;)Lcom/miui/gallery/StorageExplorer/FileInfo;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/data/StorageVideo;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/StorageExplorer/FileInfo;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected getBaseUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gallery/data/LocalVideo;->getBaseUri(Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDetails()Lcom/miui/gallery/data/MediaDetails;
    .locals 4

    .prologue
    .line 62
    invoke-super {p0}, Lcom/miui/gallery/data/StorageMediaItem;->getDetails()Lcom/miui/gallery/data/MediaDetails;

    move-result-object v0

    .line 63
    .local v0, details:Lcom/miui/gallery/data/MediaDetails;
    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageVideo;->getDuration()J

    move-result-wide v2

    long-to-int v1, v2

    .line 64
    .local v1, duration:I
    if-lez v1, :cond_0

    .line 65
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/miui/gallery/data/StorageVideo;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v3}, Lcom/miui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/miui/gallery/util/GalleryUtils;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 68
    :cond_0
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x4

    return v0
.end method

.method public getPlayUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageVideo;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x485

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

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
    .line 31
    new-instance v0, Lcom/miui/gallery/data/LocalVideo$LocalVideoRequest;

    iget-object v1, p0, Lcom/miui/gallery/data/StorageVideo;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageVideo;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageVideo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/miui/gallery/data/LocalVideo$LocalVideoRequest;-><init>(Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/data/Path;ILjava/lang/String;)V

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
    .line 36
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot regquest a large image to a local video!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rotate(I)V
    .locals 2
    .parameter "degrees"

    .prologue
    .line 47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot rotate a video!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
