.class Lcom/miui/supermarket/EliteAppsActivity$MyGetAppInfoTask;
.super Lcom/miui/supermarket/CheckBoxListActivity$GetAppInfoTask;
.source "EliteAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/supermarket/EliteAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGetAppInfoTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/supermarket/EliteAppsActivity;


# direct methods
.method public constructor <init>(Lcom/miui/supermarket/EliteAppsActivity;Lcom/miui/supermarket/BaseActivity;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter "activity"
    .parameter "downloadingView"
    .parameter "emptyHintView"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/miui/supermarket/EliteAppsActivity$MyGetAppInfoTask;->this$0:Lcom/miui/supermarket/EliteAppsActivity;

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/supermarket/CheckBoxListActivity$GetAppInfoTask;-><init>(Lcom/miui/supermarket/CheckBoxListActivity;Lcom/miui/supermarket/BaseActivity;Landroid/view/View;Landroid/widget/TextView;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;
    .locals 4
    .parameter "params"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/supermarket/EliteAppsActivity$MyGetAppInfoTask;->mActivity:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/supermarket/util/URLHelper;->getEliteAppsURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppList"

    invoke-static {}, Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoFactory;->getInstance()Lcom/miui/supermarket/util/SuperMarketUtil$AppInfoFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/supermarket/EliteAppsActivity$MyGetAppInfoTask;->mInfoList:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/supermarket/util/SuperMarketUtil;->getInfoListFromURL(Ljava/lang/String;Ljava/lang/String;Lcom/miui/supermarket/util/SuperMarketUtil$InfoTypeFactory;Ljava/util/ArrayList;)Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/EliteAppsActivity$MyGetAppInfoTask;->doInBackground([Ljava/lang/Void;)Lcom/miui/supermarket/util/ServerResponseUtil$ServerResponseCode;

    move-result-object v0

    return-object v0
.end method
