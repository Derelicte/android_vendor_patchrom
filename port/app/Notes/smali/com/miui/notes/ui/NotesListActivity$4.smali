.class Lcom/miui/notes/ui/NotesListActivity$4;
.super Ljava/lang/Object;
.source "NotesListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/miui/notes/ui/NotesListActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 635
    iput-object p1, p0, Lcom/miui/notes/ui/NotesListActivity$4;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    iput-object p2, p0, Lcom/miui/notes/ui/NotesListActivity$4;->val$etName:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 638
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity$4;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$4;->val$etName:Landroid/widget/EditText;

    #calls: Lcom/miui/notes/ui/NotesListActivity;->hideSoftInput(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/miui/notes/ui/NotesListActivity;->access$2100(Lcom/miui/notes/ui/NotesListActivity;Landroid/view/View;)V

    .line 639
    return-void
.end method
