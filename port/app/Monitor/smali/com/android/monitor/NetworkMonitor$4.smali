.class Lcom/android/monitor/NetworkMonitor$4;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 529
    iput-object p1, p0, Lcom/android/monitor/NetworkMonitor$4;->this$0:Lcom/android/monitor/NetworkMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$4;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/monitor/NetworkMonitor;->access$100(Lcom/android/monitor/NetworkMonitor;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/monitor/net/Firewall;->setEnabled(Landroid/content/Context;Z)V

    .line 533
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$4;->this$0:Lcom/android/monitor/NetworkMonitor;

    const/4 v1, 0x1

    #calls: Lcom/android/monitor/NetworkMonitor;->updateAccessImageRecesoure(Z)V
    invoke-static {v0, v1}, Lcom/android/monitor/NetworkMonitor;->access$800(Lcom/android/monitor/NetworkMonitor;Z)V

    .line 534
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$4;->this$0:Lcom/android/monitor/NetworkMonitor;

    const/4 v1, 0x0

    #calls: Lcom/android/monitor/NetworkMonitor;->updateAccessImageRecesoure(Z)V
    invoke-static {v0, v1}, Lcom/android/monitor/NetworkMonitor;->access$800(Lcom/android/monitor/NetworkMonitor;Z)V

    .line 535
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$4;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mUidInfoAdapter:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;
    invoke-static {v0}, Lcom/android/monitor/NetworkMonitor;->access$700(Lcom/android/monitor/NetworkMonitor;)Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->notifyDataSetChanged()V

    .line 536
    return-void
.end method
