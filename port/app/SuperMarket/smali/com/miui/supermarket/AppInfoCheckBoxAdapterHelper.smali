.class public abstract Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;
.super Ljava/lang/Object;
.source "AppInfoCheckBoxAdapterHelper.java"


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDownloadingApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInstalledApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mSelectedApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "AppInfoCheckBoxAdapterHelper"

    iput-object v0, p0, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->LOGTAG:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->mContext:Landroid/content/Context;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->mInstalledApps:Ljava/util/Map;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->mSelectedApps:Ljava/util/Map;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->mDownloadingApps:Ljava/util/Map;

    .line 25
    iput-object p1, p0, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->mContext:Landroid/content/Context;

    .line 26
    iget-object v0, p0, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/supermarket/util/SuperMarketUtil;->getInstalledPackages(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->mInstalledApps:Ljava/util/Map;

    .line 27
    return-void
.end method

.method private enterIntoDownloading(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"
    .parameter "displayName"

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->isDownloading(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->mDownloadingApps:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private isAppInstalled(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->mInstalledApps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private removeFromInstalledApps(Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->isAppInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->mInstalledApps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_0
    return-void
.end method

.method private selectApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"
    .parameter "displayName"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->isAppSelected(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->isDownloading(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->mSelectedApps:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public changeSelect(Lcom/miui/supermarket/AppInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 105
    iget-object v0, p1, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->isAppSelected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->unSelectApp(Lcom/miui/supermarket/AppInfo;)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->selectApp(Lcom/miui/supermarket/AppInfo;)V

    goto :goto_0
.end method

.method public downloadSelectedApps()V
    .locals 5

    .prologue
    .line 150
    iget-object v2, p0, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->mSelectedApps:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 151
    iget-object v2, p0, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->mSelectedApps:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 152
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->enterIntoDownloading(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v2, Lcom/miui/supermarket/DownloadAppsTask;

    iget-object v3, p0, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->mSelectedApps:Ljava/util/Map;

    invoke-direct {v2, v3, v4}, Lcom/miui/supermarket/DownloadAppsTask;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/miui/supermarket/DownloadAppsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 155
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->unSelectAllApps(Z)V

    .line 157
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public getSelectedSize()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->mSelectedApps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public isAppInstalled(Lcom/miui/supermarket/AppInfo;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 134
    iget-object v0, p1, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->isAppInstalled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAppSelected(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->mSelectedApps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isDownloading(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->mDownloadingApps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLocalVersionNewer(Lcom/miui/supermarket/AppInfo;)Z
    .locals 2
    .parameter "info"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->mInstalledApps:Ljava/util/Map;

    iget-object v1, p1, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p1, Lcom/miui/supermarket/AppInfo;->versionCode:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected newVersionInstalled(Lcom/miui/supermarket/AppInfo;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->isAppInstalled(Lcom/miui/supermarket/AppInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->isLocalVersionNewer(Lcom/miui/supermarket/AppInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract notifyDataSetChanged()V
.end method

.method public onGetPathError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"
    .parameter "displayName"

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->isDownloading(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->removeFromDownloading(Ljava/lang/String;)V

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->selectApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->refreshOnSelectChanged()V

    .line 188
    :cond_0
    return-void
.end method

.method public onPackageInstalled(Ljava/lang/String;)V
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->removeFromDownloading(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/miui/supermarket/util/SuperMarketUtil;->getPkgInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 163
    .local v0, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 164
    invoke-direct {p0, p1}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->removeFromInstalledApps(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->mInstalledApps:Ljava/util/Map;

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->notifyDataSetChanged()V

    .line 169
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 0
    .parameter "pkgName"

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->removeFromInstalledApps(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->notifyDataSetChanged()V

    .line 174
    return-void
.end method

.method protected abstract onSelectChanged()V
.end method

.method public refreshOnSelectChanged()V
    .locals 0

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->notifyDataSetChanged()V

    .line 118
    invoke-virtual {p0}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->onSelectChanged()V

    .line 119
    return-void
.end method

.method public removeFromDownloading(Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->isDownloading(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->mDownloadingApps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public selectApp(Lcom/miui/supermarket/AppInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 73
    iget-object v0, p1, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/supermarket/AppInfo;->displayName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->selectApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public setCheckBoxIcon(Landroid/view/View;Ljava/lang/String;Z)V
    .locals 4
    .parameter "view"
    .parameter "pkgName"
    .parameter "localVersionNewer"

    .prologue
    .line 30
    const/4 v1, 0x0

    .line 31
    .local v1, isEnabled:Z
    const/4 v2, 0x0

    .line 32
    .local v2, selectResId:I
    invoke-virtual {p0, p2}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->isDownloading(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    const v2, 0x7f020004

    .line 34
    const/4 v1, 0x0

    .line 46
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 48
    const v3, 0x7f0a0005

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 49
    .local v0, checkBoxImage:Landroid/widget/ImageView;
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    return-void

    .line 35
    .end local v0           #checkBoxImage:Landroid/widget/ImageView;
    :cond_0
    if-eqz p3, :cond_1

    .line 36
    const v2, 0x7f02001b

    .line 37
    const/4 v1, 0x0

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p0, p2}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->isAppSelected(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 39
    const v2, 0x3020131

    .line 40
    const/4 v1, 0x1

    goto :goto_0

    .line 42
    :cond_2
    const v2, 0x3020132

    .line 43
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public unSelectAllApps(Z)V
    .locals 1
    .parameter "refreshUI"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->mSelectedApps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->mSelectedApps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 99
    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->refreshOnSelectChanged()V

    goto :goto_0
.end method

.method unSelectApp(Lcom/miui/supermarket/AppInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 85
    iget-object v0, p1, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    .line 86
    .local v0, pkgName:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->isAppSelected(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->mSelectedApps:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
