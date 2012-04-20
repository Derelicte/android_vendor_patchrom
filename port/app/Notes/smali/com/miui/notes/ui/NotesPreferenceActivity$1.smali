.class Lcom/miui/notes/ui/NotesPreferenceActivity$1;
.super Ljava/lang/Object;
.source "NotesPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/notes/ui/NotesPreferenceActivity;->loadAccountPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/notes/ui/NotesPreferenceActivity;

.field final synthetic val$defaultAccount:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/notes/ui/NotesPreferenceActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/miui/notes/ui/NotesPreferenceActivity$1;->this$0:Lcom/miui/notes/ui/NotesPreferenceActivity;

    iput-object p2, p0, Lcom/miui/notes/ui/NotesPreferenceActivity$1;->val$defaultAccount:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 121
    invoke-static {}, Lcom/miui/notes/gtask/remote/GTaskSyncService;->isSyncing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/miui/notes/ui/NotesPreferenceActivity$1;->val$defaultAccount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/miui/notes/ui/NotesPreferenceActivity$1;->this$0:Lcom/miui/notes/ui/NotesPreferenceActivity;

    #calls: Lcom/miui/notes/ui/NotesPreferenceActivity;->showSelectAccountAlertDialog()V
    invoke-static {v0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->access$100(Lcom/miui/notes/ui/NotesPreferenceActivity;)V

    .line 135
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/miui/notes/ui/NotesPreferenceActivity$1;->this$0:Lcom/miui/notes/ui/NotesPreferenceActivity;

    #calls: Lcom/miui/notes/ui/NotesPreferenceActivity;->showChangeAccountConfirmAlertDialog()V
    invoke-static {v0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->access$200(Lcom/miui/notes/ui/NotesPreferenceActivity;)V

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/miui/notes/ui/NotesPreferenceActivity$1;->this$0:Lcom/miui/notes/ui/NotesPreferenceActivity;

    const v1, 0x7f09005a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
