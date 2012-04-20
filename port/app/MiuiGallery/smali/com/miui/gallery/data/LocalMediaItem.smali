.class public abstract Lcom/miui/gallery/data/LocalMediaItem;
.super Lcom/miui/gallery/data/MediaItem;
.source "LocalMediaItem.java"


# instance fields
.field public bucketId:I

.field public caption:Ljava/lang/String;

.field public dateAddedInSec:J

.field public dateModifiedInSec:J

.field public dateTakenInMs:J

.field public displayName:Ljava/lang/String;

.field public filePath:Ljava/lang/String;

.field public fileSize:J

.field public id:I

.field public latitude:D

.field public longitude:D

.field public mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/data/Path;J)V
    .locals 2
    .parameter "path"
    .parameter "version"

    .prologue
    const-wide/16 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/data/MediaItem;-><init>(Lcom/miui/gallery/data/Path;J)V

    .line 40
    iput-wide v0, p0, Lcom/miui/gallery/data/LocalMediaItem;->latitude:D

    .line 41
    iput-wide v0, p0, Lcom/miui/gallery/data/LocalMediaItem;->longitude:D

    .line 51
    return-void
.end method


# virtual methods
.method public getBucketId()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/miui/gallery/data/LocalMediaItem;->bucketId:I

    return v0
.end method

.method public getDateForTimeClusteringInMs()J
    .locals 4

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/miui/gallery/data/LocalMediaItem;->dateTakenInMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 56
    iget-wide v0, p0, Lcom/miui/gallery/data/LocalMediaItem;->dateTakenInMs:J

    .line 58
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/miui/gallery/data/LocalMediaItem;->dateModifiedInSec:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public getDateModifiedInMs()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/miui/gallery/data/LocalMediaItem;->dateModifiedInSec:J

    return-wide v0
.end method

.method public getDetails()Lcom/miui/gallery/data/MediaDetails;
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 100
    invoke-super {p0}, Lcom/miui/gallery/data/MediaItem;->getDetails()Lcom/miui/gallery/data/MediaDetails;

    move-result-object v0

    .line 101
    .local v0, details:Lcom/miui/gallery/data/MediaDetails;
    const/16 v2, 0xc8

    iget-object v3, p0, Lcom/miui/gallery/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 102
    iget-object v2, p0, Lcom/miui/gallery/data/LocalMediaItem;->caption:Ljava/lang/String;

    invoke-virtual {v0, v7, v2}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 103
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    .line 104
    .local v1, formater:Ljava/text/DateFormat;
    iget-wide v2, p0, Lcom/miui/gallery/data/LocalMediaItem;->dateTakenInMs:J

    cmp-long v2, v2, v9

    if-ltz v2, :cond_2

    .line 105
    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/miui/gallery/data/LocalMediaItem;->dateTakenInMs:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 110
    :goto_0
    iget-wide v2, p0, Lcom/miui/gallery/data/LocalMediaItem;->latitude:D

    iget-wide v4, p0, Lcom/miui/gallery/data/LocalMediaItem;->longitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    const/4 v2, 0x4

    const/4 v3, 0x2

    new-array v3, v3, [D

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/miui/gallery/data/LocalMediaItem;->latitude:D

    aput-wide v5, v3, v4

    iget-wide v4, p0, Lcom/miui/gallery/data/LocalMediaItem;->longitude:D

    aput-wide v4, v3, v7

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 113
    :cond_0
    iget-wide v2, p0, Lcom/miui/gallery/data/LocalMediaItem;->fileSize:J

    cmp-long v2, v2, v9

    if-lez v2, :cond_1

    const/16 v2, 0xa

    iget-wide v3, p0, Lcom/miui/gallery/data/LocalMediaItem;->fileSize:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 114
    :cond_1
    return-object v0

    .line 107
    :cond_2
    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/miui/gallery/data/LocalMediaItem;->dateModifiedInSec:J

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/miui/gallery/data/LocalMediaItem;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/miui/gallery/data/LocalMediaItem;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getLatLong([D)V
    .locals 3
    .parameter "latLong"

    .prologue
    .line 82
    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/miui/gallery/data/LocalMediaItem;->latitude:D

    aput-wide v1, p1, v0

    .line 83
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/miui/gallery/data/LocalMediaItem;->longitude:D

    aput-wide v1, p1, v0

    .line 84
    return-void
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/miui/gallery/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/miui/gallery/data/LocalMediaItem;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/miui/gallery/data/LocalMediaItem;->fileSize:J

    return-wide v0
.end method

.method protected updateContent(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/LocalMediaItem;->updateFromCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Lcom/miui/gallery/data/LocalMediaItem;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/LocalMediaItem;->mDataVersion:J

    .line 96
    :cond_0
    return-void
.end method

.method protected abstract updateFromCursor(Landroid/database/Cursor;)Z
.end method
