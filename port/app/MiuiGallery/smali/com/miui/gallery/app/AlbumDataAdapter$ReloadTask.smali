.class Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;
.super Ljava/lang/Thread;
.source "AlbumDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/AlbumDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private volatile mDirty:Z

.field private mIsLoading:Z

.field final synthetic this$0:Lcom/miui/gallery/app/AlbumDataAdapter;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/app/AlbumDataAdapter;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 353
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 355
    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->mActive:Z

    .line 356
    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->mDirty:Z

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->mIsLoading:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/app/AlbumDataAdapter;Lcom/miui/gallery/app/AlbumDataAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;-><init>(Lcom/miui/gallery/app/AlbumDataAdapter;)V

    return-void
.end method

.method private updateLoading(Z)V
    .locals 2
    .parameter "loading"

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_0
    iput-boolean p1, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->mIsLoading:Z

    .line 362
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$1400(Lcom/miui/gallery/app/AlbumDataAdapter;)Landroid/os/Handler;

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
    .line 402
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->mDirty:Z

    .line 403
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    monitor-exit p0

    return-void

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 367
    const/4 v1, 0x0

    .line 368
    .local v1, updateComplete:Z
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->mActive:Z

    if-eqz v6, :cond_5

    .line 369
    monitor-enter p0

    .line 370
    :try_start_0
    iget-boolean v6, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->mActive:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->mDirty:Z

    if-nez v6, :cond_1

    if-eqz v1, :cond_1

    .line 371
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->updateLoading(Z)V

    .line 372
    invoke-static {p0}, Lcom/miui/gallery/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 373
    monitor-exit p0

    goto :goto_0

    .line 375
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 376
    iput-boolean v5, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->mDirty:Z

    .line 377
    invoke-direct {p0, v4}, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->updateLoading(Z)V

    .line 380
    sget-object v6, Lcom/miui/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v6

    .line 381
    :try_start_2
    iget-object v7, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;
    invoke-static {v7}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$1500(Lcom/miui/gallery/app/AlbumDataAdapter;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/gallery/data/MediaSet;->reload()J

    move-result-wide v2

    .line 382
    .local v2, version:J
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 383
    iget-object v6, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    new-instance v7, Lcom/miui/gallery/app/AlbumDataAdapter$GetUpdateInfo;

    iget-object v8, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    invoke-direct {v7, v8, v2, v3}, Lcom/miui/gallery/app/AlbumDataAdapter$GetUpdateInfo;-><init>(Lcom/miui/gallery/app/AlbumDataAdapter;J)V

    #calls: Lcom/miui/gallery/app/AlbumDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v6, v7}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$1600(Lcom/miui/gallery/app/AlbumDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;

    .line 384
    .local v0, info:Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;
    if-nez v0, :cond_4

    move v1, v4

    .line 385
    :goto_1
    if-nez v1, :cond_0

    .line 387
    sget-object v6, Lcom/miui/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v6

    .line 388
    :try_start_3
    iget-wide v7, v0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->version:J

    cmp-long v7, v7, v2

    if-eqz v7, :cond_2

    .line 389
    iget-object v7, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;
    invoke-static {v7}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$1500(Lcom/miui/gallery/app/AlbumDataAdapter;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v7

    iput v7, v0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->size:I

    .line 390
    iput-wide v2, v0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->version:J

    .line 392
    :cond_2
    iget v7, v0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->reloadCount:I

    if-lez v7, :cond_3

    .line 393
    iget-object v7, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;
    invoke-static {v7}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$1500(Lcom/miui/gallery/app/AlbumDataAdapter;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v7

    iget v8, v0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->reloadStart:I

    iget v9, v0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->reloadCount:I

    invoke-virtual {v7, v8, v9}, Lcom/miui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 395
    :cond_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 396
    iget-object v6, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    new-instance v7, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;

    iget-object v8, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    invoke-direct {v7, v8, v0}, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;-><init>(Lcom/miui/gallery/app/AlbumDataAdapter;Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;)V

    #calls: Lcom/miui/gallery/app/AlbumDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v6, v7}, Lcom/miui/gallery/app/AlbumDataAdapter;->access$1600(Lcom/miui/gallery/app/AlbumDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    goto :goto_0

    .line 382
    .end local v0           #info:Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;
    .end local v2           #version:J
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .restart local v0       #info:Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;
    .restart local v2       #version:J
    :cond_4
    move v1, v5

    .line 384
    goto :goto_1

    .line 395
    :catchall_2
    move-exception v4

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4

    .line 398
    .end local v0           #info:Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;
    .end local v2           #version:J
    :cond_5
    invoke-direct {p0, v5}, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->updateLoading(Z)V

    .line 399
    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    .prologue
    .line 407
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->mActive:Z

    .line 408
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    monitor-exit p0

    return-void

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
