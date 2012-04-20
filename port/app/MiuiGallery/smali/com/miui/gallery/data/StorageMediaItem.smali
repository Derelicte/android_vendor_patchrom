.class public abstract Lcom/miui/gallery/data/StorageMediaItem;
.super Lcom/miui/gallery/data/MediaItem;
.source "StorageMediaItem.java"


# instance fields
.field protected mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/StorageExplorer/FileInfo;J)V
    .locals 0
    .parameter "path"
    .parameter "fileInfo"
    .parameter "version"

    .prologue
    .line 28
    invoke-direct {p0, p1, p3, p4}, Lcom/miui/gallery/data/MediaItem;-><init>(Lcom/miui/gallery/data/Path;J)V

    .line 29
    iput-object p2, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    .line 30
    return-void
.end method

.method public static getContentUri(Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 4
    .parameter "filePath"
    .parameter "isVideo"

    .prologue
    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://storage/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string v2, "video/item"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 139
    .local v0, baseUri:Landroid/net/Uri;
    invoke-static {p0}, Lcom/miui/gallery/data/DataManager;->addBracesToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, pathSegment:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 137
    .end local v0           #baseUri:Landroid/net/Uri;
    .end local v1           #pathSegment:Ljava/lang/String;
    :cond_0
    const-string v2, "image/item"

    goto :goto_0
.end method


# virtual methods
.method public delete()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 100
    invoke-static {}, Lcom/miui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    .line 101
    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, filePath:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    invoke-virtual {v1}, Lcom/miui/gallery/StorageExplorer/FileInfo;->delete()V

    .line 104
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageMediaItem;->getBaseUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "lower(%s) = ?"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "_data"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method protected abstract getBaseUri()Landroid/net/Uri;
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    invoke-virtual {v1}, Lcom/miui/gallery/StorageExplorer/FileInfo;->isVideo()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/data/StorageMediaItem;->getContentUri(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDateForTimeClusteringInMs()J
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-wide v0, v0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mDateTaken:J

    return-wide v0
.end method

.method public getDateModifiedInMs()J
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-wide v0, v0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mDateModified:J

    return-wide v0
.end method

.method public getDetails()Lcom/miui/gallery/data/MediaDetails;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 63
    invoke-super {p0}, Lcom/miui/gallery/data/MediaItem;->getDetails()Lcom/miui/gallery/data/MediaDetails;

    move-result-object v0

    .line 64
    .local v0, details:Lcom/miui/gallery/data/MediaDetails;
    const/16 v2, 0xc8

    iget-object v3, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-object v3, v3, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 65
    iget-object v2, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-object v2, v2, Lcom/miui/gallery/StorageExplorer/FileInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v7, v2}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 68
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    .line 69
    .local v1, formater:Ljava/text/DateFormat;
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 70
    const/4 v2, 0x3

    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-wide v4, v4, Lcom/miui/gallery/StorageExplorer/FileInfo;->mDateTaken:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 72
    iget-object v2, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-wide v2, v2, Lcom/miui/gallery/StorageExplorer/FileInfo;->mLatitude:D

    iget-object v4, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-wide v4, v4, Lcom/miui/gallery/StorageExplorer/FileInfo;->mLongitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    const/4 v2, 0x4

    const/4 v3, 0x2

    new-array v3, v3, [D

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-wide v5, v5, Lcom/miui/gallery/StorageExplorer/FileInfo;->mLatitude:D

    aput-wide v5, v3, v4

    iget-object v4, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-wide v4, v4, Lcom/miui/gallery/StorageExplorer/FileInfo;->mLongitude:D

    aput-wide v4, v3, v7

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageMediaItem;->getSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageMediaItem;->getSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 76
    :cond_1
    return-object v0
.end method

.method protected getDuration()J
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-wide v0, v0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mDuration:J

    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-object v0, v0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/FileInfo;->getHeight()I

    move-result v0

    return v0
.end method

.method public getLatLong([D)V
    .locals 3
    .parameter "latLong"

    .prologue
    .line 49
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-wide v1, v1, Lcom/miui/gallery/StorageExplorer/FileInfo;->mLatitude:D

    aput-wide v1, p1, v0

    .line 50
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-wide v1, v1, Lcom/miui/gallery/StorageExplorer/FileInfo;->mLongitude:D

    aput-wide v1, p1, v0

    .line 51
    return-void
.end method

.method protected getLatitude()D
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-wide v0, v0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mLatitude:D

    return-wide v0
.end method

.method protected getLongitude()D
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-wide v0, v0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mLongitude:D

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-object v0, v0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/StorageExplorer/StorageUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-object v0, v0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget v0, v0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mOrientation:I

    return v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-wide v0, v0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mSize:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/FileInfo;->getWidth()I

    move-result v0

    return v0
.end method

.method protected updateContent(Lcom/miui/gallery/StorageExplorer/FileInfo;)V
    .locals 4
    .parameter "newFileInfo"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-wide v0, v0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mDateModified:J

    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/FileInfo;->loadAllData()V

    .line 148
    invoke-static {}, Lcom/miui/gallery/data/StorageMediaItem;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/StorageMediaItem;->mDataVersion:J

    .line 150
    :cond_0
    return-void
.end method
