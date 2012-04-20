.class public Lcom/miui/player/ui/OnlineCategoryActivity;
.super Lcom/miui/player/ui/base/TemplateListActivity;
.source "OnlineCategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/OnlineCategoryActivity$SearchCommond;,
        Lcom/miui/player/ui/OnlineCategoryActivity$OnRetryClickListener;
    }
.end annotation


# static fields
.field static sCategoryListCache:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;


# instance fields
.field mAdapter:Lcom/miui/player/model/OnlineCategoryAdapter;

.field mOnlineStatusBarController:Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;

.field mSearchBarController:Lcom/miui/player/ui/controller/SearchBarController;

.field private mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/player/ui/OnlineCategoryActivity;->sCategoryListCache:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/miui/player/ui/base/TemplateListActivity;-><init>()V

    .line 147
    return-void
.end method


# virtual methods
.method gotoSearch(Ljava/lang/String;)V
    .locals 3
    .parameter "searchInput"

    .prologue
    .line 182
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.player.BROWSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/search_track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v1, "search_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/OnlineCategoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 186
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mSearchBarController:Lcom/miui/player/ui/controller/SearchBarController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/SearchBarController;->isHistoryVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mSearchBarController:Lcom/miui/player/ui/controller/SearchBarController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/SearchBarController;->showHistoryList(Z)V

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreateContent(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x0

    .line 44
    const v5, 0x7f030021

    invoke-virtual {p0, v5}, Lcom/miui/player/ui/OnlineCategoryActivity;->setContentView(I)V

    .line 46
    new-instance v5, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;

    const v6, 0x7f0c0072

    new-instance v7, Lcom/miui/player/ui/OnlineCategoryActivity$OnRetryClickListener;

    invoke-direct {v7, p0}, Lcom/miui/player/ui/OnlineCategoryActivity$OnRetryClickListener;-><init>(Lcom/miui/player/ui/OnlineCategoryActivity;)V

    invoke-direct {v5, p0, v6, v7}, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;-><init>(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)V

    iput-object v5, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mOnlineStatusBarController:Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;

    .line 49
    iget-object v5, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mOnlineStatusBarController:Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;

    const v6, 0x7f08006c

    const v7, 0x7f08006b

    invoke-virtual {v5, v6, v7}, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->setLoadingHintTextId(II)V

    .line 53
    new-instance v5, Lcom/miui/player/model/OnlineCategoryAdapter;

    invoke-direct {v5, p0}, Lcom/miui/player/model/OnlineCategoryAdapter;-><init>(Lcom/miui/player/ui/OnlineCategoryActivity;)V

    iput-object v5, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mAdapter:Lcom/miui/player/model/OnlineCategoryAdapter;

    .line 54
    iget-object v5, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mAdapter:Lcom/miui/player/model/OnlineCategoryAdapter;

    invoke-virtual {p0, v5}, Lcom/miui/player/ui/OnlineCategoryActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    new-instance v5, Lcom/miui/player/ui/controller/SearchBarController;

    const-string v6, "music_search_histroy"

    new-instance v7, Lcom/miui/player/ui/OnlineCategoryActivity$SearchCommond;

    invoke-direct {v7, p0}, Lcom/miui/player/ui/OnlineCategoryActivity$SearchCommond;-><init>(Lcom/miui/player/ui/OnlineCategoryActivity;)V

    const/4 v8, 0x0

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/miui/player/ui/controller/SearchBarController;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/miui/player/ui/controller/SearchBarController$SearchListener;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mSearchBarController:Lcom/miui/player/ui/controller/SearchBarController;

    .line 61
    new-instance v5, Lcom/miui/player/ui/controller/TitleBarController;

    invoke-direct {v5, p0}, Lcom/miui/player/ui/controller/TitleBarController;-><init>(Landroid/app/Activity;)V

    iput-object v5, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    .line 62
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineCategoryActivity;->setTitleBar()V

    .line 64
    const v5, 0x7f0c0071

    invoke-virtual {p0, v5}, Lcom/miui/player/ui/OnlineCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 65
    .local v4, root:Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 66
    .local v1, count:I
    iget-object v5, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    invoke-virtual {v5}, Lcom/miui/player/ui/controller/TitleBarController;->getNavigatorWidth()I

    move-result v3

    .line 68
    .local v3, left:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 69
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, child:Landroid/view/View;
    invoke-static {v0, v3, v9, v9, v9}, Lcom/miui/player/ui/UIHelper;->addLayoutMargins(Landroid/view/View;IIII)Z

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    .end local v0           #child:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineCategoryActivity;->startCategoryLoadingAsync()V

    .line 74
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/OnlineCategoryActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    iput-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mAdapter:Lcom/miui/player/model/OnlineCategoryAdapter;

    .line 80
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onDestroy()V

    .line 81
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 206
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mAdapter:Lcom/miui/player/model/OnlineCategoryAdapter;

    invoke-virtual {v2, p3}, Lcom/miui/player/model/OnlineCategoryAdapter;->getSongCategoryItem(I)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList$SongCategoryItem;

    move-result-object v0

    .line 207
    .local v0, categoryItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList$SongCategoryItem;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList$SongCategoryItem;->SongListUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 208
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.player.BROWSER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/preview_track"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string v2, "category_name"

    iget-object v3, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList$SongCategoryItem;->Name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v2, "list_url"

    iget-object v3, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList$SongCategoryItem;->SongListUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0, v1}, Lcom/miui/player/ui/OnlineCategoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 214
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onResume()V

    .line 86
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineCategoryActivity;->getListView()Landroid/widget/AbsListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->requestFocus()Z

    .line 87
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mSearchBarController:Lcom/miui/player/ui/controller/SearchBarController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/SearchBarController;->updateSearchHistroy()V

    .line 88
    return-void
