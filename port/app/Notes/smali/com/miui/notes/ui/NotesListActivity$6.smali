.class Lcom/miui/notes/ui/NotesListActivity$6;
.super Ljava/lang/Object;
.source "NotesListActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

.field final synthetic val$etName:Landroid/widget/EditText;

.field final synthetic val$positive:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/miui/notes/ui/NotesListActivity;Landroid/widget/EditText;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 682
    iput-object p1, p0, Lcom/miui/notes/ui/NotesListActivity$6;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    iput-object p2, p0, Lcom/miui/notes/ui/NotesListActivity$6;->val$etName:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/miui/notes/ui/NotesListActivity$6;->val$positive:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 702
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 687
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 691
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity$6;->val$etName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity$6;->val$positive:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 696
    :goto_0
    return-void

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity$6;->val$positive:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
