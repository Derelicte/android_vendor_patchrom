.class Lcom/android/monitor/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 292
    iput-object p1, p0, Lcom/android/monitor/MainActivity$2;->this$0:Lcom/android/monitor/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/monitor/MainActivity$2;->this$0:Lcom/android/monitor/MainActivity;

    check-cast p2, Lcom/android/monitor/net/TrafficService$TrafficBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/android/monitor/net/TrafficService$TrafficBinder;->getService()Lcom/android/monitor/net/TrafficService;

    move-result-object v1

    #setter for: Lcom/android/monitor/MainActivity;->mTrafficService:Lcom/android/monitor/net/TrafficService;
    invoke-static {v0, v1}, Lcom/android/monitor/MainActivity;->access$502(Lcom/android/monitor/MainActivity;Lcom/android/monitor/net/TrafficService;)Lcom/android/monitor/net/TrafficService;

    .line 295
    iget-object v0, p0, Lcom/android/monitor/MainActivity$2;->this$0:Lcom/android/monitor/MainActivity;

    #getter for: Lcom/android/monitor/MainActivity;->mTrafficFragment:Lcom/android/monitor/Traffic;
    invoke-static {v0}, Lcom/android/monitor/MainActivity;->access$000(Lcom/android/monitor/MainActivity;)Lcom/android/monitor/Traffic;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/monitor/MainActivity$2;->this$0:Lcom/android/monitor/MainActivity;

    #getter for: Lcom/android/monitor/MainActivity;->mTrafficFragment:Lcom/android/monitor/Traffic;
    invoke-static {v0}, Lcom/android/monitor/MainActivity;->access$000(Lcom/android/monitor/MainActivity;)Lcom/android/monitor/Traffic;

    move-result-object v0

    iget-object v1, p0, Lcom/android/monitor/MainActivity$2;->this$0:Lcom/android/monitor/MainActivity;

    #getter for: Lcom/android/monitor/MainActivity;->mTrafficService:Lcom/android/monitor/net/TrafficService;
    invoke-static {v1}, Lcom/android/monitor/MainActivity;->access$500(Lcom/android/monitor/MainActivity;)Lcom/android/monitor/net/TrafficService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/monitor/Traffic;->setTrafficService(Lcom/android/monitor/net/TrafficService;)V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/android/monitor/MainActivity$2;->this$0:Lcom/android/monitor/MainActivity;

    #getter for: Lcom/android/monitor/MainActivity;->mNetworkMonitorFragment:Lcom/android/monitor/NetworkMonitor;
    invoke-static {v0}, Lcom/android/monitor/MainActivity;->access$100(Lcom/android/monitor/MainActivity;)Lcom/android/monitor/NetworkMonitor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/android/monitor/MainActivity$2;->this$0:Lcom/android/monitor/MainActivity;

    #getter for: Lcom/android/monitor/MainActivity;->mNetworkMonitorFragment:Lcom/android/monitor/NetworkMonitor;
    invoke-static {v0}, Lcom/android/monitor/MainActivity;->access$100(Lcom/android/monitor/MainActivity;)Lcom/android/monitor/NetworkMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/monitor/MainActivity$2;->this$0:Lcom/android/monitor/MainActivity;

    #getter for: Lcom/android/monitor/MainActivity;->mTrafficService:Lcom/android/monitor/net/TrafficService;
    invoke-static {v1}, Lcom/android/monitor/MainActivity;->access$500(Lcom/android/monitor/MainActivity;)Lcom/android/monitor/net/TrafficService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/monitor/NetworkMonitor;->setTrafficService(Lcom/android/monitor/net/TrafficService;)V

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/android/monitor/MainActivity$2;->this$0:Lcom/android/monitor/MainActivity;

    #getter for: Lcom/android/monitor/MainActivity;->mTrafficService:Lcom/android/monitor/net/TrafficService;
    invoke-static {v0}, Lcom/android/monitor/MainActivity;->access$500(Lcom/android/monitor/MainActivity;)Lcom/android/monitor/net/TrafficService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/monitor/net/TrafficService;->refresh()V

    .line 302
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "className"

    .prologue
    .line 306
    return-void
.end method
