.class Lcom/android/email/NotificationController$NotificationThread;
.super Ljava/lang/Object;
.source "NotificationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/NotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotificationThread"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mLooper:Landroid/os/Looper;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 784
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/email/NotificationController$NotificationThread;->mLock:Ljava/lang/Object;

    .line 789
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    const-string v2, "EmailNotification"

    invoke-direct {v0, v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 790
    iget-object v1, p0, Lcom/android/email/NotificationController$NotificationThread;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 791
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/email/NotificationController$NotificationThread;->mLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 793
    :try_start_1
    iget-object v0, p0, Lcom/android/email/NotificationController$NotificationThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 794
    :catch_0
    move-exception v0

    goto :goto_0

    .line 797
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 798
    return-void

    .line 797
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/email/NotificationController$NotificationThread;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method quit()V
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/email/NotificationController$NotificationThread;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 812
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 802
    iget-object v1, p0, Lcom/android/email/NotificationController$NotificationThread;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 803
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 804
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/NotificationController$NotificationThread;->mLooper:Landroid/os/Looper;

    .line 805
    iget-object v0, p0, Lcom/android/email/NotificationController$NotificationThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 806
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 808
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 809
    return-void

    .line 806
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
