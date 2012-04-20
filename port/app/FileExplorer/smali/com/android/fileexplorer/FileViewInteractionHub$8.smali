.class Lcom/android/fileexplorer/FileViewInteractionHub$8;
.super Ljava/lang/Object;
.source "FileViewInteractionHub.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/FileViewInteractionHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fileexplorer/FileViewInteractionHub;


# direct methods
.method constructor <init>(Lcom/android/fileexplorer/FileViewInteractionHub;)V
    .locals 0
    .parameter

    .prologue
    .line 638
    iput-object p1, p0, Lcom/android/fileexplorer/FileViewInteractionHub$8;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v8, 0x0

    .line 641
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewInteractionHub$8;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v5}, Lcom/android/fileexplorer/FileViewInteractionHub;->isInSelection()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/fileexplorer/FileViewInteractionHub$8;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v5}, Lcom/android/fileexplorer/FileViewInteractionHub;->isMoveState()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewInteractionHub$8;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    #calls: Lcom/android/fileexplorer/FileViewInteractionHub;->showDropdownNavigation(Z)V
    invoke-static {v5, v8}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$200(Lcom/android/fileexplorer/FileViewInteractionHub;Z)V

    move-object v2, p3

    .line 646
    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 648
    .local v2, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-static {}, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->getInstance()Lcom/android/fileexplorer/FavoriteDatabaseHelper;

    move-result-object v0

    .line 649
    .local v0, databaseHelper:Lcom/android/fileexplorer/FavoriteDatabaseHelper;
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewInteractionHub$8;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    #getter for: Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;
    invoke-static {v5}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$300(Lcom/android/fileexplorer/FileViewInteractionHub;)Lcom/android/fileexplorer/IFileInteractionListener;

    move-result-object v5

    iget v6, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v5, v6}, Lcom/android/fileexplorer/IFileInteractionListener;->getItem(I)Lcom/android/fileexplorer/FileInfo;

    move-result-object v1

    .line 650
    .local v1, file:Lcom/android/fileexplorer/FileInfo;
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 651
    iget-object v5, v1, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->isFavorite(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const v4, 0x7f060040

    .line 653
    .local v4, stringId:I
    :goto_1
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewInteractionHub$8;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    const/16 v6, 0x65

    #calls: Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;III)V
    invoke-static {v5, p1, v6, v8, v4}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$900(Lcom/android/fileexplorer/FileViewInteractionHub;Landroid/view/Menu;III)V

    .line 656
    .end local v4           #stringId:I
    :cond_2
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewInteractionHub$8;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    const/16 v6, 0x68

    const v7, 0x7f06002c

    #calls: Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;III)V
    invoke-static {v5, p1, v6, v8, v7}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$900(Lcom/android/fileexplorer/FileViewInteractionHub;Landroid/view/Menu;III)V

    .line 657
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewInteractionHub$8;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    const/16 v6, 0x76

    const v7, 0x7f06002d

    #calls: Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;III)V
    invoke-static {v5, p1, v6, v8, v7}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$900(Lcom/android/fileexplorer/FileViewInteractionHub;Landroid/view/Menu;III)V

    .line 660
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewInteractionHub$8;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    const/16 v6, 0x6a

    const v7, 0x7f060036

    #calls: Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;III)V
    invoke-static {v5, p1, v6, v8, v7}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$900(Lcom/android/fileexplorer/FileViewInteractionHub;Landroid/view/Menu;III)V

    .line 661
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewInteractionHub$8;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    const/4 v6, 0x7

    const v7, 0x7f06003e

    #calls: Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;III)V
    invoke-static {v5, p1, v6, v8, v7}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$900(Lcom/android/fileexplorer/FileViewInteractionHub;Landroid/view/Menu;III)V

    .line 662
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewInteractionHub$8;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    const/16 v6, 0x8

    const v7, 0x7f06003b

    #calls: Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;III)V
    invoke-static {v5, p1, v6, v8, v7}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$900(Lcom/android/fileexplorer/FileViewInteractionHub;Landroid/view/Menu;III)V

    .line 663
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewInteractionHub$8;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    const/16 v6, 0x9

    const v7, 0x7f060030

    #calls: Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;III)V
    invoke-static {v5, p1, v6, v8, v7}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$900(Lcom/android/fileexplorer/FileViewInteractionHub;Landroid/view/Menu;III)V

    .line 664
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewInteractionHub$8;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    const/16 v6, 0xa

    const v7, 0x7f060035

    #calls: Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;III)V
    invoke-static {v5, p1, v6, v8, v7}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$900(Lcom/android/fileexplorer/FileViewInteractionHub;Landroid/view/Menu;III)V

    .line 666
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewInteractionHub$8;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v5}, Lcom/android/fileexplorer/FileViewInteractionHub;->canPaste()Z

    move-result v5

    if-nez v5, :cond_0

    .line 667
    const/16 v5, 0x69

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 668
    .local v3, menuItem:Landroid/view/MenuItem;
    if-eqz v3, :cond_0

    .line 669
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 651
    .end local v3           #menuItem:Landroid/view/MenuItem;
    :cond_3
    const v4, 0x7f060033

    goto :goto_1
.end method
