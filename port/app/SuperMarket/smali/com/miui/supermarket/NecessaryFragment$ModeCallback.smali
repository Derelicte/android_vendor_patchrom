.class Lcom/miui/supermarket/NecessaryFragment$ModeCallback;
.super Ljava/lang/Object;
.source "NecessaryFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/supermarket/NecessaryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModeCallback"
.end annotation


# instance fields
.field private final mFragment:Lcom/miui/supermarket/NecessaryFragment;


# direct methods
.method public constructor <init>(Lcom/miui/supermarket/NecessaryFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    iput-object p1, p0, Lcom/miui/supermarket/NecessaryFragment$ModeCallback;->mFragment:Lcom/miui/supermarket/NecessaryFragment;

    .line 552
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "mode"
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 595
    iget-object v2, p0, Lcom/miui/supermarket/NecessaryFragment$ModeCallback;->mFragment:Lcom/miui/supermarket/NecessaryFragment;

    #getter for: Lcom/miui/supermarket/NecessaryFragment;->mAdapter:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;
    invoke-static {v2}, Lcom/miui/supermarket/NecessaryFragment;->access$200(Lcom/miui/supermarket/NecessaryFragment;)Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->getSelectedSize()I

    move-result v0

    .line 596
    .local v0, selectedSize:I
    if-nez v0, :cond_1

    .line 620
    :cond_0
    :goto_0
    return v4

    .line 600
    :cond_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 602
    :pswitch_1
    iget-object v2, p0, Lcom/miui/supermarket/NecessaryFragment$ModeCallback;->mFragment:Lcom/miui/supermarket/NecessaryFragment;

    #getter for: Lcom/miui/supermarket/NecessaryFragment;->mAdapter:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;
    invoke-static {v2}, Lcom/miui/supermarket/NecessaryFragment;->access$200(Lcom/miui/supermarket/NecessaryFragment;)Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->downloadSelectedApps()V

    goto :goto_0

    .line 607
    :pswitch_2
    const/16 v1, 0x14

    .line 608
    .local v1, totalItems:I
    if-lez v1, :cond_0

    .line 610
    if-ne v1, v0, :cond_2

    .line 611
    iget-object v2, p0, Lcom/miui/supermarket/NecessaryFragment$ModeCallback;->mFragment:Lcom/miui/supermarket/NecessaryFragment;

    #getter for: Lcom/miui/supermarket/NecessaryFragment;->mAdapter:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;
    invoke-static {v2}, Lcom/miui/supermarket/NecessaryFragment;->access$200(Lcom/miui/supermarket/NecessaryFragment;)Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->unSelectApps()V

    .line 612
    iget-object v2, p0, Lcom/miui/supermarket/NecessaryFragment$ModeCallback;->mFragment:Lcom/miui/supermarket/NecessaryFragment;

    iget-object v3, p0, Lcom/miui/supermarket/NecessaryFragment$ModeCallback;->mFragment:Lcom/miui/supermarket/NecessaryFragment;

    #getter for: Lcom/miui/supermarket/NecessaryFragment;->mListView:Landroid/widget/ExpandableListView;
    invoke-static {v3}, Lcom/miui/supermarket/NecessaryFragment;->access$400(Lcom/miui/supermarket/NecessaryFragment;)Landroid/widget/ExpandableListView;

    move-result-object v3

    #calls: Lcom/miui/supermarket/NecessaryFragment;->uncheckAllListItems(Landroid/widget/ListView;)V
    invoke-static {v2, v3}, Lcom/miui/supermarket/NecessaryFragment;->access$800(Lcom/miui/supermarket/NecessaryFragment;Landroid/widget/ListView;)V

    goto :goto_0

    .line 616
    :cond_2
    iget-object v2, p0, Lcom/miui/supermarket/NecessaryFragment$ModeCallback;->mFragment:Lcom/miui/supermarket/NecessaryFragment;

    invoke-virtual {v2}, Lcom/miui/supermarket/NecessaryFragment;->updateActionModeSelectionMenu()V

    goto :goto_0

    .line 600
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a004f
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 566
    iget-object v1, p0, Lcom/miui/supermarket/NecessaryFragment$ModeCallback;->mFragment:Lcom/miui/supermarket/NecessaryFragment;

    #setter for: Lcom/miui/supermarket/NecessaryFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v1, p1}, Lcom/miui/supermarket/NecessaryFragment;->access$1102(Lcom/miui/supermarket/NecessaryFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 567
    iget-object v1, p0, Lcom/miui/supermarket/NecessaryFragment$ModeCallback;->mFragment:Lcom/miui/supermarket/NecessaryFragment;

    invoke-virtual {v1}, Lcom/miui/supermarket/NecessaryFragment;->updateActionModeMenuTitle()V

    .line 569
    iget-object v1, p0, Lcom/miui/supermarket/NecessaryFragment$ModeCallback;->mFragment:Lcom/miui/supermarket/NecessaryFragment;

    #getter for: Lcom/miui/supermarket/NecessaryFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/miui/supermarket/NecessaryFragment;->access$1200(Lcom/miui/supermarket/NecessaryFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 570
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f090004

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 590
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 555
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment$ModeCallback;->mFragment:Lcom/miui/supermarket/NecessaryFragment;

    #getter for: Lcom/miui/supermarket/NecessaryFragment;->mAdapter:Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;
    invoke-static {v0}, Lcom/miui/supermarket/NecessaryFragment;->access$200(Lcom/miui/supermarket/NecessaryFragment;)Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/supermarket/NecessaryFragment$NecessaryAppInfoListAdapter;->unSelectApps()V

    .line 556
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment$ModeCallback;->mFragment:Lcom/miui/supermarket/NecessaryFragment;

    const/4 v1, 0x0

    #setter for: Lcom/miui/supermarket/NecessaryFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/miui/supermarket/NecessaryFragment;->access$1102(Lcom/miui/supermarket/NecessaryFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 557
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 1
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 625
    iget-object v0, p0, Lcom/miui/supermarket/NecessaryFragment$ModeCallback;->mFragment:Lcom/miui/supermarket/NecessaryFragment;

    invoke-virtual {v0}, Lcom/miui/supermarket/NecessaryFragment;->updateActionModeSelectionMenu()V

    .line 626
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 561
    const/4 v0, 0x1

    return v0
.end method
