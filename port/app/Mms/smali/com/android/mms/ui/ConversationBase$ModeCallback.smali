.class Lcom/android/mms/ui/ConversationBase$ModeCallback;
.super Ljava/lang/Object;
.source "ConversationBase.java"

# interfaces
.implements Lcom/android/mms/util/EditableListView$EditModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private mCheckable:Lcom/android/mms/util/EditableListView$EditableListViewCheckable;

.field private mSelectionMenu:Landroid/widget/EditableListView$DropDownMenu;

.field final synthetic this$0:Lcom/android/mms/ui/ConversationBase;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ConversationBase;)V
    .locals 0
    .parameter

    .prologue
    .line 1585
    iput-object p1, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ConversationBase;Lcom/android/mms/ui/ConversationBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1585
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationBase$ModeCallback;-><init>(Lcom/android/mms/ui/ConversationBase;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/ConversationBase$ModeCallback;)Lcom/android/mms/util/EditableListView$EditableListViewCheckable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mCheckable:Lcom/android/mms/util/EditableListView$EditableListViewCheckable;

    return-object v0
.end method

.method private createMenu(Landroid/view/ActionMode;)V
    .locals 7
    .parameter "mode"

    .prologue
    .line 1664
    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x303001e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1666
    .local v0, customView:Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 1668
    new-instance v3, Landroid/widget/EditableListView$DropDownMenu;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    const v2, 0x30b0002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v5, 0x7f0f0004

    new-instance v6, Lcom/android/mms/ui/ConversationBase$ModeCallback$1;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/ConversationBase$ModeCallback$1;-><init>(Lcom/android/mms/ui/ConversationBase$ModeCallback;)V

    invoke-direct {v3, v4, v2, v5, v6}, Landroid/widget/EditableListView$DropDownMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;ILandroid/widget/PopupMenu$OnMenuItemClickListener;)V

    iput-object v3, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mSelectionMenu:Landroid/widget/EditableListView$DropDownMenu;

    .line 1680
    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    const v3, 0x7f0a018a

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1681
    .local v1, title:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1682
    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mSelectionMenu:Landroid/widget/EditableListView$DropDownMenu;

    invoke-virtual {v2, v1}, Landroid/widget/EditableListView$DropDownMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 1684
    :cond_0
    return-void
.end method

.method private updateMenu(I)V
    .locals 7
    .parameter "checkCount"

    .prologue
    .line 1688
    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    const v3, 0x7f0a018c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mCheckable:Lcom/android/mms/util/EditableListView$EditableListViewCheckable;

    invoke-interface {v6}, Lcom/android/mms/util/EditableListView$EditableListViewCheckable;->count()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/ConversationBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1690
    .local v1, title:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1691
    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mSelectionMenu:Landroid/widget/EditableListView$DropDownMenu;

    invoke-virtual {v2, v1}, Landroid/widget/EditableListView$DropDownMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 1693
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mSelectionMenu:Landroid/widget/EditableListView$DropDownMenu;

    const v3, 0x7f1000e8

    invoke-virtual {v2, v3}, Landroid/widget/EditableListView$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1694
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 1695
    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mCheckable:Lcom/android/mms/util/EditableListView$EditableListViewCheckable;

    invoke-interface {v2}, Lcom/android/mms/util/EditableListView$EditableListViewCheckable;->isAllChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1696
    const v2, 0x7f0a0181

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1701
    :cond_1
    :goto_0
    return-void

    .line 1698
    :cond_2
    const v2, 0x7f0a0180

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 1612
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 1634
    :goto_0
    const/4 v6, 0x1

    return v6

    .line 1614
    :pswitch_0
    iget-object v6, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mCheckable:Lcom/android/mms/util/EditableListView$EditableListViewCheckable;

    invoke-interface {v6}, Lcom/android/mms/util/EditableListView$EditableListViewCheckable;->getCheckedItemInPositions()Ljava/util/HashSet;

    move-result-object v1

    .line 1615
    .local v1, checkedPositions:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    #getter for: Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationBase;->access$400(Lcom/android/mms/ui/ConversationBase;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedItems(Ljava/util/HashSet;)Ljava/util/List;

    move-result-object v0

    .line 1617
    .local v0, checkedItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/MessageItem;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1618
    new-instance v4, Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-direct {v4, v6, v0}, Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;-><init>(Lcom/android/mms/ui/ConversationBase;Ljava/util/List;)V

    .line 1619
    .local v4, listener:Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;
    const/4 v2, 0x0

    .line 1620
    .local v2, hasLockedMessages:Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/ui/MessageItem;

    .line 1621
    .local v5, mi:Lcom/android/mms/ui/MessageItem;
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isLocked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1622
    const/4 v2, 0x1

    .line 1626
    .end local v5           #mi:Lcom/android/mms/ui/MessageItem;
    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v7

    #calls: Lcom/android/mms/ui/ConversationBase;->confirmBatchDeleteDialog(Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;IZ)V
    invoke-static {v6, v4, v7, v2}, Lcom/android/mms/ui/ConversationBase;->access$2100(Lcom/android/mms/ui/ConversationBase;Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;IZ)V

    .line 1628
    .end local v2           #hasLockedMessages:Z
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #listener:Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;
    :cond_2
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 1612
    nop

    :pswitch_data_0
    .packed-switch 0x7f1000de
        :pswitch_0
    .end packed-switch
