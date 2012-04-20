.class Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;
.super Ljava/lang/Thread;
.source "HomeCameraDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/HomeCameraDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private volatile mDirty:Z

.field private mIsLoading:Z

.field final synthetic this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/app/HomeCameraDataAdapter;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 352
    iput-object p1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 354
    iput-boolean v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->mActive:Z

    .line 355
    iput-boolean v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->mDirty:Z

    .line 356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->mIsLoading:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/app/HomeCameraDataAdapter;Lcom/miui/gallery/app/HomeCameraDataAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 352
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;-><init>(Lcom/miui/gallery/app/HomeCameraDataAdapter;)V

    return-void
.end method

.method private updateLoading(Z)V
    .locals 2
    .parameter "loading"

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    .line 362
    :goto_0
    return-void

    .line 360
    :cond_0
    iput-boolean p1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->mIsLoading:Z

    .line 361
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$1600(Lcom/miui/gallery/app/HomeCameraDataAdapter;)Landroid/os/Handler;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized notifyDirty()V
    .locals 1

    .prologue
    .line 425
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->mDirty:Z

    .line 426
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    monitor-exit p0

    return-void

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 366
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->mActive:Z

    if-eqz v6, :cond_4

    .line 367
    monitor-enter p0

    .line 368
    :try_start_0
    iget-boolean v6, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->mActive:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->mDirty:Z

    if-nez v6, :cond_1

    .line 369
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->updateLoading(Z)V

    .line 370
    invoke-static {p0}, Lcom/miui/gallery/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 371
    monitor-exit p0

    goto :goto_0

    .line 373
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    iput-boolean v10, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->mDirty:Z

    .line 375
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->updateLoading(Z)V

    .line 380
    invoke-static {}, Lcom/miui/gallery/util/AlbumUtils;->reloadAlbumCache()V

    .line 383
    sget-object v7, Lcom/miui/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v7

    .line 384
    :try_start_2
    iget-object v6, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;
    invoke-static {v6}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$1700(Lcom/miui/gallery/app/HomeCameraDataAdapter;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/gallery/data/MediaSet;->reload()J

    move-result-wide v4

    .line 385
    .local v4, version:J
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 388
    iget-object v6, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #calls: Lcom/miui/gallery/app/HomeCameraDataAdapter;->calcTotalMediaObjectCount()I
    invoke-static {v6}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$1800(Lcom/miui/gallery/app/HomeCameraDataAdapter;)I

    move-result v3

    .line 390
    .local v3, totalMediaObjectCount:I
    if-nez v3, :cond_2

    .line 392
    iget-object v6, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    new-instance v7, Lcom/miui/gallery/app/HomeCameraDataAdapter$SizeCallable;

    iget-object v8, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    invoke-direct {v7, v8, v10, v10}, Lcom/miui/gallery/app/HomeCameraDataAdapter$SizeCallable;-><init>(Lcom/miui/gallery/app/HomeCameraDataAdapter;II)V

    #calls: Lcom/miui/gallery/app/HomeCameraDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v6, v7}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$1900(Lcom/miui/gallery/app/HomeCameraDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    goto :goto_0

    .line 385
    .end local v3           #totalMediaObjectCount:I
    .end local v4           #version:J
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .line 396
    .restart local v3       #totalMediaObjectCount:I
    .restart local v4       #version:J
    :cond_2
    iget-object v6, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mRecentItemSize:I
    invoke-static {v6}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$900(Lcom/miui/gallery/app/HomeCameraDataAdapter;)I

    move-result v6

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 400
    .local v2, recentCameraPhotosCount:I
    iget-object v6, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    new-instance v7, Lcom/miui/gallery/app/HomeCameraDataAdapter$SizeCallable;

    iget-object v8, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    invoke-direct {v7, v8, v2, v3}, Lcom/miui/gallery/app/HomeCameraDataAdapter$SizeCallable;-><init>(Lcom/miui/gallery/app/HomeCameraDataAdapter;II)V

    #calls: Lcom/miui/gallery/app/HomeCameraDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v6, v7}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$1900(Lcom/miui/gallery/app/HomeCameraDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 402
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    if-ge v0, v2, :cond_0

    iget-boolean v6, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->mActive:Z

    if-eqz v6, :cond_0

    .line 403
    iget-object v6, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    new-instance v7, Lcom/miui/gallery/app/HomeCameraDataAdapter$GetUpdateInfo;

    iget-object v8, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    invoke-direct {v7, v8, v4, v5}, Lcom/miui/gallery/app/HomeCameraDataAdapter$GetUpdateInfo;-><init>(Lcom/miui/gallery/app/HomeCameraDataAdapter;J)V

    #calls: Lcom/miui/gallery/app/HomeCameraDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v6, v7}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$1900(Lcom/miui/gallery/app/HomeCameraDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;

    .line 404
    .local v1, info:Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;
    if-eqz v1, :cond_0

    .line 408
    sget-object v7, Lcom/miui/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v7

    .line 409
    :try_start_4
    iput v2, v1, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;->size:I

    .line 410
    iput v3, v1, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;->totalMediaObjectCount:I

    .line 411
    iput-wide v4, v1, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;->version:J

    .line 413
    iget v6, v1, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;->reloadCount:I

    if-lez v6, :cond_3

    .line 414
    iget-object v6, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;
    invoke-static {v6}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$1700(Lcom/miui/gallery/app/HomeCameraDataAdapter;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v6

    iget v8, v1, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;->reloadStart:I

    iget v9, v1, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;->reloadCount:I

    invoke-virtual {v6, v8, v9}, Lcom/miui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v1, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 416
    :cond_3
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 417
    iget-object v6, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    new-instance v7, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateContent;

    iget-object v8, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    invoke-direct {v7, v8, v1}, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateContent;-><init>(Lcom/miui/gallery/app/HomeCameraDataAdapter;Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;)V

    #calls: Lcom/miui/gallery/app/HomeCameraDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v6, v7}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$1900(Lcom/miui/gallery/app/HomeCameraDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 416
    :catchall_2
    move-exception v6

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v6

    .line 421
    .end local v0           #index:I
    .end local v1           #info:Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;
    .end local v2           #recentCameraPhotosCount:I
    .end local v3           #totalMediaObjectCount:I
    .end local v4           #version:J
    :cond_4
    invoke-direct {p0, v10}, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->updateLoading(Z)V

    .line 422
    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    .prologue
    .line 430
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->mActive:Z

    .line 431
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    monitor-exit p0

    return-void

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
