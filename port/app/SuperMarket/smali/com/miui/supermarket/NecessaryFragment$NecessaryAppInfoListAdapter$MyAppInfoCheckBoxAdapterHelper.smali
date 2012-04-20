.class Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;
.super Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;
.source "NecessaryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAppInfoCheckBoxAdapterHelper"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 443
    iput-object p1, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;->this$1:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    .line 444
    invoke-direct {p0, p2}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;-><init>(Landroid/content/Context;)V

    .line 445
    return-void
.end method


# virtual methods
.method protected notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;->this$1:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    invoke-virtual {v0}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->notifyDataSetChanged()V

    .line 450
    return-void
.end method

.method public onGetPathError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "pkgName"
    .parameter "displayName"

    .prologue
    .line 459
    const/4 v5, -0x1

    .line 460
    .local v5, groupPosition:I
    const/4 v1, -0x1

    .line 461
    .local v1, childPosition:I
    const/4 v0, 0x0

    .line 464
    .local v0, childInfo:Lcom/miui/supermarket/AppInfo;
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;->isDownloading(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 465
    iget-object v6, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;->this$1:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    invoke-virtual {v6}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->getGroupCount()I

    move-result v4

    .line 467
    .local v4, groupCount:I
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    .line 468
    iget-object v6, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;->this$1:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    #getter for: Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mAppInfoGroups:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->access$1000(Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;

    .line 469
    .local v3, group:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;
    iget-object v6, v3, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 470
    .local v2, childrenCount:I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    .line 471
    iget-object v6, v3, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #childInfo:Lcom/miui/supermarket/AppInfo;
    check-cast v0, Lcom/miui/supermarket/AppInfo;

    .line 472
    .restart local v0       #childInfo:Lcom/miui/supermarket/AppInfo;
    iget-object v6, v0, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 480
    .end local v2           #childrenCount:I
    .end local v3           #group:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;
    .end local v4           #groupCount:I
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;->onGetPathError(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    if-eqz v0, :cond_1

    iget-object v6, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;->this$1:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    iget-object v6, v6, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->this$0:Lcom/miui/supermarket/NecessaryFragment;

    #getter for: Lcom/miui/supermarket/NecessaryFragment;->mListView:Landroid/widget/ExpandableListView;
    invoke-static {v6}, Lcom/miui/supermarket/NecessaryFragment;->access$400(Lcom/miui/supermarket/NecessaryFragment;)Landroid/widget/ExpandableListView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 484
    iget-object v6, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;->this$1:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    #calls: Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->setChildChecked(IILcom/miui/supermarket/AppInfo;)V
    invoke-static {v6, v5, v1, v0}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->access$600(Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;IILcom/miui/supermarket/AppInfo;)V

    .line 486
    :cond_1
    return-void

    .line 470
    .restart local v2       #childrenCount:I
    .restart local v3       #group:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;
    .restart local v4       #groupCount:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 467
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method protected onSelectChanged()V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;->this$1:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    iget-object v0, v0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->this$0:Lcom/miui/supermarket/NecessaryFragment;

    invoke-virtual {v0}, Lcom/miui/supermarket/NecessaryFragment;->updateActionModeMenuTitle()V

    .line 455
    return-void
.end method
