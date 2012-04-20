.class Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "NecessaryFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/supermarket/NecessaryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NecessaryAppInfoListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;
    }
.end annotation


# instance fields
.field private mAppInfoGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mChildResourceId:I

.field private mContext:Landroid/content/Context;

.field private final mGroupResourceId:I

.field private mHelper:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;

.field private final mInflator:Landroid/view/LayoutInflater;

.field private mInfoList:Ljava/util/ArrayList;
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
.method public constructor <init>(Lcom/miui/supermarket/NecessaryFragment;Landroid/content/Context;IILjava/util/ArrayList;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "groupResId"
    .parameter "childResId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/supermarket/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/supermarket/AppInfo;>;"
    const/4 v0, 0x0

    .line 187
    iput-object p1, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->this$0:Lcom/miui/supermarket/NecessaryFragment;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 177
    iput-object v0, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mContext:Landroid/content/Context;

    .line 178
    iput-object v0, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mHelper:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;

    .line 180
    iput-object v0, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mInfoList:Ljava/util/ArrayList;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mAppInfoGroups:Ljava/util/ArrayList;

    .line 188
    iput-object p2, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mContext:Landroid/content/Context;

    .line 189
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mInflator:Landroid/view/LayoutInflater;

    .line 190
    iput p3, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mGroupResourceId:I

    .line 191
    iput p4, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mChildResourceId:I

    .line 192
    iput-object p5, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mInfoList:Ljava/util/ArrayList;

    .line 193
    new-instance v0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;

    iget-object v1, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;-><init>(Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mHelper:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;

    .line 194
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mAppInfoGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->populateGroupInfo()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;)Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mHelper:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;IILcom/miui/supermarket/AppInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 176
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->setChildChecked(IILcom/miui/supermarket/AppInfo;)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;ILcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 176
    invoke-direct {p0, p1, p2}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->setGroupChecked(ILcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;)V

    return-void
.end method

.method private markGroupStatus(I)V
    .locals 9
    .parameter "groupPosition"

    .prologue
    .line 348
    const/4 v4, 0x0

    .line 349
    .local v4, installedCount:I
    const/4 v1, 0x0

    .line 350
    .local v1, downloadingCount:I
    const/4 v6, 0x0

    .line 351
    .local v6, selectedCount:I
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;

    .line 352
    .local v2, group:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;
    iget-object v7, v2, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/supermarket/AppInfo;

    .line 353
    .local v5, member:Lcom/miui/supermarket/AppInfo;
    iget-object v7, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mHelper:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;

    invoke-virtual {v7, v5}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;->newVersionInstalled(Lcom/miui/supermarket/AppInfo;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 354
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 355
    :cond_1
    iget-object v7, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mHelper:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;

    iget-object v8, v5, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;->isDownloading(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    :cond_2
    iget-object v7, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mHelper:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;

    iget-object v8, v5, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;->isAppSelected(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 358
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 364
    .end local v5           #member:Lcom/miui/supermarket/AppInfo;
    :cond_3
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->getChildrenCount(I)I

    move-result v0

    .line 365
    .local v0, childrenCount:I
    if-ne v4, v0, :cond_4

    .line 366
    sget-object v7, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;->INSTALLED:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    iput-object v7, v2, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;->mStatus:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    .line 374
    :goto_1
    return-void

    .line 367
    :cond_4
    add-int v7, v1, v4

    if-ne v7, v0, :cond_5

    .line 368
    sget-object v7, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;->DOWNLOADING:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    iput-object v7, v2, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;->mStatus:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    goto :goto_1

    .line 369
    :cond_5
    add-int v7, v6, v1

    add-int/2addr v7, v4

    if-ne v7, v0, :cond_6

    .line 370
    sget-object v7, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;->SELECTED:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    iput-object v7, v2, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;->mStatus:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    goto :goto_1

    .line 372
    :cond_6
    sget-object v7, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;->UNSELECTED:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    iput-object v7, v2, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;->mStatus:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    goto :goto_1
.end method

.method private populateGroupInfo()V
    .locals 7

    .prologue
    .line 417
    iget-object v5, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mAppInfoGroups:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;

    .line 418
    .local v1, group:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;
    iget-object v5, v1, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 421
    .end local v1           #group:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;
    :cond_0
    iget-object v5, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v2           #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/supermarket/AppInfo;

    .line 422
    .local v4, info:Lcom/miui/supermarket/AppInfo;
    const/4 v0, 0x0

    .line 423
    .local v0, currGroup:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;
    iget-object v5, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mAppInfoGroups:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;

    .line 424
    .restart local v1       #group:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;
    iget-object v5, v4, Lcom/miui/supermarket/AppInfo;->category:Ljava/lang/String;

    iget-object v6, v1, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 425
    move-object v0, v1

    .line 429
    .end local v1           #group:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;
    :cond_2
    if-nez v0, :cond_3

    .line 430
    new-instance v0, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;

    .end local v0           #currGroup:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;
    iget-object v5, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->this$0:Lcom/miui/supermarket/NecessaryFragment;

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6}, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;-><init>(Lcom/miui/supermarket/NecessaryFragment;Lcom/miui/supermarket/NecessaryFragment$1;)V

    .line 431
    .restart local v0       #currGroup:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;
    iget-object v5, v4, Lcom/miui/supermarket/AppInfo;->category:Ljava/lang/String;

    iput-object v5, v0, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;->mKey:Ljava/lang/String;

    .line 432
    iget-object v5, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mAppInfoGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    :cond_3
    iget-object v5, v0, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 436
    .end local v0           #currGroup:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #info:Lcom/miui/supermarket/AppInfo;
    :cond_4
    return-void
.end method

.method private setChildChecked(IILcom/miui/supermarket/AppInfo;)V
    .locals 4
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "info"

    .prologue
    .line 377
    invoke-static {p1, p2}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v0

    .line 378
    .local v0, packedPosition:J
    iget-object v2, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mHelper:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;

    iget-object v3, p3, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;->isAppSelected(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->setListItemChecked(JZ)V

    .line 379
    return-void
.end method

.method private setGroupChecked(ILcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;)V
    .locals 3
    .parameter "groupPosition"
    .parameter "status"

    .prologue
    .line 382
    invoke-static {p1}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v0

    .line 383
    .local v0, packedPosition:J
    sget-object v2, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;->SELECTED:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    if-ne p2, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v0, v1, v2}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->setListItemChecked(JZ)V

    .line 384
    return-void

    .line 383
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setListItemChecked(JZ)V
    .locals 2
    .parameter "packedPosition"
    .parameter "checked"

    .prologue
    .line 387
    iget-object v1, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->this$0:Lcom/miui/supermarket/NecessaryFragment;

    #getter for: Lcom/miui/supermarket/NecessaryFragment;->mListView:Landroid/widget/ExpandableListView;
    invoke-static {v1}, Lcom/miui/supermarket/NecessaryFragment;->access$400(Lcom/miui/supermarket/NecessaryFragment;)Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v0

    .line 388
    .local v0, selectedPosition:I
    iget-object v1, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->this$0:Lcom/miui/supermarket/NecessaryFragment;

    #getter for: Lcom/miui/supermarket/NecessaryFragment;->mListView:Landroid/widget/ExpandableListView;
    invoke-static {v1}, Lcom/miui/supermarket/NecessaryFragment;->access$400(Lcom/miui/supermarket/NecessaryFragment;)Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Landroid/widget/ExpandableListView;->setItemChecked(IZ)V

    .line 389
    return-void
.end method


# virtual methods
.method public downloadSelectedApps()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mHelper:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;

    invoke-virtual {v0}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;->downloadSelectedApps()V

    .line 397
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->this$0:Lcom/miui/supermarket/NecessaryFragment;

    iget-object v1, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->this$0:Lcom/miui/supermarket/NecessaryFragment;

    #getter for: Lcom/miui/supermarket/NecessaryFragment;->mListView:Landroid/widget/ExpandableListView;
    invoke-static {v1}, Lcom/miui/supermarket/NecessaryFragment;->access$400(Lcom/miui/supermarket/NecessaryFragment;)Landroid/widget/ExpandableListView;

    move-result-object v1

    #calls: Lcom/miui/supermarket/NecessaryFragment;->uncheckAllListItems(Landroid/widget/ListView;)V
    invoke-static {v0, v1}, Lcom/miui/supermarket/NecessaryFragment;->access$800(Lcom/miui/supermarket/NecessaryFragment;Landroid/widget/ListView;)V

    .line 398
    return-void
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 213
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;

    iget-object v0, v0, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 223
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 297
    const/4 v1, 0x0

    .line 298
    .local v1, view:Landroid/view/View;
    if-nez p4, :cond_0

    .line 299
    iget-object v2, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mInflator:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mChildResourceId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 304
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/supermarket/AppInfo;

    .line 305
    .local v0, info:Lcom/miui/supermarket/AppInfo;
    new-instance v2, Lcom/miui/supermarket/AppInfoCheckBoxViewInitializor;

    iget-object v3, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mHelper:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/miui/supermarket/AppInfoCheckBoxViewInitializor;-><init>(Lcom/miui/supermarket/AppInfo;Landroid/view/View;Landroid/content/Context;Lcom/miui/supermarket/AppInfoCheckBoxAdapterHelper;)V

    invoke-virtual {v2}, Lcom/miui/supermarket/AppInfoCheckBoxViewInitializor;->initialize()V

    .line 307
    return-object v1

    .line 301
    .end local v0           #info:Lcom/miui/supermarket/AppInfo;
    :cond_0
    move-object v1, p4

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;

    iget-object v0, v0, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mAppInfoGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mAppInfoGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 218
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 234
    const/4 v4, 0x0

    .line 235
    .local v4, view:Landroid/view/View;
    if-nez p3, :cond_0

    .line 236
    iget-object v5, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mInflator:Landroid/view/LayoutInflater;

    iget v6, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mGroupResourceId:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 241
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;

    .line 242
    .local v2, group:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;
    move v1, p1

    .line 245
    .local v1, finalGroupPosition:I
    const v5, 0x7f0a0032

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 246
    .local v3, groupTitle:Landroid/widget/TextView;
    iget-object v5, v2, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;->mInfoList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/supermarket/AppInfo;

    iget-object v5, v5, Lcom/miui/supermarket/AppInfo;->category:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    invoke-direct {p0, p1}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->markGroupStatus(I)V

    .line 251
    const v5, 0x7f0a0033

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 252
    .local v0, checkAll:Landroid/widget/ImageView;
    iget-object v5, v2, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;->mStatus:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    invoke-static {v5}, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;->getImageResId(Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 253
    new-instance v5, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$1;

    invoke-direct {v5, p0, v2, v1}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$1;-><init>(Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;I)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    return-object v4

    .line 238
    .end local v0           #checkAll:Landroid/widget/ImageView;
    .end local v1           #finalGroupPosition:I
    .end local v2           #group:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;
    .end local v3           #groupTitle:Landroid/widget/TextView;
    :cond_0
    move-object v4, p3

    goto :goto_0
.end method

.method public getSelectedSize()I
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mHelper:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;

    invoke-virtual {v0}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;->getSelectedSize()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 312
    const/4 v0, 0x1

    return v0
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 4
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 317
    invoke-virtual {p0, p3, p4}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/supermarket/AppInfo;

    .line 318
    .local v1, info:Lcom/miui/supermarket/AppInfo;
    iget-object v2, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mHelper:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;

    invoke-virtual {v2, v1}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;->newVersionInstalled(Lcom/miui/supermarket/AppInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mHelper:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;

    iget-object v3, v1, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;->isDownloading(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 319
    iget-object v2, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mHelper:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;

    invoke-virtual {v2, v1}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;->changeSelect(Lcom/miui/supermarket/AppInfo;)V

    .line 320
    invoke-direct {p0, p3, p4, v1}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->setChildChecked(IILcom/miui/supermarket/AppInfo;)V

    .line 322
    invoke-direct {p0, p3}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->markGroupStatus(I)V

    .line 323
    invoke-virtual {p0, p3}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;

    .line 324
    .local v0, group:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;
    iget-object v2, v0, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;->mStatus:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    invoke-direct {p0, p3, v2}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->setGroupChecked(ILcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;)V

    .line 326
    iget-object v2, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mHelper:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;

    invoke-virtual {v2}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;->refreshOnSelectChanged()V

    .line 329
    .end local v0           #group:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public onGroupExpanded(I)V
    .locals 6
    .parameter "groupPosition"

    .prologue
    .line 334
    invoke-virtual {p0, p1}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;

    .line 335
    .local v0, group:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;
    iget-object v4, v0, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 336
    .local v1, groupCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 337
    iget-object v4, v0, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/supermarket/AppInfo;

    .line 338
    .local v3, info:Lcom/miui/supermarket/AppInfo;
    iget-object v4, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mHelper:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;

    invoke-virtual {v4, v3}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;->newVersionInstalled(Lcom/miui/supermarket/AppInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mHelper:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;

    iget-object v5, v3, Lcom/miui/supermarket/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;->isDownloading(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 336
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 342
    :cond_1
    invoke-direct {p0, p1, v2, v3}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->setChildChecked(IILcom/miui/supermarket/AppInfo;)V

    goto :goto_1

    .line 344
    .end local v3           #info:Lcom/miui/supermarket/AppInfo;
    :cond_2
    return-void
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
    .line 393
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onPackageInstalled(Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mHelper:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;

    invoke-virtual {v0, p1}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;->onPackageInstalled(Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mHelper:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;

    invoke-virtual {v0, p1}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;->onPackageRemoved(Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public removeDownloadingApp(Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mHelper:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;

    invoke-virtual {v0, p1}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;->removeFromDownloading(Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method public unSelectApps()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->mHelper:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter$MyAppInfoCheckBoxAdapterHelper;->unSelectAllApps(Z)V

    .line 414
    return-void
.end method
