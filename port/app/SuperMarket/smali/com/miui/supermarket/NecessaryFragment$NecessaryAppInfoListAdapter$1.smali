.class Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$1;
.super Ljava/lang/Object;
.source "NecessaryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

.field final synthetic val$finalGroupPosition:I

.field final synthetic val$group:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;


# direct methods
.method constructor <init>(Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$1;->this$1:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    iput-object p2, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$1;->val$group:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;

    iput p3, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$1;->val$finalGroupPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 256
    iget-object v5, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$1;->val$group:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;

    iget-object v5, v5, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;->mStatus:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    sget-object v6, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;->SELECTED:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    if-ne v5, v6, :cond_1

    .line 257
    iget-object v5, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$1;->val$group:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;

    sget-object v6, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;->UNSELECTED:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    iput-object v6, v5, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;->mStatus:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    :goto_0
    move-object v0, p1

    .line 264
    check-cast v0, Landroid/widget/ImageView;

    .line 265
    .local v0, cbx:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$1;->val$group:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;

    iget-object v5, v5, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;->mStatus:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    invoke-static {v5}, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;->getImageResId(Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 267
    iget-object v5, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$1;->this$1:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    iget-object v5, v5, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->this$0:Lcom/miui/supermarket/NecessaryFragment;

    #getter for: Lcom/miui/supermarket/NecessaryFragment;->mListView:Landroid/widget/ExpandableListView;
    invoke-static {v5}, Lcom/miui/supermarket/NecessaryFragment;->access$400(Lcom/miui/supermarket/NecessaryFragment;)Landroid/widget/ExpandableListView;

    move-result-object v5

    iget v6, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$1;->val$finalGroupPosition:I

    invoke-virtual {v5, v6}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v2

    .line 268
    .local v2, groupExpanded:Z
    iget-object v5, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$1;->val$group:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;

    iget-object v5, v5, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 269
    .local v1, groupCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 270
    iget-object v5, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$1;->val$group:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;

    iget-object v5, v5, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/supermarket/AppInfo;

    .line 271
    .local v4, info:Lcom/miui/supermarket/AppInfo;
    iget-object v5, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$1;->this$1:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    #getter for: Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mHelper:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;
    invoke-static {v5}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->access$500(Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;)Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;->newVersionInstalled(Lcom/miui/supermarket/AppInfo;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$1;->this$1:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    #getter for: Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mHelper:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;
    invoke-static {v5}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->access$500(Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;)Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;

    move-result-object v5

    iget-object v6, v4, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;->isDownloading(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 269
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 258
    .end local v0           #cbx:Landroid/widget/ImageView;
    .end local v1           #groupCount:I
    .end local v2           #groupExpanded:Z
    .end local v3           #i:I
    .end local v4           #info:Lcom/miui/supermarket/AppInfo;
    :cond_1
    iget-object v5, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$1;->val$group:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;

    iget-object v5, v5, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;->mStatus:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    sget-object v6, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;->UNSELECTED:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    if-ne v5, v6, :cond_5

    .line 259
    iget-object v5, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$1;->val$group:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;

    sget-object v6, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;->SELECTED:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    iput-object v6, v5, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;->mStatus:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    goto :goto_0

    .line 275
    .restart local v0       #cbx:Landroid/widget/ImageView;
    .restart local v1       #groupCount:I
    .restart local v2       #groupExpanded:Z
    .restart local v3       #i:I
    .restart local v4       #info:Lcom/miui/supermarket/AppInfo;
    :cond_2
    iget-object v5, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$1;->val$group:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;

    iget-object v5, v5, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;->mStatus:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    sget-object v6, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;->SELECTED:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    if-ne v5, v6, :cond_3

    .line 276
    iget-object v5, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$1;->this$1:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    #getter for: Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mHelper:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;
    invoke-static {v5}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->access$500(Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;)Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;->selectApp(Lcom/miui/supermarket/AppInfo;)V

    .line 281
    :goto_3
    if-eqz v2, :cond_0

    .line 282
    iget-object v5, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$1;->this$1:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    iget v6, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$1;->val$finalGroupPosition:I

    #calls: Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->setChildChecked(IILcom/miui/supermarket/AppInfo;)V
    invoke-static {v5, v6, v3, v4}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->access$600(Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;IILcom/miui/supermarket/AppInfo;)V

    goto :goto_2

    .line 278
    :cond_3
    iget-object v5, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$1;->this$1:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    #getter for: Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mHelper:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;
    invoke-static {v5}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->access$500(Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;)Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;->unSelectApp(Lcom/miui/supermarket/AppInfo;)V

    goto :goto_3

    .line 286
    .end local v4           #info:Lcom/miui/supermarket/AppInfo;
    :cond_4
    iget-object v5, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$1;->this$1:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    iget v6, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$1;->val$finalGroupPosition:I

    iget-object v7, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$1;->val$group:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;

    iget-object v7, v7, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;->mStatus:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    #calls: Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->setGroupChecked(ILcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;)V
    invoke-static {v5, v6, v7}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->access$700(Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;ILcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;)V

    .line 287
    iget-object v5, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$1;->this$1:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    #getter for: Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mHelper:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;
    invoke-static {v5}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->access$500(Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;)Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;->refreshOnSelectChanged()V

    .line 288
    .end local v0           #cbx:Landroid/widget/ImageView;
    .end local v1           #groupCount:I
    .end local v2           #groupExpanded:Z
    .end local v3           #i:I
    :cond_5
    return-void
.end method
