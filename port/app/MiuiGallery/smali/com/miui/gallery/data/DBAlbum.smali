.class public Lcom/miui/gallery/data/DBAlbum;
.super Ljava/lang/Object;
.source "DBAlbum.java"


# instance fields
.field private mBucketId:Ljava/lang/String;

.field private mCover:Lcom/miui/gallery/StorageExplorer/BaseMeta;

.field private mCoverPath:Ljava/lang/String;

.field private mIsFromSystemDatabase:Z

.field private mIsHidden:I

.field private mIsHiddenRecent:I

.field private mIsManuallyRecent:I

.field private mMediaSet:Lcom/miui/gallery/data/MediaSet;

.field private mPath:Ljava/lang/String;

.field private mRecentVisitTime:J

.field private mSortBy:I

.field private mVisitCount:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x3

    iput v0, p0, Lcom/miui/gallery/data/DBAlbum;->mSortBy:I

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/data/DBAlbum;->mIsFromSystemDatabase:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x3

    iput v0, p0, Lcom/miui/gallery/data/DBAlbum;->mSortBy:I

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/data/DBAlbum;->mIsFromSystemDatabase:Z

    .line 61
    sget v0, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->BUCKET_ID:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mBucketId:Ljava/lang/String;

    .line 62
    sget v0, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->BUCKET_PATH:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mPath:Ljava/lang/String;

    .line 63
    sget v0, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->RECENT_VISIT_TIME:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/DBAlbum;->mRecentVisitTime:J

    .line 64
    sget v0, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->VISIT_COUNT:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/data/DBAlbum;->mVisitCount:I

    .line 65
    sget v0, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->IS_HIDDEN_RECENT:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/data/DBAlbum;->mIsHiddenRecent:I

    .line 66
    sget v0, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->IS_MANUALLY_RECENT:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/data/DBAlbum;->mIsManuallyRecent:I

    .line 67
    sget v0, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->IS_HIDDEN:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/data/DBAlbum;->mIsHidden:I

    .line 68
    sget v0, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->SORT_BY:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/data/DBAlbum;->mSortBy:I

    .line 70
    sget v0, Lcom/miui/gallery/util/GalleryDBHelper$AlbumColumn;->COVER_PATH:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mCoverPath:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mCoverPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mCoverPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/StorageExplorer/StorageUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mCoverPath:Ljava/lang/String;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mCoverPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mCoverPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/StorageExplorer/FileInfo;->getFileInfo(Ljava/lang/String;)Lcom/miui/gallery/StorageExplorer/FileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mCover:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    .line 77
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "bucketPath"

    .prologue
    const/4 v3, -0x3

    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v3, p0, Lcom/miui/gallery/data/DBAlbum;->mSortBy:I

    .line 29
    iput-boolean v2, p0, Lcom/miui/gallery/data/DBAlbum;->mIsFromSystemDatabase:Z

    .line 39
    invoke-static {p1}, Lcom/miui/gallery/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mBucketId:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/miui/gallery/data/DBAlbum;->mPath:Ljava/lang/String;

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/gallery/data/DBAlbum;->mRecentVisitTime:J

    .line 42
    iput v2, p0, Lcom/miui/gallery/data/DBAlbum;->mVisitCount:I

    .line 43
    iput v2, p0, Lcom/miui/gallery/data/DBAlbum;->mIsHiddenRecent:I

    .line 44
    iput v2, p0, Lcom/miui/gallery/data/DBAlbum;->mIsManuallyRecent:I

    .line 45
    iput v2, p0, Lcom/miui/gallery/data/DBAlbum;->mIsHidden:I

    .line 46
    iput v3, p0, Lcom/miui/gallery/data/DBAlbum;->mSortBy:I

    .line 47
    return-void
.end method

.method private validateCover()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mCoverPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mCoverPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/StorageExplorer/StorageUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/data/DBAlbum;->setCover(Lcom/miui/gallery/StorageExplorer/BaseMeta;)V

    .line 168
    :cond_0
    return-void
.end method


