.class public Lcom/miui/player/ui/ArtistBrowserActivity;
.super Lcom/miui/player/ui/base/TemplateListActivity;
.source "ArtistBrowserActivity.java"


# static fields
.field private static final sListViewPositionWrap:Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;


# instance fields
.field private mAdapter:Lcom/miui/player/model/ArtistListAdapter;

.field private mCursor:Landroid/database/Cursor;

.field private mListView:Landroid/widget/ListView;

.field private mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/player/ui/menu/BaseMenuManager",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/player/ui/controller/MultiChoiceController",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;

    invoke-direct {v0}, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;-><init>()V

    sput-object v0, Lcom/miui/player/ui/ArtistBrowserActivity;->sListViewPositionWrap:Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/miui/player/ui/base/TemplateListActivity;-><init>()V

    return-void
.end method

.method private setTitleBar()V
    .locals 6

    .prologue
    .line 220
    iget-object v1, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mCursor:Landroid/database/Cursor;

    .line 221
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 231
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 226
    .local v0, count:I
    invoke-virtual {p0}, Lcom/miui/player/ui/ArtistBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090004

    invoke-virtual {v4, v5, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, details:Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    .line 229
    .local v3, titleBar:Lcom/miui/player/ui/controller/TitleBarController;
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/player/ui/controller/TitleBarController;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 230
    invoke-virtual {v3, v2}, Lcom/miui/player/ui/controller/TitleBarController;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected getCursorAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistListAdapter;

    return-object v0
.end method

.method protected getMediaLoaderInfo()Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 171
    const/4 v3, 0x0

    .line 172
    .local v3, where:Ljava/lang/String;
    invoke-static {p0}, Lcom/miui/player/provider/MediaProviderHelper;->queryValidArtistIdCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v6

    .line 173
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 175
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v6, v1}, Lcom/miui/player/util/SqlUtils;->concatIdsAsSet(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v9

    .line 176
    .local v9, set:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id IN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 178
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 183
    .end local v9           #set:Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;

    sget-object v1, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/player/model/ArtistListAdapter;->ARTIST_COLUMNS:[Ljava/lang/String;

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;-><init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .local v0, args:Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;
    new-instance v7, Lcom/miui/player/model/ArtistListAdapter$ArtistConverter;

    invoke-direct {v7}, Lcom/miui/player/model/ArtistListAdapter$ArtistConverter;-><init>()V

    .line 188
    .local v7, converter:Lcom/miui/player/model/SectionCursor$CursorConverter;
    new-instance v8, Lcom/miui/player/ui/base/TemplateListActivity$SectionCursorDecorator;

    invoke-direct {v8, v7, v10}, Lcom/miui/player/ui/base/TemplateListActivity$SectionCursorDecorator;-><init>(Lcom/miui/player/model/SectionCursor$CursorConverter;I)V

    .line 190
    .local v8, decorator:Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;
    new-instance v1, Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;

    invoke-direct {v1, v8, v0}, Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;-><init>(Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;)V

    return-object v1

    .line 178
    .end local v0           #args:Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;
    .end local v7           #converter:Lcom/miui/player/model/SectionCursor$CursorConverter;
    .end local v8           #decorator:Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public getMenuContextInfo()Lcom/miui/player/ui/menu/ArtistBrowserMenu$ContextInfo;
    .locals 2

    .prologue
    .line 237
    new-instance v0, Lcom/miui/player/ui/menu/ArtistBrowserMenu$ContextInfo;

    invoke-direct {v0}, Lcom/miui/player/ui/menu/ArtistBrowserMenu$ContextInfo;-><init>()V

    .line 238
    .local v0, ctx:Lcom/miui/player/ui/menu/ArtistBrowserMenu$ContextInfo;
    iget-object v1, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mCursor:Landroid/database/Cursor;

    iput-object v1, v0, Lcom/miui/player/ui/menu/ArtistBrowserMenu$ContextInfo;->mCursor:Landroid/database/Cursor;

    .line 239
    iget-object v1, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    iput v1, v0, Lcom/miui/player/ui/menu/ArtistBrowserMenu$ContextInfo;->mHeaderCount:I

    .line 241
    return-object v0
.end method

.method protected getObservedServiceActions()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 259
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.miui.player.metachanged"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.miui.player.playstatechanged"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.miui.player.playbackcomplete"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public handleLoadFinished(ILandroid/database/Cursor;)V
    .locals 3
    .parameter "loaderId"
    .parameter "cursor"

    .prologue
    .line 200
    invoke-super {p0, p1, p2}, Lcom/miui/player/ui/base/TemplateListActivity;->handleLoadFinished(ILandroid/database/Cursor;)V

    .line 201
    iget-object v1, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistListAdapter;

    if-nez v1, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_3

    const/4 v0, 0x1

    .line 206
    .local v0, first:Z
    :goto_1
    iget-object v1, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistListAdapter;

    invoke-virtual {v1, p2}, Lcom/miui/player/model/ArtistListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 207
    iget-object v1, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 212
    if-eqz v0, :cond_2

    .line 213
    sget-object v1, Lcom/miui/player/ui/ArtistBrowserActivity;->sListViewPositionWrap:Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;

    iget-object v2, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;->restoreListPosition(Landroid/widget/ListView;)V

    .line 216
    :cond_2
    invoke-direct {p0}, Lcom/miui/player/ui/ArtistBrowserActivity;->setTitleBar()V

    goto :goto_0

    .line 205
    .end local v0           #first:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected handleServiceNotification(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 268
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->handleServiceNotification(Landroid/content/Intent;)V

    .line 270
    iget-object v2, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistListAdapter;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/player/ui/ArtistBrowserActivity;->isPaused()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, action:Ljava/lang/String;
    const/4 v1, 0x0

    .line 277
    .local v1, refresh:Z
    const-string v2, "com.miui.player.playstatechanged"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 278
    const/4 v1, 0x1

    .line 284
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 285
    iget-object v2, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistListAdapter;

    invoke-virtual {v2}, Lcom/miui/player/model/ArtistListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 279
    :cond_3
    const-string v2, "com.miui.player.metachanged"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 280
    const-string v2, "meta_changed_album"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "meta_changed_track"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const/4 v1, 0x1

    :goto_2
    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public isBatchSelectionModeEnabled()Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/MultiChoiceController;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public leaveBatchSelectionMode()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/MultiChoiceController;->leave()Z

    move-result v0

    return v0
.end method

.method protected onCreateContent(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    const/4 v13, 0x0

    .line 51
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/ArtistBrowserActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/miui/player/ui/ArtistBrowserActivity;->getListView()Landroid/widget/AbsListView;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    .line 53
    .local v10, lv:Landroid/widget/ListView;
    iput-object v10, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mListView:Landroid/widget/ListView;

    .line 54
    const v0, 0x7f0c000a

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/ArtistBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/miui/player/ui/view/AlphabetFastIndexer;

    .line 55
    .local v7, fi:Lcom/miui/player/ui/view/AlphabetFastIndexer;
    invoke-virtual {v7, v10}, Lcom/miui/player/ui/view/AlphabetFastIndexer;->attatch(Landroid/widget/AbsListView;)V

    .line 56
    invoke-virtual {v7, v3}, Lcom/miui/player/ui/view/AlphabetFastIndexer;->decorateScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 58
    new-instance v0, Lcom/miui/player/ui/menu/ArtistBrowserMenu;

    const v1, 0x7f090009

    const-string v2, "_id"

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/player/ui/menu/ArtistBrowserMenu;-><init>(Lcom/miui/player/ui/ArtistBrowserActivity;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    .line 62
    new-instance v0, Lcom/miui/player/ui/controller/MultiChoiceController;

    iget-object v1, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    const v2, 0x7f0c000d

    invoke-direct {v0, v10, v1, v2}, Lcom/miui/player/ui/controller/MultiChoiceController;-><init>(Landroid/widget/AbsListView;Lcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider;I)V

    iput-object v0, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    .line 65
    iget-object v0, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 67
    new-instance v0, Lcom/miui/player/model/ArtistListAdapter;

    invoke-virtual {p0}, Lcom/miui/player/ui/ArtistBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v4, 0x7f030006

    new-array v5, v13, [Ljava/lang/String;

    new-array v6, v13, [I

    iget-object v8, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/miui/player/model/ArtistListAdapter;-><init>(Landroid/content/Context;Lcom/miui/player/ui/ArtistBrowserActivity;Landroid/database/Cursor;I[Ljava/lang/String;[ILcom/miui/player/ui/view/AlphabetFastIndexer;Lcom/miui/player/ui/controller/MultiChoiceController;)V

    iput-object v0, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistListAdapter;

    .line 77
    iget-object v0, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistListAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/ArtistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    iget-object v0, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    iget-object v1, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistListAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/menu/BaseMenuManager;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 80
    new-instance v12, Lcom/miui/player/ui/controller/TitleBarController;

    invoke-direct {v12, p0}, Lcom/miui/player/ui/controller/TitleBarController;-><init>(Landroid/app/Activity;)V

    .line 81
    .local v12, titleBar:Lcom/miui/player/ui/controller/TitleBarController;
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lcom/miui/player/ui/controller/TitleBarController;->setStyle(I)V

    .line 82
    const v0, 0x7f0200ad

    invoke-virtual {v12, v0}, Lcom/miui/player/ui/controller/TitleBarController;->setNavigatorRes(I)V

    .line 83
    iput-object v12, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    .line 85
    invoke-virtual {v12}, Lcom/miui/player/ui/controller/TitleBarController;->getNavigatorWidth()I

    move-result v9

    .line 86
    .local v9, left:I
    invoke-virtual {v7}, Lcom/miui/player/ui/view/AlphabetFastIndexer;->getIndexerIntrinsicWidth()I

    move-result v11

    .line 87
    .local v11, right:I
    invoke-static {v10, v9, v13, v11, v13}, Lcom/miui/player/ui/UIHelper;->addLayoutMargins(Landroid/view/View;IIII)Z

    .line 89
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    sget-object v0, Lcom/miui/player/ui/ArtistBrowserActivity;->sListViewPositionWrap:Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;

    iget-object v1, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;->saveListPosition(Landroid/widget/ListView;)V

    .line 107
    iget-object v0, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistListAdapter;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistListAdapter;

    invoke-virtual {v0, v2}, Lcom/miui/player/model/ArtistListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 113
    :cond_0
    invoke-virtual {p0, v2}, Lcom/miui/player/ui/ArtistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    iget-object v0, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    invoke-virtual {v0, v2}, Lcom/miui/player/ui/menu/BaseMenuManager;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 116
    iput-object v2, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistListAdapter;

    .line 117
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onDestroy()V

    .line 118
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
    .line 122
    .local p1, l:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v3, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mCursor:Landroid/database/Cursor;

    const-string v4, "artist"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 127
    .local v1, artistIdx:I
    iget-object v3, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, artist:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.miui.player.BROWSER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v2, intent:Landroid/content/Intent;
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v4, "vnd.android.cursor.dir/album"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string v3, "artist_id"

    invoke-virtual {v2, v3, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 131
    const-string v3, "artist_name"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v2}, Lcom/miui/player/ui/ArtistBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 146
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 151
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 148
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/player/ui/ArtistBrowserActivity;->enterBatchSelectionMode()Z

    .line 149
    const/4 v0, 0x1

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 139
    const/16 v0, 0x10

    const v1, 0x7f080062

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 141
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onResume()V

    .line 94
    iget-object v0, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistListAdapter;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistListAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/ArtistListAdapter;->notifyDataSetChanged()V

    .line 97
    :cond_0
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mCursor:Landroid/database/Cursor;

    if-eq v0, p1, :cond_0

    .line 159
    iput-object p1, p0, Lcom/miui/player/ui/ArtistBrowserActivity;->mCursor:Landroid/database/Cursor;

    .line 160
    const/4 v0, 0x1

    .line 163
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
