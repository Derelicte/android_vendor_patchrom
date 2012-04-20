.class final Lcom/miui/notes/ui/NotesListActivity$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "NotesListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/notes/ui/NotesListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/notes/ui/NotesListActivity;


# direct methods
.method public constructor <init>(Lcom/miui/notes/ui/NotesListActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 453
    iput-object p1, p0, Lcom/miui/notes/ui/NotesListActivity$BackgroundQueryHandler;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    .line 454
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 455
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 459
    packed-switch p1, :pswitch_data_0

    .line 473
    :goto_0
    return-void

    .line 461
    :pswitch_0
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity$BackgroundQueryHandler;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;
    invoke-static {v0}, Lcom/miui/notes/ui/NotesListActivity;->access$600(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NotesListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/notes/ui/NotesListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 464
    :pswitch_1
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity$BackgroundQueryHandler;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #calls: Lcom/miui/notes/ui/NotesListActivity;->showFolderListMenu(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lcom/miui/notes/ui/NotesListActivity;->access$1700(Lcom/miui/notes/ui/NotesListActivity;Landroid/database/Cursor;)V

    goto :goto_0

    .line 467
    :cond_0
    const-string v0, "NotesListActivity"

    const-string v1, "Query folder failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 459
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