# virtual methods
.method public clone(Lcom/miui/gallery/data/DBAlbum;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 50
    iget-object v0, p1, Lcom/miui/gallery/data/DBAlbum;->mBucketId:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mBucketId:Ljava/lang/String;

    .line 51
    iget-object v0, p1, Lcom/miui/gallery/data/DBAlbum;->mPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mPath:Ljava/lang/String;

    .line 52
    iget-wide v0, p1, Lcom/miui/gallery/data/DBAlbum;->mRecentVisitTime:J

    iput-wide v0, p0, Lcom/miui/gallery/data/DBAlbum;->mRecentVisitTime:J

    .line 53
    iget v0, p1, Lcom/miui/gallery/data/DBAlbum;->mVisitCount:I

    iput v0, p0, Lcom/miui/gallery/data/DBAlbum;->mVisitCount:I

    .line 54
    iget v0, p1, Lcom/miui/gallery/data/DBAlbum;->mIsHiddenRecent:I

    iput v0, p0, Lcom/miui/gallery/data/DBAlbum;->mIsHiddenRecent:I

    .line 55
    iget v0, p1, Lcom/miui/gallery/data/DBAlbum;->mIsManuallyRecent:I

    iput v0, p0, Lcom/miui/gallery/data/DBAlbum;->mIsManuallyRecent:I

    .line 56
    iget v0, p1, Lcom/miui/gallery/data/DBAlbum;->mIsHidden:I

    iput v0, p0, Lcom/miui/gallery/data/DBAlbum;->mIsHidden:I

    .line 57
    iget v0, p1, Lcom/miui/gallery/data/DBAlbum;->mSortBy:I

    iput v0, p0, Lcom/miui/gallery/data/DBAlbum;->mSortBy:I

    .line 58
    return-void
.end method

.method public getBucketId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mBucketId:Ljava/lang/String;

    return-object v0
.end method

.method public getBucketPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCover()Lcom/miui/gallery/StorageExplorer/BaseMeta;
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/miui/gallery/data/DBAlbum;->validateCover()V

    .line 157
    iget-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mCover:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    return-object v0
.end method

.method public getIsHidden()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 128
    iget v1, p0, Lcom/miui/gallery/data/DBAlbum;->mIsHidden:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsHiddenRecent()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 112
    iget v1, p0, Lcom/miui/gallery/data/DBAlbum;->mIsHiddenRecent:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsManuallyRecent()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 120
    iget v1, p0, Lcom/miui/gallery/data/DBAlbum;->mIsManuallyRecent:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMediaSet()Lcom/miui/gallery/data/MediaSet;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    return-object v0
.end method

.method public getRecentVisitTime()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/miui/gallery/data/DBAlbum;->mRecentVisitTime:J

    return-wide v0
.end method

.method public getSortBy()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/miui/gallery/data/DBAlbum;->mSortBy:I

    return v0
.end method

.method public getVisitCount()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/miui/gallery/data/DBAlbum;->mVisitCount:I

    return v0
.end method

.method public setCover(Lcom/miui/gallery/StorageExplorer/BaseMeta;)V
    .locals 1
    .parameter "cover"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/miui/gallery/data/DBAlbum;->mCover:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    .line 161
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mCoverPath:Ljava/lang/String;

    .line 162
    return-void

    .line 161
    :cond_0
    iget-object v0, p1, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public setIsFromSystemDatabase(Z)V
    .locals 0
    .parameter "isFromSystemDatabase"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/miui/gallery/data/DBAlbum;->mIsFromSystemDatabase:Z

    .line 176
    return-void
.end method

.method public setIsHidden(Z)V
    .locals 1
    .parameter "isHidden"

    .prologue
    .line 132
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/miui/gallery/data/DBAlbum;->mIsHidden:I

    .line 133
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsHiddenRecent(Z)V
    .locals 1
    .parameter "isHiddenRecent"

    .prologue
    .line 116
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/miui/gallery/data/DBAlbum;->mIsHiddenRecent:I

    .line 117
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsManuallyRecent(Z)V
    .locals 1
    .parameter "isManuallyRecent"

    .prologue
    .line 124
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/miui/gallery/data/DBAlbum;->mIsManuallyRecent:I

    .line 125
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMediaSet(Lcom/miui/gallery/data/MediaSet;)V
    .locals 0
    .parameter "mediaSet"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/miui/gallery/data/DBAlbum;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    .line 141
    return-void
.end method

.method public setRecentVisitTime(J)V
    .locals 0
    .parameter "recentVisitTime"

    .prologue
    .line 100
    iput-wide p1, p0, Lcom/miui/gallery/data/DBAlbum;->mRecentVisitTime:J

    .line 101
    return-void
.end method

.method public setSortBy(I)V
    .locals 0
    .parameter "sortBy"

    .prologue
    .line 148
    iput p1, p0, Lcom/miui/gallery/data/DBAlbum;->mSortBy:I

    .line 149
    return-void
.end method

.method public setVisitCount(I)V
    .locals 0
    .parameter "visitCount"

    .prologue
    .line 108
    iput p1, p0, Lcom/miui/gallery/data/DBAlbum;->mVisitCount:I

    .line 109
    return-void
.end method
