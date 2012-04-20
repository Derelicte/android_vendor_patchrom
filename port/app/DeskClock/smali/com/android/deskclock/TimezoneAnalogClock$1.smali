.class Lcom/android/deskclock/TimezoneAnalogClock$1;
.super Ljava/lang/Object;
.source "TimezoneAnalogClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/TimezoneAnalogClock;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/TimezoneAnalogClock;


# direct methods
.method constructor <init>(Lcom/android/deskclock/TimezoneAnalogClock;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/deskclock/TimezoneAnalogClock$1;->this$0:Lcom/android/deskclock/TimezoneAnalogClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 86
    iget-object v4, p0, Lcom/android/deskclock/TimezoneAnalogClock$1;->this$0:Lcom/android/deskclock/TimezoneAnalogClock;

    #getter for: Lcom/android/deskclock/TimezoneAnalogClock;->mTickerStopped:Z
    invoke-static {v4}, Lcom/android/deskclock/TimezoneAnalogClock;->access$000(Lcom/android/deskclock/TimezoneAnalogClock;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 88
    .local v2, now:J
    rem-long v4, v2, v6

    sub-long v4, v6, v4

    add-long v0, v2, v4

    .line 89
    .local v0, next:J
    iget-object v4, p0, Lcom/android/deskclock/TimezoneAnalogClock$1;->this$0:Lcom/android/deskclock/TimezoneAnalogClock;

    #getter for: Lcom/android/deskclock/TimezoneAnalogClock;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/deskclock/TimezoneAnalogClock;->access$200(Lcom/android/deskclock/TimezoneAnalogClock;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/deskclock/TimezoneAnalogClock$1;->this$0:Lcom/android/deskclock/TimezoneAnalogClock;

    #getter for: Lcom/android/deskclock/TimezoneAnalogClock;->mTicker:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/deskclock/TimezoneAnalogClock;->access$100(Lcom/android/deskclock/TimezoneAnalogClock;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 90
    iget-object v4, p0, Lcom/android/deskclock/TimezoneAnalogClock$1;->this$0:Lcom/android/deskclock/TimezoneAnalogClock;

    #calls: Lcom/android/deskclock/TimezoneAnalogClock;->onTimeChanged()V
    invoke-static {v4}, Lcom/android/deskclock/TimezoneAnalogClock;->access$300(Lcom/android/deskclock/TimezoneAnalogClock;)V

    .line 91
    iget-object v4, p0, Lcom/android/deskclock/TimezoneAnalogClock$1;->this$0:Lcom/android/deskclock/TimezoneAnalogClock;

    invoke-virtual {v4}, Lcom/android/deskclock/TimezoneAnalogClock;->invalidate()V

    goto :goto_0
.end method
