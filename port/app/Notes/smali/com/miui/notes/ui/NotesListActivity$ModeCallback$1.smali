.class Lcom/miui/notes/ui/NotesListActivity$ModeCallback$1;
.super Ljava/lang/Object;
.source "NotesListActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/notes/ui/NotesListActivity$ModeCallback;


# direct methods
.method constructor <init>(Lcom/miui/notes/ui/NotesListActivity$ModeCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback$1;->this$1:Lcom/miui/notes/ui/NotesListActivity$ModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 291
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback$1;->this$1:Lcom/miui/notes/ui/NotesListActivity$ModeCallback;

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;
    invoke-static {v0}, Lcom/miui/notes/ui/NotesListActivity;->access$600(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NotesListAdapter;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback$1;->this$1:Lcom/miui/notes/ui/NotesListActivity$ModeCallback;

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;
    invoke-static {v0}, Lcom/miui/notes/ui/NotesListActivity;->access$600(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NotesListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/notes/ui/NotesListAdapter;->isAllSelected()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/miui/notes/ui/NotesListAdapter;->selectAll(Z)V

    .line 292
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback$1;->this$1:Lcom/miui/notes/ui/NotesListActivity$ModeCallback;

    #calls: Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->updateMenu()V
    invoke-static {v0}, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->access$900(Lcom/miui/notes/ui/NotesListActivity$ModeCallback;)V

    .line 293
    return v1

    .line 291
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
