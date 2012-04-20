.class Lcom/miui/notes/ui/NotesListActivity$5;
.super Ljava/lang/Object;
.source "NotesListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/notes/ui/NotesListActivity;->showCreateOrModifyFolderDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/notes/ui/NotesListActivity;

.field final synthetic val$create:Z

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$etName:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/miui/notes/ui/NotesListActivity;Landroid/widget/EditText;ZLandroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 644
    iput-object p1, p0, Lcom/miui/notes/ui/NotesListActivity$5;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    iput-object p2, p0, Lcom/miui/notes/ui/NotesListActivity$5;->val$etName:Landroid/widget/EditText;

    iput-boolean p3, p0, Lcom/miui/notes/ui/NotesListActivity$5;->val$create:Z

    iput-object p4, p0, Lcom/miui/notes/ui/NotesListActivity$5;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 647
    iget-object v2, p0, Lcom/miui/notes/ui/NotesListActivity$5;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    iget-object v3, p0, Lcom/miui/notes/ui/NotesListActivity$5;->val$etName:Landroid/widget/EditText;

    #calls: Lcom/miui/notes/ui/NotesListActivity;->hideSoftInput(Landroid/view/View;)V
    invoke-static {v2, v3}, Lcom/miui/notes/ui/NotesListActivity;->access$2100(Lcom/miui/notes/ui/NotesListActivity;Landroid/view/View;)V

    .line 648
    iget-object v2, p0, Lcom/miui/notes/ui/NotesListActivity$5;->val$etName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 649
    .local v0, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/notes/ui/NotesListActivity$5;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/miui/notes/ui/NotesListActivity;->access$000(Lcom/miui/notes/ui/NotesListActivity;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/miui/notes/tool/DataUtils;->checkVisibleFolderName(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 650
    iget-object v2, p0, Lcom/miui/notes/ui/NotesListActivity$5;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    iget-object v3, p0, Lcom/miui/notes/ui/NotesListActivity$5;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    const v4, 0x7f09002b

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/miui/notes/ui/NotesListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 652
    iget-object v2, p0, Lcom/miui/notes/ui/NotesListActivity$5;->val$etName:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/miui/notes/ui/NotesListActivity$5;->val$etName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-virtual {v2, v8, v3}, Landroid/widget/EditText;->setSelection(II)V

    .line 673
    :goto_0
    return-void

    .line 655
    :cond_0
    iget-boolean v2, p0, Lcom/miui/notes/ui/NotesListActivity$5;->val$create:Z

    if-nez v2, :cond_2

    .line 656
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 657
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 658
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "snippet"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v2, "type"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 660
    const-string v2, "local_modified"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 661
    iget-object v2, p0, Lcom/miui/notes/ui/NotesListActivity$5;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/miui/notes/ui/NotesListActivity;->access$000(Lcom/miui/notes/ui/NotesListActivity;)Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    const-string v4, "_id=?"

    new-array v5, v6, [Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/notes/ui/NotesListActivity$5;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mFocusNoteDataItem:Lcom/miui/notes/ui/NoteItemData;
    invoke-static {v6}, Lcom/miui/notes/ui/NotesListActivity;->access$500(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NoteItemData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/notes/ui/NoteItemData;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 672
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/miui/notes/ui/NotesListActivity$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 666
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 667
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 668
    .restart local v1       #values:Landroid/content/ContentValues;
    const-string v2, "snippet"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const-string v2, "type"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 670
    iget-object v2, p0, Lcom/miui/notes/ui/NotesListActivity$5;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/miui/notes/ui/NotesListActivity;->access$000(Lcom/miui/notes/ui/NotesListActivity;)Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1
.end method
