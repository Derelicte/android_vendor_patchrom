.class Lcom/miui/notes/ui/NoteEditActivity$1;
.super Ljava/lang/Object;
.source "NoteEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/notes/ui/NoteEditActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/notes/ui/NoteEditActivity;


# direct methods
.method constructor <init>(Lcom/miui/notes/ui/NoteEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 549
    iput-object p1, p0, Lcom/miui/notes/ui/NoteEditActivity$1;->this$0:Lcom/miui/notes/ui/NoteEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity$1;->this$0:Lcom/miui/notes/ui/NoteEditActivity;

    #calls: Lcom/miui/notes/ui/NoteEditActivity;->deleteCurrentNote()V
    invoke-static {v0}, Lcom/miui/notes/ui/NoteEditActivity;->access$100(Lcom/miui/notes/ui/NoteEditActivity;)V

    .line 553
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity$1;->this$0:Lcom/miui/notes/ui/NoteEditActivity;

    invoke-virtual {v0}, Lcom/miui/notes/ui/NoteEditActivity;->finish()V

    .line 554
    return-void
.end method