.end method

.method setTitleBar()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 217
    iget-object v2, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    .line 218
    .local v2, titleBar:Lcom/miui/player/ui/controller/TitleBarController;
    invoke-virtual {v2, v6}, Lcom/miui/player/ui/controller/TitleBarController;->setStyle(I)V

    .line 219
    iget-object v4, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mAdapter:Lcom/miui/player/model/OnlineCategoryAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mAdapter:Lcom/miui/player/model/OnlineCategoryAdapter;

    invoke-virtual {v4}, Lcom/miui/player/model/OnlineCategoryAdapter;->getCount()I

    move-result v0

    .line 220
    .local v0, q:I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09000f

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v0, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, text:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/player/ui/controller/TitleBarController;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual {v2, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setSecondaryText(Ljava/lang/CharSequence;)V

    .line 224
    return-void

    .end local v0           #q:I
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    move v0, v3

    .line 219
    goto :goto_0
.end method

.method startCategoryLoadingAsync()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mAdapter:Lcom/miui/player/model/OnlineCategoryAdapter;

    sget-object v1, Lcom/miui/player/ui/OnlineCategoryActivity;->sCategoryListCache:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

    invoke-virtual {v0, v1}, Lcom/miui/player/model/OnlineCategoryAdapter;->updateCategoryList(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;)V

    .line 97
    sget-object v0, Lcom/miui/player/ui/OnlineCategoryActivity;->sCategoryListCache:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mOnlineStatusBarController:Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->setLoadInProcess()V

    .line 99
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mSearchBarController:Lcom/miui/player/ui/controller/SearchBarController;

    invoke-virtual {v0, v2}, Lcom/miui/player/ui/controller/SearchBarController;->setVisible(Z)V

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mAdapter:Lcom/miui/player/model/OnlineCategoryAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/OnlineCategoryAdapter;->notifyDataSetChanged()V

    .line 107
    new-instance v0, Lcom/miui/player/ui/OnlineCategoryActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/OnlineCategoryActivity$1;-><init>(Lcom/miui/player/ui/OnlineCategoryActivity;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/OnlineCategoryActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 136
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mOnlineStatusBarController:Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->setLoadSuccess()V

    .line 102
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mSearchBarController:Lcom/miui/player/ui/controller/SearchBarController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/SearchBarController;->setVisible(Z)V

    goto :goto_0
.end method

.method public updateItemPreview(Landroid/view/View;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;)V
    .locals 1
    .parameter "v"
    .parameter "songList"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mAdapter:Lcom/miui/player/model/OnlineCategoryAdapter;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity;->mAdapter:Lcom/miui/player/model/OnlineCategoryAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/miui/player/model/OnlineCategoryAdapter;->setSongPreview(Landroid/view/View;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;)V

    .line 201
    :cond_0
    return-void
.end method
