.class Lcom/miui/notes/ui/NotesPreferenceActivity$6;
.super Ljava/lang/Object;
.source "NotesPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/notes/ui/NotesPreferenceActivity;->showChangeAccountConfirmAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/notes/ui/NotesPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/miui/notes/ui/NotesPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/miui/notes/ui/NotesPreferenceActivity$6;->this$0:Lcom/miui/notes/ui/NotesPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 265
    if-nez p2, :cond_1

    .line 266
    iget-object v0, p0, Lcom/miui/notes/ui/NotesPreferenceActivity$6;->this$0:Lcom/miui/notes/ui/NotesPreferenceActivity;

    #calls: Lcom/miui/notes/ui/NotesPreferenceActivity;->showSelectAccountAlertDialog()V
    invoke-static {v0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->access$100(Lcom/miui/notes/ui/NotesPreferenceActivity;)V

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/miui/notes/ui/NotesPreferenceActivity$6;->this$0:Lcom/miui/notes/ui/NotesPreferenceActivity;

    #calls: Lcom/miui/notes/ui/NotesPreferenceActivity;->removeSyncAccount()V
    invoke-static {v0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->access$600(Lcom/miui/notes/ui/NotesPreferenceActivity;)V

    .line 269
    iget-object v0, p0, Lcom/miui/notes/ui/NotesPreferenceActivity$6;->this$0:Lcom/miui/notes/ui/NotesPreferenceActivity;

    #calls: Lcom/miui/notes/ui/NotesPreferenceActivity;->refreshUI()V
    invoke-static {v0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->access$400(Lcom/miui/notes/ui/NotesPreferenceActivity;)V

    goto :goto_0
.end method
