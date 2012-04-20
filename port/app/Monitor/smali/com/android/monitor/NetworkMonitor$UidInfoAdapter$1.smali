.class Lcom/android/monitor/NetworkMonitor$UidInfoAdapter$1;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;


# direct methods
.method constructor <init>(Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter$1;->this$1:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/monitor/net/UidInfo;

    .line 207
    .local v0, u:Lcom/android/monitor/net/UidInfo;
    iput-boolean p2, v0, Lcom/android/monitor/net/UidInfo;->mEnableMobile:Z

    .line 208
    iget-object v1, p0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter$1;->this$1:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    const/4 v2, 0x1

    #calls: Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->setAccessMode(ZZ)V
    invoke-static {v1, v2, p2}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->access$900(Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;ZZ)V

    .line 209
    return-void
.end method
