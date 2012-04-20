.class Lcom/miui/notes/ui/NotesListActivity$ModeCallback;
.super Ljava/lang/Object;
.source "NotesListActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/notes/ui/NotesListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mDropDownMenu:Landroid/widget/EditableListView$DropDownMenu;

.field private mMoveMenu:Landroid/view/MenuItem;

.field final synthetic this$0:Lcom/miui/notes/ui/NotesListActivity;


# direct methods
.method private constructor <init>(Lcom/miui/notes/ui/NotesListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NotesListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;-><init>(Lcom/miui/notes/ui/NotesListActivity;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/notes/ui/NotesListActivity$ModeCallback;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->updateMenu()V

    return-void
.end method

.method private updateMenu()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 302
    iget-object v3, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;
    invoke-static {v3}, Lcom/miui/notes/ui/NotesListActivity;->access$600(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NotesListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/notes/ui/NotesListAdapter;->getSelectedCount()I

    move-result v2

    .line 304
    .local v2, selectedCount:I
    iget-object v3, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    invoke-virtual {v3}, Lcom/miui/notes/ui/NotesListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09001d

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, format:Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->mDropDownMenu:Landroid/widget/EditableListView$DropDownMenu;

    invoke-virtual {v3, v0}, Landroid/widget/EditableListView$DropDownMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v3, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->mDropDownMenu:Landroid/widget/EditableListView$DropDownMenu;

    const v4, 0x7f0d003a

    invoke-virtual {v3, v4}, Landroid/widget/EditableListView$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 307
    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 308
    iget-object v3, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;
    invoke-static {v3}, Lcom/miui/notes/ui/NotesListActivity;->access$600(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NotesListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/notes/ui/NotesListAdapter;->isAllSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 309
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 310
    const v3, 0x7f090020

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 313
    const v3, 0x7f09001f

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public finishActionMode()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 339
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 268
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    invoke-virtual {v1}, Lcom/miui/notes/ui/NotesListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0c0005

    invoke-virtual {v1, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 269
    const v1, 0x7f0d003c

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 270
    const v1, 0x7f0d003b

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->mMoveMenu:Landroid/view/MenuItem;

    .line 271
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mFocusNoteDataItem:Lcom/miui/notes/ui/NoteItemData;
    invoke-static {v1}, Lcom/miui/notes/ui/NotesListActivity;->access$500(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NoteItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/notes/ui/NoteItemData;->getParentId()J

    move-result-wide v1

    const-wide/16 v3, -0x2

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/miui/notes/ui/NotesListActivity;->access$000(Lcom/miui/notes/ui/NotesListActivity;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/notes/tool/DataUtils;->getUserFolderCount(Landroid/content/ContentResolver;)I

    move-result v1

    if-nez v1, :cond_1

    .line 273
    :cond_0
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->mMoveMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 278
    :goto_0
    iput-object p1, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 279
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;
    invoke-static {v1}, Lcom/miui/notes/ui/NotesListActivity;->access$600(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NotesListAdapter;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/miui/notes/ui/NotesListAdapter;->setChoiceMode(Z)V

    .line 280
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/miui/notes/ui/NotesListActivity;->access$700(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 281
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mAddNewNote:Landroid/widget/Button;
    invoke-static {v1}, Lcom/miui/notes/ui/NotesListActivity;->access$800(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/Button;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 283
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x303001e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 285
    .local v0, customView:Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 286
    new-instance v2, Landroid/widget/EditableListView$DropDownMenu;

    iget-object v3, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    const v1, 0x30b0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v4, 0x7f0c0004

    new-instance v5, Lcom/miui/notes/ui/NotesListActivity$ModeCallback$1;

    invoke-direct {v5, p0}, Lcom/miui/notes/ui/NotesListActivity$ModeCallback$1;-><init>(Lcom/miui/notes/ui/NotesListActivity$ModeCallback;)V

    invoke-direct {v2, v3, v1, v4, v5}, Landroid/widget/EditableListView$DropDownMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;ILandroid/widget/PopupMenu$OnMenuItemClickListener;)V

    iput-object v2, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->mDropDownMenu:Landroid/widget/EditableListView$DropDownMenu;

    .line 298
    return v6

    .line 275
    .end local v0           #customView:Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->mMoveMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 276
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->mMoveMenu:Landroid/view/MenuItem;

    invoke-interface {v1, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 332
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;
    invoke-static {v0}, Lcom/miui/notes/ui/NotesListActivity;->access$600(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NotesListAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/notes/ui/NotesListAdapter;->setChoiceMode(Z)V

    .line 333
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/miui/notes/ui/NotesListActivity;->access$700(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 334
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mAddNewNote:Landroid/widget/Button;
    invoke-static {v0}, Lcom/miui/notes/ui/NotesListActivity;->access$800(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 335
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 1
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;
    invoke-static {v0}, Lcom/miui/notes/ui/NotesListActivity;->access$600(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NotesListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2, p5}, Lcom/miui/notes/ui/NotesListAdapter;->setCheckedItem(IZ)V

    .line 345
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->updateMenu()V

    .line 346
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 350
    iget-object v3, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;
    invoke-static {v3}, Lcom/miui/notes/ui/NotesListActivity;->access$600(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NotesListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/notes/ui/NotesListAdapter;->getSelectedCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 351
    iget-object v3, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    iget-object v4, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    const v5, 0x7f09001e

    invoke-virtual {v4, v5}, Lcom/miui/notes/ui/NotesListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 380
    :goto_0
    return v1

    .line 356
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 378
    goto :goto_0

    .line 358
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 359
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    const v4, 0x7f090034

    invoke-virtual {v3, v4}, Lcom/miui/notes/ui/NotesListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 360
    const v3, 0x1080027

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 361
    iget-object v3, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    const v4, 0x7f090035

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;
    invoke-static {v6}, Lcom/miui/notes/ui/NotesListActivity;->access$600(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NotesListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/notes/ui/NotesListAdapter;->getSelectedCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/miui/notes/ui/NotesListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 363
    const v2, 0x104000a

    new-instance v3, Lcom/miui/notes/ui/NotesListActivity$ModeCallback$2;

    invoke-direct {v3, p0}, Lcom/miui/notes/ui/NotesListActivity$ModeCallback$2;-><init>(Lcom/miui/notes/ui/NotesListActivity$ModeCallback;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 371
    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 372
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 375
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_1
    iget-object v2, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #calls: Lcom/miui/notes/ui/NotesListActivity;->startQueryDestinationFolders()V
    invoke-static {v2}, Lcom/miui/notes/ui/NotesListActivity;->access$1100(Lcom/miui/notes/ui/NotesListActivity;)V

    goto :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch 0x7f0d003b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 321
    const/4 v0, 0x0

    return v0
.end method
