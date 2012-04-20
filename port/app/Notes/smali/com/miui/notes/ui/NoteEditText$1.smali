.class Lcom/miui/notes/ui/NoteEditText$1;
.super Ljava/lang/Object;
.source "NoteEditText.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/notes/ui/NoteEditText;->onCreateContextMenu(Landroid/view/ContextMenu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/notes/ui/NoteEditText;

.field final synthetic val$urls:[Landroid/text/style/URLSpan;


# direct methods
.method constructor <init>(Lcom/miui/notes/ui/NoteEditText;[Landroid/text/style/URLSpan;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/miui/notes/ui/NoteEditText$1;->this$0:Lcom/miui/notes/ui/NoteEditText;

    iput-object p2, p0, Lcom/miui/notes/ui/NoteEditText$1;->val$urls:[Landroid/text/style/URLSpan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditText$1;->val$urls:[Landroid/text/style/URLSpan;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditText$1;->this$0:Lcom/miui/notes/ui/NoteEditText;

    invoke-virtual {v0, v1}, Landroid/text/style/URLSpan;->onClick(Landroid/view/View;)V

    .line 212
    const/4 v0, 0x1

    return v0
.end method
