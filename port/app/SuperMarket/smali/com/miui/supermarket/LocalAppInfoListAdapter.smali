.class public Lcom/miui/supermarket/LocalAppInfoListAdapter;
.super Lcom/miui/supermarket/AppInfoListAdapter;
.source "LocalAppInfoListAdapter.java"


# instance fields
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

.field private mObsoleteApps:Ljava/util/Map;
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
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;ILjava/util/Map;)V
    .locals 1
    .parameter "context"
    .parameter "appInfoList"
    .parameter "layoutId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p4, obsoleteApps:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/supermarket/AppInfoListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/supermarket/LocalAppInfoListAdapter;->mObsoleteApps:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/supermarket/LocalAppInfoListAdapter;->mDownloadingApps:Ljava/util/Map;

    .line 20
    iput-object p4, p0, Lcom/miui/supermarket/LocalAppInfoListAdapter;->mObsoleteApps:Ljava/util/Map;

    .line 21
    return-void
.end method

.method private enterIntoDownloading(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"
    .parameter "displayName"

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/LocalAppInfoListAdapter;->isDownloading(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/miui/supermarket/LocalAppInfoListAdapter;->mDownloadingApps:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public downloadApps(Ljava/util/Map;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, apps:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    .local v0, downloadApps:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 31
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 32
    .local v3, key:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 33
    .local v4, value:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/miui/supermarket/LocalAppInfoListAdapter;->isDownloading(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 34
    invoke-direct {p0, v3, v4}, Lcom/miui/supermarket/LocalAppInfoListAdapter;->enterIntoDownloading(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 39
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 40
    invoke-virtual {p0}, Lcom/miui/supermarket/LocalAppInfoListAdapter;->notifyDataSetChanged()V

    .line 41
    new-instance v5, Lcom/miui/supermarket/DownloadAppsTask;

    iget-object v6, p0, Lcom/miui/supermarket/LocalAppInfoListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v0}, Lcom/miui/supermarket/DownloadAppsTask;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/miui/supermarket/DownloadAppsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 43
    :cond_2
    return-void
.end method

.method protected getViewInitializor(Lcom/miui/supermarket/AppInfo;Landroid/view/View;Landroid/content/Context;)Lcom/miui/supermarket/AppInfoViewInitializor;
    .locals 6
    .parameter "info"
    .parameter "view"
    .parameter "context"

    .prologue
    .line 25
    new-instance v0, Lcom/miui/supermarket/LocalAppInfoViewInitializor;

    iget-object v4, p0, Lcom/miui/supermarket/LocalAppInfoListAdapter;->mObsoleteApps:Ljava/util/Map;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/supermarket/LocalAppInfoViewInitializor;-><init>(Lcom/miui/supermarket/AppInfo;Landroid/view/View;Landroid/content/Context;Ljava/util/Map;Lcom/miui/supermarket/LocalAppInfoListAdapter;)V

    return-object v0
.end method

.method isDownloading(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/miui/supermarket/LocalAppInfoListAdapter;->mDownloadingApps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onGetPathError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"
    .parameter "displayName"

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/LocalAppInfoListAdapter;->isDownloading(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/LocalAppInfoListAdapter;->removeFromDownloading(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/miui/supermarket/LocalAppInfoListAdapter;->notifyDataSetChanged()V

    .line 78
    :cond_0
    return-void
.end method

.method public onPackageInstalled(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/LocalAppInfoListAdapter;->isDownloading(Ljava/lang/String;)Z

    move-result v0

    .line 67
    .local v0, isPkgDownloading:Z
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/LocalAppInfoListAdapter;->removeFromDownloading(Ljava/lang/String;)V

    .line 70
    :cond_0
    return v0
.end method

.method public removeFromDownloading(Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/LocalAppInfoListAdapter;->isDownloading(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/miui/supermarket/LocalAppInfoListAdapter;->mDownloadingApps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