.end method

.method public onCheckStateChanged(Lcom/android/mms/util/EditableListView$EditableListViewCheckable;)V
    .locals 3
    .parameter "checkable"

    .prologue
    .line 1647
    iput-object p1, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mCheckable:Lcom/android/mms/util/EditableListView$EditableListViewCheckable;

    .line 1648
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    #getter for: Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationBase;->access$400(Lcom/android/mms/ui/ConversationBase;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mCheckable:Lcom/android/mms/util/EditableListView$EditableListViewCheckable;

    invoke-interface {v2}, Lcom/android/mms/util/EditableListView$EditableListViewCheckable;->getCheckedItemInIds()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageListAdapter;->setCheckedItem(Ljava/util/HashSet;)V

    .line 1649
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mCheckable:Lcom/android/mms/util/EditableListView$EditableListViewCheckable;

    invoke-interface {v1}, Lcom/android/mms/util/EditableListView$EditableListViewCheckable;->count()I

    move-result v0

    .line 1650
    .local v0, checkCount:I
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationBase$ModeCallback;->updateMenu(I)V

    .line 1651
    if-nez v0, :cond_0

    .line 1652
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView;->exitEditMode()V

    .line 1654
    :cond_0
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 1590
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationBase;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1591
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0f

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1593
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    #getter for: Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationBase;->access$400(Lcom/android/mms/ui/ConversationBase;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->enterCheckMode()V

    .line 1594
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView;->getEditableListViewCheckable()Lcom/android/mms/util/EditableListView$EditableListViewCheckable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->mCheckable:Lcom/android/mms/util/EditableListView$EditableListViewCheckable;

    .line 1596
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationBase$ModeCallback;->createMenu(Landroid/view/ActionMode;)V

    .line 1598
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationBase;->disableAttachmentPanel()V

    .line 1599
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationBase;->hideSoftKeyboard()V

    .line 1600
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationBase;->mBottomPanel:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1601
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    #getter for: Lcom/android/mms/ui/ConversationBase;->mListItemStyle:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationBase;->access$2000(Lcom/android/mms/ui/ConversationBase;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/MessageListItem$Style;->bubble:Lcom/android/mms/ui/MessageListItem$Style;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem$Style;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1602
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020105

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1604
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1638
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    #getter for: Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationBase;->access$400(Lcom/android/mms/ui/ConversationBase;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->exitCheckMode()V

    .line 1639
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase;->mBottomPanel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1640
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    #getter for: Lcom/android/mms/ui/ConversationBase;->mListItemStyle:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationBase;->access$2000(Lcom/android/mms/ui/ConversationBase;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/mms/ui/MessageListItem$Style;->bubble:Lcom/android/mms/ui/MessageListItem$Style;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListItem$Style;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1641
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1643
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 1608
    const/4 v0, 0x0

    return v0
.end method

.method public onVisibleViewCheckStateChanged(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "checked"

    .prologue
    .line 1658
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/mms/ui/MessageListItem;

    if-eqz v0, :cond_0

    .line 1659
    check-cast p1, Lcom/android/mms/ui/MessageListItem;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/android/mms/ui/MessageListItem;->onCheckStateChanged(Z)V

    .line 1661
    :cond_0
    return-void
.end method
