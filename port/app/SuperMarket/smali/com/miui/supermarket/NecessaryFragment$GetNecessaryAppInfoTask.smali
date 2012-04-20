.class Lcom/miui/supermarket/NecessaryFragment$GetNecessaryAppInfoTask;
.super Lcom/miui/supermarket/ListViewContentRequestTask;
.source "NecessaryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/supermarket/NecessaryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetNecessaryAppInfoTask"
.end annotation


# instance fields
.field private mTempInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/supermarket/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/supermarket/NecessaryFragment;


# direct methods
.method public constructor <init>(Lcom/miui/supermarket/NecessaryFragment;Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "downloadingView"
    .parameter "emptyView"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/miui/supermarket/NecessaryFragment$GetNecessaryAppInfoTask;->this$0:Lcom/miui/supermarket/NecessaryFragment;

    .line 137
    invoke-direct {p0, p2, p3, p4}, Lcom/miui/supermarket/ListViewContentRequestTask;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;)V

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/supermarket/NecessaryFragment$GetNecessaryAppInfoTask;->mTempInfoList:Ljava/util/ArrayList;

    .line 138
    const/4 v0, 0x1

    #setter for: Lcom/miui/supermarket/NecessaryFragment;->mIsDownloading:Z
    invoke-static {p1, v0}, Lcom/miui/supermarket/NecessaryFragment;->access$002(Lcom/miui/supermarket/NecessaryFragment;Z)Z

    .line 139
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;
    .locals 5
    .parameter "params"

    .prologue
    .line 163
    iget-object v1, p0, Lcom/miui/supermarket/NecessaryFragment$GetNecessaryAppInfoTask;->mActivity:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/supermarket/util/URLHelper;->getNecessaryAppsURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppList"

    invoke-static {}, Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoFactory;->getInstance()Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/supermarket/NecessaryFragment$GetNecessaryAppInfoTask;->mTempInfoList:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3, v4}, Lcom/miui/supermarket/util/SuperMarketUtil;->getInfoListFromURL(Ljava/lang/String;Ljava/lang/String;Lcom/miui/supermarket/util/SuperMarketUtil$InfoTypeFactory;Ljava/util/ArrayList;)Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    move-result-object v0

    .line 169
    .local v0, resp:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/NecessaryFragment$GetNecessaryAppInfoTask;->doInBackground([Ljava/lang/Void;)Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment$GetNecessaryAppInfoTask;->this$0:Lcom/miui/supermarket/NecessaryFragment;

    const/4 v1, 0x0

    #setter for: Lcom/miui/supermarket/NecessaryFragment;->mIsDownloading:Z
    invoke-static {v0, v1}, Lcom/miui/supermarket/NecessaryFragment;->access$002(Lcom/miui/supermarket/NecessaryFragment;Z)Z

    .line 144
    invoke-super {p0, p1}, Lcom/miui/supermarket/ListViewContentRequestTask;->onPostExecute(Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;)V

    .line 145
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 134
    check-cast p1, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/NecessaryFragment$GetNecessaryAppInfoTask;->onPostExecute(Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;)V

    return-void
.end method

.method protected onPostExecuteOK()V
    .locals 4

    .prologue
    .line 149
    iget-object v2, p0, Lcom/miui/supermarket/NecessaryFragment$GetNecessaryAppInfoTask;->this$0:Lcom/miui/supermarket/NecessaryFragment;

    #getter for: Lcom/miui/supermarket/NecessaryFragment;->mInfoList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/miui/supermarket/NecessaryFragment;->access$100(Lcom/miui/supermarket/NecessaryFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/supermarket/NecessaryFragment$GetNecessaryAppInfoTask;->mTempInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 150
    iget-object v2, p0, Lcom/miui/supermarket/NecessaryFragment$GetNecessaryAppInfoTask;->this$0:Lcom/miui/supermarket/NecessaryFragment;

    #getter for: Lcom/miui/supermarket/NecessaryFragment;->mAdapter:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;
    invoke-static {v2}, Lcom/miui/supermarket/NecessaryFragment;->access$200(Lcom/miui/supermarket/NecessaryFragment;)Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    move-result-object v2

    #calls: Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->populateGroupInfo()V
    invoke-static {v2}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->access$300(Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;)V

    .line 151
    iget-object v2, p0, Lcom/miui/supermarket/NecessaryFragment$GetNecessaryAppInfoTask;->this$0:Lcom/miui/supermarket/NecessaryFragment;

    #getter for: Lcom/miui/supermarket/NecessaryFragment;->mAdapter:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;
    invoke-static {v2}, Lcom/miui/supermarket/NecessaryFragment;->access$200(Lcom/miui/supermarket/NecessaryFragment;)Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->notifyDataSetChanged()V

    .line 153
    iget-object v2, p0, Lcom/miui/supermarket/NecessaryFragment$GetNecessaryAppInfoTask;->this$0:Lcom/miui/supermarket/NecessaryFragment;

    #getter for: Lcom/miui/supermarket/NecessaryFragment;->mListView:Landroid/widget/ExpandableListView;
    invoke-static {v2}, Lcom/miui/supermarket/NecessaryFragment;->access$400(Lcom/miui/supermarket/NecessaryFragment;)Landroid/widget/ExpandableListView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/miui/supermarket/NecessaryFragment$GetNecessaryAppInfoTask;->this$0:Lcom/miui/supermarket/NecessaryFragment;

    #getter for: Lcom/miui/supermarket/NecessaryFragment;->mAdapter:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;
    invoke-static {v2}, Lcom/miui/supermarket/NecessaryFragment;->access$200(Lcom/miui/supermarket/NecessaryFragment;)Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->getGroupCount()I

    move-result v0

    .line 155
    .local v0, groupNumber:I
    const/4 v1, 0x0

    .local v1, groupPos:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 156
    iget-object v2, p0, Lcom/miui/supermarket/NecessaryFragment$GetNecessaryAppInfoTask;->this$0:Lcom/miui/supermarket/NecessaryFragment;

    #getter for: Lcom/miui/supermarket/NecessaryFragment;->mListView:Landroid/widget/ExpandableListView;
    invoke-static {v2}, Lcom/miui/supermarket/NecessaryFragment;->access$400(Lcom/miui/supermarket/NecessaryFragment;)Landroid/widget/ExpandableListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    .end local v0           #groupNumber:I
    .end local v1           #groupPos:I
    :cond_0
    return-void
.end method
