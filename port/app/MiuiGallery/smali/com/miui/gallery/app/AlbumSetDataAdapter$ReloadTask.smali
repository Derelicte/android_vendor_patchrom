.class Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;
.super Ljava/lang/Thread;
.source "AlbumSetDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/AlbumSetDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private volatile mDirty:Z

.field private volatile mIsLoading:Z

.field private mShowType:I

.field private mShowTypeVersion:J

.field final synthetic this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/AlbumSetDataAdapter;I)V
    .locals 2
    .parameter
    .parameter "showType"

    .prologue
    const/4 v0, 0x1

    .line 423
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 417
    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->mActive:Z

    .line 418
    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->mDirty:Z

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->mIsLoading:Z

    .line 420
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->mShowTypeVersion:J

    .line 424
    iput p2, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->mShowType:I

    .line 425
    return-void
.end method

.method private updateLoading(Z)V
    .locals 2
    .parameter "loading"

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    .line 431
    :goto_0
    return-void

    .line 429
    :cond_0
    iput-boolean p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->mIsLoading:Z

    .line 430
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$1700(Lcom/miui/gallery/app/AlbumSetDataAdapter;)Landroid/os/Handler;

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
.method public declared-synchronized changeType(I)V
    .locals 1
    .parameter "showType"

    .prologue
    .line 546
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->mShowType:I

    .line 547
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->nextShowTypeVersionNumber()J

    .line 548
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->mDirty:Z

    .line 549
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    monitor-exit p0

    return-void

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nextShowTypeVersionNumber()J
    .locals 4

    .prologue
    .line 553
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->mShowTypeVersion:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->mShowTypeVersion:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyDirty()V
    .locals 1

    .prologue
    .line 541
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->mDirty:Z

    .line 542
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    monitor-exit p0

    return-void

    .line 541
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 25

    .prologue
    .line 435
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->mActive:Z

    move/from16 v22, v0

    if-eqz v22, :cond_a

    .line 436
    monitor-enter p0

    .line 437
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->mActive:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->mDirty:Z

    move/from16 v22, v0

    if-nez v22, :cond_1

    .line 438
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->updateLoading(Z)V

    .line 439
    invoke-static/range {p0 .. p0}, Lcom/miui/gallery/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 440
    monitor-exit p0

    goto :goto_0

    .line 442
    :catchall_0
    move-exception v22

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v22

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->mDirty:Z

    .line 444
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->updateLoading(Z)V

    .line 447
    sget-object v23, Lcom/miui/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v23

    .line 448
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    move-object/from16 v22, v0

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;
    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$1800(Lcom/miui/gallery/app/AlbumSetDataAdapter;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/miui/gallery/data/MediaSet;->reload()J

    move-result-wide v20

    .line 449
    .local v20, version:J
    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 453
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/miui/gallery/app/GalleryApp;->getAllAlbumCache()Lcom/miui/gallery/data/AllAlbumCache;

    move-result-object v8

    .line 454
    .local v8, allAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->mShowType:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 455
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/miui/gallery/app/GalleryApp;->getRecentAlbumCache()Lcom/miui/gallery/data/RecentAlbumCache;

    move-result-object v18

    .line 459
    .local v18, threadAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;
    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->mShowType:I

    .line 460
    .local v15, showType:I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->mShowTypeVersion:J

    move-wide/from16 v16, v0

    .line 463
    .local v16, showTypeVersion:J
    invoke-virtual/range {v18 .. v18}, Lcom/miui/gallery/data/AlbumCacheBase;->reloadCache()Z

    .line 464
    invoke-virtual {v8}, Lcom/miui/gallery/data/AlbumCacheBase;->reloadCache()Z

    .line 466
    invoke-virtual/range {v18 .. v18}, Lcom/miui/gallery/data/AlbumCacheBase;->cloneResultAlbums()Ljava/util/ArrayList;

    move-result-object v14

    .line 468
    .local v14, resultAlbums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/DBAlbum;>;"
    invoke-virtual {v8}, Lcom/miui/gallery/data/AlbumCacheBase;->getResultAlbumCount()I

    move-result v19

    .line 470
    .local v19, totalMediaObjectCount:I
    invoke-virtual/range {v18 .. v18}, Lcom/miui/gallery/data/AlbumCacheBase;->getDataVersion()J

    move-result-wide v5

    .line 471
    .local v5, albumCacheVersion:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    move-object/from16 v22, v0

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mAlbumCacheVersion:J
    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$1900(Lcom/miui/gallery/app/AlbumSetDataAdapter;)J

    move-result-wide v22

    cmp-long v22, v22, v5

    if-eqz v22, :cond_3

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    move-object/from16 v22, v0

    const-wide/16 v23, -0x1

    #setter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSourceVersion:J
    invoke-static/range {v22 .. v24}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$602(Lcom/miui/gallery/app/AlbumSetDataAdapter;J)J

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    #setter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mAlbumCacheVersion:J
    invoke-static {v0, v5, v6}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$1902(Lcom/miui/gallery/app/AlbumSetDataAdapter;J)J

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    move-object/from16 v22, v0

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mContentStart:I
    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$400(Lcom/miui/gallery/app/AlbumSetDataAdapter;)I

    move-result v10

    .local v10, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    move-object/from16 v22, v0

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mContentEnd:I
    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$500(Lcom/miui/gallery/app/AlbumSetDataAdapter;)I

    move-result v22

    move/from16 v0, v22

    if-ge v10, v0, :cond_3

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    #calls: Lcom/miui/gallery/app/AlbumSetDataAdapter;->clearSlot(I)V
    invoke-static {v0, v10}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$2000(Lcom/miui/gallery/app/AlbumSetDataAdapter;I)V

    .line 475
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 449
    .end local v5           #albumCacheVersion:J
    .end local v8           #allAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;
    .end local v10           #i:I
    .end local v14           #resultAlbums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/DBAlbum;>;"
    .end local v15           #showType:I
    .end local v16           #showTypeVersion:J
    .end local v18           #threadAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;
    .end local v19           #totalMediaObjectCount:I
    .end local v20           #version:J
    :catchall_1
    move-exception v22

    :try_start_3
    monitor-exit v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v22

    .line 457
    .restart local v8       #allAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;
    .restart local v20       #version:J
    :cond_2
    move-object/from16 v18, v8

    .restart local v18       #threadAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;
    goto :goto_1

    .line 480
    .restart local v5       #albumCacheVersion:J
    .restart local v14       #resultAlbums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/DBAlbum;>;"
    .restart local v15       #showType:I
    .restart local v16       #showTypeVersion:J
    .restart local v19       #totalMediaObjectCount:I
    :cond_3
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 481
    .local v7, albumCount:I
    if-nez v7, :cond_4

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    move-object/from16 v22, v0

    new-instance v23, Lcom/miui/gallery/app/AlbumSetDataAdapter$ZeroSizeCallable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v19

    move-wide/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/gallery/app/AlbumSetDataAdapter$ZeroSizeCallable;-><init>(Lcom/miui/gallery/app/AlbumSetDataAdapter;IJ)V

    #calls: Lcom/miui/gallery/app/AlbumSetDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static/range {v22 .. v23}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$2100(Lcom/miui/gallery/app/AlbumSetDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 488
    :cond_4
    const/4 v13, 0x0

    .line 489
    .local v13, lastIndex:I
    const/4 v11, 0x0

    .local v11, index:I
    :goto_3
    if-gt v11, v7, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->mActive:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->mShowTypeVersion:J

    move-wide/from16 v22, v0

    cmp-long v22, v16, v22

    if-nez v22, :cond_5

    .line 490
    move v13, v11

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    move-object/from16 v22, v0

    new-instance v23, Lcom/miui/gallery/app/AlbumSetDataAdapter$GetUpdateInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/app/AlbumSetDataAdapter$GetUpdateInfo;-><init>(Lcom/miui/gallery/app/AlbumSetDataAdapter;J)V

    #calls: Lcom/miui/gallery/app/AlbumSetDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static/range {v22 .. v23}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$2100(Lcom/miui/gallery/app/AlbumSetDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;

    .line 492
    .local v12, info:Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;
    if-nez v12, :cond_6

    .line 531
    .end local v12           #info:Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;
    :cond_5
    if-ge v13, v7, :cond_0

    .line 532
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_4
    if-gt v10, v13, :cond_0

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    move-object/from16 v22, v0

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mItemVersion:[J
    invoke-static/range {v22 .. v22}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$1400(Lcom/miui/gallery/app/AlbumSetDataAdapter;)[J

    move-result-object v22

    const-wide/16 v23, -0x1

    aput-wide v23, v22, v10

    .line 532
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 496
    .end local v10           #i:I
    .restart local v12       #info:Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;
    :cond_6
    sget-object v23, Lcom/miui/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v23

    .line 500
    :try_start_4
    move-wide/from16 v0, v20

    iput-wide v0, v12, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->version:J

    .line 501
    iput v7, v12, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->size:I

    .line 502
    move-wide/from16 v0, v16

    iput-wide v0, v12, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->showTypeVersion:J

    .line 503
    move/from16 v0, v19

    iput v0, v12, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->totalMediaObjectCount:I

    .line 504
    iput v15, v12, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->showType:I

    .line 512
    iget v0, v12, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->index:I

    move/from16 v22, v0

    iget v0, v12, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->size:I

    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v24

    if-lt v0, v1, :cond_7

    .line 513
    const/16 v22, -0x1

    move/from16 v0, v22

    iput v0, v12, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->index:I

    .line 515
    :cond_7
    iget v0, v12, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->index:I

    move/from16 v22, v0

    const/16 v24, -0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_9

    .line 516
    iget v0, v12, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->index:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/miui/gallery/data/DBAlbum;

    invoke-virtual/range {v22 .. v22}, Lcom/miui/gallery/data/DBAlbum;->getMediaSet()Lcom/miui/gallery/data/MediaSet;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v12, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->item:Lcom/miui/gallery/data/MediaSet;

    .line 517
    iget-object v0, v12, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->item:Lcom/miui/gallery/data/MediaSet;

    move-object/from16 v22, v0

    if-nez v22, :cond_8

    .line 518
    monitor-exit v23

    .line 489
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 520
    :cond_8
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .local v9, covers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    iget-object v0, v12, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->item:Lcom/miui/gallery/data/MediaSet;

    move-object/from16 v22, v0

    const/16 v24, 0x3

    move-object/from16 v0, v22

    move/from16 v1, v24

    #calls: Lcom/miui/gallery/app/AlbumSetDataAdapter;->getRepresentativeItems(Lcom/miui/gallery/data/MediaSet;ILjava/util/ArrayList;)V
    invoke-static {v0, v1, v9}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$2200(Lcom/miui/gallery/data/MediaSet;ILjava/util/ArrayList;)V

    .line 523
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Lcom/miui/gallery/data/MediaItem;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Lcom/miui/gallery/data/MediaItem;

    move-object/from16 v0, v22

    iput-object v0, v12, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;->covers:[Lcom/miui/gallery/data/MediaItem;

    .line 526
    .end local v9           #covers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    :cond_9
    monitor-exit v23
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    move-object/from16 v22, v0

    new-instance v23, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v12}, Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateContent;-><init>(Lcom/miui/gallery/app/AlbumSetDataAdapter;Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;)V

    #calls: Lcom/miui/gallery/app/AlbumSetDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static/range {v22 .. v23}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$2100(Lcom/miui/gallery/app/AlbumSetDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    goto :goto_5

    .line 526
    :catchall_2
    move-exception v22

    :try_start_5
    monitor-exit v23
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v22

    .line 537
    .end local v5           #albumCacheVersion:J
    .end local v7           #albumCount:I
    .end local v8           #allAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;
    .end local v11           #index:I
    .end local v12           #info:Lcom/miui/gallery/app/AlbumSetDataAdapter$UpdateInfo;
    .end local v13           #lastIndex:I
    .end local v14           #resultAlbums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/DBAlbum;>;"
    .end local v15           #showType:I
    .end local v16           #showTypeVersion:J
    .end local v18           #threadAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;
    .end local v19           #totalMediaObjectCount:I
    .end local v20           #version:J
    :cond_a
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->updateLoading(Z)V

    .line 538
    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    .prologue
    .line 557
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->mActive:Z

    .line 558
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    monitor-exit p0

    return-void

    .line 557
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
