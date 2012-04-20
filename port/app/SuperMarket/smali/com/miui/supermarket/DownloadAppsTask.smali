.class public Lcom/miui/supermarket/DownloadAppsTask;
.super Lcom/miui/supermarket/ServerRequestTask;
.source "DownloadAppsTask.java"


# instance fields
.field protected mAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/supermarket/util/SuperMarketUtil$DownloadAppItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mErrorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/supermarket/util/SuperMarketUtil$DownloadAppItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, apps:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/miui/supermarket/ServerRequestTask;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/miui/supermarket/DownloadAppsTask;->mAppList:Ljava/util/ArrayList;

    .line 17
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/miui/supermarket/DownloadAppsTask;->mErrorList:Ljava/util/ArrayList;

    .line 26
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 27
    .local v2, pkgName:Ljava/lang/String;
    new-instance v1, Lcom/miui/supermarket/util/SuperMarketUtil$DownloadAppItem;

    invoke-direct {v1}, Lcom/miui/supermarket/util/SuperMarketUtil$DownloadAppItem;-><init>()V

    .line 28
    .local v1, item:Lcom/miui/supermarket/util/SuperMarketUtil$DownloadAppItem;
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/miui/supermarket/util/SuperMarketUtil$DownloadAppItem;->url:Ljava/lang/String;

    .line 29
    iput-object v2, v1, Lcom/miui/supermarket/util/SuperMarketUtil$DownloadAppItem;->pkgName:Ljava/lang/String;

    .line 30
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v1, Lcom/miui/supermarket/util/SuperMarketUtil$DownloadAppItem;->displayName:Ljava/lang/String;

    .line 31
    iget-object v3, p0, Lcom/miui/supermarket/DownloadAppsTask;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    .end local v1           #item:Lcom/miui/supermarket/util/SuperMarketUtil$DownloadAppItem;
    .end local v2           #pkgName:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;
    .locals 6
    .parameter "params"

    .prologue
    .line 37
    iget-object v4, p0, Lcom/miui/supermarket/DownloadAppsTask;->mActivity:Landroid/content/Context;

    const-string v5, "download"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DownloadManager;

    .line 38
    .local v2, manager:Landroid/app/DownloadManager;
    sget-object v3, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->OK:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    .line 39
    .local v3, resp:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;
    iget-object v4, p0, Lcom/miui/supermarket/DownloadAppsTask;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/supermarket/util/SuperMarketUtil$DownloadAppItem;

    .line 40
    .local v1, item:Lcom/miui/supermarket/util/SuperMarketUtil$DownloadAppItem;
    sget-object v3, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->OK:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    .line 41
    iget-object v4, v1, Lcom/miui/supermarket/util/SuperMarketUtil$DownloadAppItem;->url:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 42
    iget-object v4, v1, Lcom/miui/supermarket/util/SuperMarketUtil$DownloadAppItem;->pkgName:Ljava/lang/String;

    invoke-static {v4}, Lcom/miui/supermarket/util/URLHelper;->getAppServerPathURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/miui/supermarket/util/SuperMarketUtil;->getAppServerPathFromURL(Ljava/lang/String;Lcom/miui/supermarket/util/SuperMarketUtil$DownloadAppItem;)Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    move-result-object v3

    .line 45
    :cond_0
    sget-object v4, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->OK:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    if-ne v3, v4, :cond_1

    iget-object v4, v1, Lcom/miui/supermarket/util/SuperMarketUtil$DownloadAppItem;->url:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 46
    invoke-static {v2, v1}, Lcom/miui/supermarket/util/SuperMarketUtil;->downloadOneApp(Landroid/app/DownloadManager;Lcom/miui/supermarket/util/SuperMarketUtil$DownloadAppItem;)V

    goto :goto_0

    .line 48
    :cond_1
    iget-object v4, v1, Lcom/miui/supermarket/util/SuperMarketUtil$DownloadAppItem;->pkgName:Ljava/lang/String;

    iget-object v5, v1, Lcom/miui/supermarket/util/SuperMarketUtil$DownloadAppItem;->displayName:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/miui/supermarket/DownloadAppsTask;->onGettingServerPathError(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v4, p0, Lcom/miui/supermarket/DownloadAppsTask;->mErrorList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    .end local v1           #item:Lcom/miui/supermarket/util/SuperMarketUtil$DownloadAppItem;
    :cond_2
    iget-object v4, p0, Lcom/miui/supermarket/DownloadAppsTask;->mAppList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/miui/supermarket/DownloadAppsTask;->mErrorList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 54
    iget-object v4, p0, Lcom/miui/supermarket/DownloadAppsTask;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .end local v3           #resp:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;
    :goto_1
    return-object v3

    .restart local v3       #resp:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;
    :cond_3
    sget-object v3, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->OK:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/DownloadAppsTask;->doInBackground([Ljava/lang/Void;)Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    move-result-object v0

    return-object v0
.end method

.method protected onGettingServerPathError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"
    .parameter "displayName"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/miui/supermarket/DownloadAppsTask;->mActivity:Landroid/content/Context;

    instance-of v0, v0, Lcom/miui/supermarket/ErrorObserver;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/miui/supermarket/DownloadAppsTask;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/miui/supermarket/ErrorObserver;

    invoke-static {v0, p1, p2}, Lcom/miui/supermarket/util/ErrorUtil;->notifyGettingPathError(Lcom/miui/supermarket/ErrorObserver;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

.method protected onPostExecuteOK()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method
