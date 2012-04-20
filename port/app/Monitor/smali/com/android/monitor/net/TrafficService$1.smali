.class Lcom/android/monitor/net/TrafficService$1;
.super Landroid/content/BroadcastReceiver;
.source "TrafficService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/monitor/net/TrafficService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/monitor/net/TrafficService;


# direct methods
.method constructor <init>(Lcom/android/monitor/net/TrafficService;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/monitor/net/TrafficService$1;->this$0:Lcom/android/monitor/net/TrafficService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 89
    const-string v0, "noConnectivity"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/monitor/net/TrafficService$1;->this$0:Lcom/android/monitor/net/TrafficService;

    #getter for: Lcom/android/monitor/net/TrafficService;->mHandler:Lcom/android/monitor/net/TrafficService$TrafficHandler;
    invoke-static {v0}, Lcom/android/monitor/net/TrafficService;->access$000(Lcom/android/monitor/net/TrafficService;)Lcom/android/monitor/net/TrafficService$TrafficHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/monitor/net/TrafficService$TrafficHandler;->removeMessages(I)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/monitor/net/TrafficService$1;->this$0:Lcom/android/monitor/net/TrafficService;

    invoke-virtual {v0}, Lcom/android/monitor/net/TrafficService;->refresh()V

    goto :goto_0
.end method
