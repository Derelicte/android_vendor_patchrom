.class Lcom/miui/notes/ui/NotesPreferenceActivity$4;
.super Ljava/lang/Object;
.source "NotesPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/notes/ui/NotesPreferenceActivity;->showSelectAccountAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/notes/ui/NotesPreferenceActivity;

.field final synthetic val$itemMapping:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/miui/notes/ui/NotesPreferenceActivity;[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/miui/notes/ui/NotesPreferenceActivity$4;->this$0:Lcom/miui/notes/ui/NotesPreferenceActivity;

    iput-object p2, p0, Lcom/miui/notes/ui/NotesPreferenceActivity$4;->val$itemMapping:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/miui/notes/ui/NotesPreferenceActivity$4;->this$0:Lcom/miui/notes/ui/NotesPreferenceActivity;

    iget-object v1, p0, Lcom/miui/notes/ui/NotesPreferenceActivity$4;->val$itemMapping:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/miui/notes/ui/NotesPreferenceActivity;->setSyncAccount(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/miui/notes/ui/NotesPreferenceActivity;->access$300(Lcom/miui/notes/ui/NotesPreferenceActivity;Ljava/lang/String;)V

    .line 222
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 223
    iget-object v0, p0, Lcom/miui/notes/ui/NotesPreferenceActivity$4;->this$0:Lcom/miui/notes/ui/NotesPreferenceActivity;

    #calls: Lcom/miui/notes/ui/NotesPreferenceActivity;->refreshUI()V
    invoke-static {v0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->access$400(Lcom/miui/notes/ui/NotesPreferenceActivity;)V

    .line 224
    return-void
.end method
