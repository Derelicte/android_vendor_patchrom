.class Lcom/android/deskclock/AlarmClockFragment$1;
.super Ljava/lang/Object;
.source "AlarmClockFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClockFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmClockFragment;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClockFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$1;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/32 v6, 0xea60

    .line 157
    iget-object v4, p0, Lcom/android/deskclock/AlarmClockFragment$1;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    #getter for: Lcom/android/deskclock/AlarmClockFragment;->mTickerStopped:Z
    invoke-static {v4}, Lcom/android/deskclock/AlarmClockFragment;->access$400(Lcom/android/deskclock/AlarmClockFragment;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 159
    .local v2, now:J
    rem-long v4, v2, v6

    sub-long v4, v6, v4

    add-long v0, v2, v4

    .line 160
    .local v0, next:J
    iget-object v4, p0, Lcom/android/deskclock/AlarmClockFragment$1;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    #getter for: Lcom/android/deskclock/AlarmClockFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/deskclock/AlarmClockFragment;->access$600(Lcom/android/deskclock/AlarmClockFragment;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/deskclock/AlarmClockFragment$1;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    #getter for: Lcom/android/deskclock/AlarmClockFragment;->mTicker:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/deskclock/AlarmClockFragment;->access$500(Lcom/android/deskclock/AlarmClockFragment;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 161
    iget-object v4, p0, Lcom/android/deskclock/AlarmClockFragment$1;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    #getter for: Lcom/android/deskclock/AlarmClockFragment;->mAlarmTimeAdapter:Lcom/android/deskclock/AlarmClockFragment$AlarmTimeAdapter;
    invoke-static {v4}, Lcom/android/deskclock/AlarmClockFragment;->access$700(Lcom/android/deskclock/AlarmClockFragment;)Lcom/android/deskclock/AlarmClockFragment$AlarmTimeAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/deskclock/AlarmClockFragment$AlarmTimeAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
