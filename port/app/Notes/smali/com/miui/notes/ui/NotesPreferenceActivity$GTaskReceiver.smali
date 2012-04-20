.class Lcom/miui/notes/ui/NotesPreferenceActivity$GTaskReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotesPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/notes/ui/NotesPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GTaskReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/notes/ui/NotesPreferenceActivity;


# direct methods
.method private constructor <init>(Lcom/miui/notes/ui/NotesPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/miui/notes/ui/NotesPreferenceActivity$GTaskReceiver;->this$0:Lcom/miui/notes/ui/NotesPreferenceActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/notes/ui/NotesPreferenceActivity;Lcom/miui/notes/ui/NotesPreferenceActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/miui/notes/ui/NotesPreferenceActivity$GTaskReceiver;-><init>(Lcom/miui/notes/ui/NotesPreferenceActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 359
    iget-object v1, p0, Lcom/miui/notes/ui/NotesPreferenceActivity$GTaskReceiver;->this$0:Lcom/miui/notes/ui/NotesPreferenceActivity;

    #calls: Lcom/miui/notes/ui/NotesPreferenceActivity;->refreshUI()V
    invoke-static {v1}, Lcom/miui/notes/ui/NotesPreferenceActivity;->access$400(Lcom/miui/notes/ui/NotesPreferenceActivity;)V

    .line 360
    const-string v1, "isSyncing"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/miui/notes/ui/NotesPreferenceActivity$GTaskReceiver;->this$0:Lcom/miui/notes/ui/NotesPreferenceActivity;

    const v2, 0x7f0d002a

    invoke-virtual {v1, v2}, Lcom/miui/notes/ui/NotesPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 362
    .local v0, syncStatus:Landroid/widget/TextView;
    const-string v1, "progressMsg"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    .end local v0           #syncStatus:Landroid/widget/TextView;
    :cond_0
    return-void
.end method
