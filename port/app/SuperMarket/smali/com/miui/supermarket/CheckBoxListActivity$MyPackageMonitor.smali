.class Lcom/miui/supermarket/CheckBoxListActivity$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "CheckBoxListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/supermarket/CheckBoxListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/supermarket/CheckBoxListActivity;


# direct methods
.method constructor <init>(Lcom/miui/supermarket/CheckBoxListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/miui/supermarket/CheckBoxListActivity$MyPackageMonitor;->this$0:Lcom/miui/supermarket/CheckBoxListActivity;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 159
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageAdded(Ljava/lang/String;I)V

    .line 160
    iget-object v0, p0, Lcom/miui/supermarket/CheckBoxListActivity$MyPackageMonitor;->this$0:Lcom/miui/supermarket/CheckBoxListActivity;

    iget-object v0, v0, Lcom/miui/supermarket/CheckBoxListActivity;->mAdapter:Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/miui/supermarket/CheckBoxListActivity$MyPackageMonitor;->this$0:Lcom/miui/supermarket/CheckBoxListActivity;

    iget-object v0, v0, Lcom/miui/supermarket/CheckBoxListActivity;->mAdapter:Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;->onPackageInstalled(Ljava/lang/String;)V

    .line 163
    :cond_0
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 175
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    .line 176
    iget-object v0, p0, Lcom/miui/supermarket/CheckBoxListActivity$MyPackageMonitor;->this$0:Lcom/miui/supermarket/CheckBoxListActivity;

    iget-object v0, v0, Lcom/miui/supermarket/CheckBoxListActivity;->mAdapter:Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/miui/supermarket/CheckBoxListActivity$MyPackageMonitor;->this$0:Lcom/miui/supermarket/CheckBoxListActivity;

    iget-object v0, v0, Lcom/miui/supermarket/CheckBoxListActivity;->mAdapter:Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;->onPackageRemoved(Ljava/lang/String;)V

    .line 179
    :cond_0
    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 167
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageAdded(Ljava/lang/String;I)V

    .line 168
    iget-object v0, p0, Lcom/miui/supermarket/CheckBoxListActivity$MyPackageMonitor;->this$0:Lcom/miui/supermarket/CheckBoxListActivity;

    iget-object v0, v0, Lcom/miui/supermarket/CheckBoxListActivity;->mAdapter:Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/miui/supermarket/CheckBoxListActivity$MyPackageMonitor;->this$0:Lcom/miui/supermarket/CheckBoxListActivity;

    iget-object v0, v0, Lcom/miui/supermarket/CheckBoxListActivity;->mAdapter:Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;->onPackageInstalled(Ljava/lang/String;)V

    .line 171
    :cond_0
    return-void
.end method
