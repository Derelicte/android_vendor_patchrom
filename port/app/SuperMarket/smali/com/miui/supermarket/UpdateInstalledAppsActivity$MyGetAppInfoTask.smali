.class Lcom/miui/supermarket/UpdateInstalledAppsActivity$MyGetAppInfoTask;
.super Lcom/miui/supermarket/CheckBoxListActivity$GetAppInfoTask;
.source "UpdateInstalledAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/supermarket/UpdateInstalledAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGetAppInfoTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/supermarket/UpdateInstalledAppsActivity;


# direct methods
.method public constructor <init>(Lcom/miui/supermarket/UpdateInstalledAppsActivity;Lcom/miui/supermarket/BaseActivity;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter "activity"
    .parameter "downloadingView"
    .parameter "emptyView"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/miui/supermarket/UpdateInstalledAppsActivity$MyGetAppInfoTask;->this$0:Lcom/miui/supermarket/UpdateInstalledAppsActivity;

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/supermarket/CheckBoxListActivity$GetAppInfoTask;-><init>(Lcom/miui/supermarket/CheckBoxListActivity;Lcom/miui/supermarket/BaseActivity;Landroid/view/View;Landroid/widget/TextView;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;
    .locals 3
    .parameter "params"

    .prologue
    .line 43
    sget-object v0, Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;->OK:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    .line 44
    .local v0, resp:Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;
    invoke-static {}, Lcom/miui/supermarket/util/SuperMarketUtil;->getInstalledAppsUpdates()Ljava/util/ArrayList;

    move-result-object v1

    .line 45
    .local v1, updates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/supermarket/AppInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/miui/supermarket/UpdateInstalledAppsActivity$MyGetAppInfoTask;->mActivity:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/supermarket/util/SuperMarketUtil;->getInstalledAppsUpdatesFromServer(Landroid/content/Context;)Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    move-result-object v0

    .line 48
    :cond_0
    iget-object v2, p0, Lcom/miui/supermarket/UpdateInstalledAppsActivity$MyGetAppInfoTask;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 49
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/UpdateInstalledAppsActivity$MyGetAppInfoTask;->doInBackground([Ljava/lang/Void;)Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    move-result-object v0

    return-object v0
.end method
