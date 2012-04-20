.class public abstract Lcom/miui/gallery/data/AlbumCacheBase;
.super Ljava/lang/Object;
.source "AlbumCacheBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/AlbumCacheBase$BaseComparator;
    }
.end annotation


# static fields
.field private static sVersionSerial:J


# instance fields
.field private mAllMediaSet:Lcom/miui/gallery/data/MediaSet;

.field private mDataVersion:J

.field protected mPreferenceHelper:Lcom/miui/gallery/settings/PreferenceHelper;

.field private mResultAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/DBAlbum;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/miui/gallery/data/AlbumCacheBase;->sVersionSerial:J

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/data/MediaSet;Landroid/content/Context;)V
    .locals 2
    .parameter "set"
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mResultAlbums:Ljava/util/ArrayList;

    .line 35
    iput-object p1, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mAllMediaSet:Lcom/miui/gallery/data/MediaSet;

    .line 36
    new-instance v0, Lcom/miui/gallery/settings/PreferenceHelper;

    invoke-direct {v0, p2}, Lcom/miui/gallery/settings/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mPreferenceHelper:Lcom/miui/gallery/settings/PreferenceHelper;

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mDataVersion:J

    .line 38
    return-void
.end method

.method private compareCache(Ljava/util/ArrayList;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/DBAlbum;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, tempAlbums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/DBAlbum;>;"
    const/4 v0, 0x0

    .line 111
    .local v0, flag:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mResultAlbums:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 112
    const/4 v0, 0x1

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 115
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/data/DBAlbum;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBAlbum;->getMediaSet()Lcom/miui/gallery/data/MediaSet;

    move-result-object v3

    iget-object v2, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mResultAlbums:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/data/DBAlbum;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBAlbum;->getMediaSet()Lcom/miui/gallery/data/MediaSet;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 116
    const/4 v0, 0x1

    .line 117
    goto :goto_0

    .line 114
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static declared-synchronized nextVersionNumber()J
    .locals 6

    .prologue
    .line 204
    const-class v1, Lcom/miui/gallery/data/AlbumCacheBase;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/miui/gallery/data/AlbumCacheBase;->sVersionSerial:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/miui/gallery/data/AlbumCacheBase;->sVersionSerial:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sort()V
    .locals 2

    .prologue
    .line 126
    new-instance v0, Lcom/miui/gallery/data/AlbumCacheBase$BaseComparator;

    invoke-virtual {p0}, Lcom/miui/gallery/data/AlbumCacheBase;->readSortBy()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/data/AlbumCacheBase$BaseComparator;-><init>(Lcom/miui/gallery/data/AlbumCacheBase;I)V

    .line 127
    .local v0, comparator:Lcom/miui/gallery/data/AlbumCacheBase$BaseComparator;
    iget-object v1, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mResultAlbums:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 128
    return-void
.end method


# virtual methods
.method protected abstract canDisplay(Lcom/miui/gallery/data/DBAlbum;)Z
.end method

.method public declared-synchronized cloneResultAlbums()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/DBAlbum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mResultAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected filterCache()V
    .locals 6

    .prologue
    .line 78
    iget-object v4, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mAllMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v4}, Lcom/miui/gallery/data/MediaSet;->getAllAlbums()Ljava/util/ArrayList;

    move-result-object v0

    .line 79
    .local v0, albums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaSet;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 80
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v4}, Lcom/miui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, filePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/gallery/data/AlbumCache;->getAlbum(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;

    move-result-object v1

    .line 83
    .local v1, dbAlbum:Lcom/miui/gallery/data/DBAlbum;
    if-nez v1, :cond_1

    .line 84
    const-string v4, "AlbumCacheBase"

    const-string v5, "dbAlbum should not be null"

    invoke-static {v4, v5}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p0, v1}, Lcom/miui/gallery/data/AlbumCacheBase;->canDisplay(Lcom/miui/gallery/data/DBAlbum;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v1, v4}, Lcom/miui/gallery/data/DBAlbum;->setMediaSet(Lcom/miui/gallery/data/MediaSet;)V

    .line 90
    iget-object v4, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mResultAlbums:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 93
    .end local v1           #dbAlbum:Lcom/miui/gallery/data/DBAlbum;
    .end local v2           #filePath:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method protected getDBAlbumByBucketId(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;
    .locals 2
    .parameter "bucketId"

    .prologue
    .line 145
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mResultAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mResultAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/data/DBAlbum;

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBAlbum;->getBucketId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mResultAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/data/DBAlbum;

    .line 150
    :goto_1
    return-object v1

    .line 145
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public declared-synchronized getDBAlbumByFilePath(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;
    .locals 1
    .parameter "filePath"

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/miui/gallery/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/data/AlbumCacheBase;->getDBAlbumByBucketId(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDataVersion()J
    .locals 2

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mDataVersion:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResultAlbumCount()I
    .locals 1

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mResultAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSortBy()I
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/miui/gallery/data/AlbumCacheBase;->readSortBy()I

    move-result v0

    return v0
.end method

.method protected abstract readSortBy()I
.end method

.method public declared-synchronized reloadCache()Z
    .locals 4

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/miui/gallery/data/AlbumCache;->reloadCache()V

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v1, tempAlbums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/DBAlbum;>;"
    iget-object v2, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mResultAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 64
    iget-object v2, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mResultAlbums:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 66
    invoke-virtual {p0}, Lcom/miui/gallery/data/AlbumCacheBase;->filterCache()V

    .line 67
    invoke-direct {p0}, Lcom/miui/gallery/data/AlbumCacheBase;->sort()V

    .line 69
    invoke-direct {p0, v1}, Lcom/miui/gallery/data/AlbumCacheBase;->compareCache(Ljava/util/ArrayList;)Z

    move-result v0

    .line 70
    .local v0, fReallyLoad:Z
    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Lcom/miui/gallery/data/AlbumCacheBase;->nextVersionNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mDataVersion:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_0
    monitor-exit p0

    return v0

    .line 58
    .end local v0           #fReallyLoad:Z
    .end local v1           #tempAlbums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/DBAlbum;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public abstract setSortBy(I)V
.end method
