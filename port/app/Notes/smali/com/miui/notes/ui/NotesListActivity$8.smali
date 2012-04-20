.class Lcom/miui/notes/ui/NotesListActivity$8;
.super Ljava/lang/Object;
.source "NotesListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/notes/ui/NotesListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/notes/ui/NotesListActivity;


# direct methods
.method constructor <init>(Lcom/miui/notes/ui/NotesListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 784
    iput-object p1, p0, Lcom/miui/notes/ui/NotesListActivity$8;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 787
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity$8;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$8;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mFocusNoteDataItem:Lcom/miui/notes/ui/NoteItemData;
    invoke-static {v1}, Lcom/miui/notes/ui/NotesListActivity;->access$500(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NoteItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/notes/ui/NoteItemData;->getId()J

    move-result-wide v1

    #calls: Lcom/miui/notes/ui/NotesListActivity;->deleteFolder(J)V
    invoke-static {v0, v1, v2}, Lcom/miui/notes/ui/NotesListActivity;->access$2200(Lcom/miui/notes/ui/NotesListActivity;J)V

    .line 788
    return-void
.end method
