.class Lcom/miui/notes/ui/NotesPreferenceActivity$2;
.super Ljava/lang/Object;
.source "NotesPreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/notes/ui/NotesPreferenceActivity;->loadSyncButton()V
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
    .line 149
    iput-object p1, p0, Lcom/miui/notes/ui/NotesPreferenceActivity$2;->this$0:Lcom/miui/notes/ui/NotesPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/miui/notes/ui/NotesPreferenceActivity$2;->this$0:Lcom/miui/notes/ui/NotesPreferenceActivity;

    invoke-static {v0}, Lcom/miui/notes/gtask/remote/GTaskSyncService;->cancelSync(Landroid/content/Context;)V

    .line 153
    return-void
.end method
