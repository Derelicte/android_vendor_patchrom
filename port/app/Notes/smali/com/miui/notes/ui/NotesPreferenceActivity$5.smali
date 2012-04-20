.class Lcom/miui/notes/ui/NotesPreferenceActivity$5;
.super Ljava/lang/Object;
.source "NotesPreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/miui/notes/ui/NotesPreferenceActivity;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/miui/notes/ui/NotesPreferenceActivity$5;->this$0:Lcom/miui/notes/ui/NotesPreferenceActivity;

    iput-object p2, p0, Lcom/miui/notes/ui/NotesPreferenceActivity$5;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 235
    iget-object v1, p0, Lcom/miui/notes/ui/NotesPreferenceActivity$5;->this$0:Lcom/miui/notes/ui/NotesPreferenceActivity;

    #setter for: Lcom/miui/notes/ui/NotesPreferenceActivity;->mHasAddedAccount:Z
    invoke-static {v1, v2}, Lcom/miui/notes/ui/NotesPreferenceActivity;->access$502(Lcom/miui/notes/ui/NotesPreferenceActivity;Z)Z

    .line 236
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "authorities"

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "gmail-ls"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    iget-object v1, p0, Lcom/miui/notes/ui/NotesPreferenceActivity$5;->this$0:Lcom/miui/notes/ui/NotesPreferenceActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/miui/notes/ui/NotesPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 241
    iget-object v1, p0, Lcom/miui/notes/ui/NotesPreferenceActivity$5;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 242
    return-void
.end method
