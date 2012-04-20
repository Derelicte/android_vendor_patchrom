.class public Lcom/miui/notes/ui/NotesListActivity;
.super Landroid/app/Activity;
.source "NotesListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/notes/ui/NotesListActivity$10;,
        Lcom/miui/notes/ui/NotesListActivity$OnListItemClickListener;,
        Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnKeyListener;,
        Lcom/miui/notes/ui/NotesListActivity$BackgroundQueryHandler;,
        Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;,
        Lcom/miui/notes/ui/NotesListActivity$ModeCallback;,
        Lcom/miui/notes/ui/NotesListActivity$ListEditState;
    }
.end annotation


# instance fields
.field private mAddNewNote:Landroid/widget/Button;

.field private mBackgroundQueryHandler:Lcom/miui/notes/ui/NotesListActivity$BackgroundQueryHandler;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentFolderId:J

.field private mDispatch:Z

.field private mDispatchY:I

.field private mFocusNoteDataItem:Lcom/miui/notes/ui/NoteItemData;

.field private final mFolderOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mModeCallBack:Lcom/miui/notes/ui/NotesListActivity$ModeCallback;

.field private mMove:Z

.field private mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;

.field private mNotesListView:Landroid/widget/ListView;

.field private mOriginY:I

.field private mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

.field private mTitleBar:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 749
    new-instance v0, Lcom/miui/notes/ui/NotesListActivity$7;

    invoke-direct {v0, p0}, Lcom/miui/notes/ui/NotesListActivity$7;-><init>(Lcom/miui/notes/ui/NotesListActivity;)V

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mFolderOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 930
    return-void
.end method

