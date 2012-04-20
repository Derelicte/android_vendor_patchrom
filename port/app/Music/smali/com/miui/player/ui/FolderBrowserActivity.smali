.class public Lcom/miui/player/ui/FolderBrowserActivity;
.super Lcom/miui/player/ui/base/TemplateListActivity;
.source "FolderBrowserActivity.java"


# static fields
.field private static sListViewPositionWrap:Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;


# instance fields
.field private mAdapter:Lcom/miui/player/model/FolderListAdapter;

.field private mCursor:Landroid/database/Cursor;

.field private mListView:Landroid/widget/ListView;

.field private mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/player/ui/menu/BaseMenuManager",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/player/ui/controller/MultiChoiceController",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanListener:Landroid/content/BroadcastReceiver;

.field private mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;

    invoke-direct {v0}, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;-><init>()V

    sput-object v0, Lcom/miui/player/ui/FolderBrowserActivity;->sListViewPositionWrap:Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/miui/player/ui/base/TemplateListActivity;-><init>()V

    .line 236
    new-instance v0, Lcom/miui/player/ui/FolderBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/FolderBrowserActivity$1;-><init>(Lcom/miui/player/ui/FolderBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private setTitleBar()V
    .locals 5

    .prologue
    .line 226
    iget-object v2, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    .line 227
    .local v2, titleBar:Lcom/miui/player/ui/controller/TitleBarController;
    iget-object v3, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    .line 228
    iget-object v3, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 229
    .local v0, count:I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/player/ui/controller/TitleBarController;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {p0}, Lcom/miui/player/ui/FolderBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090006

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, details:Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setSecondaryText(Ljava/lang/CharSequence;)V

    .line 234
    .end local v0           #count:I
    .end local v1           #details:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getCursorAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mAdapter:Lcom/miui/player/model/FolderListAdapter;

    return-object v0
.end method

.method public getMenuContextInfo()Lcom/miui/player/ui/menu/FolderBrowserMenu$ContextInfo;
    .locals 2

    .prologue
    .line 204
    new-instance v0, Lcom/miui/player/ui/menu/FolderBrowserMenu$ContextInfo;

    invoke-direct {v0}, Lcom/miui/player/ui/menu/FolderBrowserMenu$ContextInfo;-><init>()V

    .line 205
    .local v0, ctx:Lcom/miui/player/ui/menu/FolderBrowserMenu$ContextInfo;
    iget-object v1, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mCursor:Landroid/database/Cursor;

    iput-object v1, v0, Lcom/miui/player/ui/menu/FolderBrowserMenu$ContextInfo;->mCursor:Landroid/database/Cursor;

    .line 206
    iget-object v1, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    iput v1, v0, Lcom/miui/player/ui/menu/FolderBrowserMenu$ContextInfo;->mHeaderCount:I

    .line 208
    return-object v0
.end method

.method protected handleServiceConnected(Lcom/miui/player/service/IMediaPlaybackService;)V
    .locals 2
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->handleServiceConnected(Lcom/miui/player/service/IMediaPlaybackService;)V

    .line 191
    invoke-static {}, Lcom/miui/player/util/FolderProvider;->instance()Lcom/miui/player/util/FolderProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/miui/player/util/FolderProvider;->querySelectedFolders(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 192
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mAdapter:Lcom/miui/player/model/FolderListAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/player/model/FolderListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 193
    return-void
.end method

.method public isBatchSelectionModeEnabled()Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/MultiChoiceController;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public leaveBatchSelectionMode()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/MultiChoiceController;->leave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const/4 v0, 0x1

    .line 222
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/menu/BaseMenuManager;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreateContent(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 50
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/FolderBrowserActivity;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/miui/player/ui/FolderBrowserActivity;->getListView()Landroid/widget/AbsListView;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    .line 52
    .local v9, lv:Landroid/widget/ListView;
    iput-object v9, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mListView:Landroid/widget/ListView;

    .line 54
    const v0, 0x7f0c000a

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/FolderBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/miui/player/ui/view/AlphabetFastIndexer;

    .line 55
    .local v7, fi:Lcom/miui/player/ui/view/AlphabetFastIndexer;
    invoke-virtual {v7, v9}, Lcom/miui/player/ui/view/AlphabetFastIndexer;->attatch(Landroid/widget/AbsListView;)V

    .line 56
    invoke-virtual {v7, v4}, Lcom/miui/player/ui/view/AlphabetFastIndexer;->decorateScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 58
    new-instance v0, Lcom/miui/player/ui/menu/FolderBrowserMenu;

    const v1, 0x7f09000a

    const-string v2, "path"

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/player/ui/menu/FolderBrowserMenu;-><init>(Lcom/miui/player/ui/FolderBrowserActivity;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    .line 62
    new-instance v0, Lcom/miui/player/ui/controller/MultiChoiceController;

    iget-object v1, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    const v2, 0x7f0c000d

    invoke-direct {v0, v9, v1, v2}, Lcom/miui/player/ui/controller/MultiChoiceController;-><init>(Landroid/widget/AbsListView;Lcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider;I)V

    iput-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    .line 65
    iget-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 67
    new-instance v0, Lcom/miui/player/model/FolderListAdapter;

    invoke-virtual {p0}, Lcom/miui/player/ui/FolderBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v3, 0x7f030014

    new-array v5, v10, [Ljava/lang/String;

    new-array v6, v10, [I

    iget-object v8, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/miui/player/model/FolderListAdapter;-><init>(Landroid/content/Context;Lcom/miui/player/ui/FolderBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/miui/player/ui/view/AlphabetFastIndexer;Lcom/miui/player/ui/controller/MultiChoiceController;)V

    iput-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mAdapter:Lcom/miui/player/model/FolderListAdapter;

    .line 76
    iget-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mAdapter:Lcom/miui/player/model/FolderListAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/FolderBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    iget-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    iget-object v1, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mAdapter:Lcom/miui/player/model/FolderListAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/menu/BaseMenuManager;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 79
    sget-object v0, Lcom/miui/player/ui/FolderBrowserActivity;->sListViewPositionWrap:Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;

    invoke-virtual {v0, v9}, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;->restoreListPosition(Landroid/widget/ListView;)V

    .line 81
    new-instance v0, Lcom/miui/player/ui/controller/TitleBarController;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/controller/TitleBarController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    .line 82
    iget-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setStyle(I)V

    .line 83
    iget-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    const v1, 0x7f0200ad

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setNavigatorRes(I)V

    .line 85
    iget-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/TitleBarController;->getNavigatorWidth()I

    move-result v0

    invoke-virtual {v7}, Lcom/miui/player/ui/view/AlphabetFastIndexer;->getIndexerIntrinsicWidth()I

    move-result v1

    invoke-static {v9, v0, v10, v1, v10}, Lcom/miui/player/ui/UIHelper;->addLayoutMargins(Landroid/view/View;IIII)Z

    .line 86
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    sget-object v0, Lcom/miui/player/ui/FolderBrowserActivity;->sListViewPositionWrap:Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;

    iget-object v1, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;->saveListPosition(Landroid/widget/ListView;)V

    .line 113
    iget-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mAdapter:Lcom/miui/player/model/FolderListAdapter;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mAdapter:Lcom/miui/player/model/FolderListAdapter;

    invoke-virtual {v0, v2}, Lcom/miui/player/model/FolderListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 119
    :cond_0
    invoke-virtual {p0, v2}, Lcom/miui/player/ui/FolderBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    iput-object v2, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mAdapter:Lcom/miui/player/model/FolderListAdapter;

    .line 121
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onDestroy()V

    .line 122
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "v"
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
    .line 126
    .local p1, l:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v2, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mCursor:Landroid/database/Cursor;

    const-string v4, "path"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, path:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.miui.player.BROWSER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v2, "folder_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/FolderBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 156
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 161
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 158
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/player/ui/FolderBrowserActivity;->enterBatchSelectionMode()Z

    .line 159
    const/4 v0, 0x1

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/FolderBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 102
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onPause()V

    .line 103
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 148
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 149
    const/16 v0, 0x10

    const v1, 0x7f080062

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 151
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onResume()V

    .line 91
    invoke-virtual {p0}, Lcom/miui/player/ui/FolderBrowserActivity;->update()V

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/ui/FolderBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mCursor:Landroid/database/Cursor;

    if-eq v0, p1, :cond_0

    .line 167
    iput-object p1, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mCursor:Landroid/database/Cursor;

    .line 168
    invoke-direct {p0}, Lcom/miui/player/ui/FolderBrowserActivity;->setTitleBar()V

    .line 169
    const/4 v0, 0x1

    .line 172
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update()V
    .locals 3

    .prologue
    .line 176
    invoke-static {}, Lcom/miui/player/util/FolderProvider;->instance()Lcom/miui/player/util/FolderProvider;

    move-result-object v0

    .line 177
    .local v0, provider:Lcom/miui/player/util/FolderProvider;
    invoke-virtual {v0, p0}, Lcom/miui/player/util/FolderProvider;->updateFolderItemList(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mAdapter:Lcom/miui/player/model/FolderListAdapter;

    invoke-virtual {v0, p0}, Lcom/miui/player/util/FolderProvider;->querySelectedFolders(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/player/model/FolderListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mAdapter:Lcom/miui/player/model/FolderListAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/FolderListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
