.class Lcom/android/monitor/NetworkMonitor$2;
.super Landroid/os/AsyncTask;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/monitor/NetworkMonitor;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/monitor/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/android/monitor/NetworkMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 454
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/monitor/NetworkMonitor$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    iget-object v1, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor;->access$100(Lcom/android/monitor/NetworkMonitor;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mUidInfos:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/monitor/NetworkMonitor;->access$1400(Lcom/android/monitor/NetworkMonitor;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/monitor/NetworkMonitor;->access$100(Lcom/android/monitor/NetworkMonitor;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    #calls: Lcom/android/monitor/NetworkMonitor;->buildUidInfoList(Landroid/content/Context;Landroid/util/SparseArray;Landroid/content/pm/PackageManager;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/monitor/NetworkMonitor;->access$1500(Lcom/android/monitor/NetworkMonitor;Landroid/content/Context;Landroid/util/SparseArray;Landroid/content/pm/PackageManager;)V

    .line 466
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 454
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/monitor/NetworkMonitor$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .parameter "result"

    .prologue
    const/4 v5, 0x0

    .line 471
    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mTrafficTitle:Landroid/view/View;
    invoke-static {v3}, Lcom/android/monitor/NetworkMonitor;->access$1600(Lcom/android/monitor/NetworkMonitor;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 474
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mUidInfos:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/monitor/NetworkMonitor;->access$1400(Lcom/android/monitor/NetworkMonitor;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 475
    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mUidInfos:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/monitor/NetworkMonitor;->access$1400(Lcom/android/monitor/NetworkMonitor;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 476
    .local v1, uid:I
    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mUidInfos:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/monitor/NetworkMonitor;->access$1400(Lcom/android/monitor/NetworkMonitor;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/monitor/net/UidInfo;

    .line 477
    .local v2, uidInfo:Lcom/android/monitor/net/UidInfo;
    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mTrafficService:Lcom/android/monitor/net/TrafficService;
    invoke-static {v3}, Lcom/android/monitor/NetworkMonitor;->access$1700(Lcom/android/monitor/NetworkMonitor;)Lcom/android/monitor/net/TrafficService;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/monitor/net/TrafficService;->getUidStat(Lcom/android/monitor/net/UidInfo;)V

    .line 474
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    .end local v1           #uid:I
    .end local v2           #uidInfo:Lcom/android/monitor/net/UidInfo;
    :cond_0
    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mUidInfoAdapter:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;
    invoke-static {v3}, Lcom/android/monitor/NetworkMonitor;->access$700(Lcom/android/monitor/NetworkMonitor;)Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mUidInfos:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/monitor/NetworkMonitor;->access$1400(Lcom/android/monitor/NetworkMonitor;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->refresh(Landroid/util/SparseArray;)V

    .line 482
    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    #setter for: Lcom/android/monitor/NetworkMonitor;->mIsUpdate:Z
    invoke-static {v3, v5}, Lcom/android/monitor/NetworkMonitor;->access$1302(Lcom/android/monitor/NetworkMonitor;Z)Z

    .line 483
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    const/4 v1, 0x1

    #setter for: Lcom/android/monitor/NetworkMonitor;->mIsUpdate:Z
    invoke-static {v0, v1}, Lcom/android/monitor/NetworkMonitor;->access$1302(Lcom/android/monitor/NetworkMonitor;Z)Z

    .line 459
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mUidInfos:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/monitor/NetworkMonitor;->access$1400(Lcom/android/monitor/NetworkMonitor;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 460
    return-void
.end method
