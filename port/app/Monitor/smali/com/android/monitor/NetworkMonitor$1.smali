.class Lcom/android/monitor/NetworkMonitor$1;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/monitor/NetworkMonitor;->onActivityCreated(Landroid/os/Bundle;)V
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
    .line 299
    iput-object p1, p0, Lcom/android/monitor/NetworkMonitor$1;->this$0:Lcom/android/monitor/NetworkMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 302
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/monitor/net/UidInfo;

    .line 303
    if-nez v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 306
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 307
    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor$1;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/monitor/NetworkMonitor;->access$100(Lcom/android/monitor/NetworkMonitor;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/monitor/UidDetailActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 309
    invoke-static {v0}, Lcom/android/monitor/UidDetailActivity;->setUidInfo(Lcom/android/monitor/net/UidInfo;)V

    .line 310
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$1;->this$0:Lcom/android/monitor/NetworkMonitor;

    invoke-virtual {v0, v1}, Lcom/android/monitor/NetworkMonitor;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
