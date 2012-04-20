.class Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;
.super Landroid/os/AsyncTask;
.source "TrafficService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/monitor/net/TrafficService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkStatsForAllUidTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mAllUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundStatsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/monitor/net/TrafficService$AppUsageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mForegroundStatsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/monitor/net/TrafficService$AppUsageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMobileStatsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Lcom/android/monitor/net/TrafficService$AppUsageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiStatsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Lcom/android/monitor/net/TrafficService$AppUsageItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/monitor/net/TrafficService;


# direct methods
.method constructor <init>(Lcom/android/monitor/net/TrafficService;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->this$0:Lcom/android/monitor/net/TrafficService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private buildAppUsageItems()[Lcom/android/monitor/net/TrafficService$AppUsageItem;
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 289
    new-array v1, v4, [Lcom/android/monitor/net/TrafficService$AppUsageItem;

    .line 290
    .local v1, items:[Lcom/android/monitor/net/TrafficService$AppUsageItem;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 291
    new-instance v2, Lcom/android/monitor/net/TrafficService$AppUsageItem;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/monitor/net/TrafficService$AppUsageItem;-><init>(Lcom/android/monitor/net/TrafficService$1;)V

    aput-object v2, v1, v0

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_0
    return-object v1
.end method

.method private buildNetworkHistory(Landroid/util/SparseArray;Ljava/lang/Integer;ILandroid/net/NetworkTemplate;JJ)V
    .locals 10
    .parameter
    .parameter "uid"
    .parameter "type"
    .parameter "template"
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/monitor/net/TrafficService$AppUsageItem;",
            ">;",
            "Ljava/lang/Integer;",
            "I",
            "Landroid/net/NetworkTemplate;",
            "JJ)V"
        }
    .end annotation

    .prologue
    .line 413
    .local p1, networkStatsMap:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/monitor/net/TrafficService$AppUsageItem;>;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/monitor/net/TrafficService$AppUsageItem;

    .line 414
    .local v8, appUsageItem:Lcom/android/monitor/net/TrafficService$AppUsageItem;
    if-nez v8, :cond_0

    .line 415
    new-instance v8, Lcom/android/monitor/net/TrafficService$AppUsageItem;

    .end local v8           #appUsageItem:Lcom/android/monitor/net/TrafficService$AppUsageItem;
    const/4 v1, 0x0

    invoke-direct {v8, v1}, Lcom/android/monitor/net/TrafficService$AppUsageItem;-><init>(Lcom/android/monitor/net/TrafficService$1;)V

    .line 416
    .restart local v8       #appUsageItem:Lcom/android/monitor/net/TrafficService$AppUsageItem;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 419
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->this$0:Lcom/android/monitor/net/TrafficService;

    #getter for: Lcom/android/monitor/net/TrafficService;->mStatsService:Landroid/net/INetworkStatsService;
    invoke-static {v1}, Lcom/android/monitor/net/TrafficService;->access$500(Lcom/android/monitor/net/TrafficService;)Landroid/net/INetworkStatsService;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x0

    const/16 v5, 0xa

    move-object v1, p4

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsService;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .line 424
    .local v0, networkHistory:Landroid/net/NetworkStatsHistory;
    const/4 v7, 0x0

    move-wide v1, p5

    move-wide/from16 v3, p7

    move-wide/from16 v5, p7

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v9

    .line 425
    .local v9, entry:Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v1, v9, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    invoke-virtual {v8, v1, v2}, Lcom/android/monitor/net/TrafficService$AppUsageItem;->addRxBytes(J)V

    .line 426
    iget-wide v1, v9, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    invoke-virtual {v8, v1, v2}, Lcom/android/monitor/net/TrafficService$AppUsageItem;->addTxBytes(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    .end local v0           #networkHistory:Landroid/net/NetworkStatsHistory;
    .end local v9           #entry:Landroid/net/NetworkStatsHistory$Entry;
    :goto_0
    return-void

    .line 427
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private buildNetworkStats(Landroid/util/SparseArray;Landroid/net/NetworkStats;I)V
    .locals 12
    .parameter
    .parameter "networkStats"
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<[",
            "Lcom/android/monitor/net/TrafficService$AppUsageItem;",
            ">;",
            "Landroid/net/NetworkStats;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, networkStatsMap:Landroid/util/SparseArray;,"Landroid/util/SparseArray<[Lcom/android/monitor/net/TrafficService$AppUsageItem;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/NetworkStats;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    const/4 v0, 0x0

    .line 303
    .local v0, entry:Landroid/net/NetworkStats$Entry;
    const/4 v6, 0x0

    .line 304
    .local v6, totalTxBytes:I
    const/4 v5, 0x0

    .line 305
    .local v5, totalRxBytes:I
    invoke-virtual {p2}, Landroid/net/NetworkStats;->size()I

    move-result v4

    .line 306
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_3

    .line 307
    invoke-virtual {p2, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 309
    iget v7, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 310
    .local v7, uid:I
    invoke-virtual {p1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/monitor/net/TrafficService$AppUsageItem;

    .line 311
    .local v3, items:[Lcom/android/monitor/net/TrafficService$AppUsageItem;
    if-nez v3, :cond_2

    .line 312
    invoke-direct {p0}, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->buildAppUsageItems()[Lcom/android/monitor/net/TrafficService$AppUsageItem;

    move-result-object v3

    .line 313
    invoke-virtual {p1, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 315
    :cond_2
    aget-object v2, v3, p3

    .line 316
    .local v2, item:Lcom/android/monitor/net/TrafficService$AppUsageItem;
    iget-wide v8, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v2, v8, v9}, Lcom/android/monitor/net/TrafficService$AppUsageItem;->addTxBytes(J)V

    .line 317
    iget-wide v8, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v2, v8, v9}, Lcom/android/monitor/net/TrafficService$AppUsageItem;->addRxBytes(J)V

    .line 319
    int-to-long v8, v6

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v8, v10

    long-to-int v6, v8

    .line 320
    int-to-long v8, v5

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v8, v10

    long-to-int v5, v8

    .line 322
    iget-object v8, p0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->mAllUids:Ljava/util/HashSet;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 326
    .end local v2           #item:Lcom/android/monitor/net/TrafficService$AppUsageItem;
    .end local v3           #items:[Lcom/android/monitor/net/TrafficService$AppUsageItem;
    .end local v7           #uid:I
    :cond_3
    const/4 v8, -0x1

    invoke-virtual {p1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/monitor/net/TrafficService$AppUsageItem;

    .line 327
    .restart local v3       #items:[Lcom/android/monitor/net/TrafficService$AppUsageItem;
    if-nez v3, :cond_4

    .line 328
    invoke-direct {p0}, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->buildAppUsageItems()[Lcom/android/monitor/net/TrafficService$AppUsageItem;

    move-result-object v3

    .line 329
    const/4 v8, -0x1

    invoke-virtual {p1, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 331
    :cond_4
    aget-object v2, v3, p3

    .line 332
    .restart local v2       #item:Lcom/android/monitor/net/TrafficService$AppUsageItem;
    int-to-long v8, v6

    invoke-virtual {v2, v8, v9}, Lcom/android/monitor/net/TrafficService$AppUsageItem;->addTxBytes(J)V

    .line 333
    int-to-long v8, v5

    invoke-virtual {v2, v8, v9}, Lcom/android/monitor/net/TrafficService$AppUsageItem;->addRxBytes(J)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 281
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 28
    .parameter "params"

    .prologue
    .line 338
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 339
    .local v3, cal:Ljava/util/Calendar;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 340
    .local v4, year:I
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 341
    .local v5, month:I
    const/4 v7, 0x5

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 344
    .local v6, date:I
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    .line 346
    .local v14, now:J
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    .line 347
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v25

    .line 350
    .local v25, today:J
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->this$0:Lcom/android/monitor/net/TrafficService;

    #getter for: Lcom/android/monitor/net/TrafficService;->mMobilePolicy:Landroid/net/NetworkPolicy;
    invoke-static {v7}, Lcom/android/monitor/net/TrafficService;->access$300(Lcom/android/monitor/net/TrafficService;)Landroid/net/NetworkPolicy;

    move-result-object v7

    iget v7, v7, Landroid/net/NetworkPolicy;->cycleDay:I

    if-le v7, v6, :cond_0

    .line 351
    add-int/lit8 v5, v5, -0x1

    .line 352
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 353
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v5

    .line 354
    add-int/lit8 v4, v4, -0x1

    .line 358
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->this$0:Lcom/android/monitor/net/TrafficService;

    #getter for: Lcom/android/monitor/net/TrafficService;->mMobilePolicy:Landroid/net/NetworkPolicy;
    invoke-static {v7}, Lcom/android/monitor/net/TrafficService;->access$300(Lcom/android/monitor/net/TrafficService;)Landroid/net/NetworkPolicy;

    move-result-object v7

    iget v10, v7, Landroid/net/NetworkPolicy;->cycleDay:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v3

    move v8, v4

    move v9, v5

    invoke-virtual/range {v7 .. v13}, Ljava/util/Calendar;->set(IIIIII)V

    .line 359
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    .line 362
    .local v19, firstDayofMonth:J
    add-int/lit8 v5, v5, -0x1

    .line 363
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 364
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v5

    .line 365
    add-int/lit8 v4, v4, -0x1

    .line 367
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->this$0:Lcom/android/monitor/net/TrafficService;

    #getter for: Lcom/android/monitor/net/TrafficService;->mMobilePolicy:Landroid/net/NetworkPolicy;
    invoke-static {v7}, Lcom/android/monitor/net/TrafficService;->access$300(Lcom/android/monitor/net/TrafficService;)Landroid/net/NetworkPolicy;

    move-result-object v7

    iget v10, v7, Landroid/net/NetworkPolicy;->cycleDay:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v3

    move v8, v4

    move v9, v5

    invoke-virtual/range {v7 .. v13}, Ljava/util/Calendar;->set(IIIIII)V

    .line 368
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v17

    .line 370
    .local v17, firstDayofLastMonth:J
    const/4 v7, 0x3

    new-array v0, v7, [J

    move-object/from16 v24, v0

    const/4 v7, 0x0

    aput-wide v17, v24, v7

    const/4 v7, 0x1

    aput-wide v19, v24, v7

    const/4 v7, 0x2

    aput-wide v25, v24, v7

    .line 371
    .local v24, start:[J
    const/4 v7, 0x3

    new-array v0, v7, [J

    move-object/from16 v16, v0

    const/4 v7, 0x0

    aput-wide v19, v16, v7

    const/4 v7, 0x1

    aput-wide v14, v16, v7

    const/4 v7, 0x2

    aput-wide v14, v16, v7

    .line 373
    .local v16, end:[J
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->mAllUids:Ljava/util/HashSet;

    .line 374
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->mMobileStatsMap:Landroid/util/SparseArray;

    .line 375
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->mWifiStatsMap:Landroid/util/SparseArray;

    .line 376
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->mForegroundStatsMap:Landroid/util/SparseArray;

    .line 377
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->mBackgroundStatsMap:Landroid/util/SparseArray;

    .line 380
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    const/4 v7, 0x3

    move/from16 v0, v21

    if-ge v0, v7, :cond_2

    .line 381
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->this$0:Lcom/android/monitor/net/TrafficService;

    #getter for: Lcom/android/monitor/net/TrafficService;->mStatsService:Landroid/net/INetworkStatsService;
    invoke-static {v7}, Lcom/android/monitor/net/TrafficService;->access$500(Lcom/android/monitor/net/TrafficService;)Landroid/net/INetworkStatsService;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->this$0:Lcom/android/monitor/net/TrafficService;

    #getter for: Lcom/android/monitor/net/TrafficService;->mMobileTemplate:Landroid/net/NetworkTemplate;
    invoke-static {v8}, Lcom/android/monitor/net/TrafficService;->access$400(Lcom/android/monitor/net/TrafficService;)Landroid/net/NetworkTemplate;

    move-result-object v8

    aget-wide v9, v24, v21

    aget-wide v11, v16, v21

    const/4 v13, 0x0

    invoke-interface/range {v7 .. v13}, Landroid/net/INetworkStatsService;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v23

    .line 385
    .local v23, mobileStats:Landroid/net/NetworkStats;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->this$0:Lcom/android/monitor/net/TrafficService;

    #getter for: Lcom/android/monitor/net/TrafficService;->mStatsService:Landroid/net/INetworkStatsService;
    invoke-static {v7}, Lcom/android/monitor/net/TrafficService;->access$500(Lcom/android/monitor/net/TrafficService;)Landroid/net/INetworkStatsService;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->this$0:Lcom/android/monitor/net/TrafficService;

    #getter for: Lcom/android/monitor/net/TrafficService;->mWifiTemplate:Landroid/net/NetworkTemplate;
    invoke-static {v8}, Lcom/android/monitor/net/TrafficService;->access$600(Lcom/android/monitor/net/TrafficService;)Landroid/net/NetworkTemplate;

    move-result-object v8

    aget-wide v9, v24, v21

    aget-wide v11, v16, v21

    const/4 v13, 0x0

    invoke-interface/range {v7 .. v13}, Landroid/net/INetworkStatsService;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v27

    .line 390
    .local v27, wifiStats:Landroid/net/NetworkStats;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->mMobileStatsMap:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v21

    invoke-direct {v0, v7, v1, v2}, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->buildNetworkStats(Landroid/util/SparseArray;Landroid/net/NetworkStats;I)V

    .line 391
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->mWifiStatsMap:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v21

    invoke-direct {v0, v7, v1, v2}, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->buildNetworkStats(Landroid/util/SparseArray;Landroid/net/NetworkStats;I)V

    .line 380
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 395
    .end local v23           #mobileStats:Landroid/net/NetworkStats;
    .end local v27           #wifiStats:Landroid/net/NetworkStats;
    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->mAllUids:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 396
    .local v9, uid:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->mForegroundStatsMap:Landroid/util/SparseArray;

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->this$0:Lcom/android/monitor/net/TrafficService;

    #getter for: Lcom/android/monitor/net/TrafficService;->mMobileTemplate:Landroid/net/NetworkTemplate;
    invoke-static {v7}, Lcom/android/monitor/net/TrafficService;->access$400(Lcom/android/monitor/net/TrafficService;)Landroid/net/NetworkTemplate;

    move-result-object v11

    move-object/from16 v7, p0

    move-wide/from16 v12, v25

    invoke-direct/range {v7 .. v15}, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->buildNetworkHistory(Landroid/util/SparseArray;Ljava/lang/Integer;ILandroid/net/NetworkTemplate;JJ)V

    .line 397
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->mForegroundStatsMap:Landroid/util/SparseArray;

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->this$0:Lcom/android/monitor/net/TrafficService;

    #getter for: Lcom/android/monitor/net/TrafficService;->mWifiTemplate:Landroid/net/NetworkTemplate;
    invoke-static {v7}, Lcom/android/monitor/net/TrafficService;->access$600(Lcom/android/monitor/net/TrafficService;)Landroid/net/NetworkTemplate;

    move-result-object v11

    move-object/from16 v7, p0

    move-wide/from16 v12, v25

    invoke-direct/range {v7 .. v15}, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->buildNetworkHistory(Landroid/util/SparseArray;Ljava/lang/Integer;ILandroid/net/NetworkTemplate;JJ)V

    .line 398
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->mBackgroundStatsMap:Landroid/util/SparseArray;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->this$0:Lcom/android/monitor/net/TrafficService;

    #getter for: Lcom/android/monitor/net/TrafficService;->mMobileTemplate:Landroid/net/NetworkTemplate;
    invoke-static {v7}, Lcom/android/monitor/net/TrafficService;->access$400(Lcom/android/monitor/net/TrafficService;)Landroid/net/NetworkTemplate;

    move-result-object v11

    move-object/from16 v7, p0

    move-wide/from16 v12, v25

    invoke-direct/range {v7 .. v15}, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->buildNetworkHistory(Landroid/util/SparseArray;Ljava/lang/Integer;ILandroid/net/NetworkTemplate;JJ)V

    .line 399
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->mBackgroundStatsMap:Landroid/util/SparseArray;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->this$0:Lcom/android/monitor/net/TrafficService;

    #getter for: Lcom/android/monitor/net/TrafficService;->mWifiTemplate:Landroid/net/NetworkTemplate;
    invoke-static {v7}, Lcom/android/monitor/net/TrafficService;->access$600(Lcom/android/monitor/net/TrafficService;)Landroid/net/NetworkTemplate;

    move-result-object v11

    move-object/from16 v7, p0

    move-wide/from16 v12, v25

    invoke-direct/range {v7 .. v15}, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->buildNetworkHistory(Landroid/util/SparseArray;Ljava/lang/Integer;ILandroid/net/NetworkTemplate;JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 401
    .end local v9           #uid:Ljava/lang/Integer;
    .end local v22           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v7

    .line 404
    :cond_3
    const/4 v7, 0x0

    return-object v7
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 281
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 434
    iget-object v1, p0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->this$0:Lcom/android/monitor/net/TrafficService;

    iget-object v2, p0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->mMobileStatsMap:Landroid/util/SparseArray;

    #setter for: Lcom/android/monitor/net/TrafficService;->mMobileStats:Landroid/util/SparseArray;
    invoke-static {v1, v2}, Lcom/android/monitor/net/TrafficService;->access$702(Lcom/android/monitor/net/TrafficService;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 435
    iget-object v1, p0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->this$0:Lcom/android/monitor/net/TrafficService;

    iget-object v2, p0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->mWifiStatsMap:Landroid/util/SparseArray;

    #setter for: Lcom/android/monitor/net/TrafficService;->mWifiStats:Landroid/util/SparseArray;
    invoke-static {v1, v2}, Lcom/android/monitor/net/TrafficService;->access$802(Lcom/android/monitor/net/TrafficService;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 436
    iget-object v1, p0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->this$0:Lcom/android/monitor/net/TrafficService;

    iget-object v2, p0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->mForegroundStatsMap:Landroid/util/SparseArray;

    #setter for: Lcom/android/monitor/net/TrafficService;->mForegroundStats:Landroid/util/SparseArray;
    invoke-static {v1, v2}, Lcom/android/monitor/net/TrafficService;->access$902(Lcom/android/monitor/net/TrafficService;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 437
    iget-object v1, p0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->this$0:Lcom/android/monitor/net/TrafficService;

    iget-object v2, p0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->mBackgroundStatsMap:Landroid/util/SparseArray;

    #setter for: Lcom/android/monitor/net/TrafficService;->mBackgroundStats:Landroid/util/SparseArray;
    invoke-static {v1, v2}, Lcom/android/monitor/net/TrafficService;->access$1002(Lcom/android/monitor/net/TrafficService;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 440
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.UPDATE_TRAFFIC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 441
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/monitor/net/TrafficService$NetworkStatsForAllUidTask;->this$0:Lcom/android/monitor/net/TrafficService;

    invoke-virtual {v1, v0}, Lcom/android/monitor/net/TrafficService;->sendBroadcast(Landroid/content/Intent;)V

    .line 442
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 443
    return-void
.end method
