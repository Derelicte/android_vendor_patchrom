.class public Lcom/miui/player/util/AsyncWorker;
.super Ljava/lang/Object;
.source "AsyncWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/player/util/AsyncWorker;->mLock:Ljava/lang/Object;

    .line 17
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 18
    .local v0, t:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 19
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 20
    iget-object v2, p0, Lcom/miui/player/util/AsyncWorker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 21
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/util/AsyncWorker;->mLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 23
    :try_start_1
    iget-object v1, p0, Lcom/miui/player/util/AsyncWorker;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 24
    :catch_0
    move-exception v1

    goto :goto_0

    .line 27
    :cond_0
    :try_start_2
    monitor-exit v2

    .line 28
    return-void

    .line 27
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/player/util/AsyncWorker;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/player/util/AsyncWorker;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 45
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 35
    iget-object v1, p0, Lcom/miui/player/util/AsyncWorker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 36
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 37
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/util/AsyncWorker;->mLooper:Landroid/os/Looper;

    .line 38
    iget-object v0, p0, Lcom/miui/player/util/AsyncWorker;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 39
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 41
    return-void

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
