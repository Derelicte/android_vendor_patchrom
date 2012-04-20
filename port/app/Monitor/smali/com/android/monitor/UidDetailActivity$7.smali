.class Lcom/android/monitor/UidDetailActivity$7;
.super Ljava/lang/Object;
.source "UidDetailActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/monitor/UidDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/monitor/UidDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/monitor/UidDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/monitor/UidDetailActivity$7;->this$0:Lcom/android/monitor/UidDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/monitor/UidDetailActivity$7;->this$0:Lcom/android/monitor/UidDetailActivity;

    check-cast p2, Lcom/android/monitor/net/TrafficService$TrafficBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/android/monitor/net/TrafficService$TrafficBinder;->getService()Lcom/android/monitor/net/TrafficService;

    move-result-object v1

    #setter for: Lcom/android/monitor/UidDetailActivity;->mTrafficService:Lcom/android/monitor/net/TrafficService;
    invoke-static {v0, v1}, Lcom/android/monitor/UidDetailActivity;->access$402(Lcom/android/monitor/UidDetailActivity;Lcom/android/monitor/net/TrafficService;)Lcom/android/monitor/net/TrafficService;

    .line 261
    iget-object v0, p0, Lcom/android/monitor/UidDetailActivity$7;->this$0:Lcom/android/monitor/UidDetailActivity;

    #calls: Lcom/android/monitor/UidDetailActivity;->refreshTrafficInfo()V
    invoke-static {v0}, Lcom/android/monitor/UidDetailActivity;->access$700(Lcom/android/monitor/UidDetailActivity;)V

    .line 262
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/monitor/UidDetailActivity$7;->this$0:Lcom/android/monitor/UidDetailActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/monitor/UidDetailActivity;->mTrafficService:Lcom/android/monitor/net/TrafficService;
    invoke-static {v0, v1}, Lcom/android/monitor/UidDetailActivity;->access$402(Lcom/android/monitor/UidDetailActivity;Lcom/android/monitor/net/TrafficService;)Lcom/android/monitor/net/TrafficService;

    .line 266
    return-void
.end method
