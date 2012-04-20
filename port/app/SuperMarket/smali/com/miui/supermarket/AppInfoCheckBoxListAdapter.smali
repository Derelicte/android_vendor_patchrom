.class public abstract Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;
.super Lcom/miui/supermarket/AppInfoListAdapter;
.source "AppInfoCheckBoxListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/supermarket/AppInfoCheckBoxListAdapter$MyAppInfoCheckBoxAdapterHelper;
    }
.end annotation


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field protected mHelper:Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 1
    .parameter "context"
    .parameter "appInfoList"
    .parameter "layoutId"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/supermarket/AppInfoListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 13
    const-string v0, "AppInfoCheckBoxListAdapter"

    iput-object v0, p0, Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;->LOGTAG:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;->mHelper:Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;

    .line 18
    new-instance v0, Lcom/miui/supermarket/AppInfoCheckBoxListAdapter$MyAppInfoCheckBoxAdapterHelper;

    invoke-direct {v0, p0, p1}, Lcom/miui/supermarket/AppInfoCheckBoxListAdapter$MyAppInfoCheckBoxAdapterHelper;-><init>(Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;->mHelper:Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;

    .line 19
    return-void
.end method


# virtual methods
.method public downloadSelectedApps()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;->mHelper:Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;

    invoke-virtual {v0}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->downloadSelectedApps()V

    .line 71
    return-void
.end method

.method protected abstract getInstallMenu()Landroid/view/MenuItem;
.end method

.method protected abstract getInstallMenuInitTextId()I
.end method

.method protected getViewInitializor(Lcom/miui/supermarket/AppInfo;Landroid/view/View;Landroid/content/Context;)Lcom/miui/supermarket/AppInfoViewInitializor;
    .locals 2
    .parameter "info"
    .parameter "view"
    .parameter "context"

    .prologue
    .line 42
    new-instance v0, Lcom/miui/supermarket/AppInfoCheckBoxViewInitializor;

    iget-object v1, p0, Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;->mHelper:Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/miui/supermarket/AppInfoCheckBoxViewInitializor;-><init>(Lcom/miui/supermarket/AppInfo;Landroid/view/View;Landroid/content/Context;Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;)V

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 47
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-virtual {p0, p3}, Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/supermarket/AppInfo;

    .line 52
    .local v0, info:Lcom/miui/supermarket/AppInfo;
    iget-object v1, p0, Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;->mHelper:Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;

    invoke-virtual {v1, v0}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->changeSelect(Lcom/miui/supermarket/AppInfo;)V

    .line 53
    iget-object v1, p0, Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;->mHelper:Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;

    iget-object v2, v0, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;->mHelper:Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;

    invoke-virtual {v3, v0}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->newVersionInstalled(Lcom/miui/supermarket/AppInfo;)Z

    move-result v3

    invoke-virtual {v1, p2, v2, v3}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->setCheckBoxIcon(Landroid/view/View;Ljava/lang/String;Z)V

    .line 54
    invoke-virtual {p0}, Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;->refreshInstallMenuText()V

    goto :goto_0
.end method

.method public onPackageInstalled(Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;->mHelper:Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;

    invoke-virtual {v0, p1}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->onPackageInstalled(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;->mHelper:Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;

    invoke-virtual {v0, p1}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->onPackageRemoved(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public preSelectApps()V
    .locals 4

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;->getCount()I

    move-result v2

    .line 23
    .local v2, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 24
    invoke-virtual {p0, v0}, Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/supermarket/AppInfo;

    .line 25
    .local v1, info:Lcom/miui/supermarket/AppInfo;
    invoke-virtual {p0, v1}, Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;->preSelectable(Lcom/miui/supermarket/AppInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    iget-object v3, p0, Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;->mHelper:Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;

    invoke-virtual {v3, v1}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->selectApp(Lcom/miui/supermarket/AppInfo;)V

    .line 23
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    .end local v1           #info:Lcom/miui/supermarket/AppInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;->refreshInstallMenuText()V

    .line 31
    return-void
.end method

.method protected abstract preSelectable(Lcom/miui/supermarket/AppInfo;)Z
.end method

.method protected refreshInstallMenuText()V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;->getInstallMenu()Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;->getInstallMenuInitTextId()I

    move-result v2

    iget-object v3, p0, Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;->mHelper:Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;

    iget-object v3, v3, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->mSelectedApps:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/supermarket/util/SuperMarketUtil;->setNumberMenuItemAppearance(Landroid/content/Context;Landroid/view/MenuItem;II)V

    .line 67
    return-void
.end method

.method public removeDownloadingApp(Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;->mHelper:Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;

    invoke-virtual {v0, p1}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->removeFromDownloading(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/miui/supermarket/AppInfoCheckBoxListAdapter;->notifyDataSetChanged()V

    .line 38
    return-void
.end method
