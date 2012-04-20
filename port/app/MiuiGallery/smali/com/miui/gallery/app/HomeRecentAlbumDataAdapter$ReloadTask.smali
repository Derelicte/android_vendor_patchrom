.class Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;
.super Ljava/lang/Thread;
.source "HomeRecentAlbumDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private volatile mDirty:Z

.field private volatile mIsLoading:Z

.field final synthetic this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 373
    iput-object p1, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 374
    iput-boolean v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->mActive:Z

    .line 375
    iput-boolean v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->mDirty:Z

    .line 376
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->mIsLoading:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;-><init>(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)V

    return-void
.end method

.method private updateLoading(Z)V
    .locals 2
    .parameter "loading"

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    .line 382
    :goto_0
    return-void

    .line 380
    :cond_0
    iput-boolean p1, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->mIsLoading:Z

    .line 381
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$1700(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)Landroid/os/Handler;

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
    .line 485
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->mDirty:Z

    .line 486
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    monitor-exit p0

    return-void

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 23

    .prologue
    .line 386
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->mActive:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 387
    monitor-enter p0

    .line 388
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->mActive:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->mDirty:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 389
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->updateLoading(Z)V

    .line 390
    invoke-static/range {p0 .. p0}, Lcom/miui/gallery/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 391
    monitor-exit p0

    goto :goto_0

    .line 393
    :catchall_0
    move-exception v19

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 394
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->mDirty:Z

    .line 395
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->updateLoading(Z)V

    .line 398
    sget-object v20, Lcom/miui/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v20

    .line 399
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    move-object/from16 v19, v0

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;
    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$1800(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/miui/gallery/data/MediaSet;->reload()J

    move-result-wide v17

    .line 400
    .local v17, version:J
    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 402
    const/4 v15, 0x0

    .line 404
    .local v15, triggeredOnSizeChanged:Z
    invoke-static {}, Lcom/miui/gallery/util/AlbumUtils;->reloadAlbumCache()V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    move-object/from16 v19, v0

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mRecentAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;
    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$1900(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)Lcom/miui/gallery/data/AlbumCacheBase;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/miui/gallery/data/AlbumCacheBase;->reloadCache()Z

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    move-object/from16 v19, v0

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mRecentAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;
    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$1900(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)Lcom/miui/gallery/data/AlbumCacheBase;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/miui/gallery/data/AlbumCacheBase;->getDataVersion()J

    move-result-wide v10

    .line 409
    .local v10, newRecentAlbumCacheDataVersion:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    move-object/from16 v19, v0

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mRecentAlbumCacheVersion:J
    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$2000(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)J

    move-result-wide v19

    cmp-long v19, v19, v10

    if-eqz v19, :cond_2

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #setter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mRecentAlbumCacheVersion:J
    invoke-static {v0, v10, v11}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$2002(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;J)J

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    move-object/from16 v19, v0

    const-wide/16 v20, -0x1

    #setter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSourceVersion:J
    invoke-static/range {v19 .. v21}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$702(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;J)J

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    move-object/from16 v19, v0

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mContentStart:I
    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$500(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)I

    move-result v5

    .local v5, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    move-object/from16 v19, v0

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mContentEnd:I
    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$600(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)I

    move-result v19

    move/from16 v0, v19

    if-ge v5, v0, :cond_2

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #calls: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->clearSlot(I)V
    invoke-static {v0, v5}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$2100(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;I)V

    .line 413
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 400
    .end local v5           #i:I
    .end local v10           #newRecentAlbumCacheDataVersion:J
    .end local v15           #triggeredOnSizeChanged:Z
    .end local v17           #version:J
    :catchall_1
    move-exception v19

    :try_start_3
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v19

    .line 418
    .restart local v10       #newRecentAlbumCacheDataVersion:J
    .restart local v15       #triggeredOnSizeChanged:Z
    .restart local v17       #version:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    move-object/from16 v19, v0

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mRecentAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;
    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$1900(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)Lcom/miui/gallery/data/AlbumCacheBase;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/miui/gallery/data/AlbumCacheBase;->cloneResultAlbums()Ljava/util/ArrayList;

    move-result-object v13

    .line 421
    .local v13, resultAlbums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/DBAlbum;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 422
    .local v14, totalMediaObjectCount:I
    if-nez v14, :cond_3

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    move-object/from16 v19, v0

    new-instance v20, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ZeroSizeCallable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-direct/range {v20 .. v22}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ZeroSizeCallable;-><init>(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$1;)V

    #calls: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static/range {v19 .. v20}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$2300(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 428
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    move-object/from16 v19, v0

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mRecentItemSize:I
    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$2400(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)I

    move-result v19

    move/from16 v0, v19

    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 431
    .local v12, recentAlbumCount:I
    const/4 v6, 0x0

    .local v6, index:I
    :goto_2
    if-gt v6, v12, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->mActive:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    move-object/from16 v19, v0

    new-instance v20, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$GetUpdateInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-wide/from16 v2, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$GetUpdateInfo;-><init>(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;J)V

    #calls: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static/range {v19 .. v20}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$2300(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;

    .line 434
    .local v7, info:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;
    if-nez v7, :cond_5

    .line 468
    .end local v7           #info:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    move-object/from16 v19, v0

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mAllAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;
    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$2600(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)Lcom/miui/gallery/data/AlbumCacheBase;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/miui/gallery/data/AlbumCacheBase;->getDataVersion()J

    move-result-wide v8

    .line 469
    .local v8, newAllAlbumCacheDataVersion:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    move-object/from16 v19, v0

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mAllAlbumCacheVersion:J
    invoke-static/range {v19 .. v19}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$2700(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)J

    move-result-wide v19

    cmp-long v19, v19, v8

    if-eqz v19, :cond_0

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #setter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mAllAlbumCacheVersion:J
    invoke-static {v0, v8, v9}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$2702(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;J)J

    .line 471
    if-nez v15, :cond_0

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    move-object/from16 v19, v0

    new-instance v20, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateVisibleRangeCallable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-direct/range {v20 .. v22}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateVisibleRangeCallable;-><init>(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$1;)V

    #calls: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static/range {v19 .. v20}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$2300(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 438
    .end local v8           #newAllAlbumCacheDataVersion:J
    .restart local v7       #info:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;
    :cond_5
    sget-object v20, Lcom/miui/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v20

    .line 439
    :try_start_4
    iput v14, v7, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;->totalMediaObjectCount:I

    .line 440
    iget-wide v0, v7, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;->version:J

    move-wide/from16 v21, v0

    cmp-long v19, v21, v17

    if-eqz v19, :cond_6

    .line 441
    move-wide/from16 v0, v17

    iput-wide v0, v7, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;->version:J

    .line 442
    iput v12, v7, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;->size:I

    .line 448
    iget v0, v7, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;->index:I

    move/from16 v19, v0

    iget v0, v7, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;->size:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    if-lt v0, v1, :cond_6

    .line 449
    const/16 v19, -0x1

    move/from16 v0, v19

    iput v0, v7, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;->index:I

    .line 452
    :cond_6
    iget v0, v7, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;->index:I

    move/from16 v19, v0

    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    .line 453
    iget v0, v7, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;->index:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/miui/gallery/data/DBAlbum;

    invoke-virtual/range {v19 .. v19}, Lcom/miui/gallery/data/DBAlbum;->getMediaSet()Lcom/miui/gallery/data/MediaSet;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v7, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;->item:Lcom/miui/gallery/data/MediaSet;

    .line 454
    iget-object v0, v7, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;->item:Lcom/miui/gallery/data/MediaSet;

    move-object/from16 v19, v0

    if-nez v19, :cond_8

    monitor-exit v20

    .line 431
    :cond_7
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 455
    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .local v4, covers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    iget-object v0, v7, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;->item:Lcom/miui/gallery/data/MediaSet;

    move-object/from16 v19, v0

    const/16 v21, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v21

    #calls: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->getRepresentativeItems(Lcom/miui/gallery/data/MediaSet;ILjava/util/ArrayList;)V
    invoke-static {v0, v1, v4}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$2500(Lcom/miui/gallery/data/MediaSet;ILjava/util/ArrayList;)V

    .line 457
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Lcom/miui/gallery/data/MediaItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Lcom/miui/gallery/data/MediaItem;

    move-object/from16 v0, v19

    iput-object v0, v7, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;->covers:[Lcom/miui/gallery/data/MediaItem;

    .line 459
    .end local v4           #covers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    :cond_9
    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 461
    new-instance v16, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;-><init>(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;)V

    .line 462
    .local v16, updateContent:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    #calls: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$2300(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 463
    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;->triggeredOnSizeChanged()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 464
    const/4 v15, 0x1

    goto :goto_3

    .line 459
    .end local v16           #updateContent:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;
    :catchall_2
    move-exception v19

    :try_start_5
    monitor-exit v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v19

    .line 481
    .end local v6           #index:I
    .end local v7           #info:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;
    .end local v10           #newRecentAlbumCacheDataVersion:J
    .end local v12           #recentAlbumCount:I
    .end local v13           #resultAlbums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/DBAlbum;>;"
    .end local v14           #totalMediaObjectCount:I
    .end local v15           #triggeredOnSizeChanged:Z
    .end local v17           #version:J
    :cond_a
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->updateLoading(Z)V

    .line 482
    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    .prologue
    .line 490
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->mActive:Z

    .line 491
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    monitor-exit p0

    return-void

    .line 490
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
