.class Lcom/android/monitor/NetworkMonitor$5;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/monitor/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/monitor/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/android/monitor/NetworkMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 562
    iput-object p1, p0, Lcom/android/monitor/NetworkMonitor$5;->this$0:Lcom/android/monitor/NetworkMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 565
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 566
    .local v0, isMobile:Z
    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor$5;->this$0:Lcom/android/monitor/NetworkMonitor;

    const/4 v3, 0x1

    #calls: Lcom/android/monitor/NetworkMonitor;->updateAccessImageRecesoure(ZZ)I
    invoke-static {v2, v0, v3}, Lcom/android/monitor/NetworkMonitor;->access$1800(Lcom/android/monitor/NetworkMonitor;ZZ)I

    move-result v1

    .line 567
    .local v1, mode:I
    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor$5;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mUidInfoAdapter:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;
    invoke-static {v2}, Lcom/android/monitor/NetworkMonitor;->access$700(Lcom/android/monitor/NetworkMonitor;)Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->enableMode(IZ)V

    .line 568
    return-void
.end method
