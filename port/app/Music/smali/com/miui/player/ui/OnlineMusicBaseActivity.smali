.class public abstract Lcom/miui/player/ui/OnlineMusicBaseActivity;
.super Lcom/miui/player/ui/base/TemplateListActivity;
.source "OnlineMusicBaseActivity.java"

# interfaces
.implements Lcom/miui/player/util/SongListCache$SongListWaiter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/OnlineMusicBaseActivity$OnRetryClickListener;
    }
.end annotation


# instance fields
.field protected mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

.field private final mAdapterUpdateRunnable:Ljava/lang/Runnable;

.field private final mDownloadReceiver:Landroid/content/BroadcastReceiver;

.field protected mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/player/ui/menu/BaseMenuManager",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/player/ui/controller/MultiChoiceController",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnlineStatusBarController:Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;

.field private mShuffleAll:Landroid/view/View;

.field protected mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/miui/player/ui/base/TemplateListActivity;-><init>()V

    .line 224
    new-instance v0, Lcom/miui/player/ui/OnlineMusicBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity$1;-><init>(Lcom/miui/player/ui/OnlineMusicBaseActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    .line 238
    new-instance v0, Lcom/miui/player/ui/OnlineMusicBaseActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity$2;-><init>(Lcom/miui/player/ui/OnlineMusicBaseActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapterUpdateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private correctPosition(I)I
    .locals 2
    .parameter "rawPos"

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->getListView()Landroid/widget/AbsListView;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 213
    .local v0, lv:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    return v1
.end method


# virtual methods
.method protected getCategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getContentViewId()I
.end method

.method public getContextInfo()Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;
    .locals 2

    .prologue
    .line 217
    new-instance v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;

    invoke-direct {v0}, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;-><init>()V

    .line 218
    .local v0, ctx:Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;
    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/OnlineMusicAdapter;->getMusicInfoSongList()Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mOnlineSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    .line 219
    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapterUpdateRunnable:Ljava/lang/Runnable;

    iput-object v1, v0, Lcom/miui/player/ui/menu/BaseTrackBrowserMenu$ContextInfo;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 221
    return-object v0
.end method

.method protected getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    const-string v0, "baidu"

    return-object v0
.end method

.method public isBatchSelectionModeEnabled()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/MultiChoiceController;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public leaveBatchSelectionMode()Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/MultiChoiceController;->leave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const/4 v0, 0x1

    .line 259
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
    .line 122
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/menu/BaseMenuManager;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x1

    .line 125
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateContent(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x0

    .line 57
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->getContentViewId()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->setContentView(I)V

    .line 59
    new-instance v6, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;

    const v7, 0x7f0c0072

    new-instance v8, Lcom/miui/player/ui/OnlineMusicBaseActivity$OnRetryClickListener;

    invoke-direct {v8, p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity$OnRetryClickListener;-><init>(Lcom/miui/player/ui/OnlineMusicBaseActivity;)V

    invoke-direct {v6, p0, v7, v8}, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;-><init>(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)V

    iput-object v6, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mOnlineStatusBarController:Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;

    .line 61
    iget-object v6, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mOnlineStatusBarController:Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;

    const v7, 0x7f08006c

    const v8, 0x7f08006b

    invoke-virtual {v6, v7, v8}, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->setLoadingHintTextId(II)V

    .line 64
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->getListView()Landroid/widget/AbsListView;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 65
    .local v4, lv:Landroid/widget/ListView;
    const/4 v6, 0x1

    const v7, 0x7f020096

    const v8, 0x7f08009b

    invoke-static {p0, v6, v7, v8}, Lcom/miui/player/ui/UIHelper;->makeHeaderView(Landroid/content/Context;III)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mShuffleAll:Landroid/view/View;

    .line 67
    iget-object v6, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mShuffleAll:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 69
    new-instance v6, Lcom/miui/player/ui/menu/OnlineMusicMenu;

    const v7, 0x7f090007

    invoke-direct {v6, p0, v7}, Lcom/miui/player/ui/menu/OnlineMusicMenu;-><init>(Lcom/miui/player/ui/OnlineMusicBaseActivity;I)V

    iput-object v6, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    .line 71
    new-instance v6, Lcom/miui/player/ui/controller/MultiChoiceController;

    iget-object v7, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    const v8, 0x7f0c000d

    invoke-direct {v6, v4, v7, v8}, Lcom/miui/player/ui/controller/MultiChoiceController;-><init>(Landroid/widget/AbsListView;Lcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider;I)V

    iput-object v6, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    .line 73
    iget-object v6, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v6, p0}, Lcom/miui/player/ui/controller/MultiChoiceController;->setOnModeChangedListener(Lcom/miui/player/ui/controller/MultiChoiceController$ModeChangedListener;)V

    .line 75
    iget-object v6, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 77
    new-instance v6, Lcom/miui/player/model/OnlineMusicAdapter;

    iget-object v7, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-direct {v6, p0, v7}, Lcom/miui/player/model/OnlineMusicAdapter;-><init>(Landroid/app/Activity;Lcom/miui/player/ui/controller/MultiChoiceController;)V

    iput-object v6, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    .line 78
    iget-object v6, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    iget-object v7, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v6, v7}, Lcom/miui/player/ui/menu/BaseMenuManager;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 79
    iget-object v6, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {p0, v6}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    new-instance v6, Lcom/miui/player/ui/controller/TitleBarController;

    invoke-direct {v6, p0}, Lcom/miui/player/ui/controller/TitleBarController;-><init>(Landroid/app/Activity;)V

    iput-object v6, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    .line 82
    const v6, 0x7f0c0071

    invoke-virtual {p0, v6}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 83
    .local v5, root:Landroid/view/ViewGroup;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 84
    .local v1, count:I
    iget-object v6, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    invoke-virtual {v6}, Lcom/miui/player/ui/controller/TitleBarController;->getNavigatorWidth()I

    move-result v3

    .line 86
    .local v3, left:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 87
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, child:Landroid/view/View;
    invoke-static {v0, v3, v9, v9, v9}, Lcom/miui/player/ui/UIHelper;->addLayoutMargins(Landroid/view/View;IIII)Z

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    .end local v0           #child:Landroid/view/View;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->prepareForLoading(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->startSongListLoadingAsync()V

    .line 93
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/menu/BaseMenuManager;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 101
    iput-object v1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    .line 102
    invoke-virtual {p0, v1}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onDestroy()V

    .line 104
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .local p1, l:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    .line 130
    if-nez p3, :cond_1

    .line 131
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/OnlineMusicAdapter;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/OnlineMusicAdapter;->getSongItemArr()Ljava/util/ArrayList;

    move-result-object v1

    .line 133
    .local v1, songList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;>;"
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->getProvider()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/miui/player/service/ServiceHelper;->playAll(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;IZZ)V

    .line 134
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/OnlineMusicAdapter;->notifyDataSetChanged()V

    .line 148
    .end local v1           #songList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;>;"
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-direct {p0, p3}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->correctPosition(I)I

    move-result p3

    .line 141
    if-ltz p3, :cond_0

    .line 145
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/OnlineMusicAdapter;->getSongItemArr()Ljava/util/ArrayList;

    move-result-object v1

    .line 146
    .restart local v1       #songList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;>;"
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->getProvider()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v3, p3

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/miui/player/service/ServiceHelper;->playAll(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;IZZ)V

    .line 147
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/OnlineMusicAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onModeChanged(ZLandroid/widget/AbsListView;)V
    .locals 2
    .parameter "enabled"
    .parameter "lv"

    .prologue
    .line 264
    invoke-super {p0, p1, p2}, Lcom/miui/player/ui/base/TemplateListActivity;->onModeChanged(ZLandroid/widget/AbsListView;)V

    .line 266
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mShuffleAll:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mShuffleAll:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Lcom/miui/player/ui/UIHelper;->setChildEnabled(Landroid/view/ViewGroup;Z)V

    .line 269
    :cond_0
    return-void

    .line 267
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 289
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    .line 290
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->finish()V

    .line 297
    :cond_0
    :goto_0
    return v0

    .line 293
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    invoke-virtual {v1, p1}, Lcom/miui/player/ui/menu/BaseMenuManager;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 117
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onPause()V

    .line 118
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mMultiChoiceController:Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/MultiChoiceController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    const/4 v0, 0x0

    .line 284
    :goto_0
    return v0

    .line 281
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 283
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mMenuManager:Lcom/miui/player/ui/menu/BaseMenuManager;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/menu/BaseMenuManager;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 284
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onRequestCompleted(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;)V
    .locals 3
    .parameter "songList"

    .prologue
    .line 182
    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    if-nez v1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v1, p1}, Lcom/miui/player/model/OnlineMusicAdapter;->updateSongList(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;)V

    .line 186
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->updateHeaderView()V

    .line 188
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, categoryName:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/OnlineMusicAdapter;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mOnlineStatusBarController:Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;

    invoke-virtual {v1}, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->setLoadSuccess()V

    .line 191
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;->Songs:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->getListView()Landroid/widget/AbsListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 193
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->setTitleBar()V

    goto :goto_0

    .line 197
    :cond_2
    if-eqz v0, :cond_3

    .line 198
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->setTitleBar()V

    .line 200
    :cond_3
    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mOnlineStatusBarController:Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;

    invoke-virtual {v1}, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->setLoadFailed()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onResume()V

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.miui.player.DOWNLOAD_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/OnlineMusicAdapter;->updateDownloadStatus()V

    .line 112
    return-void
.end method

.method protected abstract prepareForLoading(Landroid/os/Bundle;)V
.end method

.method protected abstract setTitleBar()V
.end method

.method protected startSongListLoadingAsync()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mOnlineStatusBarController:Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->setLoadInProcess()V

    .line 206
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/player/model/OnlineMusicAdapter;->updateSongList(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;)V

    .line 207
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->getListView()Landroid/widget/AbsListView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 208
    invoke-static {}, Lcom/miui/player/util/SongListCache;->instance()Lcom/miui/player/util/SongListCache;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/miui/player/util/SongListCache;->registerWaiter(Landroid/content/Context;Lcom/miui/player/util/SongListCache$SongListWaiter;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    .line 209
    return-void
.end method

.method protected updateHeaderView()V
    .locals 3

    .prologue
    .line 174
    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/OnlineMusicAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 175
    .local v0, enabled:Z
    :goto_0
    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mShuffleAll:Landroid/view/View;

    const v2, 0x7f0c004c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 176
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->getListView()Landroid/widget/AbsListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->setClickable(Z)V

    .line 177
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->getListView()Landroid/widget/AbsListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    .line 178
    return-void

    .line 174
    .end local v0           #enabled:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
