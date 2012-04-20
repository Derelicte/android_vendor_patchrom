.class public abstract Lcom/miui/supermarket/CheckBoxListActivity;
.super Lcom/miui/supermarket/BaseActivity;
.source "CheckBoxListActivity.java"

# interfaces
.implements Lcom/miui/supermarket/ErrorObserver;
.implements Lcom/miui/supermarket/ErrorProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/supermarket/CheckBoxListActivity$MyPackageMonitor;,
        Lcom/miui/supermarket/CheckBoxListActivity$GetAppInfoTask;,
        Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;
    }
.end annotation


# instance fields
.field protected mAdapter:Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;

.field protected mAppInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/supermarket/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile mIsDownloading:Z

.field private mMenu:Landroid/view/Menu;

.field private mPackageMonitor:Lcom/miui/supermarket/CheckBoxListActivity$MyPackageMonitor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Lcom/miui/supermarket/BaseActivity;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/miui/supermarket/CheckBoxListActivity;->mMenu:Landroid/view/Menu;

    .line 22
    iput-object v1, p0, Lcom/miui/supermarket/CheckBoxListActivity;->mAdapter:Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/supermarket/CheckBoxListActivity;->mAppInfoList:Ljava/util/ArrayList;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/supermarket/CheckBoxListActivity;->mIsDownloading:Z

    .line 25
    iput-object v1, p0, Lcom/miui/supermarket/CheckBoxListActivity;->mPackageMonitor:Lcom/miui/supermarket/CheckBoxListActivity$MyPackageMonitor;

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/miui/supermarket/CheckBoxListActivity;)Landroid/view/Menu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/supermarket/CheckBoxListActivity;->mMenu:Landroid/view/Menu;

    return-object v0
.end method


# virtual methods
.method protected getAdapter()Lcom/miui/supermarket/SuperMarketBaseListAdapter;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/miui/supermarket/CheckBoxListActivity;->mAdapter:Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;

    return-object v0
.end method

.method protected abstract getAppInfoDownloadingTask()Lcom/miui/supermarket/ListViewContentRequestTask;
.end method

.method protected abstract getInstallMenuItemResourceId()I
.end method

.method protected abstract getInstallMenuItemTextResourceId()I
.end method

.method protected abstract getMenuResourceId()I
.end method

.method protected abstract getTitleResourceId()I
.end method

