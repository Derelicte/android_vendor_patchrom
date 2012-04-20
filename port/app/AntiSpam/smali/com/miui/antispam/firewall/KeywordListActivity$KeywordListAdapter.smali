.class final Lcom/miui/antispam/firewall/KeywordListActivity$KeywordListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "KeywordListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/firewall/KeywordListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeywordListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/antispam/firewall/KeywordListActivity;


# direct methods
.method public constructor <init>(Lcom/miui/antispam/firewall/KeywordListActivity;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/miui/antispam/firewall/KeywordListActivity$KeywordListAdapter;->this$0:Lcom/miui/antispam/firewall/KeywordListActivity;

    .line 207
    const v0, 0x7f030009

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 208
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antispam/firewall/KeywordListActivity$ListViews;

    .line 213
    .local v1, main:Lcom/miui/antispam/firewall/KeywordListActivity$ListViews;
    const/4 v2, 0x1

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, data:Ljava/lang/String;
    iget-object v2, v1, Lcom/miui/antispam/firewall/KeywordListActivity$ListViews;->data:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 220
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 221
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/miui/antispam/firewall/KeywordListActivity$ListViews;

    invoke-direct {v1, v0}, Lcom/miui/antispam/firewall/KeywordListActivity$ListViews;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 222
    return-object v0
.end method
