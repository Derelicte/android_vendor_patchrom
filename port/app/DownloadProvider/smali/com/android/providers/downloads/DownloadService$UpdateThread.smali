.class Lcom/android/providers/downloads/DownloadService$UpdateThread;
.super Ljava/lang/Thread;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/DownloadService;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/DownloadService;)V
    .locals 1
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    .line 334
    const-string v0, "Download Service"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method private bindMediaScanner()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 479
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #getter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnecting:Z
    invoke-static {v1}, Lcom/android/providers/downloads/DownloadService;->access$100(Lcom/android/providers/downloads/DownloadService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 480
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 481
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.providers.media"

    const-string v2, "com.android.providers.media.MediaScannerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #setter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnecting:Z
    invoke-static {v1, v3}, Lcom/android/providers/downloads/DownloadService;->access$102(Lcom/android/providers/downloads/DownloadService;Z)Z

    .line 484
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #getter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnection:Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;
    invoke-static {v2}, Lcom/android/providers/downloads/DownloadService;->access$1100(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/providers/downloads/DownloadService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 486
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private scheduleAlarm(J)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 489
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 490
    if-nez v0, :cond_0

    .line 491
    const-string v0, "DownloadManager"

    const-string v1, "couldn\'t get alarm manager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :goto_0
    return-void

    .line 495
    :cond_0
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v1, :cond_1

    .line 496
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheduling retry in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DOWNLOAD_WAKEUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 500
    const-string v2, "com.android.providers.downloads"

    const-class v3, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    iget-object v2, v2, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v2}, Lcom/android/providers/downloads/SystemFacade;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/high16 v5, 0x4000

    invoke-static {v4, v6, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 30

    .prologue
    .line 339
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 340
    const/16 v19, 0x0

    .line 343
    .local v19, keepService:Z
    const-wide v26, 0x7fffffffffffffffL

    .line 345
    .local v26, wakeUp:J
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    monitor-enter v6

    .line 346
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    iget-object v4, v4, Lcom/android/providers/downloads/DownloadService;->mUpdateThread:Lcom/android/providers/downloads/DownloadService$UpdateThread;

    move-object/from16 v0, p0

    if-eq v4, v0, :cond_1

    .line 347
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v7, "multiple UpdateThreads in DownloadService"

    invoke-direct {v4, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 361
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 350
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #getter for: Lcom/android/providers/downloads/DownloadService;->mPendingUpdate:Z
    invoke-static {v4}, Lcom/android/providers/downloads/DownloadService;->access$300(Lcom/android/providers/downloads/DownloadService;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 351
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v7, 0x0

    iput-object v7, v4, Lcom/android/providers/downloads/DownloadService;->mUpdateThread:Lcom/android/providers/downloads/DownloadService$UpdateThread;

    .line 352
    if-nez v19, :cond_2

    .line 353
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v4}, Lcom/android/providers/downloads/DownloadService;->stopSelf()V

    .line 355
    :cond_2
    const-wide v7, 0x7fffffffffffffffL

    cmp-long v4, v26, v7

    if-eqz v4, :cond_3

    .line 356
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/android/providers/downloads/DownloadService$UpdateThread;->scheduleAlarm(J)V

    .line 358
    :cond_3
    monitor-exit v6

    return-void

    .line 360
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v7, 0x0

    #setter for: Lcom/android/providers/downloads/DownloadService;->mPendingUpdate:Z
    invoke-static {v4, v7}, Lcom/android/providers/downloads/DownloadService;->access$302(Lcom/android/providers/downloads/DownloadService;Z)Z

    .line 361
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    iget-object v4, v4, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v4}, Lcom/android/providers/downloads/SystemFacade;->currentTimeMillis()J

    move-result-wide v23

    .line 364
    .local v23, now:J
    const/16 v20, 0x0

    .line 365
    .local v20, mustScan:Z
    const/16 v19, 0x0

    .line 366
    const-wide v26, 0x7fffffffffffffffL

    .line 367
    new-instance v16, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #getter for: Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/providers/downloads/DownloadService;->access$400(Lcom/android/providers/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 369
    .local v16, idsNoLongerInDatabase:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #calls: Lcom/android/providers/downloads/DownloadService;->handleNetworkStatusChange()V
    invoke-static {v4}, Lcom/android/providers/downloads/DownloadService;->access$500(Lcom/android/providers/downloads/DownloadService;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v4}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 373
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_0

    .line 377
    :try_start_2
    new-instance v25, Lcom/android/providers/downloads/DownloadInfo$Reader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v4}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-direct {v0, v4, v11}, Lcom/android/providers/downloads/DownloadInfo$Reader;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;)V

    .line 379
    .local v25, reader:Lcom/android/providers/downloads/DownloadInfo$Reader;
    const-string v4, "_id"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 380
    .local v15, idColumn:I
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_5

    .line 381
    const-string v4, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "number of rows from downloads-db: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_5
    const/4 v10, 0x0

    .line 385
    .local v10, countDownloadingTasks:I
    sget-object v4, Lcom/android/providers/downloads/Helpers;->sDownloadsDomainCountMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 386
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_c

    sget v4, Lcom/android/providers/downloads/Helpers;->sMaxDownloadsCount:I

    if-ge v10, v4, :cond_c

    .line 387
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 388
    .local v13, id:J
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 389
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #getter for: Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/providers/downloads/DownloadService;->access$400(Lcom/android/providers/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/providers/downloads/DownloadInfo;

    .line 390
    .local v17, info:Lcom/android/providers/downloads/DownloadInfo;
    if-eqz v17, :cond_a

    .line 391
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    move-wide/from16 v2, v23

    #calls: Lcom/android/providers/downloads/DownloadService;->updateDownload(Lcom/android/providers/downloads/DownloadInfo$Reader;Lcom/android/providers/downloads/DownloadInfo;J)V
    invoke-static {v4, v0, v1, v2, v3}, Lcom/android/providers/downloads/DownloadService;->access$600(Lcom/android/providers/downloads/DownloadService;Lcom/android/providers/downloads/DownloadInfo$Reader;Lcom/android/providers/downloads/DownloadInfo;J)V

    .line 396
    :goto_1
    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v6, 0xc0

    if-ne v4, v6, :cond_6

    .line 397
    add-int/lit8 v10, v10, 0x1

    .line 400
    :cond_6
    invoke-virtual/range {v17 .. v17}, Lcom/android/providers/downloads/DownloadInfo;->shouldScanFile()Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, v17

    #calls: Lcom/android/providers/downloads/DownloadService;->scanFile(Lcom/android/providers/downloads/DownloadInfo;ZZ)Z
    invoke-static {v4, v0, v6, v7}, Lcom/android/providers/downloads/DownloadService;->access$800(Lcom/android/providers/downloads/DownloadService;Lcom/android/providers/downloads/DownloadInfo;ZZ)Z

    move-result v4

    if-nez v4, :cond_7

    .line 401
    const/16 v20, 0x1

    .line 402
    const/16 v19, 0x1

    .line 404
    :cond_7
    invoke-virtual/range {v17 .. v17}, Lcom/android/providers/downloads/DownloadInfo;->hasCompletionNotification()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 405
    const/16 v19, 0x1

    .line 407
    :cond_8
    move-object/from16 v0, v17

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/downloads/DownloadInfo;->nextAction(J)J

    move-result-wide v21

    .line 408
    .local v21, next:J
    const-wide/16 v6, 0x0

    cmp-long v4, v21, v6

    if-nez v4, :cond_b

    .line 409
    const/16 v19, 0x1

    .line 386
    :cond_9
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 415
    .end local v10           #countDownloadingTasks:I
    .end local v13           #id:J
    .end local v15           #idColumn:I
    .end local v17           #info:Lcom/android/providers/downloads/DownloadInfo;
    .end local v21           #next:J
    .end local v25           #reader:Lcom/android/providers/downloads/DownloadInfo$Reader;
    :catchall_1
    move-exception v4

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v4

    .line 393
    .restart local v10       #countDownloadingTasks:I
    .restart local v13       #id:J
    .restart local v15       #idColumn:I
    .restart local v17       #info:Lcom/android/providers/downloads/DownloadInfo;
    .restart local v25       #reader:Lcom/android/providers/downloads/DownloadInfo$Reader;
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object/from16 v0, v25

    move-wide/from16 v1, v23

    #calls: Lcom/android/providers/downloads/DownloadService;->insertDownload(Lcom/android/providers/downloads/DownloadInfo$Reader;J)Lcom/android/providers/downloads/DownloadInfo;
    invoke-static {v4, v0, v1, v2}, Lcom/android/providers/downloads/DownloadService;->access$700(Lcom/android/providers/downloads/DownloadService;Lcom/android/providers/downloads/DownloadInfo$Reader;J)Lcom/android/providers/downloads/DownloadInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v17

    goto :goto_1

    .line 410
    .restart local v21       #next:J
    :cond_b
    const-wide/16 v6, 0x0

    cmp-long v4, v21, v6

    if-lez v4, :cond_9

    cmp-long v4, v21, v26

    if-gez v4, :cond_9

    .line 411
    move-wide/from16 v26, v21

    goto :goto_2

    .line 415
    .end local v13           #id:J
    .end local v17           #info:Lcom/android/providers/downloads/DownloadInfo;
    .end local v21           #next:J
    :cond_c
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 418
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    .line 419
    .local v13, id:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    #calls: Lcom/android/providers/downloads/DownloadService;->deleteDownload(J)V
    invoke-static {v4, v6, v7}, Lcom/android/providers/downloads/DownloadService;->access$900(Lcom/android/providers/downloads/DownloadService;J)V

    goto :goto_3

    .line 424
    .end local v13           #id:Ljava/lang/Long;
    :cond_d
    if-nez v20, :cond_f

    .line 425
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #getter for: Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/providers/downloads/DownloadService;->access$400(Lcom/android/providers/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/providers/downloads/DownloadInfo;

    .line 426
    .restart local v17       #info:Lcom/android/providers/downloads/DownloadInfo;
    move-object/from16 v0, v17

    iget-boolean v4, v0, Lcom/android/providers/downloads/DownloadInfo;->mDeleted:Z

    if-eqz v4, :cond_e

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 427
    const/16 v20, 0x1

    .line 428
    const/16 v19, 0x1

    .line 433
    .end local v17           #info:Lcom/android/providers/downloads/DownloadInfo;
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #getter for: Lcom/android/providers/downloads/DownloadService;->mNotifier:Lcom/android/providers/downloads/DownloadNotification;
    invoke-static {v4}, Lcom/android/providers/downloads/DownloadService;->access$1000(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadNotification;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #getter for: Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;
    invoke-static {v6}, Lcom/android/providers/downloads/DownloadService;->access$400(Lcom/android/providers/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/providers/downloads/DownloadNotification;->updateNotification(Ljava/util/Collection;)V

    .line 434
    if-eqz v20, :cond_11

    .line 435
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadService$UpdateThread;->bindMediaScanner()V

    .line 442
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #getter for: Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/providers/downloads/DownloadService;->access$400(Lcom/android/providers/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_10
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/providers/downloads/DownloadInfo;

    .line 443
    .restart local v17       #info:Lcom/android/providers/downloads/DownloadInfo;
    move-object/from16 v0, v17

    iget-boolean v4, v0, Lcom/android/providers/downloads/DownloadInfo;->mDeleted:Z

    if-eqz v4, :cond_10

    .line 446
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 447
    invoke-virtual/range {v17 .. v17}, Lcom/android/providers/downloads/DownloadInfo;->shouldScanFile()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 450
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, v17

    #calls: Lcom/android/providers/downloads/DownloadService;->scanFile(Lcom/android/providers/downloads/DownloadInfo;ZZ)Z
    invoke-static {v4, v0, v6, v7}, Lcom/android/providers/downloads/DownloadService;->access$800(Lcom/android/providers/downloads/DownloadService;Lcom/android/providers/downloads/DownloadInfo;ZZ)Z

    move-result v4

    if-nez v4, :cond_10

    .line 451
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v6, "scanFile failed!"

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 437
    .end local v17           #info:Lcom/android/providers/downloads/DownloadInfo;
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #getter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnection:Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;
    invoke-static {v4}, Lcom/android/providers/downloads/DownloadService;->access$1100(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->disconnectMediaScanner()V

    goto :goto_4

    .line 458
    .restart local v17       #info:Lcom/android/providers/downloads/DownloadInfo;
    :cond_12
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 459
    .local v5, infoUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v4}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 460
    .local v18, infoCursor:Landroid/database/Cursor;
    if-eqz v18, :cond_14

    .line 461
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 462
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v4}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 464
    :cond_13
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 468
    .end local v5           #infoUri:Landroid/net/Uri;
    .end local v18           #infoCursor:Landroid/database/Cursor;
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    #calls: Lcom/android/providers/downloads/DownloadService;->deleteFileIfExists(Ljava/lang/String;)V
    invoke-static {v4, v6}, Lcom/android/providers/downloads/DownloadService;->access$1200(Lcom/android/providers/downloads/DownloadService;Ljava/lang/String;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v4}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id = ? "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v8, v9

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_5
.end method
