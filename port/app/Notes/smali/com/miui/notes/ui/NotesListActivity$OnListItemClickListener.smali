.class Lcom/miui/notes/ui/NotesListActivity$OnListItemClickListener;
.super Ljava/lang/Object;
.source "NotesListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/notes/ui/NotesListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnListItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/notes/ui/NotesListActivity;


# direct methods
.method private constructor <init>(Lcom/miui/notes/ui/NotesListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 930
    iput-object p1, p0, Lcom/miui/notes/ui/NotesListActivity$OnListItemClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NotesListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 930
    invoke-direct {p0, p1}, Lcom/miui/notes/ui/NotesListActivity$OnListItemClickListener;-><init>(Lcom/miui/notes/ui/NotesListActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 934
    instance-of v0, p2, Lcom/miui/notes/ui/NotesListItem;

    if-eqz v0, :cond_0

    .line 935
    check-cast p2, Lcom/miui/notes/ui/NotesListItem;

    .end local p2
    invoke-virtual {p2}, Lcom/miui/notes/ui/NotesListItem;->getItemData()Lcom/miui/notes/ui/NoteItemData;

    move-result-object v6

    .line 936
    .local v6, item:Lcom/miui/notes/ui/NoteItemData;
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity$OnListItemClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;
    invoke-static {v0}, Lcom/miui/notes/ui/NotesListActivity;->access$600(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NotesListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/notes/ui/NotesListAdapter;->isInChoiceMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 937
    invoke-virtual {v6}, Lcom/miui/notes/ui/NoteItemData;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 938
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity$OnListItemClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/miui/notes/ui/NotesListActivity;->access$700(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p3, v0

    .line 939
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity$OnListItemClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mModeCallBack:Lcom/miui/notes/ui/NotesListActivity$ModeCallback;
    invoke-static {v0}, Lcom/miui/notes/ui/NotesListActivity;->access$1800(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NotesListActivity$ModeCallback;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/notes/ui/NotesListActivity$OnListItemClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;
    invoke-static {v2}, Lcom/miui/notes/ui/NotesListActivity;->access$600(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NotesListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/miui/notes/ui/NotesListAdapter;->isSelectedItem(I)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    move v2, p3

    move-wide v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 968
    .end local v6           #item:Lcom/miui/notes/ui/NoteItemData;
    :cond_0
    :goto_1
    return-void

    .line 939
    .restart local v6       #item:Lcom/miui/notes/ui/NoteItemData;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 945
    :cond_2
    sget-object v0, Lcom/miui/notes/ui/NotesListActivity$10;->$SwitchMap$com$miui$notes$ui$NotesListActivity$ListEditState:[I

    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$OnListItemClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;
    invoke-static {v1}, Lcom/miui/notes/ui/NotesListActivity;->access$1200(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 958
    :pswitch_0
    invoke-virtual {v6}, Lcom/miui/notes/ui/NoteItemData;->getType()I

    move-result v0

    if-nez v0, :cond_6

    .line 959
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity$OnListItemClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #calls: Lcom/miui/notes/ui/NotesListActivity;->openNode(Lcom/miui/notes/ui/NoteItemData;)V
    invoke-static {v0, v6}, Lcom/miui/notes/ui/NotesListActivity;->access$2500(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NoteItemData;)V

    goto :goto_1

    .line 947
    :pswitch_1
    invoke-virtual {v6}, Lcom/miui/notes/ui/NoteItemData;->getType()I

    move-result v0

    if-eq v0, v5, :cond_3

    invoke-virtual {v6}, Lcom/miui/notes/ui/NoteItemData;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 949
    :cond_3
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity$OnListItemClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #calls: Lcom/miui/notes/ui/NotesListActivity;->openFolder(Lcom/miui/notes/ui/NoteItemData;)V
    invoke-static {v0, v6}, Lcom/miui/notes/ui/NotesListActivity;->access$2400(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NoteItemData;)V

    goto :goto_1

    .line 950
    :cond_4
    invoke-virtual {v6}, Lcom/miui/notes/ui/NoteItemData;->getType()I

    move-result v0

    if-nez v0, :cond_5

    .line 951
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity$OnListItemClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #calls: Lcom/miui/notes/ui/NotesListActivity;->openNode(Lcom/miui/notes/ui/NoteItemData;)V
    invoke-static {v0, v6}, Lcom/miui/notes/ui/NotesListActivity;->access$2500(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NoteItemData;)V

    goto :goto_1

    .line 953
    :cond_5
    const-string v0, "NotesListActivity"

    const-string v1, "Wrong note type in NOTE_LIST"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 961
    :cond_6
    const-string v0, "NotesListActivity"

    const-string v1, "Wrong note type in SUB_FOLDER"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 945
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
