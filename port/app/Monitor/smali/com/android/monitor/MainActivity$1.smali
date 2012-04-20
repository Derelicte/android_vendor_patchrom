.class Lcom/android/monitor/MainActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/monitor/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/monitor/MainActivity;


# direct methods
.method constructor <init>(Lcom/android/monitor/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/monitor/MainActivity$1;->this$0:Lcom/android/monitor/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/monitor/MainActivity$1;->this$0:Lcom/android/monitor/MainActivity;

    #getter for: Lcom/android/monitor/MainActivity;->mTrafficFragment:Lcom/android/monitor/Traffic;
    invoke-static {v0}, Lcom/android/monitor/MainActivity;->access$000(Lcom/android/monitor/MainActivity;)Lcom/android/monitor/Traffic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/monitor/Traffic;->update()V

    .line 56
    iget-object v0, p0, Lcom/android/monitor/MainActivity$1;->this$0:Lcom/android/monitor/MainActivity;

    #getter for: Lcom/android/monitor/MainActivity;->mNetworkMonitorFragment:Lcom/android/monitor/NetworkMonitor;
    invoke-static {v0}, Lcom/android/monitor/MainActivity;->access$100(Lcom/android/monitor/MainActivity;)Lcom/android/monitor/NetworkMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/monitor/NetworkMonitor;->update()V

    .line 57
    return-void
.end method
