.class public Lcom/miui/supermarket/EliteAppsActivity;
.super Lcom/miui/supermarket/CheckBoxListActivity;
.source "EliteAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/supermarket/EliteAppsActivity$MyGetAppInfoTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/miui/supermarket/CheckBoxListActivity;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method protected getAppInfoDownloadingTask()Lcom/miui/supermarket/ListViewContentRequestTask;
    .locals 3

    .prologue
    .line 85
    new-instance v0, Lcom/miui/supermarket/EliteAppsActivity$MyGetAppInfoTask;

    invoke-virtual {p0}, Lcom/miui/supermarket/EliteAppsActivity;->getDownloadingView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/supermarket/EliteAppsActivity;->getEmptyHintView()Landroid/widget/TextView;

    move-result-object v2

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/miui/supermarket/EliteAppsActivity$MyGetAppInfoTask;-><init>(Lcom/miui/supermarket/EliteAppsActivity;Lcom/miui/supermarket/BaseActivity;Landroid/view/View;Landroid/widget/TextView;)V

    return-object v0
.end method

.method protected getContentViewResId()I
    .locals 1

    .prologue
    .line 18
    const v0, 0x7f030010

    return v0
.end method

.method protected getInstallMenuItemResourceId()I
    .locals 1

    .prologue
    .line 75
    const v0, 0x7f0a004f

    return v0
.end method

.method protected getInstallMenuItemTextResourceId()I
    .locals 1

    .prologue
    .line 80
    const v0, 0x7f060008

    return v0
.end method

.method protected getListViewResId()I
    .locals 1

    .prologue
    .line 23
    const v0, 0x7f0a0022

    return v0
.end method

.method protected getMenuResourceId()I
    .locals 1

    .prologue
    .line 70
    const v0, 0x7f090002

    return v0
.end method

.method protected getTitleResourceId()I
    .locals 1

    .prologue
    .line 65
    const v0, 0x7f060019

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 33
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 43
    invoke-super {p0, p1}, Lcom/miui/supermarket/CheckBoxListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 35
    :pswitch_0
    iget-boolean v0, p0, Lcom/miui/supermarket/EliteAppsActivity;->mIsDownloading:Z

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/miui/supermarket/EliteAppsActivity;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 37
    iget-object v0, p0, Lcom/miui/supermarket/EliteAppsActivity;->mAdapter:Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;

    invoke-virtual {v0}, Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;->notifyDataSetChanged()V

    .line 38
    invoke-virtual {p0}, Lcom/miui/supermarket/EliteAppsActivity;->requestData()V

    .line 40
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a004c
        :pswitch_0
    .end packed-switch
.end method

.method protected preSelectable(Lcom/miui/supermarket/AppInfo;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/miui/supermarket/EliteAppsActivity;->mAdapter:Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;

    iget-object v0, v0, Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;->mHelper:Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;

    invoke-virtual {v0, p1}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->newVersionInstalled(Lcom/miui/supermarket/AppInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
