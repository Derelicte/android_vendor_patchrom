.class Lcom/android/deskclock/TimerFragment$7;
.super Landroid/os/Handler;
.source "TimerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/TimerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/TimerFragment;


# direct methods
.method constructor <init>(Lcom/android/deskclock/TimerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/deskclock/TimerFragment$7;->this$0:Lcom/android/deskclock/TimerFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const-wide/16 v5, 0x0

    .line 383
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 385
    :pswitch_0
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment$7;->this$0:Lcom/android/deskclock/TimerFragment;

    iget-object v1, p0, Lcom/android/deskclock/TimerFragment$7;->this$0:Lcom/android/deskclock/TimerFragment;

    #getter for: Lcom/android/deskclock/TimerFragment;->mEndTime:J
    invoke-static {v1}, Lcom/android/deskclock/TimerFragment;->access$1100(Lcom/android/deskclock/TimerFragment;)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    #setter for: Lcom/android/deskclock/TimerFragment;->mTimeRemained:J
    invoke-static {v0, v1, v2}, Lcom/android/deskclock/TimerFragment;->access$302(Lcom/android/deskclock/TimerFragment;J)J

    .line 386
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment$7;->this$0:Lcom/android/deskclock/TimerFragment;

    #getter for: Lcom/android/deskclock/TimerFragment;->mTimeRemained:J
    invoke-static {v0}, Lcom/android/deskclock/TimerFragment;->access$300(Lcom/android/deskclock/TimerFragment;)J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/deskclock/TimerFragment$7;->this$0:Lcom/android/deskclock/TimerFragment;

    #getter for: Lcom/android/deskclock/TimerFragment;->mTimerState:I
    invoke-static {v0}, Lcom/android/deskclock/TimerFragment;->access$100(Lcom/android/deskclock/TimerFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 387
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment$7;->this$0:Lcom/android/deskclock/TimerFragment;

    #getter for: Lcom/android/deskclock/TimerFragment;->mWatchDial:Lcom/android/deskclock/WatchDial;
    invoke-static {v0}, Lcom/android/deskclock/TimerFragment;->access$000(Lcom/android/deskclock/TimerFragment;)Lcom/android/deskclock/WatchDial;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/TimerFragment$7;->this$0:Lcom/android/deskclock/TimerFragment;

    #getter for: Lcom/android/deskclock/TimerFragment;->mTimeRemained:J
    invoke-static {v1}, Lcom/android/deskclock/TimerFragment;->access$300(Lcom/android/deskclock/TimerFragment;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/deskclock/WatchDial;->setValue(J)V

    .line 388
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment$7;->this$0:Lcom/android/deskclock/TimerFragment;

    #getter for: Lcom/android/deskclock/TimerFragment;->mWatchDial:Lcom/android/deskclock/WatchDial;
    invoke-static {v0}, Lcom/android/deskclock/TimerFragment;->access$000(Lcom/android/deskclock/TimerFragment;)Lcom/android/deskclock/WatchDial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/deskclock/WatchDial;->drawAll()V

    goto :goto_0

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment$7;->this$0:Lcom/android/deskclock/TimerFragment;

    #getter for: Lcom/android/deskclock/TimerFragment;->mTimeRemained:J
    invoke-static {v0}, Lcom/android/deskclock/TimerFragment;->access$300(Lcom/android/deskclock/TimerFragment;)J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-gtz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/deskclock/TimerFragment$7;->this$0:Lcom/android/deskclock/TimerFragment;

    #calls: Lcom/android/deskclock/TimerFragment;->timerOff()V
    invoke-static {v0}, Lcom/android/deskclock/TimerFragment;->access$1200(Lcom/android/deskclock/TimerFragment;)V

    goto :goto_0

    .line 383
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