.method static synthetic access$000(Lcom/miui/notes/ui/NotesListActivity;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/notes/ui/NotesListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->batchDelete()V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/notes/ui/NotesListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->startQueryDestinationFolders()V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NotesListActivity$ListEditState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mTitleBar:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/notes/ui/NotesListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mOriginY:I

    return v0
.end method

.method static synthetic access$1402(Lcom/miui/notes/ui/NotesListActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/miui/notes/ui/NotesListActivity;->mOriginY:I

    return p1
.end method

.method static synthetic access$1500(Lcom/miui/notes/ui/NotesListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mDispatchY:I

    return v0
.end method

.method static synthetic access$1502(Lcom/miui/notes/ui/NotesListActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/miui/notes/ui/NotesListActivity;->mDispatchY:I

    return p1
.end method

.method static synthetic access$1512(Lcom/miui/notes/ui/NotesListActivity;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iget v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mDispatchY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mDispatchY:I

    return v0
.end method

.method static synthetic access$1600(Lcom/miui/notes/ui/NotesListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mDispatch:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/miui/notes/ui/NotesListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/miui/notes/ui/NotesListActivity;->mDispatch:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/miui/notes/ui/NotesListActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/miui/notes/ui/NotesListActivity;->showFolderListMenu(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NotesListActivity$ModeCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mModeCallBack:Lcom/miui/notes/ui/NotesListActivity$ModeCallback;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/miui/notes/ui/NotesListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->isSyncMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/miui/notes/ui/NotesListActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/miui/notes/ui/NotesListActivity;->updateWidget(II)V

    return-void
.end method

.method static synthetic access$2100(Lcom/miui/notes/ui/NotesListActivity;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/miui/notes/ui/NotesListActivity;->hideSoftInput(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/miui/notes/ui/NotesListActivity;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/miui/notes/ui/NotesListActivity;->deleteFolder(J)V

    return-void
.end method

.method static synthetic access$2300(Lcom/miui/notes/ui/NotesListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mMove:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NoteItemData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/miui/notes/ui/NotesListActivity;->openFolder(Lcom/miui/notes/ui/NoteItemData;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NoteItemData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/miui/notes/ui/NotesListActivity;->openNode(Lcom/miui/notes/ui/NoteItemData;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NoteItemData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mFocusNoteDataItem:Lcom/miui/notes/ui/NoteItemData;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NotesListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mAddNewNote:Landroid/widget/Button;

    return-object v0
.end method

.method private batchDelete()V
    .locals 2

    .prologue
    .line 506
    new-instance v0, Lcom/miui/notes/ui/NotesListActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/notes/ui/NotesListActivity$3;-><init>(Lcom/miui/notes/ui/NotesListActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/notes/ui/NotesListActivity$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 540
    return-void
.end method

.method private createNewNote()V
    .locals 4

    .prologue
    .line 499
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/notes/ui/NoteEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 500
    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    const-string v1, "com.miui.notes.folder_id"

    iget-wide v2, p0, Lcom/miui/notes/ui/NotesListActivity;->mCurrentFolderId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 502
    const/16 v1, 0x67

    invoke-virtual {p0, v0, v1}, Lcom/miui/notes/ui/NotesListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 503
    return-void
.end method

.method private deleteFolder(J)V
    .locals 7
    .parameter "folderId"

    .prologue
    .line 543
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-nez v4, :cond_1

    .line 544
    const-string v4, "NotesListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrong folder id, should not happen "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_0
    return-void

    .line 548
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 549
    .local v1, ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 550
    iget-object v4, p0, Lcom/miui/notes/ui/NotesListActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4, p1, p2}, Lcom/miui/notes/tool/DataUtils;->getFolderNoteWidget(Landroid/content/ContentResolver;J)Ljava/util/HashSet;

    move-result-object v3

    .line 552
    .local v3, widgets:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;>;"
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->isSyncMode()Z

    move-result v4

    if-nez v4, :cond_3

    .line 554
    iget-object v4, p0, Lcom/miui/notes/ui/NotesListActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v1}, Lcom/miui/notes/tool/DataUtils;->batchDeleteNotes(Landroid/content/ContentResolver;Ljava/util/HashSet;)Z

    .line 559
    :goto_0
    if-eqz v3, :cond_0

    .line 560
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;

    .line 561
    .local v2, widget:Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;
    iget v4, v2, Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;->widgetId:I

    if-eqz v4, :cond_2

    iget v4, v2, Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;->widgetType:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 563
    iget v4, v2, Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;->widgetId:I

    iget v5, v2, Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;->widgetType:I

    invoke-direct {p0, v4, v5}, Lcom/miui/notes/ui/NotesListActivity;->updateWidget(II)V

    goto :goto_1

    .line 557
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #widget:Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;
    :cond_3
    iget-object v4, p0, Lcom/miui/notes/ui/NotesListActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-wide/16 v5, -0x3

    invoke-static {v4, v1, v5, v6}, Lcom/miui/notes/tool/DataUtils;->batchMoveToFolder(Landroid/content/ContentResolver;Ljava/util/HashSet;J)Z

    goto :goto_0
.end method

.method private exportNoteToText()V
    .locals 3

    .prologue
    .line 879
    invoke-static {p0}, Lcom/miui/notes/tool/BackupUtils;->getInstance(Landroid/content/Context;)Lcom/miui/notes/tool/BackupUtils;

    move-result-object v0

    .line 880
    .local v0, backup:Lcom/miui/notes/tool/BackupUtils;
    new-instance v1, Lcom/miui/notes/ui/NotesListActivity$9;

    invoke-direct {v1, p0, v0}, Lcom/miui/notes/ui/NotesListActivity$9;-><init>(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/tool/BackupUtils;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/miui/notes/ui/NotesListActivity$9;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 918
    return-void
.end method

.method private hideSoftInput(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 612
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NotesListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 613
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 614
    return-void
.end method

.method private initResources()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 239
    invoke-virtual {p0}, Lcom/miui/notes/ui/NotesListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 240
    new-instance v0, Lcom/miui/notes/ui/NotesListActivity$BackgroundQueryHandler;

    invoke-virtual {p0}, Lcom/miui/notes/ui/NotesListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/notes/ui/NotesListActivity$BackgroundQueryHandler;-><init>(Lcom/miui/notes/ui/NotesListActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mBackgroundQueryHandler:Lcom/miui/notes/ui/NotesListActivity$BackgroundQueryHandler;

    .line 241
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mCurrentFolderId:J

    .line 242
    const v0, 0x7f0d0027

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NotesListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/ListView;

    .line 243
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/ListView;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030004

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 245
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/ListView;

    new-instance v1, Lcom/miui/notes/ui/NotesListActivity$OnListItemClickListener;

    invoke-direct {v1, p0, v3}, Lcom/miui/notes/ui/NotesListActivity$OnListItemClickListener;-><init>(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NotesListActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 246
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 247
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/ListView;

    new-instance v1, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnKeyListener;

    invoke-direct {v1, p0, v3}, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnKeyListener;-><init>(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NotesListActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 248
    new-instance v0, Lcom/miui/notes/ui/NotesListAdapter;

    invoke-direct {v0, p0}, Lcom/miui/notes/ui/NotesListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;

    .line 249
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 250
    const v0, 0x7f0d0028

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NotesListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mAddNewNote:Landroid/widget/Button;

    .line 251
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mAddNewNote:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mAddNewNote:Landroid/widget/Button;

    new-instance v1, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;

    invoke-direct {v1, p0, v3}, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;-><init>(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NotesListActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 253
    iput-boolean v4, p0, Lcom/miui/notes/ui/NotesListActivity;->mDispatch:Z

    .line 254
    iput v4, p0, Lcom/miui/notes/ui/NotesListActivity;->mDispatchY:I

    .line 255
    iput v4, p0, Lcom/miui/notes/ui/NotesListActivity;->mOriginY:I

    .line 256
    const v0, 0x7f0d0026

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NotesListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mTitleBar:Landroid/widget/TextView;

    .line 257
    sget-object v0, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->NOTE_LIST:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    .line 258
    new-instance v0, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;

    invoke-direct {v0, p0, v3}, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;-><init>(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NotesListActivity$1;)V

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mModeCallBack:Lcom/miui/notes/ui/NotesListActivity$ModeCallback;

    .line 259
    return-void
.end method

.method private isSyncMode()Z
    .locals 1

    .prologue
    .line 921
    invoke-static {p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getSyncAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openFolder(Lcom/miui/notes/ui/NoteItemData;)V
    .locals 4
    .parameter "data"

    .prologue
    const-wide/16 v2, -0x2

    .line 577
    invoke-virtual {p1}, Lcom/miui/notes/ui/NoteItemData;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mCurrentFolderId:J

    .line 578
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->startAsyncNotesListQuery()V

    .line 579
    invoke-virtual {p1}, Lcom/miui/notes/ui/NoteItemData;->getId()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 580
    sget-object v0, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->CALL_RECORD_FOLDER:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    .line 581
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mAddNewNote:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 585
    :goto_0
    invoke-virtual {p1}, Lcom/miui/notes/ui/NoteItemData;->getId()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 586
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mTitleBar:Landroid/widget/TextView;

    const v1, 0x7f09005e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 590
    :goto_1
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mTitleBar:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 591
    return-void

    .line 583
    :cond_0
    sget-object v0, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->SUB_FOLDER:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    goto :goto_0

    .line 588
    :cond_1
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/notes/ui/NoteItemData;->getSnippet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private openNode(Lcom/miui/notes/ui/NoteItemData;)V
    .locals 4
    .parameter

    .prologue
    .line 570
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/notes/ui/NoteEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 571
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    const-string v1, "android.intent.extra.UID"

    invoke-virtual {p1}, Lcom/miui/notes/ui/NoteItemData;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 573
    const/16 v1, 0x66

    invoke-virtual {p0, v0, v1}, Lcom/miui/notes/ui/NotesListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 574
    return-void
.end method

.method private restoreDirtyData()V
    .locals 2

    .prologue
    .line 157
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/notes/ui/NotesListActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/notes/ui/NotesListActivity$1;-><init>(Lcom/miui/notes/ui/NotesListActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 184
    return-void
.end method

.method private setAppInfoFromRawRes()V
    .locals 15

    .prologue
    const/4 v3, 0x0

    .line 187
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 188
    .local v14, sp:Landroid/content/SharedPreferences;
    const-string v0, "com.miui.notes.introduction"

    invoke-interface {v14, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v13, sb:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 192
    .local v9, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/notes/ui/NotesListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f05

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v9

    .line 193
    if-eqz v9, :cond_1

    .line 194
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 195
    .local v10, isr:Ljava/io/InputStreamReader;
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 196
    .local v6, br:Ljava/io/BufferedReader;
    const/16 v0, 0x400

    new-array v7, v0, [C

    .line 197
    .local v7, buf:[C
    const/4 v11, 0x0

    .line 198
    .local v11, len:I
    :goto_0
    invoke-virtual {v6, v7}, Ljava/io/BufferedReader;->read([C)I

    move-result v11

    if-lez v11, :cond_2

    .line 199
    const/4 v0, 0x0

    invoke-virtual {v13, v7, v0, v11}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    .end local v6           #br:Ljava/io/BufferedReader;
    .end local v7           #buf:[C
    .end local v10           #isr:Ljava/io/InputStreamReader;
    .end local v11           #len:I
    :catch_0
    move-exception v8

    .line 206
    .local v8, e:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    if-eqz v9, :cond_0

    .line 211
    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 230
    .end local v8           #e:Ljava/io/IOException;
    .end local v9           #in:Ljava/io/InputStream;
    .end local v13           #sb:Ljava/lang/StringBuilder;
    :cond_0
    :goto_1
    return-void

    .line 202
    .restart local v9       #in:Ljava/io/InputStream;
    .restart local v13       #sb:Ljava/lang/StringBuilder;
    :cond_1
    :try_start_3
    const-string v0, "NotesListActivity"

    const-string v1, "Read introduction file error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 209
    if-eqz v9, :cond_0

    .line 211
    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 212
    :catch_1
    move-exception v8

    .line 214
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 209
    .end local v8           #e:Ljava/io/IOException;
    .restart local v6       #br:Ljava/io/BufferedReader;
    .restart local v7       #buf:[C
    .restart local v10       #isr:Ljava/io/InputStreamReader;
    .restart local v11       #len:I
    :cond_2
    if-eqz v9, :cond_3

    .line 211
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 219
    :cond_3
    :goto_2
    const-wide/16 v1, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x4

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/notes/model/WorkingNote;->createEmptyNote(Landroid/content/Context;JIII)Lcom/miui/notes/model/WorkingNote;

    move-result-object v12

    .line 222
    .local v12, note:Lcom/miui/notes/model/WorkingNote;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/miui/notes/model/WorkingNote;->setWorkingText(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v12}, Lcom/miui/notes/model/WorkingNote;->saveNote()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 224
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.miui.notes.introduction"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 212
    .end local v12           #note:Lcom/miui/notes/model/WorkingNote;
    :catch_2
    move-exception v8

    .line 214
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 212
    .end local v6           #br:Ljava/io/BufferedReader;
    .end local v7           #buf:[C
    .end local v10           #isr:Ljava/io/InputStreamReader;
    .end local v11           #len:I
    :catch_3
    move-exception v8

    .line 214
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 209
    .end local v8           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_4

    .line 211
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 215
    :cond_4
    :goto_3
    throw v0

    .line 212
    :catch_4
    move-exception v8

    .line 214
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 226
    .end local v8           #e:Ljava/io/IOException;
    .restart local v6       #br:Ljava/io/BufferedReader;
    .restart local v7       #buf:[C
    .restart local v10       #isr:Ljava/io/InputStreamReader;
    .restart local v11       #len:I
    .restart local v12       #note:Lcom/miui/notes/model/WorkingNote;
    :cond_5
    const-string v0, "NotesListActivity"

    const-string v1, "Save introduction note error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private showCreateOrModifyFolderDialog(Z)V
    .locals 8
    .parameter "create"

    .prologue
    const/4 v7, 0x0

    .line 617
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 618
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030002

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 619
    .local v4, view:Landroid/view/View;
    const v5, 0x7f0d0002

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 620
    .local v2, etName:Landroid/widget/EditText;
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->showSoftInput()V

    .line 621
    if-nez p1, :cond_2

    .line 622
    iget-object v5, p0, Lcom/miui/notes/ui/NotesListActivity;->mFocusNoteDataItem:Lcom/miui/notes/ui/NoteItemData;

    if-eqz v5, :cond_1

    .line 623
    iget-object v5, p0, Lcom/miui/notes/ui/NotesListActivity;->mFocusNoteDataItem:Lcom/miui/notes/ui/NoteItemData;

    invoke-virtual {v5}, Lcom/miui/notes/ui/NoteItemData;->getSnippet()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 624
    const v5, 0x7f09002a

    invoke-virtual {p0, v5}, Lcom/miui/notes/ui/NotesListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 634
    :goto_0
    const v5, 0x104000a

    invoke-virtual {v0, v5, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 635
    const/high16 v5, 0x104

    new-instance v6, Lcom/miui/notes/ui/NotesListActivity$4;

    invoke-direct {v6, p0, v2}, Lcom/miui/notes/ui/NotesListActivity$4;-><init>(Lcom/miui/notes/ui/NotesListActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 642
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 643
    .local v1, dialog:Landroid/app/Dialog;
    const v5, 0x1020019

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 644
    .local v3, positive:Landroid/widget/Button;
    new-instance v5, Lcom/miui/notes/ui/NotesListActivity$5;

    invoke-direct {v5, p0, v2, p1, v1}, Lcom/miui/notes/ui/NotesListActivity$5;-><init>(Lcom/miui/notes/ui/NotesListActivity;Landroid/widget/EditText;ZLandroid/app/Dialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 677
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 682
    :cond_0
    new-instance v5, Lcom/miui/notes/ui/NotesListActivity$6;

    invoke-direct {v5, p0, v2, v3}, Lcom/miui/notes/ui/NotesListActivity$6;-><init>(Lcom/miui/notes/ui/NotesListActivity;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 704
    .end local v1           #dialog:Landroid/app/Dialog;
    .end local v3           #positive:Landroid/widget/Button;
    :goto_1
    return-void

    .line 626
    :cond_1
    const-string v5, "NotesListActivity"

    const-string v6, "The long click data item is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 630
    :cond_2
    const-string v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 631
    const v5, 0x7f090015

    invoke-virtual {p0, v5}, Lcom/miui/notes/ui/NotesListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private showFolderListMenu(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 477
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 478
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f090030

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 479
    new-instance v0, Lcom/miui/notes/ui/FoldersListAdapter;

    invoke-direct {v0, p0, p1}, Lcom/miui/notes/ui/FoldersListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 480
    .local v0, adapter:Lcom/miui/notes/ui/FoldersListAdapter;
    new-instance v2, Lcom/miui/notes/ui/NotesListActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/miui/notes/ui/NotesListActivity$2;-><init>(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/FoldersListAdapter;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 495
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 496
    return-void
.end method

.method private showSoftInput()V
    .locals 3

    .prologue
    .line 605
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NotesListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 606
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 607
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 609
    :cond_0
    return-void
.end method

.method private startAsyncNotesListQuery()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 444
    iget-wide v2, p0, Lcom/miui/notes/ui/NotesListActivity;->mCurrentFolderId:J

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-nez v0, :cond_0

    const-string v5, "(type<>2 AND parent_id=?) OR (_id=-2 AND notes_count>0)"

    .line 446
    .local v5, selection:Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mBackgroundQueryHandler:Lcom/miui/notes/ui/NotesListActivity$BackgroundQueryHandler;

    const/4 v2, 0x0

    sget-object v3, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    sget-object v4, Lcom/miui/notes/ui/NoteItemData;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    iget-wide v7, p0, Lcom/miui/notes/ui/NotesListActivity;->mCurrentFolderId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "type DESC,modified_date DESC"

    invoke-virtual/range {v0 .. v7}, Lcom/miui/notes/ui/NotesListActivity$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    return-void

    .line 444
    .end local v5           #selection:Ljava/lang/String;
    :cond_0
    const-string v5, "parent_id=?"

    goto :goto_0
.end method

.method private startPreferenceActivity()V
    .locals 2

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/miui/notes/ui/NotesListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/notes/ui/NotesListActivity;->getParent()Landroid/app/Activity;

    move-result-object p0

    .line 926
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/notes/ui/NotesPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 927
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    .line 928
    return-void
.end method

.method private startQueryDestinationFolders()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    .line 973
    const-string v5, "type=? AND parent_id<>? AND _id<>?"

    .line 974
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    sget-object v2, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->NOTE_LIST:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    if-ne v0, v2, :cond_0

    .line 977
    :goto_0
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mBackgroundQueryHandler:Lcom/miui/notes/ui/NotesListActivity$BackgroundQueryHandler;

    const/4 v2, 0x0

    sget-object v3, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    sget-object v4, Lcom/miui/notes/ui/FoldersListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, -0x3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v7, 0x2

    iget-wide v8, p0, Lcom/miui/notes/ui/NotesListActivity;->mCurrentFolderId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const-string v7, "modified_date DESC"

    invoke-virtual/range {v0 .. v7}, Lcom/miui/notes/ui/NotesListActivity$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    return-void

    .line 974
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") OR ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private updateWidget(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 731
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 732
    if-nez p2, :cond_0

    .line 733
    const-class v1, Lcom/miui/notes/widget/NoteWidgetProvider_2x;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 741
    :goto_0
    const-string v1, "appWidgetIds"

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 745
    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NotesListActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 746
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/miui/notes/ui/NotesListActivity;->setResult(ILandroid/content/Intent;)V

    .line 747
    :goto_1
    return-void

    .line 734
    :cond_0
    if-ne p2, v2, :cond_1

    .line 735
    const-class v1, Lcom/miui/notes/widget/NoteWidgetProvider_4x;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 737
    :cond_1
    const-string v0, "NotesListActivity"

    const-string v1, "Unspported widget type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 143
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    const/16 v0, 0x67

    if-ne p1, v0, :cond_1

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/notes/ui/NotesListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/16 v2, 0x8

    .line 708
    sget-object v0, Lcom/miui/notes/ui/NotesListActivity$10;->$SwitchMap$com$miui$notes$ui$NotesListActivity$ListEditState:[I

    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    invoke-virtual {v1}, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 728
    :goto_0
    return-void

    .line 710
    :pswitch_0
    iput-wide v3, p0, Lcom/miui/notes/ui/NotesListActivity;->mCurrentFolderId:J

    .line 711
    sget-object v0, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->NOTE_LIST:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    .line 712
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->startAsyncNotesListQuery()V

    .line 713
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 716
    :pswitch_1
    iput-wide v3, p0, Lcom/miui/notes/ui/NotesListActivity;->mCurrentFolderId:J

    .line 717
    sget-object v0, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->NOTE_LIST:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    .line 718
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mAddNewNote:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 719
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 720
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->startAsyncNotesListQuery()V

    goto :goto_0

    .line 723
    :pswitch_2
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 708
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 595
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 602
    :goto_0
    return-void

    .line 597
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->createNewNote()V

    goto :goto_0

    .line 595
    :pswitch_data_0
    .packed-switch 0x7f0d0028
        :pswitch_0
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 770
    iget-object v2, p0, Lcom/miui/notes/ui/NotesListActivity;->mFocusNoteDataItem:Lcom/miui/notes/ui/NoteItemData;

    if-nez v2, :cond_0

    .line 771
    const-string v2, "NotesListActivity"

    const-string v3, "The long click data item is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :goto_0
    return v1

    .line 774
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 800
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 776
    :pswitch_0
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity;->mFocusNoteDataItem:Lcom/miui/notes/ui/NoteItemData;

    invoke-direct {p0, v1}, Lcom/miui/notes/ui/NotesListActivity;->openFolder(Lcom/miui/notes/ui/NoteItemData;)V

    goto :goto_1

    .line 779
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 780
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090034

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NotesListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 781
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 782
    const v1, 0x7f090033

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NotesListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 783
    const v1, 0x104000a

    new-instance v2, Lcom/miui/notes/ui/NotesListActivity$8;

    invoke-direct {v2, p0}, Lcom/miui/notes/ui/NotesListActivity$8;-><init>(Lcom/miui/notes/ui/NotesListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 790
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 791
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 794
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/miui/notes/ui/NotesListActivity;->showCreateOrModifyFolderDialog(Z)V

    goto :goto_1

    .line 774
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 762
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 765
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 766
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NotesListActivity;->setContentView(I)V

    .line 132
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->initResources()V

    .line 133
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->restoreDirtyData()V

    .line 138
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->setAppInfoFromRawRes()V

    .line 139
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 992
    instance-of v0, p2, Lcom/miui/notes/ui/NotesListItem;

    if-eqz v0, :cond_0

    .line 993
    check-cast p2, Lcom/miui/notes/ui/NotesListItem;

    invoke-virtual {p2}, Lcom/miui/notes/ui/NotesListItem;->getItemData()Lcom/miui/notes/ui/NoteItemData;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mFocusNoteDataItem:Lcom/miui/notes/ui/NoteItemData;

    .line 994
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mFocusNoteDataItem:Lcom/miui/notes/ui/NoteItemData;

    invoke-virtual {v0}, Lcom/miui/notes/ui/NoteItemData;->getType()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;

    invoke-virtual {v0}, Lcom/miui/notes/ui/NotesListAdapter;->isInChoiceMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 995
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity;->mModeCallBack:Lcom/miui/notes/ui/NotesListActivity$ModeCallback;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 996
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mModeCallBack:Lcom/miui/notes/ui/NotesListActivity$ModeCallback;

    const/4 v1, 0x0

    move v2, p3

    move-wide v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/notes/ui/NotesListActivity$ModeCallback;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 997
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->performHapticFeedback(I)Z

    .line 1005
    :cond_0
    :goto_0
    return v6

    .line 999
    :cond_1
    const-string v0, "NotesListActivity"

    const-string v1, "startActionMode fails"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1001
    :cond_2
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mFocusNoteDataItem:Lcom/miui/notes/ui/NoteItemData;

    invoke-virtual {v0}, Lcom/miui/notes/ui/NoteItemData;->getType()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity;->mFolderOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 834
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 869
    :goto_0
    return v2

    .line 836
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/miui/notes/ui/NotesListActivity;->showCreateOrModifyFolderDialog(Z)V

    goto :goto_0

    .line 840
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->exportNoteToText()V

    goto :goto_0

    .line 844
    :pswitch_2
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->isSyncMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 845
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f090017

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NotesListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    invoke-static {p0}, Lcom/miui/notes/gtask/remote/GTaskSyncService;->startSync(Landroid/app/Activity;)V

    goto :goto_0

    .line 848
    :cond_0
    invoke-static {p0}, Lcom/miui/notes/gtask/remote/GTaskSyncService;->cancelSync(Landroid/content/Context;)V

    goto :goto_0

    .line 851
    :cond_1
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->startPreferenceActivity()V

    goto :goto_0

    .line 856
    :pswitch_3
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->startPreferenceActivity()V

    goto :goto_0

    .line 860
    :pswitch_4
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->createNewNote()V

    goto :goto_0

    .line 864
    :pswitch_5
    invoke-virtual {p0}, Lcom/miui/notes/ui/NotesListActivity;->onSearchRequested()Z

    goto :goto_0

    .line 834
    :pswitch_data_0
    .packed-switch 0x7f0d0034
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 816
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 817
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    sget-object v1, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->NOTE_LIST:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    if-ne v0, v1, :cond_1

    .line 818
    invoke-virtual {p0}, Lcom/miui/notes/ui/NotesListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 820
    const v0, 0x7f0d0038

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {}, Lcom/miui/notes/gtask/remote/GTaskSyncService;->isSyncing()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090018

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 829
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 820
    :cond_0
    const v0, 0x7f090017

    goto :goto_0

    .line 822
    :cond_1
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    sget-object v1, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->SUB_FOLDER:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    if-ne v0, v1, :cond_2

    .line 823
    invoke-virtual {p0}, Lcom/miui/notes/ui/NotesListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_1

    .line 824
    :cond_2
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    sget-object v1, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->CALL_RECORD_FOLDER:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    if-ne v0, v1, :cond_3

    .line 825
    invoke-virtual {p0}, Lcom/miui/notes/ui/NotesListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_1

    .line 827
    :cond_3
    const-string v0, "NotesListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 874
    invoke-virtual {p0, v1, v0, v1, v0}, Lcom/miui/notes/ui/NotesListActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 875
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 234
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 235
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->startAsyncNotesListQuery()V

    .line 236
    return-void
.end method
