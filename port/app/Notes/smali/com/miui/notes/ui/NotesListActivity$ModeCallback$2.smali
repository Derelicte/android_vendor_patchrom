.class Lcom/miui/notes/ui/NotesListActivity$ModeCallback$2;
.super Ljava/lang/Object;
.source "NotesListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->onMenuItemClick(Landroid/view/MenuItem;)Z
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
    .line 364
    iput-object p1, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback$2;->this$1:Lcom/miui/notes/ui/NotesListActivity$ModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback$2;->this$1:Lcom/miui/notes/ui/NotesListActivity$ModeCallback;

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #calls: Lcom/miui/notes/ui/NotesListActivity;->batchDelete()V
    invoke-static {v0}, Lcom/miui/notes/ui/NotesListActivity;->access$1000(Lcom/miui/notes/ui/NotesListActivity;)V

    .line 369
    return-void
.end method
