.class Lcom/android/deskclock/WorldClockFragment$1;
.super Ljava/lang/Object;
.source "WorldClockFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/WorldClockFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/WorldClockFragment;


# direct methods
.method constructor <init>(Lcom/android/deskclock/WorldClockFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/deskclock/WorldClockFragment$1;->this$0:Lcom/android/deskclock/WorldClockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 87
    iget-object v4, p0, Lcom/android/deskclock/WorldClockFragment$1;->this$0:Lcom/android/deskclock/WorldClockFragment;

    #getter for: Lcom/android/deskclock/WorldClockFragment;->mTickerStopped:Z
    invoke-static {v4}, Lcom/android/deskclock/WorldClockFragment;->access$000(Lcom/android/deskclock/WorldClockFragment;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 89
    .local v2, now:J
    rem-long v4, v2, v6

    sub-long v4, v6, v4

    add-long v0, v2, v4

    .line 90
    .local v0, next:J
    iget-object v4, p0, Lcom/android/deskclock/WorldClockFragment$1;->this$0:Lcom/android/deskclock/WorldClockFragment;

    #getter for: Lcom/android/deskclock/WorldClockFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/deskclock/WorldClockFragment;->access$200(Lcom/android/deskclock/WorldClockFragment;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/deskclock/WorldClockFragment$1;->this$0:Lcom/android/deskclock/WorldClockFragment;

    #getter for: Lcom/android/deskclock/WorldClockFragment;->mTicker:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/deskclock/WorldClockFragment;->access$100(Lcom/android/deskclock/WorldClockFragment;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
