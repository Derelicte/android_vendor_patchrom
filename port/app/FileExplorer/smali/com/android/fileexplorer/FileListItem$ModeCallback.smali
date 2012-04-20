.class public Lcom/android/fileexplorer/FileListItem$ModeCallback;
.super Ljava/lang/Object;
.source "FileListItem.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/FileListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModeCallback"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

.field private mMenu:Landroid/view/Menu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/fileexplorer/FileViewInteractionHub;)V
    .locals 0
    .parameter "context"
    .parameter "fileViewInteractionHub"

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/android/fileexplorer/FileListItem$ModeCallback;->mContext:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Lcom/android/fileexplorer/FileListItem$ModeCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    .line 111
    return-void
.end method

.method private initMenuItemSelectAllOrCancel()V
    .locals 3

    .prologue
    .line 96
    iget-object v1, p0, Lcom/android/fileexplorer/FileListItem$ModeCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->isSelectedAll()Z

    move-result v0

    .line 97
    .local v0, isSelectedAll:Z
    iget-object v1, p0, Lcom/android/fileexplorer/FileListItem$ModeCallback;->mMenu:Landroid/view/Menu;

    const v2, 0x7f090058

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 98
    iget-object v1, p0, Lcom/android/fileexplorer/FileListItem$ModeCallback;->mMenu:Landroid/view/Menu;

    const v2, 0x7f090057

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 99
    return-void

    .line 98
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private scrollToSDcardTab()V
    .locals 3

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/fileexplorer/FileListItem$ModeCallback;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/fileexplorer/FileExplorerTabActivity;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 103
    .local v0, bar:Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    sget v2, Lcom/android/fileexplorer/Util;->SDCARD_TAB_INDEX:I

    if-eq v1, v2, :cond_0

    .line 104
    sget v1, Lcom/android/fileexplorer/Util;->SDCARD_TAB_INDEX:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 106
    :cond_0
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 131
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 168
    :goto_0
    iget-object v0, p0, Lcom/android/fileexplorer/FileListItem$ModeCallback;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/fileexplorer/FileListItem$ModeCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->getSelectedFileList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/Util;->updateActionModeTitle(Landroid/view/ActionMode;Landroid/content/Context;I)V

    .line 170
    const/4 v0, 0x0

    return v0

    .line 133
    :pswitch_0
    iget-object v0, p0, Lcom/android/fileexplorer/FileListItem$ModeCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationDelete()V

    .line 134
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 137
    :pswitch_1
    iget-object v0, p0, Lcom/android/fileexplorer/FileListItem$ModeCallback;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/fileexplorer/FileExplorerTabActivity;

    sget v1, Lcom/android/fileexplorer/Util;->SDCARD_TAB_INDEX:I

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileViewActivity;

    iget-object v1, p0, Lcom/android/fileexplorer/FileListItem$ModeCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->getSelectedFileList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/FileViewActivity;->copyFile(Ljava/util/ArrayList;)V

    .line 140
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 141
    invoke-direct {p0}, Lcom/android/fileexplorer/FileListItem$ModeCallback;->scrollToSDcardTab()V

    goto :goto_0

    .line 144
    :pswitch_2
    iget-object v0, p0, Lcom/android/fileexplorer/FileListItem$ModeCallback;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/fileexplorer/FileExplorerTabActivity;

    sget v1, Lcom/android/fileexplorer/Util;->SDCARD_TAB_INDEX:I

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileViewActivity;

    iget-object v1, p0, Lcom/android/fileexplorer/FileListItem$ModeCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->getSelectedFileList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/FileViewActivity;->moveToFile(Ljava/util/ArrayList;)V

    .line 147
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 148
    invoke-direct {p0}, Lcom/android/fileexplorer/FileListItem$ModeCallback;->scrollToSDcardTab()V

    goto :goto_0

    .line 151
    :pswitch_3
    iget-object v0, p0, Lcom/android/fileexplorer/FileListItem$ModeCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationSend()V

    .line 152
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 155
    :pswitch_4
    iget-object v0, p0, Lcom/android/fileexplorer/FileListItem$ModeCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationCopyPath()V

    .line 156
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 159
    :pswitch_5
    iget-object v0, p0, Lcom/android/fileexplorer/FileListItem$ModeCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->clearSelection()V

    .line 160
    invoke-direct {p0}, Lcom/android/fileexplorer/FileListItem$ModeCallback;->initMenuItemSelectAllOrCancel()V

    .line 161
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 164
    :pswitch_6
    iget-object v0, p0, Lcom/android/fileexplorer/FileListItem$ModeCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationSelectAll()V

    .line 165
    invoke-direct {p0}, Lcom/android/fileexplorer/FileListItem$ModeCallback;->initMenuItemSelectAllOrCancel()V

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x7f090052
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 115
    iget-object v1, p0, Lcom/android/fileexplorer/FileListItem$ModeCallback;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 116
    .local v0, inflater:Landroid/view/MenuInflater;
    iput-object p2, p0, Lcom/android/fileexplorer/FileListItem$ModeCallback;->mMenu:Landroid/view/Menu;

    .line 117
    const/high16 v1, 0x7f08

    iget-object v2, p0, Lcom/android/fileexplorer/FileListItem$ModeCallback;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 118
    invoke-direct {p0}, Lcom/android/fileexplorer/FileListItem$ModeCallback;->initMenuItemSelectAllOrCancel()V

    .line 119
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/fileexplorer/FileListItem$ModeCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->clearSelection()V

    .line 176
    iget-object v0, p0, Lcom/android/fileexplorer/FileListItem$ModeCallback;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/fileexplorer/FileExplorerTabActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->setActionMode(Landroid/view/ActionMode;)V

    .line 177
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    .line 124
    iget-object v0, p0, Lcom/android/fileexplorer/FileListItem$ModeCallback;->mMenu:Landroid/view/Menu;

    const v2, 0x7f090056

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v0, p0, Lcom/android/fileexplorer/FileListItem$ModeCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getSelectedFileList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 126
    return v1

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
