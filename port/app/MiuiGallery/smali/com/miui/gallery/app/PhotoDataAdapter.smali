.class public Lcom/miui/gallery/app/PhotoDataAdapter;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/miui/gallery/app/PhotoPage$Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;,
        Lcom/miui/gallery/app/PhotoDataAdapter$UpdateContent;,
        Lcom/miui/gallery/app/PhotoDataAdapter$GetUpdateInfo;,
        Lcom/miui/gallery/app/PhotoDataAdapter$UpdateInfo;,
        Lcom/miui/gallery/app/PhotoDataAdapter$SourceListener;,
        Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;,
        Lcom/miui/gallery/app/PhotoDataAdapter$ScreenNailListener;,
        Lcom/miui/gallery/app/PhotoDataAdapter$FullImageListener;,
        Lcom/miui/gallery/app/PhotoDataAdapter$ScreenNailJob;,
        Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;,
        Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;
    }
.end annotation


# static fields
.field private static final VERSION_OUT_OF_RANGE:J

.field private static sImageFetchSeq:[Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;


# instance fields
.field private mActiveEnd:I

.field private mActiveStart:I

.field private final mChanges:[J

.field private mContentEnd:I

.field private mContentStart:I

.field private mCurrentIndex:I

.field private final mData:[Lcom/miui/gallery/data/MediaItem;

.field private mDataListener:Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;

.field private mImageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActive:Z

.field private mItemPath:Lcom/miui/gallery/data/Path;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mPhotoView:Lcom/miui/gallery/ui/PhotoView;

.field private mReloadTask:Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;

.field private mSize:I

.field private final mSource:Lcom/miui/gallery/data/MediaSet;

.field private final mSourceListener:Lcom/miui/gallery/app/PhotoDataAdapter$SourceListener;

.field private mSourceVersion:J

.field private final mThreadPool:Lcom/miui/gallery/util/ThreadPool;

.field private final mTileProvider:Lcom/miui/gallery/ui/TileImageViewAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 66
    invoke-static {}, Lcom/miui/gallery/data/MediaObject;->nextVersionNumber()J

    move-result-wide v3

    sput-wide v3, Lcom/miui/gallery/app/PhotoDataAdapter;->VERSION_OUT_OF_RANGE:J

    .line 85
    const/4 v1, 0x0

    .line 86
    .local v1, k:I
    const/16 v3, 0xc

    new-array v3, v3, [Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;

    sput-object v3, Lcom/miui/gallery/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;

    .line 87
    sget-object v3, Lcom/miui/gallery/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #k:I
    .local v2, k:I
    new-instance v4, Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v8, v6}, Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v1

    .line 89
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_0

    .line 90
    sget-object v3, Lcom/miui/gallery/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #k:I
    .restart local v1       #k:I
    new-instance v4, Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v0, v6}, Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v2

    .line 91
    sget-object v3, Lcom/miui/gallery/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #k:I
    .restart local v2       #k:I
    new-instance v4, Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;

    neg-int v5, v0

    invoke-direct {v4, v5, v6}, Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v1

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    sget-object v3, Lcom/miui/gallery/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #k:I
    .restart local v1       #k:I
    new-instance v4, Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v8, v7}, Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v2

    .line 95
    sget-object v3, Lcom/miui/gallery/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #k:I
    .restart local v2       #k:I
    new-instance v4, Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v6, v7}, Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v1

    .line 96
    sget-object v3, Lcom/miui/gallery/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #k:I
    .restart local v1       #k:I
    new-instance v4, Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v7}, Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v2

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/PhotoView;Lcom/miui/gallery/data/MediaSet;Lcom/miui/gallery/data/Path;I)V
    .locals 4
    .parameter "activity"
    .parameter "view"
    .parameter "mediaSet"
    .parameter "itemPath"
    .parameter "indexHint"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Lcom/miui/gallery/ui/TileImageViewAdapter;

    invoke-direct {v0}, Lcom/miui/gallery/ui/TileImageViewAdapter;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/miui/gallery/ui/TileImageViewAdapter;

    .line 112
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/miui/gallery/data/MediaItem;

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    .line 113
    iput v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mContentStart:I

    .line 114
    iput v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mContentEnd:I

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    .line 124
    iput v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mActiveStart:I

    .line 125
    iput v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mActiveEnd:I

    .line 134
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mChanges:[J

    .line 143
    iput-wide v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSourceVersion:J

    .line 144
    iput v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSize:I

    .line 155
    new-instance v0, Lcom/miui/gallery/app/PhotoDataAdapter$SourceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/app/PhotoDataAdapter$SourceListener;-><init>(Lcom/miui/gallery/app/PhotoDataAdapter;Lcom/miui/gallery/app/PhotoDataAdapter$1;)V

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSourceListener:Lcom/miui/gallery/app/PhotoDataAdapter$SourceListener;

    .line 163
    invoke-static {p3}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/MediaSet;

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    .line 164
    invoke-static {p2}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/PhotoView;

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    .line 165
    invoke-static {p4}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/Path;

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mItemPath:Lcom/miui/gallery/data/Path;

    .line 166
    iput p5, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 167
    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getThreadPool()Lcom/miui/gallery/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mThreadPool:Lcom/miui/gallery/util/ThreadPool;

    .line 169
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mChanges:[J

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 171
    new-instance v0, Lcom/miui/gallery/app/PhotoDataAdapter$1;

    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/app/PhotoDataAdapter$1;-><init>(Lcom/miui/gallery/app/PhotoDataAdapter;Lcom/miui/gallery/ui/GLRoot;)V

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    .line 192
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateSlidingWindow()V

    .line 193
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/app/PhotoDataAdapter;)Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mDataListener:Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$1002(Lcom/miui/gallery/app/PhotoDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/gallery/app/PhotoDataAdapter;)Lcom/miui/gallery/data/Path;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mItemPath:Lcom/miui/gallery/data/Path;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/miui/gallery/app/PhotoDataAdapter;Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/Path;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mItemPath:Lcom/miui/gallery/data/Path;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/miui/gallery/app/PhotoDataAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSourceVersion:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/miui/gallery/app/PhotoDataAdapter;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSourceVersion:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/miui/gallery/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSize:I

    return v0
.end method

.method static synthetic access$1402(Lcom/miui/gallery/app/PhotoDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSize:I

    return p1
.end method

.method static synthetic access$1500(Lcom/miui/gallery/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mActiveEnd:I

    return v0
.end method

.method static synthetic access$1502(Lcom/miui/gallery/app/PhotoDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mActiveEnd:I

    return p1
.end method

.method static synthetic access$1600(Lcom/miui/gallery/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateSlidingWindow()V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/gallery/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateImageCache()V

    return-void
.end method

.method static synthetic access$1800(Lcom/miui/gallery/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateTileProvider()V

    return-void
.end method

.method static synthetic access$1900(Lcom/miui/gallery/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateImageRequests()V

    return-void
.end method

.method static synthetic access$2000(Lcom/miui/gallery/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->fireModelInvalidated()V

    return-void
.end method

.method static synthetic access$2100(Lcom/miui/gallery/app/PhotoDataAdapter;)Lcom/miui/gallery/ui/PhotoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/miui/gallery/app/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/PhotoDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/miui/gallery/app/PhotoDataAdapter;)Lcom/miui/gallery/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/app/PhotoDataAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/app/PhotoDataAdapter;JLcom/miui/gallery/util/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateFullImage(JLcom/miui/gallery/util/Future;)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/gallery/app/PhotoDataAdapter;JLcom/miui/gallery/util/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateScreenNail(JLcom/miui/gallery/util/Future;)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mContentStart:I

    return v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mContentEnd:I

    return v0
.end method

.method static synthetic access$802(Lcom/miui/gallery/app/PhotoDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mContentEnd:I

    return p1
.end method

.method static synthetic access$900(Lcom/miui/gallery/app/PhotoDataAdapter;)[Lcom/miui/gallery/data/MediaItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    return-object v0
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
    .line 663
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 664
    .local v1, task:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TT;>;"
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 667
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 669
    :goto_0
    return-object v2

    .line 668
    :catch_0
    move-exception v0

    .line 669
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v2, 0x0

    goto :goto_0

    .line 670
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 671
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private fireModelInvalidated()V
    .locals 7

    .prologue
    .line 205
    const/4 v4, -0x1

    .local v4, i:I
    :goto_0
    const/4 v5, 0x1

    if-gt v4, v5, :cond_1

    .line 206
    iget v5, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v5, v4

    invoke-direct {p0, v5}, Lcom/miui/gallery/app/PhotoDataAdapter;->getVersion(I)J

    move-result-wide v2

    .line 207
    .local v2, current:J
    iget-object v5, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mChanges:[J

    add-int/lit8 v6, v4, 0x1

    aget-wide v0, v5, v6

    .line 208
    .local v0, change:J
    cmp-long v5, v2, v0

    if-eqz v5, :cond_0

    .line 209
    iget-object v5, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v5, v4}, Lcom/miui/gallery/ui/PhotoView;->notifyImageInvalidated(I)V

    .line 210
    iget-object v5, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mChanges:[J

    add-int/lit8 v6, v4, 0x1

    aput-wide v2, v5, v6

    .line 205
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 213
    .end local v0           #change:J
    .end local v2           #current:J
    :cond_1
    return-void
.end method

.method private getImage(I)Lcom/miui/gallery/ui/PhotoView$ImageData;
    .locals 7
    .parameter "index"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 310
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSize:I

    if-ge p1, v2, :cond_0

    iget-boolean v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v4

    .line 318
    :goto_0
    return-object v2

    .line 311
    :cond_1
    iget v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mActiveStart:I

    if-lt p1, v2, :cond_2

    iget v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge p1, v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 313
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/miui/gallery/app/PhotoDataAdapter;->getVersion(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;

    .line 314
    .local v0, entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_3

    move-object v1, v4

    .line 315
    .local v1, screennail:Landroid/graphics/Bitmap;
    :goto_2
    if-eqz v1, :cond_4

    .line 316
    new-instance v2, Lcom/miui/gallery/ui/PhotoView$ImageData;

    iget v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->rotation:I

    invoke-direct {v2, v1, v3}, Lcom/miui/gallery/ui/PhotoView$ImageData;-><init>(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .end local v0           #entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    .end local v1           #screennail:Landroid/graphics/Bitmap;
    :cond_2
    move v2, v3

    .line 311
    goto :goto_1

    .line 314
    .restart local v0       #entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    :cond_3
    iget-object v1, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNail:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 318
    .restart local v1       #screennail:Landroid/graphics/Bitmap;
    :cond_4
    new-instance v2, Lcom/miui/gallery/ui/PhotoView$ImageData;

    invoke-direct {v2, v4, v3}, Lcom/miui/gallery/ui/PhotoView$ImageData;-><init>(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method private getVersion(I)J
    .locals 3
    .parameter "index"

    .prologue
    .line 196
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSize:I

    if-lt p1, v1, :cond_1

    :cond_0
    sget-wide v1, Lcom/miui/gallery/app/PhotoDataAdapter;->VERSION_OUT_OF_RANGE:J

    .line 201
    :goto_0
    return-wide v1

    .line 197
    :cond_1
    iget v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mContentStart:I

    if-lt p1, v1, :cond_2

    iget v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mContentEnd:I

    if-ge p1, v1, :cond_2

    .line 198
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    rem-int/lit8 v2, p1, 0x20

    aget-object v0, v1, v2

    .line 199
    .local v0, item:Lcom/miui/gallery/data/MediaItem;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaItem;->getDataVersion()J

    move-result-wide v1

    goto :goto_0

    .line 201
    .end local v0           #item:Lcom/miui/gallery/data/MediaItem;
    :cond_2
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method private startTaskIfNeeded(II)Lcom/miui/gallery/util/Future;
    .locals 8
    .parameter "index"
    .parameter "which"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/miui/gallery/util/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 530
    iget v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mActiveStart:I

    if-lt p1, v2, :cond_0

    iget v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt p1, v2, :cond_1

    :cond_0
    move-object v2, v4

    .line 565
    :goto_0
    return-object v2

    .line 532
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/miui/gallery/app/PhotoDataAdapter;->getVersion(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;

    .line 533
    .local v0, entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_2

    move-object v2, v4

    goto :goto_0

    .line 535
    :cond_2
    if-ne p2, v3, :cond_3

    iget-object v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    if-eqz v2, :cond_3

    .line 536
    iget-object v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    goto :goto_0

    .line 537
    :cond_3
    if-ne p2, v7, :cond_4

    iget-object v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    if-eqz v2, :cond_4

    .line 538
    iget-object v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    goto :goto_0

    .line 541
    :cond_4
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    rem-int/lit8 v5, p1, 0x20

    aget-object v1, v2, v5

    .line 542
    .local v1, item:Lcom/miui/gallery/data/MediaItem;
    if-eqz v1, :cond_5

    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 544
    if-ne p2, v3, :cond_6

    iget v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedBits:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_6

    .line 546
    iget v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedBits:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedBits:I

    .line 548
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mThreadPool:Lcom/miui/gallery/util/ThreadPool;

    new-instance v3, Lcom/miui/gallery/app/PhotoDataAdapter$ScreenNailJob;

    invoke-direct {v3, v1}, Lcom/miui/gallery/app/PhotoDataAdapter$ScreenNailJob;-><init>(Lcom/miui/gallery/data/MediaItem;)V

    new-instance v4, Lcom/miui/gallery/app/PhotoDataAdapter$ScreenNailListener;

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getDataVersion()J

    move-result-wide v5

    invoke-direct {v4, p0, v5, v6}, Lcom/miui/gallery/app/PhotoDataAdapter$ScreenNailListener;-><init>(Lcom/miui/gallery/app/PhotoDataAdapter;J)V

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/util/ThreadPool;->submit(Lcom/miui/gallery/util/ThreadPool$Job;Lcom/miui/gallery/util/FutureListener;)Lcom/miui/gallery/util/Future;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    .line 552
    iget-object v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    goto :goto_0

    .line 542
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 554
    :cond_6
    if-ne p2, v7, :cond_7

    iget v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedBits:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_7

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getSupportedOperations()I

    move-result v2

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_7

    .line 558
    iget v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedBits:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedBits:I

    .line 559
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mThreadPool:Lcom/miui/gallery/util/ThreadPool;

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->requestLargeImage()Lcom/miui/gallery/util/ThreadPool$Job;

    move-result-object v3

    new-instance v4, Lcom/miui/gallery/app/PhotoDataAdapter$FullImageListener;

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getDataVersion()J

    move-result-wide v5

    invoke-direct {v4, p0, v5, v6}, Lcom/miui/gallery/app/PhotoDataAdapter$FullImageListener;-><init>(Lcom/miui/gallery/app/PhotoDataAdapter;J)V

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/util/ThreadPool;->submit(Lcom/miui/gallery/util/ThreadPool$Job;Lcom/miui/gallery/util/FutureListener;)Lcom/miui/gallery/util/Future;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    .line 563
    iget-object v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    goto/16 :goto_0

    :cond_7
    move-object v2, v4

    .line 565
    goto/16 :goto_0
.end method

.method private updateCurrentIndex(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 331
    iput p1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 332
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateSlidingWindow()V

    .line 334
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    rem-int/lit8 v2, p1, 0x20

    aget-object v0, v1, v2

    .line 335
    .local v0, item:Lcom/miui/gallery/data/MediaItem;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mItemPath:Lcom/miui/gallery/data/Path;

    .line 337
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateImageCache()V

    .line 338
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateImageRequests()V

    .line 339
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateTileProvider()V

    .line 340
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoView;->notifyOnNewImage()V

    .line 342
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mDataListener:Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mDataListener:Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;

    iget-object v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mItemPath:Lcom/miui/gallery/data/Path;

    invoke-interface {v1, p1, v2}, Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;->onPhotoChanged(ILcom/miui/gallery/data/Path;)V

    .line 345
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->fireModelInvalidated()V

    .line 346
    return-void

    .line 335
    :cond_1
    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v1

    goto :goto_0
.end method

.method private updateFullImage(JLcom/miui/gallery/util/Future;)V
    .locals 4
    .parameter "version"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/miui/gallery/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p3, future:Lcom/miui/gallery/util/Future;,"Lcom/miui/gallery/util/Future<Landroid/graphics/BitmapRegionDecoder;>;"
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;

    .line 251
    .local v0, entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    if-eq v2, p3, :cond_2

    .line 253
    :cond_0
    invoke-interface {p3}, Lcom/miui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/BitmapRegionDecoder;

    .line 254
    .local v1, fullImage:Landroid/graphics/BitmapRegionDecoder;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 273
    .end local v1           #fullImage:Landroid/graphics/BitmapRegionDecoder;
    :cond_1
    :goto_0
    return-void

    .line 258
    :cond_2
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    .line 259
    invoke-interface {p3}, Lcom/miui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/BitmapRegionDecoder;

    iput-object v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    .line 260
    iget-object v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v2, :cond_5

    .line 261
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mDataListener:Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;

    if-eqz v2, :cond_3

    .line 262
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mDataListener:Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;

    const/4 v3, 0x1

    invoke-interface {v2, p1, p2, v3}, Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;->onPhotoAvailable(JZ)V

    .line 264
    :cond_3
    iget v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/miui/gallery/app/PhotoDataAdapter;->getVersion(I)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_4

    .line 265
    invoke-direct {p0, v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateTileProvider(Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;)V

    .line 266
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/PhotoView;->notifyImageInvalidated(I)V

    .line 272
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateImageRequests()V

    goto :goto_0

    .line 270
    :cond_5
    iget v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedBits:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedBits:I

    goto :goto_1
.end method

.method private updateImageCache()V
    .locals 12

    .prologue
    const-wide/16 v7, -0x1

    const/4 v11, 0x0

    .line 569
    new-instance v4, Ljava/util/HashSet;

    iget-object v9, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 570
    .local v4, toBeRemoved:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mActiveStart:I

    .local v1, i:I
    :goto_0
    iget v9, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge v1, v9, :cond_5

    .line 571
    iget-object v9, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    rem-int/lit8 v10, v1, 0x20

    aget-object v3, v9, v10

    .line 572
    .local v3, item:Lcom/miui/gallery/data/MediaItem;
    if-nez v3, :cond_1

    move-wide v5, v7

    .line 575
    .local v5, version:J
    :goto_1
    cmp-long v9, v5, v7

    if-nez v9, :cond_2

    .line 570
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 572
    .end local v5           #version:J
    :cond_1
    invoke-virtual {v3}, Lcom/miui/gallery/data/MediaItem;->getDataVersion()J

    move-result-wide v5

    goto :goto_1

    .line 576
    .restart local v5       #version:J
    :cond_2
    iget-object v9, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;

    .line 577
    .local v0, entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 578
    if-eqz v0, :cond_4

    .line 579
    iget v9, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int v9, v1, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_0

    .line 580
    iget-object v9, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    if-eqz v9, :cond_3

    .line 581
    iget-object v9, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    invoke-interface {v9}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 582
    iput-object v11, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    .line 584
    :cond_3
    iput-object v11, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    .line 585
    iget v9, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedBits:I

    and-int/lit8 v9, v9, -0x3

    iput v9, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedBits:I

    goto :goto_2

    .line 588
    :cond_4
    new-instance v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;

    .end local v0           #entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    invoke-direct {v0, v11}, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;-><init>(Lcom/miui/gallery/app/PhotoDataAdapter$1;)V

    .line 589
    .restart local v0       #entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    invoke-virtual {v3}, Lcom/miui/gallery/data/MediaItem;->getFullImageRotation()I

    move-result v9

    iput v9, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->rotation:I

    .line 590
    iget-object v9, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 595
    .end local v0           #entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    .end local v3           #item:Lcom/miui/gallery/data/MediaItem;
    .end local v5           #version:J
    :cond_5
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 596
    .local v5, version:Ljava/lang/Long;
    iget-object v7, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;

    .line 597
    .restart local v0       #entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    iget-object v7, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    if-eqz v7, :cond_7

    iget-object v7, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    invoke-interface {v7}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 598
    :cond_7
    iget-object v7, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    if-eqz v7, :cond_6

    iget-object v7, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    invoke-interface {v7}, Lcom/miui/gallery/util/Future;->cancel()V

    goto :goto_3

    .line 600
    .end local v0           #entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    .end local v5           #version:Ljava/lang/Long;
    :cond_8
    return-void
.end method

.method private updateImageRequests()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 476
    iget-boolean v8, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v8, :cond_1

    .line 507
    :cond_0
    return-void

    .line 478
    :cond_1
    iget v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 479
    .local v1, currentIndex:I
    iget-object v8, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    rem-int/lit8 v9, v1, 0x20

    aget-object v5, v8, v9

    .line 480
    .local v5, item:Lcom/miui/gallery/data/MediaItem;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mItemPath:Lcom/miui/gallery/data/Path;

    invoke-virtual {v9}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 486
    const/4 v7, 0x0

    .line 487
    .local v7, task:Lcom/miui/gallery/util/Future;,"Lcom/miui/gallery/util/Future<*>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    sget-object v8, Lcom/miui/gallery/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;

    array-length v8, v8

    if-ge v3, v8, :cond_2

    .line 488
    sget-object v8, Lcom/miui/gallery/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;

    aget-object v8, v8, v3

    iget v6, v8, Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;->indexOffset:I

    .line 489
    .local v6, offset:I
    sget-object v8, Lcom/miui/gallery/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;

    aget-object v8, v8, v3

    iget v0, v8, Lcom/miui/gallery/app/PhotoDataAdapter$ImageFetch;->imageBit:I

    .line 490
    .local v0, bit:I
    add-int v8, v1, v6

    invoke-direct {p0, v8, v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->startTaskIfNeeded(II)Lcom/miui/gallery/util/Future;

    move-result-object v7

    .line 491
    if-eqz v7, :cond_5

    .line 495
    .end local v0           #bit:I
    .end local v6           #offset:I
    :cond_2
    iget-object v8, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;

    .line 496
    .local v2, entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    iget-object v8, v2, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    if-eqz v8, :cond_4

    iget-object v8, v2, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    if-eq v8, v7, :cond_4

    .line 497
    iget-object v8, v2, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    invoke-interface {v8}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 498
    iput-object v10, v2, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    .line 499
    iget v8, v2, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedBits:I

    and-int/lit8 v8, v8, -0x2

    iput v8, v2, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedBits:I

    .line 501
    :cond_4
    iget-object v8, v2, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    if-eqz v8, :cond_3

    iget-object v8, v2, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    if-eq v8, v7, :cond_3

    .line 502
    iget-object v8, v2, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    invoke-interface {v8}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 503
    iput-object v10, v2, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    .line 504
    iget v8, v2, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedBits:I

    and-int/lit8 v8, v8, -0x3

    iput v8, v2, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedBits:I

    goto :goto_1

    .line 487
    .end local v2           #entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    .end local v4           #i$:Ljava/util/Iterator;
    .restart local v0       #bit:I
    .restart local v6       #offset:I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private updateScreenNail(JLcom/miui/gallery/util/Future;)V
    .locals 6
    .parameter "version"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/miui/gallery/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, future:Lcom/miui/gallery/util/Future;,"Lcom/miui/gallery/util/Future<Landroid/graphics/Bitmap;>;"
    const/4 v5, 0x1

    .line 220
    iget-object v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;

    .line 221
    .local v0, entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    if-eq v3, p3, :cond_2

    .line 223
    :cond_0
    invoke-interface {p3}, Lcom/miui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 224
    .local v2, screenNail:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 247
    .end local v2           #screenNail:Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .line 228
    :cond_2
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    .line 229
    invoke-interface {p3}, Lcom/miui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    iput-object v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNail:Landroid/graphics/Bitmap;

    .line 231
    iget-object v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNail:Landroid/graphics/Bitmap;

    if-nez v3, :cond_4

    .line 232
    iput-boolean v5, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    .line 234
    iget v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedBits:I

    and-int/lit8 v3, v3, -0x2

    iput v3, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedBits:I

    .line 246
    :cond_3
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateImageRequests()V

    goto :goto_0

    .line 236
    :cond_4
    iget-object v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mDataListener:Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;

    if-eqz v3, :cond_5

    .line 237
    iget-object v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mDataListener:Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;

    const/4 v4, 0x0

    invoke-interface {v3, p1, p2, v4}, Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;->onPhotoAvailable(JZ)V

    .line 239
    :cond_5
    const/4 v1, -0x1

    .local v1, i:I
    :goto_1
    if-gt v1, v5, :cond_3

    .line 240
    iget v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v3, v1

    invoke-direct {p0, v3}, Lcom/miui/gallery/app/PhotoDataAdapter;->getVersion(I)J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-nez v3, :cond_7

    .line 241
    if-nez v1, :cond_6

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateTileProvider(Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;)V

    .line 242
    :cond_6
    iget-object v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v3, v1}, Lcom/miui/gallery/ui/PhotoView;->notifyImageInvalidated(I)V

    .line 239
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private updateSlidingWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 449
    iget v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v3, v3, -0x2

    iget v4, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v4, -0x5

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v5, v4}, Lcom/miui/gallery/common/Utils;->clamp(III)I

    move-result v2

    .line 451
    .local v2, start:I
    iget v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v2, 0x5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 453
    .local v0, end:I
    iget v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mActiveStart:I

    if-ne v3, v2, :cond_1

    iget v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mActiveEnd:I

    if-ne v3, v0, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    iput v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mActiveStart:I

    .line 456
    iput v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mActiveEnd:I

    .line 459
    iget v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v3, v3, -0x10

    iget v4, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v4, -0x20

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v5, v4}, Lcom/miui/gallery/common/Utils;->clamp(III)I

    move-result v2

    .line 461
    iget v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v2, 0x20

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 462
    iget v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mContentStart:I

    iget v4, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mActiveStart:I

    if-gt v3, v4, :cond_2

    iget v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mContentEnd:I

    iget v4, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt v3, v4, :cond_2

    iget v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mContentStart:I

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_0

    .line 464
    :cond_2
    iget v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mContentStart:I

    .local v1, i:I
    :goto_1
    iget v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mContentEnd:I

    if-ge v1, v3, :cond_5

    .line 465
    if-lt v1, v2, :cond_3

    if-lt v1, v0, :cond_4

    .line 466
    :cond_3
    iget-object v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    rem-int/lit8 v4, v1, 0x20

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 464
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 469
    :cond_5
    iput v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mContentStart:I

    .line 470
    iput v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mContentEnd:I

    .line 471
    iget-object v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mReloadTask:Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mReloadTask:Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v3}, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    goto :goto_0
.end method

.method private updateTileProvider()V
    .locals 4

    .prologue
    .line 420
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/miui/gallery/app/PhotoDataAdapter;->getVersion(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;

    .line 421
    .local v0, entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_0

    .line 422
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/miui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/TileImageViewAdapter;->clear()V

    .line 426
    :goto_0
    return-void

    .line 424
    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateTileProvider(Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;)V

    goto :goto_0
.end method

.method private updateTileProvider(Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;)V
    .locals 7
    .parameter "entry"

    .prologue
    .line 429
    iget-object v2, p1, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNail:Landroid/graphics/Bitmap;

    .line 430
    .local v2, screenNail:Landroid/graphics/Bitmap;
    iget-object v0, p1, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    .line 431
    .local v0, fullImage:Landroid/graphics/BitmapRegionDecoder;
    if-eqz v2, :cond_2

    .line 432
    if-eqz v0, :cond_1

    .line 433
    iget-object v4, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/miui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v6

    invoke-virtual {v4, v2, v5, v6}, Lcom/miui/gallery/ui/TileImageViewAdapter;->setBackupImage(Landroid/graphics/Bitmap;II)V

    .line 435
    iget-object v4, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/miui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v4, v0}, Lcom/miui/gallery/ui/TileImageViewAdapter;->setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 438
    .local v3, width:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 439
    .local v1, height:I
    iget-object v4, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/miui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v4, v2, v3, v1}, Lcom/miui/gallery/ui/TileImageViewAdapter;->setBackupImage(Landroid/graphics/Bitmap;II)V

    goto :goto_0

    .line 442
    .end local v1           #height:I
    .end local v3           #width:I
    :cond_2
    iget-object v4, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/miui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/TileImageViewAdapter;->clear()V

    .line 443
    iget-boolean v4, p1, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/miui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/TileImageViewAdapter;->setFailedToLoad()V

    goto :goto_0
.end method


# virtual methods
.method public getBackupImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/miui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/TileImageViewAdapter;->getBackupImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    return v0
.end method

.method public getCurrentMediaItem()Lcom/miui/gallery/data/MediaItem;
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    iget v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    rem-int/lit8 v1, v1, 0x20

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/miui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/TileImageViewAdapter;->getImageHeight()I

    move-result v0

    return v0
.end method

.method public getImageRotation()I
    .locals 4

    .prologue
    .line 374
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/miui/gallery/app/PhotoDataAdapter;->getVersion(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;

    .line 375
    .local v0, entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->rotation:I

    goto :goto_0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/miui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/TileImageViewAdapter;->getImageWidth()I

    move-result v0

    return v0
.end method

.method public getLevelCount()I
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/miui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/TileImageViewAdapter;->getLevelCount()I

    move-result v0

    return v0
.end method

.method public getNextImage()Lcom/miui/gallery/ui/PhotoView$ImageData;
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->getImage(I)Lcom/miui/gallery/ui/PhotoView$ImageData;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousImage()Lcom/miui/gallery/ui/PhotoView$ImageData;
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->getImage(I)Lcom/miui/gallery/ui/PhotoView$ImageData;

    move-result-object v0

    return-object v0
.end method

.method public getTile(IIII)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "level"
    .parameter "x"
    .parameter "y"
    .parameter "tileSize"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/miui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/gallery/ui/TileImageViewAdapter;->getTile(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFailedToLoad()Z
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/miui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/TileImageViewAdapter;->isFailedToLoad()Z

    move-result v0

    return v0
.end method

.method public next()V
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateCurrentIndex(I)V

    .line 350
    return-void
.end method

.method public notifyDirty()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mReloadTask:Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mReloadTask:Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v0}, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    .line 279
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 294
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mIsActive:Z

    .line 296
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mReloadTask:Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v2}, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->terminate()V

    .line 297
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mReloadTask:Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;

    .line 299
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    iget-object v3, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSourceListener:Lcom/miui/gallery/app/PhotoDataAdapter$SourceListener;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/data/MediaSet;->removeContentListener(Lcom/miui/gallery/data/ContentListener;)V

    .line 301
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;

    .line 302
    .local v0, entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    iget-object v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/miui/gallery/util/Future;

    invoke-interface {v2}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 303
    :cond_1
    iget-object v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/miui/gallery/util/Future;

    invoke-interface {v2}, Lcom/miui/gallery/util/Future;->cancel()V

    goto :goto_0

    .line 305
    .end local v0           #entry:Lcom/miui/gallery/app/PhotoDataAdapter$ImageEntry;
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 306
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/miui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/TileImageViewAdapter;->clear()V

    .line 307
    return-void
.end method

.method public previous()V
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateCurrentIndex(I)V

    .line 354
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mIsActive:Z

    .line 283
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mSourceListener:Lcom/miui/gallery/app/PhotoDataAdapter$SourceListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/MediaSet;->addContentListener(Lcom/miui/gallery/data/ContentListener;)V

    .line 284
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateImageCache()V

    .line 285
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateImageRequests()V

    .line 287
    new-instance v0, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;-><init>(Lcom/miui/gallery/app/PhotoDataAdapter;Lcom/miui/gallery/app/PhotoDataAdapter$1;)V

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mReloadTask:Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;

    .line 288
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mReloadTask:Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v0}, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->start()V

    .line 290
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoView;->notifyModelInvalidated()V

    .line 291
    return-void
.end method

.method public setCurrentPhoto(Lcom/miui/gallery/data/Path;I)V
    .locals 3
    .parameter "path"
    .parameter "indexHint"

    .prologue
    .line 403
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mItemPath:Lcom/miui/gallery/data/Path;

    invoke-virtual {v1}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iput-object p1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mItemPath:Lcom/miui/gallery/data/Path;

    .line 407
    iput p2, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 408
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateSlidingWindow()V

    .line 409
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->updateImageCache()V

    .line 410
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->fireModelInvalidated()V

    .line 413
    invoke-virtual {p0}, Lcom/miui/gallery/app/PhotoDataAdapter;->getCurrentMediaItem()Lcom/miui/gallery/data/MediaItem;

    move-result-object v0

    .line 414
    .local v0, item:Lcom/miui/gallery/data/MediaItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mReloadTask:Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mReloadTask:Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v1}, Lcom/miui/gallery/app/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    goto :goto_0
.end method

.method public setDataListener(Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/miui/gallery/app/PhotoDataAdapter;->mDataListener:Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;

    .line 217
    return-void
.end method
