.class Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;
.super Landroid/widget/EditableListView$EditableModeCallback;
.source "StorageExplorerPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/StorageExplorerPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/StorageExplorerPage;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/StorageExplorerPage;Landroid/app/Activity;Landroid/widget/EditableListView;)V
    .locals 0
    .parameter
    .parameter "activity"
    .parameter "listView"

    .prologue
    .line 275
    iput-object p1, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    .line 276
    invoke-direct {p0, p2, p3}, Landroid/widget/EditableListView$EditableModeCallback;-><init>(Landroid/app/Activity;Landroid/widget/EditableListView;)V

    .line 277
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/StorageExplorerPage;->onClick(I)V

    .line 317
    const/4 v0, 0x1

    return v0
.end method

.method public onBatchCheckedStateChanged(Landroid/view/ActionMode;Z)V
    .locals 2
    .parameter "mode"
    .parameter "checked"

    .prologue
    .line 340
    invoke-super {p0, p1, p2}, Landroid/widget/EditableListView$EditableModeCallback;->onBatchCheckedStateChanged(Landroid/view/ActionMode;Z)V

    .line 341
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/miui/gallery/app/StorageExplorerPage;->onCheckStateChanged(Ljava/lang/Integer;Z)V

    .line 342
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 9
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v8, 0x0

    .line 282
    iget-object v5, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    iget-object v6, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #getter for: Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;
    invoke-static {v6}, Lcom/miui/gallery/app/StorageExplorerPage;->access$100(Lcom/miui/gallery/app/StorageExplorerPage;)Landroid/widget/EditableListView;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/miui/gallery/app/StorageExplorerPage;->setViewLayout(Landroid/widget/EditableListView;Z)V

    .line 283
    invoke-super {p0, p1, p2}, Landroid/widget/EditableListView$EditableModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v3

    .line 284
    .local v3, ret:Z
    iget-object v5, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #setter for: Lcom/miui/gallery/app/StorageExplorerPage;->mActionbBarMenu:Landroid/view/Menu;
    invoke-static {v5, p2}, Lcom/miui/gallery/app/StorageExplorerPage;->access$202(Lcom/miui/gallery/app/StorageExplorerPage;Landroid/view/Menu;)Landroid/view/Menu;

    .line 286
    iget-object v5, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #getter for: Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;
    invoke-static {v5}, Lcom/miui/gallery/app/StorageExplorerPage;->access$100(Lcom/miui/gallery/app/StorageExplorerPage;)Landroid/widget/EditableListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditableListView;->getFirstVisiblePosition()I

    move-result v2

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #getter for: Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;
    invoke-static {v5}, Lcom/miui/gallery/app/StorageExplorerPage;->access$100(Lcom/miui/gallery/app/StorageExplorerPage;)Landroid/widget/EditableListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditableListView;->getLastVisiblePosition()I

    move-result v5

    if-gt v2, v5, :cond_2

    .line 287
    iget-object v5, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #getter for: Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;
    invoke-static {v5}, Lcom/miui/gallery/app/StorageExplorerPage;->access$100(Lcom/miui/gallery/app/StorageExplorerPage;)Landroid/widget/EditableListView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/EditableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 288
    .local v4, view:Landroid/view/View;
    if-nez v4, :cond_1

    .line 286
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    :cond_1
    const v5, 0x1020001

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 292
    .local v0, checkBox:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 295
    iget-object v5, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #calls: Lcom/miui/gallery/app/StorageExplorerPage;->getContext()Landroid/content/Context;
    invoke-static {v5}, Lcom/miui/gallery/app/StorageExplorerPage;->access$300(Lcom/miui/gallery/app/StorageExplorerPage;)Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x10a

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 297
    .local v1, fadeinAnimation:Landroid/view/animation/Animation;
    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 300
    .end local v0           #checkBox:Landroid/view/View;
    .end local v1           #fadeinAnimation:Landroid/view/animation/Animation;
    .end local v4           #view:Landroid/view/View;
    :cond_2
    iget-object v5, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #setter for: Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFolderCount:I
    invoke-static {v5, v8}, Lcom/miui/gallery/app/StorageExplorerPage;->access$402(Lcom/miui/gallery/app/StorageExplorerPage;I)I

    .line 301
    iget-object v5, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #setter for: Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFileCount:I
    invoke-static {v5, v8}, Lcom/miui/gallery/app/StorageExplorerPage;->access$502(Lcom/miui/gallery/app/StorageExplorerPage;I)I

    .line 303
    return v3
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #getter for: Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;
    invoke-static {v1}, Lcom/miui/gallery/app/StorageExplorerPage;->access$100(Lcom/miui/gallery/app/StorageExplorerPage;)Landroid/widget/EditableListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/app/StorageExplorerPage;->setViewLayout(Landroid/widget/EditableListView;Z)V

    .line 310
    invoke-super {p0, p1}, Landroid/widget/EditableListView$EditableModeCallback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 311
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #getter for: Lcom/miui/gallery/app/StorageExplorerPage;->mSelectedIds:Ljava/util/Map;
    invoke-static {v0}, Lcom/miui/gallery/app/StorageExplorerPage;->access$600(Lcom/miui/gallery/app/StorageExplorerPage;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 312
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 2
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 334
    invoke-super/range {p0 .. p5}, Landroid/widget/EditableListView$EditableModeCallback;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 335
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Lcom/miui/gallery/app/StorageExplorerPage;->onCheckStateChanged(Ljava/lang/Integer;Z)V

    .line 336
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 322
    invoke-super {p0, p1}, Landroid/widget/EditableListView$EditableModeCallback;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    .line 323
    .local v0, ret:Z
    if-eqz v0, :cond_0

    .line 328
    :goto_0
    return v3

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/app/StorageExplorerPage;->onClick(I)V

    goto :goto_0
.end method