.method protected handleMessageImpl(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 99
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 109
    invoke-super {p0, p1}, Lcom/miui/supermarket/BaseActivity;->handleMessageImpl(Landroid/os/Message;)V

    .line 111
    :goto_0
    return-void

    .line 101
    :pswitch_0
    invoke-static {p0, p1, p0}, Lcom/miui/supermarket/util/ErrorUtil;->processGettingPathError(Landroid/content/Context;Landroid/os/Message;Lcom/miui/supermarket/ErrorProcessor;)V

    goto :goto_0

    .line 105
    :pswitch_1
    invoke-static {p0, p1, p0}, Lcom/miui/supermarket/util/ErrorUtil;->processPackageInstallError(Landroid/content/Context;Landroid/os/Message;Lcom/miui/supermarket/ErrorProcessor;)V

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected needRequestData()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/miui/supermarket/CheckBoxListActivity;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public obtainErrorMessage(I)Landroid/os/Message;
    .locals 1
    .parameter "msgId"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/miui/supermarket/CheckBoxListActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v0, p1}, Lcom/miui/supermarket/util/ErrorUtil;->obtainMessage(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 29
    invoke-super {p0, p1}, Lcom/miui/supermarket/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/miui/supermarket/CheckBoxListActivity;->getTitleResourceId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/supermarket/CheckBoxListActivity;->setTitle(I)V

    .line 31
    invoke-virtual {p0}, Lcom/miui/supermarket/CheckBoxListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 33
    new-instance v0, Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;

    iget-object v1, p0, Lcom/miui/supermarket/CheckBoxListActivity;->mAppInfoList:Ljava/util/ArrayList;

    const v2, 0x7f030004

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;-><init>(Lcom/miui/supermarket/CheckBoxListActivity;Lcom/miui/supermarket/BaseActivity;Ljava/util/ArrayList;I)V

    iput-object v0, p0, Lcom/miui/supermarket/CheckBoxListActivity;->mAdapter:Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;

    .line 34
    iget-object v0, p0, Lcom/miui/supermarket/CheckBoxListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/supermarket/CheckBoxListActivity;->mAdapter:Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 36
    new-instance v0, Lcom/miui/supermarket/CheckBoxListActivity$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/miui/supermarket/CheckBoxListActivity$MyPackageMonitor;-><init>(Lcom/miui/supermarket/CheckBoxListActivity;)V

    iput-object v0, p0, Lcom/miui/supermarket/CheckBoxListActivity;->mPackageMonitor:Lcom/miui/supermarket/CheckBoxListActivity$MyPackageMonitor;

    .line 37
    iget-object v0, p0, Lcom/miui/supermarket/CheckBoxListActivity;->mPackageMonitor:Lcom/miui/supermarket/CheckBoxListActivity$MyPackageMonitor;

    invoke-virtual {v0, p0, v3}, Lcom/miui/supermarket/CheckBoxListActivity$MyPackageMonitor;->register(Landroid/content/Context;Z)V

    .line 39
    invoke-static {p0}, Lcom/miui/supermarket/util/ErrorUtil;->registerErrorObserver(Lcom/miui/supermarket/ErrorObserver;)V

    .line 40
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/miui/supermarket/CheckBoxListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 71
    .local v0, inflator:Landroid/view/MenuInflater;
    invoke-virtual {p0}, Lcom/miui/supermarket/CheckBoxListActivity;->getMenuResourceId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 72
    iput-object p1, p0, Lcom/miui/supermarket/CheckBoxListActivity;->mMenu:Landroid/view/Menu;

    .line 73
    const/4 v1, 0x1

    return v1
.end method

.method protected onDataRequest()V
    .locals 2

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/miui/supermarket/CheckBoxListActivity;->mIsDownloading:Z

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/miui/supermarket/CheckBoxListActivity;->getAppInfoDownloadingTask()Lcom/miui/supermarket/ListViewContentRequestTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/supermarket/ListViewContentRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 66
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/miui/supermarket/BaseActivity;->onDestroy()V

    .line 45
    iget-object v0, p0, Lcom/miui/supermarket/CheckBoxListActivity;->mPackageMonitor:Lcom/miui/supermarket/CheckBoxListActivity$MyPackageMonitor;

    invoke-virtual {v0}, Lcom/miui/supermarket/CheckBoxListActivity$MyPackageMonitor;->unregister()V

    .line 46
    invoke-static {p0}, Lcom/miui/supermarket/util/ErrorUtil;->unregisterErrorObserver(Lcom/miui/supermarket/ErrorObserver;)V

    .line 47
    return-void
.end method

.method public onGetPathError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"
    .parameter "displayName"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/miui/supermarket/CheckBoxListActivity;->mAdapter:Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;

    iget-object v0, v0, Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;->mHelper:Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;

    invoke-virtual {v0, p1, p2}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->onGetPathError(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 78
    const/4 v1, 0x0

    .line 79
    .local v1, ret:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 80
    .local v0, itemId:I
    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/miui/supermarket/CheckBoxListActivity;->finish()V

    .line 82
    const/4 v1, 0x1

    .line 89
    :goto_0
    return v1

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/miui/supermarket/CheckBoxListActivity;->getInstallMenuItemResourceId()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/miui/supermarket/CheckBoxListActivity;->mAdapter:Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;

    invoke-virtual {v2}, Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;->downloadSelectedApps()V

    .line 85
    const/4 v1, 0x1

    goto :goto_0

    .line 87
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/supermarket/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPackageInstallError(Ljava/lang/String;I)V
    .locals 1
    .parameter "pkgName"
    .parameter "failCode"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/miui/supermarket/CheckBoxListActivity;->mAdapter:Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/miui/supermarket/CheckBoxListActivity;->mAdapter:Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;->removeDownloadingApp(Ljava/lang/String;)V

    .line 202
    :cond_0
    return-void
.end method

.method protected abstract preSelectable(Lcom/miui/supermarket/AppInfo;)Z
.end method

.method public sendErrorMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/miui/supermarket/CheckBoxListActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v0, p1}, Lcom/miui/supermarket/util/ErrorUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 190
    return-void
.end method
