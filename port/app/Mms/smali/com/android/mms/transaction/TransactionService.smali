.class public Lcom/android/mms/transaction/TransactionService;
.super Landroid/app/Service;
.source "TransactionService.java"

# interfaces
.implements Lcom/android/mms/transaction/Observer;


# static fields
.field private static final RETRY_INTERVALS_IN_SECOND:[I


# instance fields
.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mConnectivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentTransaction:Lcom/android/mms/transaction/Transaction;

.field private mFailureCount:I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mKeepMmsConnectivityCallback:Ljava/lang/Runnable;

.field private mLastStartId:I

.field private mMmsConnectivityRetryCount:I

.field private mMmsConnectivityTimeoutCallback:Ljava/lang/Runnable;

.field private mRestartCurrentTransaction:Z

.field private mRetryMmsConnectivityCallback:Ljava/lang/Runnable;

.field private mSuccessCount:I

.field private mTransactionQueue:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/android/mms/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

.field private mUIHandler:Landroid/os/Handler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/transaction/TransactionService;->RETRY_INTERVALS_IN_SECOND:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0xf0t 0x0t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
        0xc0t 0x3t 0x0t 0x0t
        0x80t 0x7t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 91
    iput v0, p0, Lcom/android/mms/transaction/TransactionService;->mMmsConnectivityRetryCount:I

    .line 92
    iput v0, p0, Lcom/android/mms/transaction/TransactionService;->mSuccessCount:I

    .line 93
    iput v0, p0, Lcom/android/mms/transaction/TransactionService;->mFailureCount:I

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mUIHandler:Landroid/os/Handler;

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/transaction/TransactionService;->mLastStartId:I

    .line 102
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionQueue:Ljava/util/LinkedHashSet;

    .line 130
    new-instance v0, Lcom/android/mms/transaction/TransactionService$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/TransactionService$1;-><init>(Lcom/android/mms/transaction/TransactionService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnectivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 225
    new-instance v0, Lcom/android/mms/transaction/TransactionService$2;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/TransactionService$2;-><init>(Lcom/android/mms/transaction/TransactionService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mMmsConnectivityTimeoutCallback:Ljava/lang/Runnable;

    .line 238
    new-instance v0, Lcom/android/mms/transaction/TransactionService$3;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/TransactionService$3;-><init>(Lcom/android/mms/transaction/TransactionService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mRetryMmsConnectivityCallback:Ljava/lang/Runnable;

    .line 257
    new-instance v0, Lcom/android/mms/transaction/TransactionService$4;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/TransactionService$4;-><init>(Lcom/android/mms/transaction/TransactionService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mKeepMmsConnectivityCallback:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/Transaction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/Transaction;)Lcom/android/mms/transaction/Transaction;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/TransactionService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->setRetryCount(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/transaction/TransactionService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->processNextTransaction()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/transaction/TransactionService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->checkMobileNetworkOrStop()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/mms/transaction/TransactionService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->connectAndProcessNextTransaction()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/transaction/TransactionService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mMmsConnectivityRetryCount:I

    return v0
.end method

.method static synthetic access$1304(Lcom/android/mms/transaction/TransactionService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mMmsConnectivityRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/transaction/TransactionService;->mMmsConnectivityRetryCount:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/mms/transaction/TransactionService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/transaction/TransactionService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->scheduleNextRetry()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/transaction/TransactionService;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/transaction/TransactionService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->enqueueAllMessages()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/TransactionBundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->enqueueSingleMessage(Lcom/android/mms/transaction/TransactionBundle;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/mms/transaction/TransactionService;)Ljava/util/LinkedHashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionQueue:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/transaction/TransactionService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/mms/transaction/TransactionService;->mRestartCurrentTransaction:Z

    return v0
.end method

.method static synthetic access$2004(Lcom/android/mms/transaction/TransactionService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mSuccessCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/transaction/TransactionService;->mSuccessCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/mms/transaction/TransactionService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/mms/transaction/TransactionService;->mRestartCurrentTransaction:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/mms/transaction/TransactionService;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->onTransactionFailure(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$2204(Lcom/android/mms/transaction/TransactionService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mFailureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/transaction/TransactionService;->mFailureCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/transaction/TransactionService;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->runInWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/TransactionSettings;)Lcom/android/mms/transaction/TransactionSettings;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/mms/transaction/TransactionService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mMmsConnectivityTimeoutCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mRetryMmsConnectivityCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mKeepMmsConnectivityCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/transaction/TransactionService;Ljava/lang/Runnable;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/TransactionService;->runInWorkerThread(Ljava/lang/Runnable;I)V

    return-void
.end method

.method private checkMobileNetworkOrStop()Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 387
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->getInstance()Lcom/android/mms/transaction/MmsSystemEventReceiver;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->isMmsAvailable()Z

    move-result v2

    .line 388
    .local v2, mmsAvailable:Z
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->getInstance()Lcom/android/mms/transaction/MmsSystemEventReceiver;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->isMmsAllowed()Z

    move-result v1

    .line 389
    .local v1, mmsAllowed:Z
    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    .line 391
    .local v0, connAvailable:Z
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 418
    :goto_0
    return v3

    .line 395
    :cond_0
    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 397
    const-string v5, "No mobile network right now (%b,%b,%b), wait for network availability."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v6, v8

    invoke-static {v5, v6}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->getInstance()Lcom/android/mms/transaction/MmsSystemEventReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->listenForMmsAvailability()V

    .line 402
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->dequeueAllTransactions()V

    .line 403
    invoke-direct {p0, v4}, Lcom/android/mms/transaction/TransactionService;->setRetryCount(I)V

    .line 412
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;

    if-nez v3, :cond_1

    .line 413
    iget v3, p0, Lcom/android/mms/transaction/TransactionService;->mLastStartId:I

    invoke-virtual {p0, v3}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    .line 415
    const-string v3, "TransactionService stopped."

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v3, v4

    .line 418
    goto :goto_0
.end method

.method private connectAndProcessNextTransaction()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 422
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;

    if-eqz v1, :cond_0

    .line 424
    const-string v1, "connectAndProcessNextTransaction while there is already one processing, transaction=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 454
    :goto_0
    return-void

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 427
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->onFinish()V

    goto :goto_0

    .line 429
    :cond_1
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v2, "enableMMS"

    invoke-virtual {v1, v4, v2}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .line 432
    .local v0, result:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectAndProcessNextTransaction: result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    packed-switch v0, :pswitch_data_0

    .line 450
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mRetryMmsConnectivityCallback:Ljava/lang/Runnable;

    const/16 v2, 0x1388

    invoke-direct {p0, v1, v2}, Lcom/android/mms/transaction/TransactionService;->runInWorkerThread(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 437
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->processNextTransaction()V

    goto :goto_0

    .line 445
    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 446
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mMmsConnectivityTimeoutCallback:Ljava/lang/Runnable;

    const/16 v2, 0x2710

    invoke-direct {p0, v1, v2}, Lcom/android/mms/transaction/TransactionService;->runInWorkerThread(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 434
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private dequeueAllTransactions()V
    .locals 3

    .prologue
    .line 671
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 672
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/transaction/Transaction;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 673
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/transaction/Transaction;

    .line 674
    .local v1, transaction:Lcom/android/mms/transaction/Transaction;
    invoke-virtual {v1}, Lcom/android/mms/transaction/Transaction;->onDequeue()V

    goto :goto_0

    .line 676
    .end local v1           #transaction:Lcom/android/mms/transaction/Transaction;
    :cond_0
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->clear()V

    .line 677
    return-void
.end method

.method private endMmsConnectivity()V
    .locals 3

    .prologue
    .line 459
    :try_start_0
    const-string v0, "endMmsConnectivity"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 462
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mKeepMmsConnectivityCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 464
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mRetryMmsConnectivityCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 466
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    :try_start_2
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    const-string v2, "enableMMS"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 475
    return-void

    .line 466
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 473
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method private enqueueAllMessages()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 579
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v11

    const-wide/32 v12, 0x7fffffff

    invoke-virtual {v11, v12, v13}, Lcom/google/android/mms/pdu/PduPersister;->getPendingMessages(J)Landroid/database/Cursor;

    move-result-object v4

    .line 581
    .local v4, cursor:Landroid/database/Cursor;
    if-eqz v4, :cond_7

    .line 583
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 586
    .local v3, count:I
    const-string v11, "enqueueAllMessages: Pending transaction count=%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 589
    if-nez v3, :cond_1

    .line 591
    const-string v11, "enqueueAllMessages: No pending transaction. Stopping service."

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 593
    iget-object v11, p0, Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v11}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 594
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->getInstance()Lcom/android/mms/transaction/MmsSystemEventReceiver;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unlistenForMmsAvailability()V

    .line 595
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 596
    iget v11, p0, Lcom/android/mms/transaction/TransactionService;->mLastStartId:I

    invoke-virtual {p0, v11}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    .line 598
    const-string v11, "TrasctionService stopped."

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 664
    .end local v3           #count:I
    :goto_1
    return-void

    .line 601
    .restart local v3       #count:I
    :cond_0
    :try_start_1
    const-string v11, "no pending messages in database but in memory"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 649
    .end local v3           #count:I
    :catchall_0
    move-exception v11

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v11

    .line 606
    .restart local v3       #count:I
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->checkMobileNetworkOrStop()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v11

    if-nez v11, :cond_2

    .line 649
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 610
    :cond_2
    :try_start_3
    const-string v11, "msg_id"

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 611
    .local v1, columnIndexOfMsgId:I
    const-string v11, "msg_type"

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 614
    .local v2, columnIndexOfMsgType:I
    :cond_3
    :goto_2
    :pswitch_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 615
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 616
    .local v8, msgType:I
    invoke-direct {p0, v8}, Lcom/android/mms/transaction/TransactionService;->getTransactionType(I)I

    move-result v9

    .line 617
    .local v9, transactionType:I
    packed-switch v9, :pswitch_data_0

    .line 633
    :cond_4
    :pswitch_1
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 634
    .local v6, id:J
    sget-object v11, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 637
    .local v10, uri:Landroid/net/Uri;
    new-instance v0, Lcom/android/mms/transaction/TransactionBundle;

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v9, v11}, Lcom/android/mms/transaction/TransactionBundle;-><init>(ILjava/lang/String;)V

    .line 639
    .local v0, args:Lcom/android/mms/transaction/TransactionBundle;
    invoke-direct {p0, v0}, Lcom/android/mms/transaction/TransactionService;->enqueueMessage(Lcom/android/mms/transaction/TransactionBundle;)V

    goto :goto_2

    .line 624
    .end local v0           #args:Lcom/android/mms/transaction/TransactionBundle;
    .end local v6           #id:J
    .end local v10           #uri:Landroid/net/Uri;
    :pswitch_2
    const-string v11, "err_type"

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 627
    .local v5, failureType:I
    const/16 v11, 0xa

    if-ge v5, v11, :cond_3

    if-gtz v5, :cond_4

    goto :goto_2

    .line 644
    .end local v5           #failureType:I
    .end local v8           #msgType:I
    .end local v9           #transactionType:I
    :cond_5
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/mms/transaction/TransactionService;->mMmsConnectivityRetryCount:I

    .line 645
    iget-object v11, p0, Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;

    if-nez v11, :cond_6

    .line 646
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->connectAndProcessNextTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 649
    :cond_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 652
    .end local v1           #columnIndexOfMsgId:I
    .end local v2           #columnIndexOfMsgType:I
    .end local v3           #count:I
    :cond_7
    const-string v11, "enqueueAllMessages: pending messages = null. Stopping service."

    new-array v12, v14, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/android/mms/LogTag;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 653
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->getInstance()Lcom/android/mms/transaction/MmsSystemEventReceiver;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unlistenForMmsAvailability()V

    .line 654
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 655
    iget-object v11, p0, Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;

    if-nez v11, :cond_8

    iget-object v11, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v11}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 656
    iget v11, p0, Lcom/android/mms/transaction/TransactionService;->mLastStartId:I

    invoke-virtual {p0, v11}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    .line 658
    const-string v11, "TrasctionService stopped."

    new-array v12, v14, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 661
    :cond_8
    const-string v11, "no pending messages in database but in memory"

    new-array v12, v14, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 617
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private enqueueMessage(Lcom/android/mms/transaction/TransactionBundle;)V
    .locals 14
    .parameter "args"

    .prologue
    .line 482
    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionBundle;->getMmscUrl()Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, mmsc:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 484
    new-instance v6, Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionBundle;->getProxyAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionBundle;->getProxyPort()I

    move-result v11

    invoke-direct {v6, v1, v10, v11}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 490
    .local v6, transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v7

    .line 491
    .local v7, transactionType:I
    const/4 v4, 0x0

    .line 495
    .local v4, transaction:Lcom/android/mms/transaction/Transaction;
    packed-switch v7, :pswitch_data_0

    .line 531
    :try_start_0
    const-string v10, "Invalid transaction type: %d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/android/mms/LogTag;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    const/4 v4, 0x0

    .line 549
    :cond_0
    :goto_1
    return-void

    .line 487
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .end local v6           #transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    .end local v7           #transactionType:I
    :cond_1
    new-instance v6, Lcom/android/mms/transaction/TransactionSettings;

    const/4 v10, 0x0

    invoke-direct {v6, p0, v10}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v6       #transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    goto :goto_0

    .line 497
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v7       #transactionType:I
    :pswitch_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v9

    .line 498
    .local v9, uri:Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 499
    new-instance v5, Lcom/android/mms/transaction/NotificationTransaction;

    invoke-direct {v5, p0, v6, v9}, Lcom/android/mms/transaction/NotificationTransaction;-><init>(Landroid/content/Context;Lcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .local v5, transaction:Lcom/android/mms/transaction/Transaction;
    move-object v4, v5

    .line 538
    .end local v5           #transaction:Lcom/android/mms/transaction/Transaction;
    .end local v9           #uri:Ljava/lang/String;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    :goto_2
    if-eqz v4, :cond_0

    .line 542
    iget-object v10, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v10, v4}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 543
    iget-object v10, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v10, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 545
    const-string v10, "Enqueued transaction: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    invoke-static {v10, v11}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 548
    :cond_2
    invoke-virtual {v4}, Lcom/android/mms/transaction/Transaction;->onEnqueue()V

    goto :goto_1

    .line 503
    .restart local v9       #uri:Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionBundle;->getPushData()[B

    move-result-object v3

    .line 504
    .local v3, pushData:[B
    new-instance v2, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v2, v3}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    .line 505
    .local v2, parser:Lcom/google/android/mms/pdu/PduParser;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    .line 507
    .local v0, ind:Lcom/google/android/mms/pdu/GenericPdu;
    const/16 v8, 0x82

    .line 508
    .local v8, type:I
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v10

    if-ne v10, v8, :cond_4

    .line 509
    new-instance v5, Lcom/android/mms/transaction/NotificationTransaction;

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    .end local v0           #ind:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-direct {v5, p0, v6, v0}, Lcom/android/mms/transaction/NotificationTransaction;-><init>(Landroid/content/Context;Lcom/android/mms/transaction/TransactionSettings;Lcom/google/android/mms/pdu/NotificationInd;)V

    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v5       #transaction:Lcom/android/mms/transaction/Transaction;
    move-object v4, v5

    .line 517
    .end local v5           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto :goto_2

    .line 512
    .restart local v0       #ind:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_4
    const-string v10, "Invalid PUSH data."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    const/4 v4, 0x0

    goto :goto_1

    .line 519
    .end local v0           #ind:Lcom/google/android/mms/pdu/GenericPdu;
    .end local v2           #parser:Lcom/google/android/mms/pdu/PduParser;
    .end local v3           #pushData:[B
    .end local v8           #type:I
    .end local v9           #uri:Ljava/lang/String;
    :pswitch_1
    new-instance v5, Lcom/android/mms/transaction/RetrieveTransaction;

    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, p0, v6, v10}, Lcom/android/mms/transaction/RetrieveTransaction;-><init>(Landroid/content/Context;Lcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v5       #transaction:Lcom/android/mms/transaction/Transaction;
    move-object v4, v5

    .line 521
    .end local v5           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto :goto_2

    .line 523
    :pswitch_2
    new-instance v5, Lcom/android/mms/transaction/SendTransaction;

    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, p0, v6, v10}, Lcom/android/mms/transaction/SendTransaction;-><init>(Landroid/content/Context;Lcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v5       #transaction:Lcom/android/mms/transaction/Transaction;
    move-object v4, v5

    .line 525
    .end local v5           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto :goto_2

    .line 527
    :pswitch_3
    new-instance v5, Lcom/android/mms/transaction/ReadRecTransaction;

    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, p0, v6, v10}, Lcom/android/mms/transaction/ReadRecTransaction;-><init>(Landroid/content/Context;Lcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v5       #transaction:Lcom/android/mms/transaction/Transaction;
    move-object v4, v5

    .line 529
    .end local v5           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto :goto_2

    .line 535
    :catch_0
    move-exception v10

    goto :goto_2

    .line 495
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private enqueueSingleMessage(Lcom/android/mms/transaction/TransactionBundle;)V
    .locals 3
    .parameter "args"

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->checkMobileNetworkOrStop()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 553
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->enqueueMessage(Lcom/android/mms/transaction/TransactionBundle;)V

    .line 554
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/mms/transaction/TransactionService;->mMmsConnectivityRetryCount:I

    .line 555
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;

    if-nez v1, :cond_0

    .line 556
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->connectAndProcessNextTransaction()V

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v0

    .line 560
    .local v0, transactionType:I
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/transaction/TransactionService$7;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/transaction/TransactionService$7;-><init>(Lcom/android/mms/transaction/TransactionService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private getResponseStatus(J)I
    .locals 9
    .parameter "msgID"

    .prologue
    const/4 v3, 0x0

    .line 958
    const/4 v8, 0x0

    .line 959
    .local v8, respStatus:I
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 962
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 963
    const-string v0, "resp_st"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 966
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 968
    if-eqz v8, :cond_1

    .line 969
    const-string v0, "Response status is: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 971
    :cond_1
    return v8

    .line 966
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getRetryCount()I
    .locals 3

    .prologue
    .line 680
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 681
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "transactionRetryCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getTransactionType(I)I
    .locals 4
    .parameter "msgType"

    .prologue
    const/4 v0, 0x1

    .line 975
    sparse-switch p1, :sswitch_data_0

    .line 983
    const-string v1, "Unrecognized MESSAGE_TYPE: %d"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Lcom/android/mms/LogTag;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 984
    const/4 v0, -0x1

    :goto_0
    :sswitch_0
    return v0

    .line 979
    :sswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 981
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 975
    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_2
        0x82 -> :sswitch_0
        0x87 -> :sswitch_1
    .end sparse-switch
.end method

.method private onFinish()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 693
    const-string v0, "Finished all transactions in queue. %d success, %d failure."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/mms/transaction/TransactionService;->mSuccessCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/mms/transaction/TransactionService;->mFailureCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 697
    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mFailureCount:I

    if-lez v0, :cond_1

    .line 698
    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mSuccessCount:I

    if-lez v0, :cond_0

    .line 699
    invoke-direct {p0, v4}, Lcom/android/mms/transaction/TransactionService;->setRetryCount(I)V

    .line 701
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->scheduleNextRetry()V

    .line 703
    :cond_1
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->getInstance()Lcom/android/mms/transaction/MmsSystemEventReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unlistenForMmsAvailability()V

    .line 704
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 705
    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mLastStartId:I

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    .line 707
    const-string v0, "TrasctionService stopped."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 709
    return-void
.end method

.method private onTransactionFailure(Landroid/net/Uri;)V
    .locals 32
    .parameter "uri"

    .prologue
    .line 842
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v23

    .line 844
    .local v23, msgId:J
    sget-object v3, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v31

    .line 845
    .local v31, uriBuilder:Landroid/net/Uri$Builder;
    const-string v3, "protocol"

    const-string v4, "mms"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 846
    const-string v3, "message"

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 848
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual/range {v31 .. v31}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 851
    .local v17, cursor:Landroid/database/Cursor;
    if-eqz v17, :cond_2

    .line 853
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 854
    const-string v3, "msg_type"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 857
    .local v25, msgType:I
    const-string v3, "retry_index"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    add-int/lit8 v28, v3, 0x1

    .line 861
    .local v28, retryIndex:I
    const/16 v19, 0x1

    .line 863
    .local v19, errorType:I
    new-instance v10, Landroid/content/ContentValues;

    const/4 v3, 0x4

    invoke-direct {v10, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 864
    .local v10, values:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 865
    .local v15, current:J
    const/16 v3, 0x82

    move/from16 v0, v25

    if-ne v0, v3, :cond_3

    const/16 v22, 0x1

    .line 867
    .local v22, isRetryDownloading:Z
    :goto_0
    const/16 v27, 0x1

    .line 868
    .local v27, retry:Z
    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionService;->getResponseStatus(J)I

    move-result v26

    .line 869
    .local v26, respStatus:I
    const/16 v18, 0x0

    .line 870
    .local v18, errorString:I
    sparse-switch v26, :sswitch_data_0

    .line 889
    :goto_1
    if-eqz v18, :cond_0

    .line 890
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(I)V

    .line 891
    const/16 v27, 0x0

    .line 894
    :cond_0
    const/4 v3, 0x5

    move/from16 v0, v28

    if-ge v0, v3, :cond_4

    if-eqz v27, :cond_4

    .line 895
    if-eqz v22, :cond_1

    .line 897
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    const/16 v4, 0x82

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 938
    :cond_1
    :goto_2
    const-string v3, "err_type"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 939
    const-string v3, "retry_index"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 940
    const-string v3, "last_try"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 942
    const-string v3, "_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 944
    .local v14, columnIndex:I
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 945
    .local v20, id:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-static/range {v7 .. v12}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 952
    .end local v10           #values:Landroid/content/ContentValues;
    .end local v14           #columnIndex:I
    .end local v15           #current:J
    .end local v18           #errorString:I
    .end local v19           #errorType:I
    .end local v20           #id:J
    .end local v22           #isRetryDownloading:Z
    .end local v25           #msgType:I
    .end local v26           #respStatus:I
    .end local v27           #retry:Z
    .end local v28           #retryIndex:I
    :goto_3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 955
    :cond_2
    return-void

    .line 865
    .restart local v10       #values:Landroid/content/ContentValues;
    .restart local v15       #current:J
    .restart local v19       #errorType:I
    .restart local v25       #msgType:I
    .restart local v28       #retryIndex:I
    :cond_3
    const/16 v22, 0x0

    goto :goto_0

    .line 872
    .restart local v18       #errorString:I
    .restart local v22       #isRetryDownloading:Z
    .restart local v26       #respStatus:I
    .restart local v27       #retry:Z
    :sswitch_0
    const v18, 0x7f0a0055

    .line 873
    goto :goto_1

    .line 877
    :sswitch_1
    const v18, 0x7f0a0056

    .line 878
    goto :goto_1

    .line 881
    :sswitch_2
    const v18, 0x7f0a0058

    .line 882
    goto :goto_1

    .line 886
    :sswitch_3
    const v18, 0x7f0a0057

    goto/16 :goto_1

    .line 902
    :cond_4
    :try_start_1
    const-string v3, "onTransactionFailure: retry for %s is reached limit. Abort."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 905
    const/16 v19, 0xa

    .line 906
    if-eqz v22, :cond_8

    .line 907
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "thread_id"

    aput-object v5, v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 910
    .local v13, c:Landroid/database/Cursor;
    const-wide/16 v29, -0x1

    .line 911
    .local v29, threadId:J
    if-eqz v13, :cond_6

    .line 913
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 914
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v29

    .line 917
    :cond_5
    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 921
    :cond_6
    const-wide/16 v3, -0x1

    cmp-long v3, v29, v3

    if-eqz v3, :cond_7

    .line 923
    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->notifyDownloadFailed(Landroid/content/Context;J)V

    .line 926
    :cond_7
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    const/16 v4, 0x87

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 952
    .end local v10           #values:Landroid/content/ContentValues;
    .end local v13           #c:Landroid/database/Cursor;
    .end local v15           #current:J
    .end local v18           #errorString:I
    .end local v19           #errorType:I
    .end local v22           #isRetryDownloading:Z
    .end local v25           #msgType:I
    .end local v26           #respStatus:I
    .end local v27           #retry:Z
    .end local v28           #retryIndex:I
    .end local v29           #threadId:J
    :catchall_0
    move-exception v3

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v3

    .line 917
    .restart local v10       #values:Landroid/content/ContentValues;
    .restart local v13       #c:Landroid/database/Cursor;
    .restart local v15       #current:J
    .restart local v18       #errorString:I
    .restart local v19       #errorType:I
    .restart local v22       #isRetryDownloading:Z
    .restart local v25       #msgType:I
    .restart local v26       #respStatus:I
    .restart local v27       #retry:Z
    .restart local v28       #retryIndex:I
    .restart local v29       #threadId:J
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3

    .line 930
    .end local v13           #c:Landroid/database/Cursor;
    .end local v29           #threadId:J
    :cond_8
    new-instance v6, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v6, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 931
    .local v6, readValues:Landroid/content/ContentValues;
    const-string v3, "read"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 932
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-static/range {v3 .. v8}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 934
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    goto/16 :goto_2

    .line 949
    .end local v6           #readValues:Landroid/content/ContentValues;
    .end local v10           #values:Landroid/content/ContentValues;
    .end local v15           #current:J
    .end local v18           #errorString:I
    .end local v19           #errorType:I
    .end local v22           #isRetryDownloading:Z
    .end local v25           #msgType:I
    .end local v26           #respStatus:I
    .end local v27           #retry:Z
    .end local v28           #retryIndex:I
    :cond_9
    const-string v3, "Cannot found correct pending status for: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 870
    nop

    :sswitch_data_0
    .sparse-switch
        0x82 -> :sswitch_1
        0x84 -> :sswitch_0
        0x86 -> :sswitch_2
        0xc2 -> :sswitch_3
        0xe1 -> :sswitch_1
        0xe4 -> :sswitch_3
    .end sparse-switch
.end method

.method private processNextTransaction()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 712
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;

    if-eqz v0, :cond_0

    .line 714
    const-string v0, "processNextPendingTransaction while there is already one processing"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 727
    :goto_0
    return-void

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 717
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->onFinish()V

    goto :goto_0

    .line 719
    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;

    .line 720
    iput-boolean v3, p0, Lcom/android/mms/transaction/TransactionService;->mRestartCurrentTransaction:Z

    .line 722
    const-string v0, "Processing next transaction: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 724
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;

    invoke-virtual {v0, p0}, Lcom/android/mms/transaction/Transaction;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 725
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;

    invoke-virtual {v0}, Lcom/android/mms/transaction/Transaction;->process()V

    goto :goto_0
.end method

.method private resetDownloadState()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 294
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v4

    const-string v4, "m_type=130"

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 299
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 312
    :goto_0
    return-void

    .line 303
    :cond_0
    const/4 v0, -0x1

    :try_start_0
    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 304
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 306
    .local v8, id:J
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 307
    .local v10, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v10, v1}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 310
    .end local v8           #id:J
    .end local v10           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private declared-synchronized runInWorkerThread(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :goto_0
    monitor-exit p0

    return-void

    .line 118
    :cond_0
    :try_start_1
    const-string v0, "Attempt to post runnable while handler thread is dead."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized runInWorkerThread(Ljava/lang/Runnable;I)V
    .locals 3
    .parameter "r"
    .parameter "delay"

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :goto_0
    monitor-exit p0

    return-void

    .line 126
    :cond_0
    :try_start_1
    const-string v0, "Attempt to post delayed runnable while handler thread is dead."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private scheduleNextRetry()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 735
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->getRetryCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 736
    invoke-direct {p0, v0}, Lcom/android/mms/transaction/TransactionService;->setRetryCount(I)V

    .line 737
    sget-object v1, Lcom/android/mms/transaction/TransactionService;->RETRY_INTERVALS_IN_SECOND:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 738
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 739
    sget-object v3, Lcom/android/mms/transaction/TransactionService;->RETRY_INTERVALS_IN_SECOND:[I

    aget v3, v3, v0

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    add-long/2addr v3, v1

    .line 741
    const-string v5, "Scheduled #%d retry at %d ms from now"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    sub-long v0, v3, v1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-static {v5, v6}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 744
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_ONALARM"

    const/4 v2, 0x0

    const-class v5, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v1, v2, p0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 746
    const/high16 v1, 0x4000

    invoke-static {p0, v7, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 748
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/TransactionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 749
    invoke-virtual {v0, v8, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 755
    :goto_0
    return-void

    .line 752
    :cond_0
    const-string v1, "#%d retry exceeds limit. Stop."

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setRetryCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 685
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 686
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 687
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "transactionRetryCount"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 688
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 689
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 990
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 270
    const-string v2, "Creating TransactionService..."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/TransactionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 275
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "MMS Connectivity"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 276
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 278
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/TransactionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 280
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "TransactionService"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 281
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 282
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mHandler:Landroid/os/Handler;

    .line 284
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 285
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mConnectivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/mms/transaction/TransactionService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 287
    iput v4, p0, Lcom/android/mms/transaction/TransactionService;->mSuccessCount:I

    .line 288
    iput v4, p0, Lcom/android/mms/transaction/TransactionService;->mFailureCount:I

    .line 290
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->resetDownloadState()V

    .line 291
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 317
    const-string v0, "Destroying TransactionService"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnectivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/TransactionService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 322
    monitor-enter p0

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mHandler:Landroid/os/Handler;

    .line 326
    const-string v0, "Requested killing handler thread."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;

    if-eqz v0, :cond_0

    .line 331
    const-string v0, "TransactionService exiting with transaction still processing"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 334
    const-string v0, "TransactionService exiting with transaction in queue"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    :cond_1
    return-void

    .line 328
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v4, 0x0

    .line 341
    const-string v1, "onStartService: startId=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    iput p3, p0, Lcom/android/mms/transaction/TransactionService;->mLastStartId:I

    .line 358
    const-string v1, "android.intent.action.ACTION_ONALARM"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_2

    .line 359
    :cond_0
    const-string v1, "android.intent.action.ACTION_ONALARM"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 360
    invoke-direct {p0, v4}, Lcom/android/mms/transaction/TransactionService;->setRetryCount(I)V

    .line 363
    :cond_1
    const-string v1, "Posting enqueueAllMessages"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    new-instance v1, Lcom/android/mms/transaction/TransactionService$5;

    invoke-direct {v1, p0}, Lcom/android/mms/transaction/TransactionService$5;-><init>(Lcom/android/mms/transaction/TransactionService;)V

    invoke-direct {p0, v1}, Lcom/android/mms/transaction/TransactionService;->runInWorkerThread(Ljava/lang/Runnable;)V

    .line 383
    :goto_0
    const/4 v1, 0x2

    return v1

    .line 372
    :cond_2
    new-instance v0, Lcom/android/mms/transaction/TransactionBundle;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionBundle;-><init>(Landroid/os/Bundle;)V

    .line 374
    .local v0, args:Lcom/android/mms/transaction/TransactionBundle;
    const-string v1, "Posting enqueueSingleMessage"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    new-instance v1, Lcom/android/mms/transaction/TransactionService$6;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/transaction/TransactionService$6;-><init>(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/TransactionBundle;)V

    invoke-direct {p0, v1}, Lcom/android/mms/transaction/TransactionService;->runInWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public update(Lcom/android/mms/transaction/Observable;)V
    .locals 3
    .parameter "observable"

    .prologue
    .line 759
    move-object v0, p1

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    .line 761
    .local v0, transaction:Lcom/android/mms/transaction/Transaction;
    const-string v1, "Posting transaction update"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 763
    new-instance v1, Lcom/android/mms/transaction/TransactionService$8;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/transaction/TransactionService$8;-><init>(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/Transaction;)V

    invoke-direct {p0, v1}, Lcom/android/mms/transaction/TransactionService;->runInWorkerThread(Ljava/lang/Runnable;)V

    .line 839
    return-void
.end method
