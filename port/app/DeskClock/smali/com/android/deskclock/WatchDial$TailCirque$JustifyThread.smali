.class Lcom/android/deskclock/WatchDial$TailCirque$JustifyThread;
.super Ljava/lang/Thread;
.source "WatchDial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/WatchDial$TailCirque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JustifyThread"
.end annotation


# instance fields
.field private final REFRESHRATE:I

.field private final SPEED_RATE:D

.field private mFlag:Z

.field final synthetic this$1:Lcom/android/deskclock/WatchDial$TailCirque;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/WatchDial$TailCirque;)V
    .locals 2
    .parameter

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/deskclock/WatchDial$TailCirque$JustifyThread;->this$1:Lcom/android/deskclock/WatchDial$TailCirque;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 426
    const/16 v0, 0x46

    iput v0, p0, Lcom/android/deskclock/WatchDial$TailCirque$JustifyThread;->REFRESHRATE:I

    .line 427
    const-wide v0, 0x3fc3333333333333L

    iput-wide v0, p0, Lcom/android/deskclock/WatchDial$TailCirque$JustifyThread;->SPEED_RATE:D

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/WatchDial$TailCirque;Lcom/android/deskclock/WatchDial$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 424
    invoke-direct {p0, p1}, Lcom/android/deskclock/WatchDial$TailCirque$JustifyThread;-><init>(Lcom/android/deskclock/WatchDial$TailCirque;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const-wide v9, 0x4076800000000000L

    .line 430
    :goto_0
    iget-boolean v5, p0, Lcom/android/deskclock/WatchDial$TailCirque$JustifyThread;->mFlag:Z

    if-eqz v5, :cond_0

    .line 431
    iget-object v5, p0, Lcom/android/deskclock/WatchDial$TailCirque$JustifyThread;->this$1:Lcom/android/deskclock/WatchDial$TailCirque;

    #getter for: Lcom/android/deskclock/WatchDial$TailCirque;->mStartDegrees:D
    invoke-static {v5}, Lcom/android/deskclock/WatchDial$TailCirque;->access$100(Lcom/android/deskclock/WatchDial$TailCirque;)D

    move-result-wide v5

    iget-object v7, p0, Lcom/android/deskclock/WatchDial$TailCirque$JustifyThread;->this$1:Lcom/android/deskclock/WatchDial$TailCirque;

    #getter for: Lcom/android/deskclock/WatchDial$TailCirque;->mEndDegrees:D
    invoke-static {v7}, Lcom/android/deskclock/WatchDial$TailCirque;->access$200(Lcom/android/deskclock/WatchDial$TailCirque;)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/android/deskclock/Util;->getDifferWithDegrees(DD)D

    move-result-wide v0

    .line 432
    .local v0, differ:D
    const-wide/high16 v5, 0x4024

    cmpg-double v5, v0, v5

    if-gez v5, :cond_1

    .line 454
    .end local v0           #differ:D
    :cond_0
    iget-object v5, p0, Lcom/android/deskclock/WatchDial$TailCirque$JustifyThread;->this$1:Lcom/android/deskclock/WatchDial$TailCirque;

    const/4 v6, 0x0

    #setter for: Lcom/android/deskclock/WatchDial$TailCirque;->mJustifyThread:Lcom/android/deskclock/WatchDial$TailCirque$JustifyThread;
    invoke-static {v5, v6}, Lcom/android/deskclock/WatchDial$TailCirque;->access$502(Lcom/android/deskclock/WatchDial$TailCirque;Lcom/android/deskclock/WatchDial$TailCirque$JustifyThread;)Lcom/android/deskclock/WatchDial$TailCirque$JustifyThread;

    .line 455
    return-void

    .line 435
    .restart local v0       #differ:D
    :cond_1
    const-wide v5, 0x3fc3333333333333L

    mul-double v3, v0, v5

    .line 436
    .local v3, speed:D
    iget-object v5, p0, Lcom/android/deskclock/WatchDial$TailCirque$JustifyThread;->this$1:Lcom/android/deskclock/WatchDial$TailCirque;

    #getter for: Lcom/android/deskclock/WatchDial$TailCirque;->mIsForward:Z
    invoke-static {v5}, Lcom/android/deskclock/WatchDial$TailCirque;->access$400(Lcom/android/deskclock/WatchDial$TailCirque;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 437
    iget-object v5, p0, Lcom/android/deskclock/WatchDial$TailCirque$JustifyThread;->this$1:Lcom/android/deskclock/WatchDial$TailCirque;

    invoke-static {v5, v3, v4}, Lcom/android/deskclock/WatchDial$TailCirque;->access$218(Lcom/android/deskclock/WatchDial$TailCirque;D)D

    .line 438
    iget-object v5, p0, Lcom/android/deskclock/WatchDial$TailCirque$JustifyThread;->this$1:Lcom/android/deskclock/WatchDial$TailCirque;

    #getter for: Lcom/android/deskclock/WatchDial$TailCirque;->mEndDegrees:D
    invoke-static {v5}, Lcom/android/deskclock/WatchDial$TailCirque;->access$200(Lcom/android/deskclock/WatchDial$TailCirque;)D

    move-result-wide v5

    cmpl-double v5, v5, v9

    if-lez v5, :cond_2

    .line 439
    iget-object v5, p0, Lcom/android/deskclock/WatchDial$TailCirque$JustifyThread;->this$1:Lcom/android/deskclock/WatchDial$TailCirque;

    invoke-static {v5, v9, v10}, Lcom/android/deskclock/WatchDial$TailCirque;->access$226(Lcom/android/deskclock/WatchDial$TailCirque;D)D

    .line 447
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/deskclock/WatchDial$TailCirque$JustifyThread;->this$1:Lcom/android/deskclock/WatchDial$TailCirque;

    iget-object v5, v5, Lcom/android/deskclock/WatchDial$TailCirque;->this$0:Lcom/android/deskclock/WatchDial;

    iget-object v5, v5, Lcom/android/deskclock/WatchDial;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 449
    const-wide/16 v5, 0x46

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 450
    :catch_0
    move-exception v2

    .line 451
    .local v2, e:Ljava/lang/InterruptedException;
    const-string v5, "Error when sleep in thread"

    invoke-static {v5, v2}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 442
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_3
    iget-object v5, p0, Lcom/android/deskclock/WatchDial$TailCirque$JustifyThread;->this$1:Lcom/android/deskclock/WatchDial$TailCirque;

    invoke-static {v5, v3, v4}, Lcom/android/deskclock/WatchDial$TailCirque;->access$226(Lcom/android/deskclock/WatchDial$TailCirque;D)D

    .line 443
    iget-object v5, p0, Lcom/android/deskclock/WatchDial$TailCirque$JustifyThread;->this$1:Lcom/android/deskclock/WatchDial$TailCirque;

    #getter for: Lcom/android/deskclock/WatchDial$TailCirque;->mEndDegrees:D
    invoke-static {v5}, Lcom/android/deskclock/WatchDial$TailCirque;->access$200(Lcom/android/deskclock/WatchDial$TailCirque;)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_2

    .line 444
    iget-object v5, p0, Lcom/android/deskclock/WatchDial$TailCirque$JustifyThread;->this$1:Lcom/android/deskclock/WatchDial$TailCirque;

    invoke-static {v5, v9, v10}, Lcom/android/deskclock/WatchDial$TailCirque;->access$218(Lcom/android/deskclock/WatchDial$TailCirque;D)D

    goto :goto_1
.end method

.method public setFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 458
    iput-boolean p1, p0, Lcom/android/deskclock/WatchDial$TailCirque$JustifyThread;->mFlag:Z

    .line 459
    return-void
.end method
