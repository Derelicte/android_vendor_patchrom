.class Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;
.super Ljava/lang/Thread;
.source "WatchDial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/WatchDial$TailCirque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CircleThread"
.end annotation


# instance fields
.field private final MAX_LENTH:D

.field private final REFRESHRATE:I

.field private final SPEED:D

.field private mFlag:Z

.field final synthetic this$1:Lcom/android/deskclock/WatchDial$TailCirque;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/WatchDial$TailCirque;Z)V
    .locals 2
    .parameter
    .parameter "flag"

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;->this$1:Lcom/android/deskclock/WatchDial$TailCirque;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 365
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;->REFRESHRATE:I

    .line 366
    const-wide/high16 v0, 0x4024

    iput-wide v0, p0, Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;->SPEED:D

    .line 367
    const-wide/high16 v0, 0x4059

    iput-wide v0, p0, Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;->MAX_LENTH:D

    .line 370
    iput-boolean p2, p0, Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;->mFlag:Z

    .line 371
    return-void
.end method

.method static synthetic access$302(Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 363
    iput-boolean p1, p0, Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;->mFlag:Z

    return p1
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 375
    iget-object v3, p0, Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;->this$1:Lcom/android/deskclock/WatchDial$TailCirque;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/deskclock/WatchDial$TailCirque;->setIsForward(Z)V

    .line 376
    :goto_0
    iget-boolean v3, p0, Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;->mFlag:Z

    if-eqz v3, :cond_2

    .line 377
    iget-object v3, p0, Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;->this$1:Lcom/android/deskclock/WatchDial$TailCirque;

    #getter for: Lcom/android/deskclock/WatchDial$TailCirque;->mStartDegrees:D
    invoke-static {v3}, Lcom/android/deskclock/WatchDial$TailCirque;->access$100(Lcom/android/deskclock/WatchDial$TailCirque;)D

    move-result-wide v3

    iget-object v5, p0, Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;->this$1:Lcom/android/deskclock/WatchDial$TailCirque;

    #getter for: Lcom/android/deskclock/WatchDial$TailCirque;->mEndDegrees:D
    invoke-static {v5}, Lcom/android/deskclock/WatchDial$TailCirque;->access$200(Lcom/android/deskclock/WatchDial$TailCirque;)D

    move-result-wide v5

    sub-double v0, v3, v5

    .line 378
    .local v0, differ:D
    const-wide/high16 v3, 0x4059

    cmpl-double v3, v0, v3

    if-ltz v3, :cond_3

    iget-object v3, p0, Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;->this$1:Lcom/android/deskclock/WatchDial$TailCirque;

    #getter for: Lcom/android/deskclock/WatchDial$TailCirque;->mStartDegrees:D
    invoke-static {v3}, Lcom/android/deskclock/WatchDial$TailCirque;->access$100(Lcom/android/deskclock/WatchDial$TailCirque;)D

    move-result-wide v3

    const-wide v5, 0x4076800000000000L

    cmpg-double v3, v3, v5

    if-gez v3, :cond_3

    .line 379
    iget-object v3, p0, Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;->this$1:Lcom/android/deskclock/WatchDial$TailCirque;

    iget-object v4, p0, Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;->this$1:Lcom/android/deskclock/WatchDial$TailCirque;

    #getter for: Lcom/android/deskclock/WatchDial$TailCirque;->mStartDegrees:D
    invoke-static {v4}, Lcom/android/deskclock/WatchDial$TailCirque;->access$100(Lcom/android/deskclock/WatchDial$TailCirque;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4059

    sub-double/2addr v4, v6

    #setter for: Lcom/android/deskclock/WatchDial$TailCirque;->mEndDegrees:D
    invoke-static {v3, v4, v5}, Lcom/android/deskclock/WatchDial$TailCirque;->access$202(Lcom/android/deskclock/WatchDial$TailCirque;D)D

    .line 383
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;->this$1:Lcom/android/deskclock/WatchDial$TailCirque;

    iget-object v3, v3, Lcom/android/deskclock/WatchDial$TailCirque;->this$0:Lcom/android/deskclock/WatchDial;

    iget-object v3, v3, Lcom/android/deskclock/WatchDial;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 385
    iget-object v3, p0, Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;->this$1:Lcom/android/deskclock/WatchDial$TailCirque;

    #getter for: Lcom/android/deskclock/WatchDial$TailCirque;->mStartDegrees:D
    invoke-static {v3}, Lcom/android/deskclock/WatchDial$TailCirque;->access$100(Lcom/android/deskclock/WatchDial$TailCirque;)D

    move-result-wide v3

    const-wide v5, 0x4076800000000000L

    cmpg-double v3, v3, v5

    if-gez v3, :cond_1

    .line 386
    iget-object v3, p0, Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;->this$1:Lcom/android/deskclock/WatchDial$TailCirque;

    const-wide/high16 v4, 0x4024

    invoke-static {v3, v4, v5}, Lcom/android/deskclock/WatchDial$TailCirque;->access$118(Lcom/android/deskclock/WatchDial$TailCirque;D)D

    .line 389
    :cond_1
    iget-object v3, p0, Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;->this$1:Lcom/android/deskclock/WatchDial$TailCirque;

    #getter for: Lcom/android/deskclock/WatchDial$TailCirque;->mStartDegrees:D
    invoke-static {v3}, Lcom/android/deskclock/WatchDial$TailCirque;->access$100(Lcom/android/deskclock/WatchDial$TailCirque;)D

    move-result-wide v3

    const-wide v5, 0x4076800000000000L

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_4

    iget-object v3, p0, Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;->this$1:Lcom/android/deskclock/WatchDial$TailCirque;

    #getter for: Lcom/android/deskclock/WatchDial$TailCirque;->mEndDegrees:D
    invoke-static {v3}, Lcom/android/deskclock/WatchDial$TailCirque;->access$200(Lcom/android/deskclock/WatchDial$TailCirque;)D

    move-result-wide v3

    const-wide v5, 0x4076800000000000L

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_4

    .line 399
    .end local v0           #differ:D
    :cond_2
    iget-object v3, p0, Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;->this$1:Lcom/android/deskclock/WatchDial$TailCirque;

    const-wide/16 v4, 0x0

    #setter for: Lcom/android/deskclock/WatchDial$TailCirque;->mStartDegrees:D
    invoke-static {v3, v4, v5}, Lcom/android/deskclock/WatchDial$TailCirque;->access$102(Lcom/android/deskclock/WatchDial$TailCirque;D)D

    .line 400
    iget-object v3, p0, Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;->this$1:Lcom/android/deskclock/WatchDial$TailCirque;

    const-wide/16 v4, 0x0

    #setter for: Lcom/android/deskclock/WatchDial$TailCirque;->mEndDegrees:D
    invoke-static {v3, v4, v5}, Lcom/android/deskclock/WatchDial$TailCirque;->access$202(Lcom/android/deskclock/WatchDial$TailCirque;D)D

    .line 401
    return-void

    .line 380
    .restart local v0       #differ:D
    :cond_3
    iget-object v3, p0, Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;->this$1:Lcom/android/deskclock/WatchDial$TailCirque;

    #getter for: Lcom/android/deskclock/WatchDial$TailCirque;->mStartDegrees:D
    invoke-static {v3}, Lcom/android/deskclock/WatchDial$TailCirque;->access$100(Lcom/android/deskclock/WatchDial$TailCirque;)D

    move-result-wide v3

    const-wide v5, 0x40767ffffef39086L

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_0

    .line 381
    iget-object v3, p0, Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;->this$1:Lcom/android/deskclock/WatchDial$TailCirque;

    const-wide/high16 v4, 0x4024

    invoke-static {v3, v4, v5}, Lcom/android/deskclock/WatchDial$TailCirque;->access$218(Lcom/android/deskclock/WatchDial$TailCirque;D)D

    goto :goto_1

    .line 394
    :cond_4
    const-wide/16 v3, 0x1e

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 395
    :catch_0
    move-exception v2

    .line 396
    .local v2, e:Ljava/lang/InterruptedException;
    const-string v3, "Error when sleep in thread"

    invoke-static {v3, v2}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method
