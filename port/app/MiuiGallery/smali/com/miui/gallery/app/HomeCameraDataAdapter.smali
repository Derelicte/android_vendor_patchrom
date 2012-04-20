.class public Lcom/miui/gallery/app/HomeCameraDataAdapter;
.super Ljava/lang/Object;
.source "HomeCameraDataAdapter.java"

# interfaces
.implements Lcom/miui/gallery/ui/HomeCameraView$Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;,
        Lcom/miui/gallery/app/HomeCameraDataAdapter$SizeCallable;,
        Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateContent;,
        Lcom/miui/gallery/app/HomeCameraDataAdapter$GetUpdateInfo;,
        Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;,
        Lcom/miui/gallery/app/HomeCameraDataAdapter$MySourceListener;
    }
.end annotation


# instance fields
.field private mActiveEnd:I

.field private mActiveStart:I

.field private mContentEnd:I

.field private mContentStart:I

.field private final mData:[Lcom/miui/gallery/data/MediaItem;

.field private final mItemVersion:[J

.field private mLoadingListener:Lcom/miui/gallery/app/LoadingListener;

.field private final mMainHandler:Landroid/os/Handler;

.field private mModelListener:Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;

.field private final mRecentItemSize:I

.field private mReloadTask:Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;

.field private final mSetVersion:[J

.field private mSize:I

.field private mSortBy:I

.field private final mSource:Lcom/miui/gallery/data/MediaSet;

.field private final mSourceListener:Lcom/miui/gallery/app/HomeCameraDataAdapter$MySourceListener;

.field private mSourceVersion:J

.field private mTotalMediaObjectCount:I


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/data/MediaSet;I)V
    .locals 4
    .parameter "context"
    .parameter "mediaSet"
    .parameter "recentItemSize"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mActiveStart:I

    .line 37
    iput v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mActiveEnd:I

    .line 39
    iput v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentStart:I

    .line 40
    iput v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentEnd:I

    .line 43
    iput-wide v2, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSourceVersion:J

    .line 46
    iput v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSize:I

    .line 52
    new-instance v0, Lcom/miui/gallery/app/HomeCameraDataAdapter$MySourceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/app/HomeCameraDataAdapter$MySourceListener;-><init>(Lcom/miui/gallery/app/HomeCameraDataAdapter;Lcom/miui/gallery/app/HomeCameraDataAdapter$1;)V

    iput-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSourceListener:Lcom/miui/gallery/app/HomeCameraDataAdapter$MySourceListener;

    .line 58
    iput p3, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mRecentItemSize:I

    .line 59
    invoke-static {p2}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/MediaSet;

    iput-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    .line 60
    invoke-direct {p0}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->calcTotalMediaObjectCount()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mTotalMediaObjectCount:I

    .line 61
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/AlbumUtils;->getAlbumSortBy(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSortBy:I

    .line 63
    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mRecentItemSize:I

    new-array v0, v0, [Lcom/miui/gallery/data/MediaItem;

    iput-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    .line 64
    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mRecentItemSize:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mItemVersion:[J

    .line 65
    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mRecentItemSize:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSetVersion:[J

    .line 66
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mItemVersion:[J

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 67
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSetVersion:[J

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 69
    new-instance v0, Lcom/miui/gallery/app/HomeCameraDataAdapter$1;

    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/app/HomeCameraDataAdapter$1;-><init>(Lcom/miui/gallery/app/HomeCameraDataAdapter;Lcom/miui/gallery/ui/GLRoot;)V

    iput-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mMainHandler:Landroid/os/Handler;

    .line 85
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/app/HomeCameraDataAdapter;)Lcom/miui/gallery/app/LoadingListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mLoadingListener:Lcom/miui/gallery/app/LoadingListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/app/HomeCameraDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentStart:I

    return v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/app/HomeCameraDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mTotalMediaObjectCount:I

    return v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/app/HomeCameraDataAdapter;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->triggerOnSizeChanged(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/gallery/app/HomeCameraDataAdapter;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mItemVersion:[J

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/app/HomeCameraDataAdapter;)[Lcom/miui/gallery/data/MediaItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/app/HomeCameraDataAdapter;)Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/gallery/app/HomeCameraDataAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/gallery/app/HomeCameraDataAdapter;)Lcom/miui/gallery/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/miui/gallery/app/HomeCameraDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->calcTotalMediaObjectCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/miui/gallery/app/HomeCameraDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/app/HomeCameraDataAdapter;)Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mReloadTask:Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/app/HomeCameraDataAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSourceVersion:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/miui/gallery/app/HomeCameraDataAdapter;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSourceVersion:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/miui/gallery/app/HomeCameraDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSize:I

    return v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/app/HomeCameraDataAdapter;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSetVersion:[J

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/app/HomeCameraDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentEnd:I

    return v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/app/HomeCameraDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mRecentItemSize:I

    return v0
.end method

.method private calcTotalMediaObjectCount()I
    .locals 2

    .prologue
    .line 88
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->sIsShowHidden()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/AlbumUtils;->isHiddenAlbum(Ljava/lang/String;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 92
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v0

    goto :goto_0
.end method

.method private clearSlot(I)V
    .locals 4
    .parameter "slotIndex"

    .prologue
    const-wide/16 v2, -0x1

    .line 149
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 150
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mItemVersion:[J

    aput-wide v2, v0, p1

    .line 151
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSetVersion:[J

    aput-wide v2, v0, p1

    .line 152
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
    .line 217
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 218
    .local v1, task:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TT;>;"
    iget-object v2, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 221
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 223
    :goto_0
    return-object v2

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v2, 0x0

    goto :goto_0

    .line 224
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 225
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private setContentWindow(II)V
    .locals 5
    .parameter "contentStart"
    .parameter "contentEnd"

    .prologue
    .line 155
    iget v4, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentStart:I

    if-ne p1, v4, :cond_1

    iget v4, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentEnd:I

    if-ne p2, v4, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentEnd:I

    .line 157
    .local v0, end:I
    iget v3, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentStart:I

    .line 159
    .local v3, start:I
    monitor-enter p0

    .line 160
    :try_start_0
    iput p1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentStart:I

    .line 161
    iput p2, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentEnd:I

    .line 162
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    if-ge p1, v0, :cond_2

    if-lt v3, p2, :cond_3

    .line 164
    :cond_2
    move v1, v3

    .local v1, i:I
    move v2, v0

    .local v2, n:I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 165
    iget v4, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mRecentItemSize:I

    rem-int v4, v1, v4

    invoke-direct {p0, v4}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->clearSlot(I)V

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 162
    .end local v1           #i:I
    .end local v2           #n:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 168
    :cond_3
    move v1, v3

    .restart local v1       #i:I
    :goto_2
    if-ge v1, p1, :cond_4

    .line 169
    iget v4, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mRecentItemSize:I

    rem-int v4, v1, v4

    invoke-direct {p0, v4}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->clearSlot(I)V

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 171
    :cond_4
    move v1, p2

    move v2, v0

    .restart local v2       #n:I
    :goto_3
    if-ge v1, v2, :cond_5

    .line 172
    iget v4, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mRecentItemSize:I

    rem-int v4, v1, v4

    invoke-direct {p0, v4}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->clearSlot(I)V

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 175
    :cond_5
    iget-object v4, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mReloadTask:Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mReloadTask:Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;

    invoke-virtual {v4}, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->notifyDirty()V

    goto :goto_0
.end method

.method private triggerOnSizeChanged(II)V
    .locals 4
    .parameter "size"
    .parameter "totalMediaObjectCount"

    .prologue
    const/4 v3, 0x0

    .line 316
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;

    if-eqz v0, :cond_0

    .line 318
    iput p1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSize:I

    .line 319
    iput p2, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mTotalMediaObjectCount:I

    .line 322
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;

    iget v1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSize:I

    iget v2, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mTotalMediaObjectCount:I

    invoke-interface {v0, v1, v2}, Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;->onSizeChanged(II)V

    .line 324
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 325
    iput v3, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentEnd:I

    iput v3, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentStart:I

    .line 326
    iput v3, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mActiveEnd:I

    iput v3, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mActiveStart:I

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentEnd:I

    iget v1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSize:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSize:I

    iput v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentEnd:I

    .line 329
    :cond_2
    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mActiveEnd:I

    iget v1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSize:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSize:I

    iput v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mActiveEnd:I

    goto :goto_0
.end method


# virtual methods
.method public getActiveStart()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mActiveStart:I

    return v0
.end method

.method public getMediaItem(I)Lcom/miui/gallery/data/MediaItem;
    .locals 5
    .parameter "index"

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "%s not in (%s, %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mActiveStart:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mActiveEnd:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    iget-object v1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTotalMediaObjectCount()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mTotalMediaObjectCount:I

    return v0
.end method

.method public isActive(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 137
    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mActiveEnd:I

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
    .line 96
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mReloadTask:Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->terminate()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mReloadTask:Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    iget-object v1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSourceListener:Lcom/miui/gallery/app/HomeCameraDataAdapter$MySourceListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/MediaSet;->removeContentListener(Lcom/miui/gallery/data/ContentListener;)V

    .line 99
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 102
    iget-object v2, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    iget-object v3, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSourceListener:Lcom/miui/gallery/app/HomeCameraDataAdapter$MySourceListener;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/data/MediaSet;->addContentListener(Lcom/miui/gallery/data/ContentListener;)V

    .line 103
    iget-object v2, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/AlbumUtils;->getAlbumSortBy(Ljava/lang/String;)I

    move-result v1

    .line 104
    .local v1, sortBy:I
    iget v2, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSortBy:I

    if-eq v2, v1, :cond_1

    .line 106
    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentStart:I

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentEnd:I

    if-ge v0, v2, :cond_0

    .line 107
    invoke-direct {p0, v0}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->clearSlot(I)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    iput v1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSortBy:I

    .line 111
    .end local v0           #i:I
    :cond_1
    new-instance v2, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;-><init>(Lcom/miui/gallery/app/HomeCameraDataAdapter;Lcom/miui/gallery/app/HomeCameraDataAdapter$1;)V

    iput-object v2, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mReloadTask:Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;

    .line 112
    iget-object v2, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mReloadTask:Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;

    invoke-virtual {v2}, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->start()V

    .line 113
    return-void
.end method

.method public setActiveWindow(II)V
    .locals 6
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x0

    .line 179
    iget v3, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mActiveStart:I

    if-ne p1, v3, :cond_1

    iget v3, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mActiveEnd:I

    if-ne p2, v3, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    if-gt p1, p2, :cond_3

    sub-int v3, p2, p1

    iget-object v5, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    array-length v5, v5

    if-gt v3, v5, :cond_3

    iget v3, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSize:I

    if-gt p2, v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 184
    iget-object v3, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    array-length v2, v3

    .line 185
    .local v2, length:I
    iput p1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mActiveStart:I

    .line 186
    iput p2, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mActiveEnd:I

    .line 189
    if-eq p1, p2, :cond_0

    .line 191
    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v5, v2, 0x2

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSize:I

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/common/Utils;->clamp(III)I

    move-result v1

    .line 193
    .local v1, contentStart:I
    add-int v3, v1, v2

    iget v4, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 197
    .local v0, contentEnd:I
    iget v3, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentStart:I

    if-gt v3, p1, :cond_2

    iget v3, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentEnd:I

    if-ge v3, p2, :cond_0

    .line 198
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->setContentWindow(II)V

    goto :goto_0

    .end local v0           #contentEnd:I
    .end local v1           #contentStart:I
    .end local v2           #length:I
    :cond_3
    move v3, v4

    .line 181
    goto :goto_1
.end method

.method public setLoadingListener(Lcom/miui/gallery/app/LoadingListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mLoadingListener:Lcom/miui/gallery/app/LoadingListener;

    .line 214
    return-void
.end method

.method public setModelListener(Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;

    .line 210
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSize:I

    return v0
.end method
