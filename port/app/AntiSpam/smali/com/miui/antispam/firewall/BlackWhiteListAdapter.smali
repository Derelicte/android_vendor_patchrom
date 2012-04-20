.class public Lcom/miui/antispam/firewall/BlackWhiteListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "BlackWhiteListAdapter.java"


# instance fields
.field private mBlackListAdapter:Lcom/miui/antispam/firewall/BlackListAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mWhiteListAdapter:Lcom/miui/antispam/firewall/WhiteListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 25
    new-instance v0, Lcom/miui/antispam/firewall/BlackListAdapter;

    invoke-direct {v0, p1}, Lcom/miui/antispam/firewall/BlackListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->mBlackListAdapter:Lcom/miui/antispam/firewall/BlackListAdapter;

    .line 26
    new-instance v0, Lcom/miui/antispam/firewall/WhiteListAdapter;

    invoke-direct {v0, p1}, Lcom/miui/antispam/firewall/WhiteListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->mWhiteListAdapter:Lcom/miui/antispam/firewall/WhiteListAdapter;

    .line 28
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 29
    return-void
.end method


# virtual methods
.method public getBlackListAdapter()Lcom/miui/antispam/firewall/BlackListAdapter;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->mBlackListAdapter:Lcom/miui/antispam/firewall/BlackListAdapter;

    return-object v0
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 58
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->mBlackListAdapter:Lcom/miui/antispam/firewall/BlackListAdapter;

    invoke-virtual {v0, p2}, Lcom/miui/antispam/firewall/BlackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    .line 60
    :cond_0
    if-nez p1, :cond_1

    .line 61
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->mWhiteListAdapter:Lcom/miui/antispam/firewall/WhiteListAdapter;

    invoke-virtual {v0, p2}, Lcom/miui/antispam/firewall/WhiteListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 73
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->mBlackListAdapter:Lcom/miui/antispam/firewall/BlackListAdapter;

    invoke-virtual {v0, p2}, Lcom/miui/antispam/firewall/BlackListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 78
    :goto_0
    return-wide v0

    .line 75
    :cond_0
    if-nez p1, :cond_1

    .line 76
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->mWhiteListAdapter:Lcom/miui/antispam/firewall/WhiteListAdapter;

    invoke-virtual {v0, p2}, Lcom/miui/antispam/firewall/WhiteListAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0

    .line 78
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 112
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->mBlackListAdapter:Lcom/miui/antispam/firewall/BlackListAdapter;

    invoke-virtual {v0, p2, p4, p5}, Lcom/miui/antispam/firewall/BlackListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    .line 115
    :cond_0
    if-nez p1, :cond_1

    .line 116
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->mWhiteListAdapter:Lcom/miui/antispam/firewall/WhiteListAdapter;

    invoke-virtual {v0, p2, p4, p5}, Lcom/miui/antispam/firewall/WhiteListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 118
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 43
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->mBlackListAdapter:Lcom/miui/antispam/firewall/BlackListAdapter;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/BlackListAdapter;->getCount()I

    move-result v0

    .line 48
    :goto_0
    return v0

    .line 45
    :cond_0
    if-nez p1, :cond_1

    .line 46
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->mWhiteListAdapter:Lcom/miui/antispam/firewall/WhiteListAdapter;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/WhiteListAdapter;->getCount()I

    move-result v0

    goto :goto_0

    .line 48
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x2

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 68
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v5, 0x7f070003

    .line 90
    if-nez p3, :cond_1

    .line 91
    iget-object v2, p0, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030003

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 96
    .local v1, v:Landroid/view/View;
    :goto_0
    const v2, 0x7f080007

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 98
    .local v0, title:Landroid/widget/TextView;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 99
    const v2, 0x7f060005

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 100
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 106
    :cond_0
    :goto_1
    return-object v1

    .line 93
    .end local v0           #title:Landroid/widget/TextView;
    .end local v1           #v:Landroid/view/View;
    :cond_1
    move-object v1, p3

    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .line 101
    .restart local v0       #title:Landroid/widget/TextView;
    :cond_2
    if-nez p1, :cond_0

    .line 102
    const v2, 0x7f060006

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 103
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method public getWhiteListAdapter()Lcom/miui/antispam/firewall/WhiteListAdapter;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->mWhiteListAdapter:Lcom/miui/antispam/firewall/WhiteListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->mBlackListAdapter:Lcom/miui/antispam/firewall/BlackListAdapter;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/BlackListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->mWhiteListAdapter:Lcom/miui/antispam/firewall/WhiteListAdapter;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/WhiteListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public load()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->mBlackListAdapter:Lcom/miui/antispam/firewall/BlackListAdapter;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/BlackListAdapter;->load()V

    .line 33
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->mWhiteListAdapter:Lcom/miui/antispam/firewall/WhiteListAdapter;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/WhiteListAdapter;->load()V

    .line 34
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetInvalidated()V

    .line 129
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->mBlackListAdapter:Lcom/miui/antispam/firewall/BlackListAdapter;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/BlackListAdapter;->notifyDataSetInvalidated()V

    .line 130
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->mWhiteListAdapter:Lcom/miui/antispam/firewall/WhiteListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/antispam/firewall/WhiteListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 131
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->mBlackListAdapter:Lcom/miui/antispam/firewall/BlackListAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/antispam/firewall/BlackListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 143
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->mWhiteListAdapter:Lcom/miui/antispam/firewall/WhiteListAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/antispam/firewall/WhiteListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 144
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->mBlackListAdapter:Lcom/miui/antispam/firewall/BlackListAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/antispam/firewall/BlackListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 148
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->mWhiteListAdapter:Lcom/miui/antispam/firewall/WhiteListAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/antispam/firewall/WhiteListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 149
    return-void
.end method
