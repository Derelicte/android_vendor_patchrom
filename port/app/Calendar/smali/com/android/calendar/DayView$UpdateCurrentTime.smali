.class Lcom/android/calendar/DayView$UpdateCurrentTime;
.super Ljava/lang/Object;
.source "DayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateCurrentTime"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayView;


# direct methods
.method constructor <init>(Lcom/android/calendar/DayView;)V
    .locals 0
    .parameter

    .prologue
    .line 4646
    iput-object p1, p0, Lcom/android/calendar/DayView$UpdateCurrentTime;->this$0:Lcom/android/calendar/DayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x493e0

    .line 4648
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4649
    .local v0, currentTime:J
    iget-object v2, p0, Lcom/android/calendar/DayView$UpdateCurrentTime;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$100(Lcom/android/calendar/DayView;)Landroid/text/format/Time;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 4651
    iget-object v2, p0, Lcom/android/calendar/DayView$UpdateCurrentTime;->this$0:Lcom/android/calendar/DayView;

    iget-boolean v2, v2, Lcom/android/calendar/DayView;->mPaused:Z

    if-nez v2, :cond_0

    .line 4652
    iget-object v2, p0, Lcom/android/calendar/DayView$UpdateCurrentTime;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$3300(Lcom/android/calendar/DayView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/DayView$UpdateCurrentTime;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;
    invoke-static {v3}, Lcom/android/calendar/DayView;->access$3500(Lcom/android/calendar/DayView;)Lcom/android/calendar/DayView$UpdateCurrentTime;

    move-result-object v3

    rem-long v4, v0, v6

    sub-long v4, v6, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4655
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/DayView$UpdateCurrentTime;->this$0:Lcom/android/calendar/DayView;

    iget-object v3, p0, Lcom/android/calendar/DayView$UpdateCurrentTime;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;
    invoke-static {v3}, Lcom/android/calendar/DayView;->access$100(Lcom/android/calendar/DayView;)Landroid/text/format/Time;

    move-result-object v3

    iget-wide v3, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    #setter for: Lcom/android/calendar/DayView;->mTodayJulianDay:I
    invoke-static {v2, v3}, Lcom/android/calendar/DayView;->access$3602(Lcom/android/calendar/DayView;I)I

    .line 4656
    iget-object v2, p0, Lcom/android/calendar/DayView$UpdateCurrentTime;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v2}, Lcom/android/calendar/DayView;->invalidate()V

    .line 4657
    return-void
.end method
