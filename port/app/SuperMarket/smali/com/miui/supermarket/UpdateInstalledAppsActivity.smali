.class public Lcom/miui/supermarket/UpdateInstalledAppsActivity;
.super Lcom/miui/supermarket/CheckBoxListActivity;
.source "UpdateInstalledAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/supermarket/UpdateInstalledAppsActivity$MyGetAppInfoTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/miui/supermarket/CheckBoxListActivity;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method protected getAppInfoDownloadingTask()Lcom/miui/supermarket/ListViewContentRequestTask;
    .locals 3

    .prologue
    .line 75
    new-instance v0, Lcom/miui/supermarket/UpdateInstalledAppsActivity$MyGetAppInfoTask;

    invoke-virtual {p0}, Lcom/miui/supermarket/UpdateInstalledAppsActivity;->getDownloadingView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/supermarket/UpdateInstalledAppsActivity;->getEmptyHintView()Landroid/widget/TextView;

    move-result-object v2

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/miui/supermarket/UpdateInstalledAppsActivity$MyGetAppInfoTask;-><init>(Lcom/miui/supermarket/UpdateInstalledAppsActivity;Lcom/miui/supermarket/BaseActivity;Landroid/view/View;Landroid/widget/TextView;)V

    return-object v0
.end method

.method protected getContentViewResId()I
    .locals 1

    .prologue
    .line 23
    const v0, 0x7f030026

    return v0
.end method

.method protected getInstallMenuItemResourceId()I
    .locals 1

    .prologue
    .line 65
    const v0, 0x7f0a0052

    return v0
.end method

.method protected getInstallMenuItemTextResourceId()I
    .locals 1

    .prologue
    .line 70
    const v0, 0x7f06003b

    return v0
.end method

.method protected getListViewResId()I
    .locals 1

    .prologue
    .line 28
    const v0, 0x7f0a004a

    return v0
.end method

.method protected getMenuResourceId()I
    .locals 1

    .prologue
    .line 60
    const v0, 0x7f090008

    return v0
.end method

.method protected getTitleResourceId()I
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f06003a

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0}, Lcom/miui/supermarket/CheckBoxListActivity;->onDestroy()V

    .line 18
    invoke-static {}, Lcom/miui/supermarket/util/SuperMarketUtil;->resetInstalledAppsUpdates()V

    .line 19
    return-void
.end method

.method protected preSelectable(Lcom/miui/supermarket/AppInfo;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method
