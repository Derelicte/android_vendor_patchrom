.class Lcom/android/deskclock/StopwatchChronometer$1;
.super Landroid/os/Handler;
.source "StopwatchChronometer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/StopwatchChronometer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/StopwatchChronometer;


# direct methods
.method constructor <init>(Lcom/android/deskclock/StopwatchChronometer;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/deskclock/StopwatchChronometer$1;->this$0:Lcom/android/deskclock/StopwatchChronometer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "m"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/deskclock/StopwatchChronometer$1;->this$0:Lcom/android/deskclock/StopwatchChronometer;

    #getter for: Lcom/android/deskclock/StopwatchChronometer;->mRunning:Z
    invoke-static {v0}, Lcom/android/deskclock/StopwatchChronometer;->access$000(Lcom/android/deskclock/StopwatchChronometer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/deskclock/StopwatchChronometer$1;->this$0:Lcom/android/deskclock/StopwatchChronometer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #calls: Lcom/android/deskclock/StopwatchChronometer;->updateText(J)V
    invoke-static {v0, v1, v2}, Lcom/android/deskclock/StopwatchChronometer;->access$100(Lcom/android/deskclock/StopwatchChronometer;J)V

    .line 173
    iget-object v0, p0, Lcom/android/deskclock/StopwatchChronometer$1;->this$0:Lcom/android/deskclock/StopwatchChronometer;

    invoke-virtual {v0}, Lcom/android/deskclock/StopwatchChronometer;->dispatchChronometerTick()V

    .line 174
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/deskclock/StopwatchChronometer$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 176
    :cond_0
    return-void
.end method
