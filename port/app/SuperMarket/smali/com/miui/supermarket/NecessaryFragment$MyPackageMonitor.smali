.class Lcom/miui/supermarket/NecessaryFragment$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "NecessaryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/supermarket/NecessaryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/supermarket/NecessaryFragment;


# direct methods
.method constructor <init>(Lcom/miui/supermarket/NecessaryFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/miui/supermarket/NecessaryFragment$MyPackageMonitor;->this$0:Lcom/miui/supermarket/NecessaryFragment;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 521
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageAdded(Ljava/lang/String;I)V

    .line 522
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment$MyPackageMonitor;->this$0:Lcom/miui/supermarket/NecessaryFragment;

    #getter for: Lcom/miui/supermarket/NecessaryFragment;->mAdapter:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;
    invoke-static {v0}, Lcom/miui/supermarket/NecessaryFragment;->access$200(Lcom/miui/supermarket/NecessaryFragment;)Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->onPackageInstalled(Ljava/lang/String;)V

    .line 523
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 533
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    .line 534
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment$MyPackageMonitor;->this$0:Lcom/miui/supermarket/NecessaryFragment;

    #getter for: Lcom/miui/supermarket/NecessaryFragment;->mAdapter:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;
    invoke-static {v0}, Lcom/miui/supermarket/NecessaryFragment;->access$200(Lcom/miui/supermarket/NecessaryFragment;)Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->onPackageRemoved(Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 527
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateFinished(Ljava/lang/String;I)V

    .line 528
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment$MyPackageMonitor;->this$0:Lcom/miui/supermarket/NecessaryFragment;

    #getter for: Lcom/miui/supermarket/NecessaryFragment;->mAdapter:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;
    invoke-static {v0}, Lcom/miui/supermarket/NecessaryFragment;->access$200(Lcom/miui/supermarket/NecessaryFragment;)Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->onPackageInstalled(Ljava/lang/String;)V

    .line 529
    return-void
.end method
