.class Lcom/android/monitor/NetworkMonitor$3;
.super Ljava/lang/Thread;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/monitor/NetworkMonitor;->applyOrSaveRules()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/monitor/NetworkMonitor;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/monitor/NetworkMonitor;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/monitor/NetworkMonitor$3;->this$0:Lcom/android/monitor/NetworkMonitor;

    iput-boolean p2, p0, Lcom/android/monitor/NetworkMonitor$3;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 492
    iget-boolean v0, p0, Lcom/android/monitor/NetworkMonitor$3;->val$enabled:Z

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$3;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/monitor/NetworkMonitor;->access$100(Lcom/android/monitor/NetworkMonitor;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/monitor/NetworkMonitor$3;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mUidInfos:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor;->access$1400(Lcom/android/monitor/NetworkMonitor;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/monitor/net/Firewall;->applyRules(Landroid/content/Context;Landroid/util/SparseArray;Z)Z

    .line 498
    :goto_0
    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$3;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/monitor/NetworkMonitor;->access$100(Lcom/android/monitor/NetworkMonitor;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/monitor/NetworkMonitor$3;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mUidInfos:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor;->access$1400(Lcom/android/monitor/NetworkMonitor;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/monitor/net/Firewall;->saveRules(Landroid/content/Context;Landroid/util/SparseArray;)V

    .line 496
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$3;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/monitor/NetworkMonitor;->access$100(Lcom/android/monitor/NetworkMonitor;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/monitor/net/Firewall;->purgeIptables(Landroid/content/Context;Z)Z

    goto :goto_0
.end method
