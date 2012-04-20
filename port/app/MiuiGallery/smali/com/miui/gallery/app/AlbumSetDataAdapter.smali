.class public Lcom/miui/gallery/app/AlbumSetDataAdapter;
.super Ljava/lang/Object;
.source "AlbumSetDataAdapter.java"

# interfaces
.implements Lcom/miui/gallery/ui/AlbumSetView$Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;,
        Lcom/miui/gallery/app/AlbumSetDataAdapter$ZeroSizeCallable;,
        Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;,
        Lcom/miui/gallery/app/AlbumSetDataAdapter$GetUpdateInfo;,
        Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;,
        Lcom/miui/gallery/app/AlbumSetDataAdapter$MySourceListener;
    }
.end annotation


# static fields
.field private static final EMPTY_MEDIA_ITEMS:[Lcom/miui/gallery/data/MediaItem;


# instance fields
.field private mActiveEnd:I

.field private mActiveStart:I

.field private mAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;

.field private mAlbumCacheVersion:J

.field private mAlbumSetShowType:I

.field private mContentEnd:I

.field private mContentStart:I

.field private final mCoverData:[[Lcom/miui/gallery/data/MediaItem;

.field private final mData:[Lcom/miui/gallery/data/MediaSet;

.field private final mItemVersion:[J

.field private mLoadingListener:Lcom/miui/gallery/app/LoadingListener;

.field private final mMainHandler:Landroid/os/Handler;

.field private mModelListener:Lcom/miui/gallery/ui/AlbumSetView$ModelListener;

.field private mReloadTask:Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;

.field private final mSetVersion:[J

.field private mShowTypeVersion:J

.field private mSize:I

.field private final mSource:Lcom/miui/gallery/data/MediaSet;

.field private final mSourceListener:Lcom/miui/gallery/app/AlbumSetDataAdapter$MySourceListener;

.field private mSourceVersion:J

.field private mTotalMediaObjectCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/miui/gallery/data/MediaItem;

    sput-object v0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->EMPTY_MEDIA_ITEMS:[Lcom/miui/gallery/data/MediaItem;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/data/MediaSet;II)V
    .locals 5
    .parameter "activity"
    .parameter "albumSet"
    .parameter "cacheSize"
    .parameter "albumSetShowType"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mActiveStart:I

    .line 63
    iput v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mActiveEnd:I

    .line 65
    iput v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mContentStart:I

    .line 66
    iput v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mContentEnd:I

    .line 67
    iput v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mTotalMediaObjectCount:I

    .line 70
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mShowTypeVersion:J

    .line 73
    iput-wide v3, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSourceVersion:J

    .line 74
    iput-wide v3, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mAlbumCacheVersion:J

    .line 84
    new-instance v1, Lcom/miui/gallery/app/AlbumSetDataAdapter$MySourceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/app/AlbumSetDataAdapter$MySourceListener;-><init>(Lcom/miui/gallery/app/AlbumSetDataAdapter;Lcom/miui/gallery/app/AlbumSetDataAdapter$1;)V

    iput-object v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSourceListener:Lcom/miui/gallery/app/AlbumSetDataAdapter$MySourceListener;

    .line 87
    invoke-static {p2}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/data/MediaSet;

    iput-object v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    .line 89
    iput p4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mAlbumSetShowType:I

    .line 90
    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getAllAlbumCache()Lcom/miui/gallery/data/AlbumCacheBase;

    move-result-object v0

    .line 91
    .local v0, allAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;
    iget v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mAlbumSetShowType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 92
    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getRecentAlbumCache()Lcom/miui/gallery/data/AlbumCacheBase;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;

    .line 97
    :goto_0
    invoke-virtual {v0}, Lcom/miui/gallery/data/AlbumCacheBase;->getResultAlbumCount()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mTotalMediaObjectCount:I

    .line 99
    new-array v1, p3, [[Lcom/miui/gallery/data/MediaItem;

    iput-object v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mCoverData:[[Lcom/miui/gallery/data/MediaItem;

    .line 100
    new-array v1, p3, [Lcom/miui/gallery/data/MediaSet;

    iput-object v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mData:[Lcom/miui/gallery/data/MediaSet;

    .line 101
    new-array v1, p3, [J

    iput-object v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mItemVersion:[J

    .line 102
    new-array v1, p3, [J

    iput-object v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSetVersion:[J

    .line 103
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mItemVersion:[J

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    .line 104
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSetVersion:[J

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    .line 106
    new-instance v1, Lcom/miui/gallery/app/AlbumSetDataAdapter$1;

    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/app/AlbumSetDataAdapter$1;-><init>(Lcom/miui/gallery/app/AlbumSetDataAdapter;Lcom/miui/gallery/ui/GLRoot;)V

    iput-object v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mMainHandler:Landroid/os/Handler;

    .line 122
    return-void

    .line 94
    :cond_0
    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/miui/gallery/app/AlbumSetDataAdapter;)Lcom/miui/gallery/app/LoadingListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mLoadingListener:Lcom/miui/gallery/app/LoadingListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/app/AlbumSetDataAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mShowTypeVersion:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/miui/gallery/app/AlbumSetDataAdapter;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mShowTypeVersion:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/miui/gallery/app/AlbumSetDataAdapter;)Lcom/miui/gallery/ui/AlbumSetView$ModelListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AlbumSetView$ModelListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/app/AlbumSetDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mActiveEnd:I

    return v0
.end method

.method static synthetic access$1202(Lcom/miui/gallery/app/AlbumSetDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mActiveEnd:I

    return p1
.end method

.method static synthetic access$1300(Lcom/miui/gallery/app/AlbumSetDataAdapter;)[[Lcom/miui/gallery/data/MediaItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mCoverData:[[Lcom/miui/gallery/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/app/AlbumSetDataAdapter;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mItemVersion:[J

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/app/AlbumSetDataAdapter;)[Lcom/miui/gallery/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mData:[Lcom/miui/gallery/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/gallery/app/AlbumSetDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mActiveStart:I

    return v0
.end method

.method static synthetic access$1602(Lcom/miui/gallery/app/AlbumSetDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mActiveStart:I

    return p1
.end method

.method static synthetic access$1700(Lcom/miui/gallery/app/AlbumSetDataAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/miui/gallery/app/AlbumSetDataAdapter;)Lcom/miui/gallery/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/miui/gallery/app/AlbumSetDataAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mAlbumCacheVersion:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/miui/gallery/app/AlbumSetDataAdapter;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mAlbumCacheVersion:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/app/AlbumSetDataAdapter;)Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mReloadTask:Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/miui/gallery/app/AlbumSetDataAdapter;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->clearSlot(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/miui/gallery/app/AlbumSetDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/miui/gallery/data/MediaSet;ILjava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->getRepresentativeItems(Lcom/miui/gallery/data/MediaSet;ILjava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/app/AlbumSetDataAdapter;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSetVersion:[J

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/app/AlbumSetDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mContentStart:I

    return v0
.end method

.method static synthetic access$402(Lcom/miui/gallery/app/AlbumSetDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mContentStart:I

    return p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/app/AlbumSetDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mContentEnd:I

    return v0
.end method

.method static synthetic access$502(Lcom/miui/gallery/app/AlbumSetDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mContentEnd:I

    return p1
.end method

.method static synthetic access$600(Lcom/miui/gallery/app/AlbumSetDataAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSourceVersion:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/miui/gallery/app/AlbumSetDataAdapter;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSourceVersion:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/miui/gallery/app/AlbumSetDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSize:I

    return v0
.end method

.method static synthetic access$802(Lcom/miui/gallery/app/AlbumSetDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSize:I

    return p1
.end method

.method static synthetic access$900(Lcom/miui/gallery/app/AlbumSetDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mTotalMediaObjectCount:I

    return v0
.end method

.method static synthetic access$902(Lcom/miui/gallery/app/AlbumSetDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mTotalMediaObjectCount:I

    return p1
.end method

.method private clearSlot(I)V
    .locals 4
    .parameter "slotIndex"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 205
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mData:[Lcom/miui/gallery/data/MediaSet;

    aput-object v1, v0, p1

    .line 206
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mCoverData:[[Lcom/miui/gallery/data/MediaItem;

    aput-object v1, v0, p1

    .line 207
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mItemVersion:[J

    aput-wide v2, v0, p1

    .line 208
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSetVersion:[J

    aput-wide v2, v0, p1

    .line 209
    return-void
.end method

.method private executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 403
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 404
    .local v1, task:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TT;>;"
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 407
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 409
    :goto_0
    return-object v2

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v2, 0x0

    goto :goto_0

    .line 410
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 411
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static getRepresentativeItems(Lcom/miui/gallery/data/MediaSet;ILjava/util/ArrayList;)V
    .locals 10
    .parameter "set"
    .parameter "wanted"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/data/MediaSet;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/MediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 276
    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/miui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/data/MediaSet;->getSubMediaSetCount()I

    move-result v2

    .line 280
    .local v2, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le p1, v6, :cond_1

    .line 281
    invoke-virtual {p0, v0}, Lcom/miui/gallery/data/MediaSet;->getSubMediaSet(I)Lcom/miui/gallery/data/MediaSet;

    move-result-object v5

    .line 282
    .local v5, subset:Lcom/miui/gallery/data/MediaSet;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v6, p1, v6

    int-to-double v6, v6

    sub-int v8, v2, v0

    int-to-double v8, v8

    div-double v3, v6, v8

    .line 283
    .local v3, perSet:D
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 284
    .local v1, m:I
    invoke-static {v5, v1, p2}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->getRepresentativeItems(Lcom/miui/gallery/data/MediaSet;ILjava/util/ArrayList;)V

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    .end local v1           #m:I
    .end local v3           #perSet:D
    .end local v5           #subset:Lcom/miui/gallery/data/MediaSet;
    :cond_1
    return-void
.end method

.method private setContentWindow(II)V
    .locals 7
    .parameter "contentStart"
    .parameter "contentEnd"

    .prologue
    .line 212
    iget v6, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mContentStart:I

    if-ne p1, v6, :cond_0

    iget v6, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mContentEnd:I

    if-ne p2, v6, :cond_0

    .line 235
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mCoverData:[[Lcom/miui/gallery/data/MediaItem;

    .line 214
    .local v0, data:[[Lcom/miui/gallery/data/MediaItem;
    array-length v3, v0

    .line 216
    .local v3, length:I
    iget v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mContentStart:I

    .line 217
    .local v5, start:I
    iget v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mContentEnd:I

    .line 219
    .local v1, end:I
    iput p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mContentStart:I

    .line 220
    iput p2, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mContentEnd:I

    .line 222
    if-ge p1, v1, :cond_1

    if-lt v5, p2, :cond_2

    .line 223
    :cond_1
    move v2, v5

    .local v2, i:I
    move v4, v1

    .local v4, n:I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 224
    rem-int v6, v2, v3

    invoke-direct {p0, v6}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->clearSlot(I)V

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 227
    .end local v2           #i:I
    .end local v4           #n:I
    :cond_2
    move v2, v5

    .restart local v2       #i:I
    :goto_2
    if-ge v2, p1, :cond_3

    .line 228
    rem-int v6, v2, v3

    invoke-direct {p0, v6}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->clearSlot(I)V

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 230
    :cond_3
    move v2, p2

    move v4, v1

    .restart local v4       #n:I
    :goto_3
    if-ge v2, v4, :cond_4

    .line 231
    rem-int v6, v2, v3

    invoke-direct {p0, v6}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->clearSlot(I)V

    .line 230
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 234
    :cond_4
    iget-object v6, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mReloadTask:Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;

    invoke-virtual {v6}, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->notifyDirty()V

    goto :goto_0
.end method


# virtual methods
.method public changeShowType(I)V
    .locals 2
    .parameter "albumSetShowType"

    .prologue
    .line 142
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryApp;->getRecentAlbumCache()Lcom/miui/gallery/data/RecentAlbumCache;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;

    .line 145
    iput p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mAlbumSetShowType:I

    .line 148
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mReloadTask:Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mReloadTask:Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;

    iget v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mAlbumSetShowType:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->changeType(I)V

    .line 151
    :cond_0
    return-void

    .line 142
    :cond_1
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryApp;->getAllAlbumCache()Lcom/miui/gallery/data/AllAlbumCache;

    move-result-object v0

    goto :goto_0
.end method

.method public getActiveStart()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mActiveStart:I

    return v0
.end method

.method public getAlbumCache()Lcom/miui/gallery/data/AlbumCacheBase;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;

    return-object v0
.end method

.method public getCoverItems(I)[Lcom/miui/gallery/data/MediaItem;
    .locals 6
    .parameter "index"

    .prologue
    .line 174
    iget v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mActiveStart:I

    if-ge p1, v1, :cond_0

    iget v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mActiveEnd:I

    if-lt p1, v1, :cond_0

    .line 175
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "%s not in (%s, %s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mActiveStart:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mActiveEnd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mCoverData:[[Lcom/miui/gallery/data/MediaItem;

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mCoverData:[[Lcom/miui/gallery/data/MediaItem;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 181
    .local v0, result:[Lcom/miui/gallery/data/MediaItem;
    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->EMPTY_MEDIA_ITEMS:[Lcom/miui/gallery/data/MediaItem;

    .end local v0           #result:[Lcom/miui/gallery/data/MediaItem;
    :cond_1
    return-object v0
.end method

.method public getMediaSet(I)Lcom/miui/gallery/data/MediaSet;
    .locals 5
    .parameter "index"

    .prologue
    .line 166
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mActiveStart:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mActiveEnd:I

    if-lt p1, v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "%s not in (%s, %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mActiveStart:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mActiveEnd:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mData:[Lcom/miui/gallery/data/MediaSet;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mData:[Lcom/miui/gallery/data/MediaSet;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSortBy()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;

    invoke-virtual {v0}, Lcom/miui/gallery/data/AlbumCacheBase;->getSortBy()I

    move-result v0

    return v0
.end method

.method public isActive(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 193
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mReloadTask:Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->terminate()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mReloadTask:Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;

    .line 127
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSourceListener:Lcom/miui/gallery/app/AlbumSetDataAdapter$MySourceListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/MediaSet;->removeContentListener(Lcom/miui/gallery/data/ContentListener;)V

    .line 128
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->pause()V

    .line 138
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->resume()V

    .line 139
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSourceListener:Lcom/miui/gallery/app/AlbumSetDataAdapter$MySourceListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/MediaSet;->addContentListener(Lcom/miui/gallery/data/ContentListener;)V

    .line 132
    new-instance v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;

    iget v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mAlbumSetShowType:I

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;-><init>(Lcom/miui/gallery/app/AlbumSetDataAdapter;I)V

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mReloadTask:Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;

    .line 133
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mReloadTask:Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->start()V

    .line 134
    return-void
.end method

.method public setActiveWindow(II)V
    .locals 6
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x0

    .line 238
    iget v3, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mActiveStart:I

    if-ne p1, v3, :cond_1

    iget v3, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mActiveEnd:I

    if-ne p2, v3, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    if-gt p1, p2, :cond_3

    sub-int v3, p2, p1

    iget-object v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mCoverData:[[Lcom/miui/gallery/data/MediaItem;

    array-length v5, v5

    if-gt v3, v5, :cond_3

    iget v3, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSize:I

    if-gt p2, v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 243
    iput p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mActiveStart:I

    .line 244
    iput p2, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mActiveEnd:I

    .line 246
    iget-object v3, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mCoverData:[[Lcom/miui/gallery/data/MediaItem;

    array-length v2, v3

    .line 248
    .local v2, length:I
    if-eq p1, p2, :cond_0

    .line 250
    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v5, v2, 0x2

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSize:I

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/common/Utils;->clamp(III)I

    move-result v1

    .line 252
    .local v1, contentStart:I
    add-int v3, v1, v2

    iget v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 253
    .local v0, contentEnd:I
    iget v3, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mContentStart:I

    if-gt v3, p1, :cond_2

    iget v3, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mContentEnd:I

    if-lt v3, p2, :cond_2

    iget v3, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mContentStart:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    .line 255
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->setContentWindow(II)V

    goto :goto_0

    .end local v0           #contentEnd:I
    .end local v1           #contentStart:I
    .end local v2           #length:I
    :cond_3
    move v3, v4

    .line 240
    goto :goto_1
.end method

.method public setLoadingListener(Lcom/miui/gallery/app/LoadingListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mLoadingListener:Lcom/miui/gallery/app/LoadingListener;

    .line 271
    return-void
.end method

.method public setModelListener(Lcom/miui/gallery/ui/AlbumSetView$ModelListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 266
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AlbumSetView$ModelListener;

    .line 267
    return-void
.end method

.method public setSortBy(I)V
    .locals 1
    .parameter "sortBy"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/data/AlbumCacheBase;->setSortBy(I)V

    .line 159
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSize:I

    return v0
.end method

.method public totalSize()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mTotalMediaObjectCount:I

    return v0
.end method
