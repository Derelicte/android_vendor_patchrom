.class Lcom/miui/notes/ui/NoteEditText$MenuHandler;
.super Ljava/lang/Object;
.source "NoteEditText.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/notes/ui/NoteEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/notes/ui/NoteEditText;


# direct methods
.method private constructor <init>(Lcom/miui/notes/ui/NoteEditText;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/miui/notes/ui/NoteEditText$MenuHandler;->this$0:Lcom/miui/notes/ui/NoteEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/notes/ui/NoteEditText;Lcom/miui/notes/ui/NoteEditText$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/miui/notes/ui/NoteEditText$MenuHandler;-><init>(Lcom/miui/notes/ui/NoteEditText;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditText$MenuHandler;->this$0:Lcom/miui/notes/ui/NoteEditText;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    #calls: Lcom/miui/notes/ui/NoteEditText;->onTextContextMenuItem(Ljava/lang/CharSequence;)Z
    invoke-static {v0, v1}, Lcom/miui/notes/ui/NoteEditText;->access$100(Lcom/miui/notes/ui/NoteEditText;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
