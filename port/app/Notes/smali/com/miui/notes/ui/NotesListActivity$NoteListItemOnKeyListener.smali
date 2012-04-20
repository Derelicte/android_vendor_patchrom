.class Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnKeyListener;
.super Ljava/lang/Object;
.source "NotesListActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/notes/ui/NotesListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoteListItemOnKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/notes/ui/NotesListActivity;


# direct methods
.method private constructor <init>(Lcom/miui/notes/ui/NotesListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 803
    iput-object p1, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnKeyListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NotesListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 803
    invoke-direct {p0, p1}, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnKeyListener;-><init>(Lcom/miui/notes/ui/NotesListActivity;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 806
    const/16 v0, 0x17

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnKeyListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mMove:Z
    invoke-static {v0}, Lcom/miui/notes/ui/NotesListActivity;->access$2300(Lcom/miui/notes/ui/NotesListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    const/4 v0, 0x1

    .line 810
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
