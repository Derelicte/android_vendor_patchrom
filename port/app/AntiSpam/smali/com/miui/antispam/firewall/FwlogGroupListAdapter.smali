.class public final Lcom/miui/antispam/firewall/FwlogGroupListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "FwlogGroupListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListViews;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "queryTarget"

    .prologue
    .line 19
    const v0, 0x7f03000e

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 21
    iput-object p1, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method

.method private setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "tv"
    .parameter "text"

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v9, 0x3

    const/4 v10, 0x1

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListViews;

    .line 27
    .local v4, main:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListViews;
    invoke-virtual {v4}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListViews;->setGone()V

    .line 28
    invoke-static {p3}, Lcom/miui/antispam/firewall/FirewallLogFragment;->getNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    .line 29
    .local v6, number:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 33
    .local v7, type:I
    if-eq v7, v10, :cond_2

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    if-ne v7, v9, :cond_0

    .line 39
    :cond_2
    const/4 v8, 0x0

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListViews;->_id:J

    .line 42
    iget-object v8, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8, v6}, Lcom/miui/antispam/firewall/FirewallLogFragment;->queryNameFromNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 43
    .local v5, name:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 44
    iget-object v8, v4, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListViews;->title:Landroid/widget/TextView;

    invoke-direct {p0, v8, v6}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 51
    :goto_1
    const/16 v8, 0x8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 52
    .local v0, count:J
    const-wide/16 v8, 0x1

    cmp-long v8, v0, v8

    if-lez v8, :cond_3

    .line 53
    iget-object v8, v4, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListViews;->count:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/miui/antispam/firewall/FirewallLogFragment;->getCountString(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 57
    :cond_3
    if-ne v7, v10, :cond_6

    .line 58
    iget-object v8, v4, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListViews;->data1:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9, p3}, Lcom/miui/antispam/firewall/FirewallLogFragment;->formatCallData(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 60
    invoke-static {p3}, Lcom/miui/antispam/firewall/FirewallLogFragment;->isMute(Landroid/database/Cursor;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 61
    iget-object v8, v4, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListViews;->data2:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f060047

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 46
    .end local v0           #count:J
    :cond_4
    iget-object v8, v4, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListViews;->title:Landroid/widget/TextView;

    invoke-direct {p0, v8, v5}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 47
    iget-object v8, v4, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListViews;->subtitle:Landroid/widget/TextView;

    invoke-direct {p0, v8, v6}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 63
    .restart local v0       #count:J
    :cond_5
    iget-object v8, v4, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListViews;->data2:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f060048

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 67
    :cond_6
    iget-object v8, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8, p3}, Lcom/miui/antispam/firewall/FirewallLogFragment;->getDate(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, dateStr:Ljava/lang/String;
    const/4 v8, 0x5

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, data1:Ljava/lang/String;
    iget-object v8, v4, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListViews;->data1:Landroid/widget/TextView;

    invoke-direct {p0, v8, v2}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 71
    iget-object v8, v4, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListViews;->data2:Landroid/widget/TextView;

    invoke-direct {p0, v8, v3}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 77
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListViews;

    invoke-direct {v1, v0}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListViews;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    return-object v0
.end method
