.class Lcom/miui/notes/ui/NoteEditActivity$3;
.super Ljava/lang/Object;
.source "NoteEditActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/notes/ui/NoteEditActivity;->getListItem(Ljava/lang/String;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/notes/ui/NoteEditActivity;

.field final synthetic val$edit:Lcom/miui/notes/ui/NoteEditText;


# direct methods
.method constructor <init>(Lcom/miui/notes/ui/NoteEditActivity;Lcom/miui/notes/ui/NoteEditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 783
    iput-object p1, p0, Lcom/miui/notes/ui/NoteEditActivity$3;->this$0:Lcom/miui/notes/ui/NoteEditActivity;

    iput-object p2, p0, Lcom/miui/notes/ui/NoteEditActivity$3;->val$edit:Lcom/miui/notes/ui/NoteEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 786
    if-eqz p2, :cond_0

    .line 787
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity$3;->val$edit:Lcom/miui/notes/ui/NoteEditText;

    iget-object v1, p0, Lcom/miui/notes/ui/NoteEditActivity$3;->val$edit:Lcom/miui/notes/ui/NoteEditText;

    invoke-virtual {v1}, Lcom/miui/notes/ui/NoteEditText;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Lcom/miui/notes/ui/NoteEditText;->setPaintFlags(I)V

    .line 791
    :goto_0
    return-void

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/miui/notes/ui/NoteEditActivity$3;->val$edit:Lcom/miui/notes/ui/NoteEditText;

    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Lcom/miui/notes/ui/NoteEditText;->setPaintFlags(I)V

    goto :goto_0
.end method
