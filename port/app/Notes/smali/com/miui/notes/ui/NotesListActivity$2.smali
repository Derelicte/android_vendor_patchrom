.class Lcom/miui/notes/ui/NotesListActivity$2;
.super Ljava/lang/Object;
.source "NotesListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/notes/ui/NotesListActivity;->showFolderListMenu(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/notes/ui/NotesListActivity;

.field final synthetic val$adapter:Lcom/miui/notes/ui/FoldersListAdapter;


# direct methods
.method constructor <init>(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/FoldersListAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 480
    iput-object p1, p0, Lcom/miui/notes/ui/NotesListActivity$2;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    iput-object p2, p0, Lcom/miui/notes/ui/NotesListActivity$2;->val$adapter:Lcom/miui/notes/ui/FoldersListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x0

    .line 484
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity$2;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/miui/notes/ui/NotesListActivity;->access$000(Lcom/miui/notes/ui/NotesListActivity;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$2;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;
    invoke-static {v1}, Lcom/miui/notes/ui/NotesListActivity;->access$600(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NotesListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/notes/ui/NotesListAdapter;->getSelectedItemIds()Ljava/util/HashSet;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/notes/ui/NotesListActivity$2;->val$adapter:Lcom/miui/notes/ui/FoldersListAdapter;

    invoke-virtual {v2, p2}, Lcom/miui/notes/ui/FoldersListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/miui/notes/tool/DataUtils;->batchMoveToFolder(Landroid/content/ContentResolver;Ljava/util/HashSet;J)Z

    .line 486
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity$2;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$2;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    const v2, 0x7f090037

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/notes/ui/NotesListActivity$2;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;
    invoke-static {v4}, Lcom/miui/notes/ui/NotesListActivity;->access$600(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NotesListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/notes/ui/NotesListAdapter;->getSelectedCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/miui/notes/ui/NotesListActivity$2;->val$adapter:Lcom/miui/notes/ui/FoldersListAdapter;

    iget-object v6, p0, Lcom/miui/notes/ui/NotesListActivity$2;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    invoke-virtual {v5, v6, p2}, Lcom/miui/notes/ui/FoldersListAdapter;->getFolderName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/miui/notes/ui/NotesListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 492
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity$2;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mModeCallBack:Lcom/miui/notes/ui/NotesListActivity$ModeCallback;
    invoke-static {v0}, Lcom/miui/notes/ui/NotesListActivity;->access$1800(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NotesListActivity$ModeCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->finishActionMode()V

    .line 493
    return-void
.end method
