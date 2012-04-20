.class Lcom/miui/supermarket/AppManagementFragment$GetInstalledAppsTask;
.super Lcom/miui/supermarket/ListViewContentRequestTask;
.source "AppManagementFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/supermarket/AppManagementFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetInstalledAppsTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/supermarket/AppManagementFragment;


# direct methods
.method public constructor <init>(Lcom/miui/supermarket/AppManagementFragment;Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 1
    .parameter
    .parameter "activity"
    .parameter "downloadingView"
    .parameter "emptyView"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/miui/supermarket/AppManagementFragment$GetInstalledAppsTask;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    .line 188
    invoke-direct {p0, p2, p3, p4}, Lcom/miui/supermarket/ListViewContentRequestTask;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;)V

    .line 189
    const/4 v0, 0x1

    #setter for: Lcom/miui/supermarket/AppManagementFragment;->mIsDownloading:Z
    invoke-static {p1, v0}, Lcom/miui/supermarket/AppManagementFragment;->access$002(Lcom/miui/supermarket/AppManagementFragment;Z)Z

    .line 190
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;
    .locals 4
    .parameter "params"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/miui/supermarket/AppManagementFragment$GetInstalledAppsTask;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    #getter for: Lcom/miui/supermarket/AppManagementFragment;->mInstalledApps:Ljava/util/Map;
    invoke-static {v0}, Lcom/miui/supermarket/AppManagementFragment;->access$300(Lcom/miui/supermarket/AppManagementFragment;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/miui/supermarket/AppManagementFragment$GetInstalledAppsTask;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    iget-object v1, p0, Lcom/miui/supermarket/AppManagementFragment$GetInstalledAppsTask;->mActivity:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/supermarket/util/SuperMarketUtil;->getInstalledAppInfoList(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    #setter for: Lcom/miui/supermarket/AppManagementFragment;->mInstalledApps:Ljava/util/Map;
    invoke-static {v0, v1}, Lcom/miui/supermarket/AppManagementFragment;->access$302(Lcom/miui/supermarket/AppManagementFragment;Ljava/util/Map;)Ljava/util/Map;

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/miui/supermarket/AppManagementFragment$GetInstalledAppsTask;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    #getter for: Lcom/miui/supermarket/AppManagementFragment;->mInfoList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/miui/supermarket/AppManagementFragment;->access$400(Lcom/miui/supermarket/AppManagementFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/supermarket/AppManagementFragment$GetInstalledAppsTask;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    #getter for: Lcom/miui/supermarket/AppManagementFragment;->mInstalledApps:Ljava/util/Map;
    invoke-static {v1}, Lcom/miui/supermarket/AppManagementFragment;->access$300(Lcom/miui/supermarket/AppManagementFragment;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 212
    const-string v0, "AppManagementFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInfoList.size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/supermarket/AppManagementFragment$GetInstalledAppsTask;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    #getter for: Lcom/miui/supermarket/AppManagementFragment;->mInfoList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/miui/supermarket/AppManagementFragment;->access$400(Lcom/miui/supermarket/AppManagementFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/miui/supermarket/AppManagementFragment$GetInstalledAppsTask;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    #getter for: Lcom/miui/supermarket/AppManagementFragment;->mInfoList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/miui/supermarket/AppManagementFragment;->access$400(Lcom/miui/supermarket/AppManagementFragment;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/miui/supermarket/AppManagementFragment$SortByLocaleKey;

    iget-object v2, p0, Lcom/miui/supermarket/AppManagementFragment$GetInstalledAppsTask;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/miui/supermarket/AppManagementFragment$SortByLocaleKey;-><init>(Lcom/miui/supermarket/AppManagementFragment;Lcom/miui/supermarket/AppManagementFragment$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 214
    sget-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->OK:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/AppManagementFragment$GetInstalledAppsTask;->doInBackground([Ljava/lang/Void;)Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/miui/supermarket/AppManagementFragment$GetInstalledAppsTask;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    const/4 v1, 0x0

    #setter for: Lcom/miui/supermarket/AppManagementFragment;->mIsDownloading:Z
    invoke-static {v0, v1}, Lcom/miui/supermarket/AppManagementFragment;->access$002(Lcom/miui/supermarket/AppManagementFragment;Z)Z

    .line 195
    iget-object v0, p0, Lcom/miui/supermarket/AppManagementFragment$GetInstalledAppsTask;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    #calls: Lcom/miui/supermarket/AppManagementFragment;->showAppUpdateBar()V
    invoke-static {v0}, Lcom/miui/supermarket/AppManagementFragment;->access$100(Lcom/miui/supermarket/AppManagementFragment;)V

    .line 196
    invoke-super {p0, p1}, Lcom/miui/supermarket/ListViewContentRequestTask;->onPostExecute(Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;)V

    .line 197
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 186
    check-cast p1, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/AppManagementFragment$GetInstalledAppsTask;->onPostExecute(Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;)V

    return-void
.end method

.method protected onPostExecuteOK()V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/miui/supermarket/AppManagementFragment$GetInstalledAppsTask;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    #getter for: Lcom/miui/supermarket/AppManagementFragment;->mAdapter:Lcom/miui/supermarket/LocalAppInfoListAdapter;
    invoke-static {v0}, Lcom/miui/supermarket/AppManagementFragment;->access$200(Lcom/miui/supermarket/AppManagementFragment;)Lcom/miui/supermarket/LocalAppInfoListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/supermarket/LocalAppInfoListAdapter;->notifyDataSetChanged()V

    .line 203
    new-instance v0, Lcom/miui/supermarket/AppManagementFragment$GetLocalAppInfoListTask;

    iget-object v1, p0, Lcom/miui/supermarket/AppManagementFragment$GetInstalledAppsTask;->this$0:Lcom/miui/supermarket/AppManagementFragment;

    iget-object v2, p0, Lcom/miui/supermarket/AppManagementFragment$GetInstalledAppsTask;->mActivity:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/miui/supermarket/AppManagementFragment$GetLocalAppInfoListTask;-><init>(Lcom/miui/supermarket/AppManagementFragment;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/supermarket/AppManagementFragment$GetLocalAppInfoListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 204
    return-void
.end method
