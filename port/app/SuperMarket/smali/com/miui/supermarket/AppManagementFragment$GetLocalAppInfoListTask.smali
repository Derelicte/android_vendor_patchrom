.class Lcom/miui/supermarket/AppManagementFragment$GetLocalAppInfoListTask;
.super Lcom/miui/supermarket/ServerRequestTask;
.source "AppManagementFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/supermarket/AppManagementFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetLocalAppInfoListTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/supermarket/AppManagementFragment;


# direct methods
.method public constructor <init>(Lcom/miui/supermarket/AppManagementFragment;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/miui/supermarket/AppManagementFragment$GetLocalAppInfoListTask;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    .line 220
    invoke-direct {p0, p2}, Lcom/miui/supermarket/ServerRequestTask;-><init>(Landroid/content/Context;)V

    .line 221
    const/4 v0, 0x1

    #setter for: Lcom/miui/supermarket/AppManagementFragment;->mIsDownloading:Z
    invoke-static {p1, v0}, Lcom/miui/supermarket/AppManagementFragment;->access$002(Lcom/miui/supermarket/AppManagementFragment;Z)Z

    .line 222
    return-void
.end method

.method private downloadNameList()Ljava/lang/String;
    .locals 4

    .prologue
    .line 267
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v2, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/miui/supermarket/AppManagementFragment$GetLocalAppInfoListTask;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    #getter for: Lcom/miui/supermarket/AppManagementFragment;->mInstalledApps:Ljava/util/Map;
    invoke-static {v3}, Lcom/miui/supermarket/AppManagementFragment;->access$300(Lcom/miui/supermarket/AppManagementFragment;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/supermarket/AppInfo;

    .line 269
    .local v1, info:Lcom/miui/supermarket/AppInfo;
    iget-object v3, v1, Lcom/miui/supermarket/AppInfo;->statistics:Lcom/miui/supermarket/AppInfo$CommentStatistics;

    iget-boolean v3, v3, Lcom/miui/supermarket/AppInfo$CommentStatistics;->downloaded:Z

    if-nez v3, :cond_0

    .line 270
    iget-object v3, v1, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    .end local v1           #info:Lcom/miui/supermarket/AppInfo;
    :cond_1
    const-string v3, ","

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;
    .locals 9
    .parameter "params"

    .prologue
    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v0, formList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/supermarket/util/SuperMarketUtil$PostableObject;>;"
    new-instance v6, Lcom/miui/supermarket/util/SuperMarketUtil$PostableStringObject;

    const-string v7, "apps"

    invoke-direct {p0}, Lcom/miui/supermarket/AppManagementFragment$GetLocalAppInfoListTask;->downloadNameList()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/miui/supermarket/util/SuperMarketUtil$PostableStringObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v4, serverAppInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/supermarket/AppInfo;>;"
    iget-object v6, p0, Lcom/miui/supermarket/AppManagementFragment$GetLocalAppInfoListTask;->mActivity:Landroid/content/Context;

    invoke-static {v6}, Lcom/miui/supermarket/util/URLHelper;->getLocalAppsURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "AppList"

    invoke-static {}, Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoFactory;->getInstance()Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoFactory;

    move-result-object v8

    invoke-static {v6, v0, v7, v8, v4}, Lcom/miui/supermarket/util/SuperMarketUtil;->postInfoToGetInfoList(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/supermarket/util/SuperMarketUtil$InfoTypeFactory;Ljava/util/ArrayList;)Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    move-result-object v3

    .line 250
    .local v3, resp:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;
    iget-object v6, p0, Lcom/miui/supermarket/AppManagementFragment$GetLocalAppInfoListTask;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    #getter for: Lcom/miui/supermarket/AppManagementFragment;->mInstalledApps:Ljava/util/Map;
    invoke-static {v6}, Lcom/miui/supermarket/AppManagementFragment;->access$300(Lcom/miui/supermarket/AppManagementFragment;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/supermarket/AppInfo;

    .line 251
    .local v2, info:Lcom/miui/supermarket/AppInfo;
    iget-object v6, v2, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoCache;->query(Ljava/lang/String;)Lcom/miui/supermarket/AppInfo;

    move-result-object v5

    .line 252
    .local v5, serverInfo:Lcom/miui/supermarket/AppInfo;
    if-eqz v5, :cond_0

    .line 256
    iget-object v6, v5, Lcom/miui/supermarket/AppInfo;->statistics:Lcom/miui/supermarket/AppInfo$CommentStatistics;

    iput-object v6, v2, Lcom/miui/supermarket/AppInfo;->statistics:Lcom/miui/supermarket/AppInfo$CommentStatistics;

    .line 258
    iget-object v6, v5, Lcom/miui/supermarket/AppInfo;->versionCode:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v2, Lcom/miui/supermarket/AppInfo;->versionCode:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v6, v7, :cond_0

    .line 259
    iget-object v6, p0, Lcom/miui/supermarket/AppManagementFragment$GetLocalAppInfoListTask;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    #getter for: Lcom/miui/supermarket/AppManagementFragment;->mObsoleteApps:Ljava/util/Map;
    invoke-static {v6}, Lcom/miui/supermarket/AppManagementFragment;->access$600(Lcom/miui/supermarket/AppManagementFragment;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, v5, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Lcom/miui/supermarket/AppInfo;->displayName:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 263
    .end local v2           #info:Lcom/miui/supermarket/AppInfo;
    .end local v5           #serverInfo:Lcom/miui/supermarket/AppInfo;
    :cond_1
    sget-object v6, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->OK:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    return-object v6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 218
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/AppManagementFragment$GetLocalAppInfoListTask;->doInBackground([Ljava/lang/Void;)Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/miui/supermarket/AppManagementFragment$GetLocalAppInfoListTask;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    const/4 v1, 0x0

    #setter for: Lcom/miui/supermarket/AppManagementFragment;->mIsDownloading:Z
    invoke-static {v0, v1}, Lcom/miui/supermarket/AppManagementFragment;->access$002(Lcom/miui/supermarket/AppManagementFragment;Z)Z

    .line 227
    invoke-super {p0, p1}, Lcom/miui/supermarket/ServerRequestTask;->onPostExecute(Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;)V

    .line 228
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 218
    check-cast p1, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/AppManagementFragment$GetLocalAppInfoListTask;->onPostExecute(Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;)V

    return-void
.end method

.method protected onPostExecuteOK()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/miui/supermarket/AppManagementFragment$GetLocalAppInfoListTask;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    #calls: Lcom/miui/supermarket/AppManagementFragment;->showAppUpdateBar()V
    invoke-static {v0}, Lcom/miui/supermarket/AppManagementFragment;->access$100(Lcom/miui/supermarket/AppManagementFragment;)V

    .line 233
    iget-object v0, p0, Lcom/miui/supermarket/AppManagementFragment$GetLocalAppInfoListTask;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    #getter for: Lcom/miui/supermarket/AppManagementFragment;->mAdapter:Lcom/miui/supermarket/LocalAppInfoListAdapter;
    invoke-static {v0}, Lcom/miui/supermarket/AppManagementFragment;->access$200(Lcom/miui/supermarket/AppManagementFragment;)Lcom/miui/supermarket/LocalAppInfoListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/supermarket/LocalAppInfoListAdapter;->notifyDataSetChanged()V

    .line 234
    return-void
.end method
