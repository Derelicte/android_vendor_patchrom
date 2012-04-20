.class public abstract Lcom/miui/supermarket/CheckBoxListActivity$GetAppInfoTask;
.super Lcom/miui/supermarket/ListViewContentRequestTask;
.source "CheckBoxListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/supermarket/CheckBoxListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "GetAppInfoTask"
.end annotation


# instance fields
.field protected mInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/supermarket/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/supermarket/CheckBoxListActivity;


# direct methods
.method public constructor <init>(Lcom/miui/supermarket/CheckBoxListActivity;Lcom/miui/supermarket/BaseActivity;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 1
    .parameter
    .parameter "activity"
    .parameter "downloadingView"
    .parameter "emptyView"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/miui/supermarket/CheckBoxListActivity$GetAppInfoTask;->this$0:Lcom/miui/supermarket/CheckBoxListActivity;

    .line 138
    invoke-direct {p0, p2, p3, p4}, Lcom/miui/supermarket/ListViewContentRequestTask;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;)V

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/supermarket/CheckBoxListActivity$GetAppInfoTask;->mInfoList:Ljava/util/ArrayList;

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/miui/supermarket/CheckBoxListActivity;->mIsDownloading:Z

    .line 140
    return-void
.end method


# virtual methods
.method protected onPostExecute(Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/miui/supermarket/CheckBoxListActivity$GetAppInfoTask;->this$0:Lcom/miui/supermarket/CheckBoxListActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/supermarket/CheckBoxListActivity;->mIsDownloading:Z

    .line 152
    invoke-super {p0, p1}, Lcom/miui/supermarket/ListViewContentRequestTask;->onPostExecute(Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;)V

    .line 153
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 134
    check-cast p1, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/CheckBoxListActivity$GetAppInfoTask;->onPostExecute(Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;)V

    return-void
.end method

.method protected onPostExecuteOK()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/miui/supermarket/CheckBoxListActivity$GetAppInfoTask;->this$0:Lcom/miui/supermarket/CheckBoxListActivity;

    iget-object v0, v0, Lcom/miui/supermarket/CheckBoxListActivity;->mAppInfoList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/supermarket/CheckBoxListActivity$GetAppInfoTask;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 145
    iget-object v0, p0, Lcom/miui/supermarket/CheckBoxListActivity$GetAppInfoTask;->this$0:Lcom/miui/supermarket/CheckBoxListActivity;

    iget-object v0, v0, Lcom/miui/supermarket/CheckBoxListActivity;->mAdapter:Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;

    invoke-virtual {v0}, Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;->preSelectApps()V

    .line 146
    iget-object v0, p0, Lcom/miui/supermarket/CheckBoxListActivity$GetAppInfoTask;->this$0:Lcom/miui/supermarket/CheckBoxListActivity;

    iget-object v0, v0, Lcom/miui/supermarket/CheckBoxListActivity;->mAdapter:Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;

    invoke-virtual {v0}, Lcom/miui/supermarket/CheckBoxListActivity$MyAppInfoListAdapter;->notifyDataSetChanged()V

    .line 147
    return-void
.end method
