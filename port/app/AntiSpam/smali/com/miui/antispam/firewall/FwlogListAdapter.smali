.class public final Lcom/miui/antispam/firewall/FwlogListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "FwlogListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/firewall/FwlogListAdapter$ListViews;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mQueryTarget:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "queryTarget"

    .prologue
    .line 20
    const v0, 0x7f030011

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 22
    iput-object p1, p0, Lcom/miui/antispam/firewall/FwlogListAdapter;->mContext:Landroid/content/Context;

    .line 23
    iput p2, p0, Lcom/miui/antispam/firewall/FwlogListAdapter;->mQueryTarget:I

    .line 24
    return-void
.end method

.method private setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "tv"
    .parameter "text"

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x1

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/antispam/firewall/FwlogListAdapter$ListViews;

    .line 29
    .local v2, main:Lcom/miui/antispam/firewall/FwlogListAdapter$ListViews;
    invoke-virtual {v2}, Lcom/miui/antispam/firewall/FwlogListAdapter$ListViews;->setGone()V

    .line 31
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 32
    .local v3, type:I
    if-eq v3, v7, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    if-eq v3, v5, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/miui/antispam/firewall/FwlogListAdapter$ListViews;->_id:J

    .line 40
    iget v4, p0, Lcom/miui/antispam/firewall/FwlogListAdapter;->mQueryTarget:I

    const/16 v5, 0x65

    if-ne v4, v5, :cond_4

    .line 41
    iget-object v4, p0, Lcom/miui/antispam/firewall/FwlogListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, p3}, Lcom/miui/antispam/firewall/FirewallLogFragment;->formatCallData(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, head:Ljava/lang/String;
    iget-object v4, v2, Lcom/miui/antispam/firewall/FwlogListAdapter$ListViews;->head1:Landroid/widget/TextView;

    invoke-direct {p0, v4, v1}, Lcom/miui/antispam/firewall/FwlogListAdapter;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 44
    invoke-static {p3}, Lcom/miui/antispam/firewall/FirewallLogFragment;->isMute(Landroid/database/Cursor;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 45
    iget-object v4, v2, Lcom/miui/antispam/firewall/FwlogListAdapter$ListViews;->head2:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/miui/antispam/firewall/FwlogListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f060047

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/miui/antispam/firewall/FwlogListAdapter;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 67
    .end local v1           #head:Ljava/lang/String;
    :goto_1
    if-eq v3, v7, :cond_0

    .line 68
    const/4 v4, 0x5

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, data1:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 70
    const-string v0, ""

    .line 72
    :cond_2
    iget-object v4, v2, Lcom/miui/antispam/firewall/FwlogListAdapter$ListViews;->body:Landroid/widget/TextView;

    invoke-direct {p0, v4, v0}, Lcom/miui/antispam/firewall/FwlogListAdapter;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 47
    .end local v0           #data1:Ljava/lang/String;
    .restart local v1       #head:Ljava/lang/String;
    :cond_3
    iget-object v4, v2, Lcom/miui/antispam/firewall/FwlogListAdapter$ListViews;->head2:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/miui/antispam/firewall/FwlogListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f060048

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/miui/antispam/firewall/FwlogListAdapter;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 52
    .end local v1           #head:Ljava/lang/String;
    :cond_4
    iget-object v4, v2, Lcom/miui/antispam/firewall/FwlogListAdapter$ListViews;->head1:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/miui/antispam/firewall/FwlogListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5, p3}, Lcom/miui/antispam/firewall/FirewallLogFragment;->getDate(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/miui/antispam/firewall/FwlogListAdapter;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 55
    invoke-static {p3}, Lcom/miui/antispam/firewall/FirewallLogFragment;->isMute(Landroid/database/Cursor;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 56
    iget-object v4, v2, Lcom/miui/antispam/firewall/FwlogListAdapter$ListViews;->head2:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/miui/antispam/firewall/FwlogListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f060049

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/miui/antispam/firewall/FwlogListAdapter;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 57
    :cond_5
    invoke-static {p3}, Lcom/miui/antispam/firewall/FirewallLogFragment;->isFiltered(Landroid/database/Cursor;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 58
    iget-object v4, v2, Lcom/miui/antispam/firewall/FwlogListAdapter$ListViews;->head2:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/miui/antispam/firewall/FwlogListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f06004b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/miui/antispam/firewall/FwlogListAdapter;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 59
    :cond_6
    invoke-static {p3}, Lcom/miui/antispam/firewall/FirewallLogFragment;->isImported(Landroid/database/Cursor;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 60
    iget-object v4, v2, Lcom/miui/antispam/firewall/FwlogListAdapter$ListViews;->head2:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/miui/antispam/firewall/FwlogListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f06004c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/miui/antispam/firewall/FwlogListAdapter;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 62
    :cond_7
    iget-object v4, v2, Lcom/miui/antispam/firewall/FwlogListAdapter$ListViews;->head2:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/miui/antispam/firewall/FwlogListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f06004a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/miui/antispam/firewall/FwlogListAdapter;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/miui/antispam/firewall/FwlogListAdapter$ListViews;

    invoke-direct {v1, v0}, Lcom/miui/antispam/firewall/FwlogListAdapter$ListViews;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 80
    return-object v0
.end method
