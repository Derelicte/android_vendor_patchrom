.class Lcom/android/deskclock/TimerFragment$TimerThread;
.super Ljava/lang/Thread;
.source "TimerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/TimerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimerThread"
.end annotation


# instance fields
.field private final REFRESHRATE:I

.field private mRunningFlag:Z

.field final synthetic this$0:Lcom/android/deskclock/TimerFragment;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/TimerFragment;Z)V
    .locals 1
    .parameter
    .parameter "flag"

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/deskclock/TimerFragment$TimerThread;->this$0:Lcom/android/deskclock/TimerFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 353
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/deskclock/TimerFragment$TimerThread;->REFRESHRATE:I

    .line 356
    iput-boolean p2, p0, Lcom/android/deskclock/TimerFragment$TimerThread;->mRunningFlag:Z

    .line 357
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 361
    :goto_0
    iget-boolean v1, p0, Lcom/android/deskclock/TimerFragment$TimerThread;->mRunningFlag:Z

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/android/deskclock/TimerFragment$TimerThread;->this$0:Lcom/android/deskclock/TimerFragment;

    #getter for: Lcom/android/deskclock/TimerFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/deskclock/TimerFragment;->access$1000(Lcom/android/deskclock/TimerFragment;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 364
    const-wide/16 v1, 0x3c

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "Error when sleep thread"

    invoke-static {v1, v0}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 369
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method public stopThread()V
    .locals 2

    .prologue
    .line 372
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/deskclock/TimerFragment$TimerThread;->mRunningFlag:Z

    .line 374
    :try_start_0
    invoke-virtual {p0}, Lcom/android/deskclock/TimerFragment$TimerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "Error when stop thread"

    invoke-static {v1, v0}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
