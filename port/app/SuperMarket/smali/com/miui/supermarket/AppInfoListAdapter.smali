.class public Lcom/miui/supermarket/AppInfoListAdapter;
.super Lcom/miui/supermarket/SuperMarketBaseListAdapter;
.source "AppInfoListAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 0
    .parameter "context"
    .parameter "appInfoList"
    .parameter "layoutId"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/supermarket/SuperMarketBaseListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 14
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 19
    if-nez p2, :cond_0

    .line 20
    iget-object v2, p0, Lcom/miui/supermarket/AppInfoListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Lcom/miui/supermarket/AppInfoListAdapter;->mLayoutId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 25
    .local v1, view:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/AppInfoListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/supermarket/AppInfo;

    .line 26
    .local v0, info:Lcom/miui/supermarket/AppInfo;
    iget-object v2, p0, Lcom/miui/supermarket/AppInfoListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/supermarket/AppInfoListAdapter;->getViewInitializor(Lcom/miui/supermarket/AppInfo;Landroid/view/View;Landroid/content/Context;)Lcom/miui/supermarket/AppInfoViewInitializor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/supermarket/AppInfoViewInitializor;->initialize()V

    .line 28
    return-object v1

    .line 22
    .end local v0           #info:Lcom/miui/supermarket/AppInfo;
    .end local v1           #view:Landroid/view/View;
    :cond_0
    move-object v1, p2

    .restart local v1       #view:Landroid/view/View;
    goto :goto_0
.end method

.method protected getViewInitializor(Lcom/miui/supermarket/AppInfo;Landroid/view/View;Landroid/content/Context;)Lcom/miui/supermarket/AppInfoViewInitializor;
    .locals 1
    .parameter "info"
    .parameter "view"
    .parameter "context"

    .prologue
    .line 36
    new-instance v0, Lcom/miui/supermarket/AppInfoViewInitializor;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/supermarket/AppInfoViewInitializor;-><init>(Lcom/miui/supermarket/AppInfo;Landroid/view/View;Landroid/content/Context;)V

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
