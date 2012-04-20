.class Lcom/android/deskclock/TimerFragment$1;
.super Ljava/lang/Object;
.source "TimerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/TimerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 91
    iput-object p1, p0, Lcom/android/deskclock/TimerFragment$1;->this$0:Lcom/android/deskclock/TimerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0x3c

    .line 93
    iget-object v2, p0, Lcom/android/deskclock/TimerFragment$1;->this$0:Lcom/android/deskclock/TimerFragment;

    #getter for: Lcom/android/deskclock/TimerFragment;->mWatchDial:Lcom/android/deskclock/WatchDial;
    invoke-static {v2}, Lcom/android/deskclock/TimerFragment;->access$000(Lcom/android/deskclock/TimerFragment;)Lcom/android/deskclock/WatchDial;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/deskclock/WatchDial;->getValue()J

    move-result-wide v2

    div-long/2addr v2, v6

    div-long/2addr v2, v4

    mul-long/2addr v2, v6

    mul-long v0, v2, v4

    .line 94
    .local v0, value:J
    iget-object v2, p0, Lcom/android/deskclock/TimerFragment$1;->this$0:Lcom/android/deskclock/TimerFragment;

    #getter for: Lcom/android/deskclock/TimerFragment;->mTimerState:I
    invoke-static {v2}, Lcom/android/deskclock/TimerFragment;->access$100(Lcom/android/deskclock/TimerFragment;)I

    move-result v2

    if-nez v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/android/deskclock/TimerFragment$1;->this$0:Lcom/android/deskclock/TimerFragment;

    #setter for: Lcom/android/deskclock/TimerFragment;->mDuration:J
    invoke-static {v2, v0, v1}, Lcom/android/deskclock/TimerFragment;->access$202(Lcom/android/deskclock/TimerFragment;J)J

    .line 96
    iget-object v2, p0, Lcom/android/deskclock/TimerFragment$1;->this$0:Lcom/android/deskclock/TimerFragment;

    #setter for: Lcom/android/deskclock/TimerFragment;->mTimeRemained:J
    invoke-static {v2, v0, v1}, Lcom/android/deskclock/TimerFragment;->access$302(Lcom/android/deskclock/TimerFragment;J)J

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/android/deskclock/TimerFragment$1;->this$0:Lcom/android/deskclock/TimerFragment;

    iget-object v3, p0, Lcom/android/deskclock/TimerFragment$1;->this$0:Lcom/android/deskclock/TimerFragment;

    #getter for: Lcom/android/deskclock/TimerFragment;->mTimeRemained:J
    invoke-static {v3}, Lcom/android/deskclock/TimerFragment;->access$300(Lcom/android/deskclock/TimerFragment;)J

    move-result-wide v3

    #calls: Lcom/android/deskclock/TimerFragment;->startTimer(J)V
    invoke-static {v2, v3, v4}, Lcom/android/deskclock/TimerFragment;->access$400(Lcom/android/deskclock/TimerFragment;J)V

    .line 99
    return-void
.end method
