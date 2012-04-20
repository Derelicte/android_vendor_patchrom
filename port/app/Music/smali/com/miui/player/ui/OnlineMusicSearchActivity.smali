.class public Lcom/miui/player/ui/OnlineMusicSearchActivity;
.super Lcom/miui/player/ui/OnlineMusicBaseActivity;
.source "OnlineMusicSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/OnlineMusicSearchActivity$SearchCommond;
    }
.end annotation


# instance fields
.field mSearchBarController:Lcom/miui/player/ui/controller/SearchBarController;

.field mSearchKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;-><init>()V

    .line 64
    return-void
.end method


# virtual methods
.method public getCategoryName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 61
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/OnlineMusicSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mSearchKey:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .prologue
    .line 27
    const v0, 0x7f030024

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicSearchActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mSearchKey:Ljava/lang/String;

    const-string v2, "baidu"

    invoke-static {v0, v1, v2}, Lcom/miui/player/network/OnlineMusicProxy;->getSearchSongUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCacheEnable()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mSearchBarController:Lcom/miui/player/ui/controller/SearchBarController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/SearchBarController;->isHistoryVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mSearchBarController:Lcom/miui/player/ui/controller/SearchBarController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/SearchBarController;->showHistoryList(Z)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-super {p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onModeChanged(ZLandroid/widget/AbsListView;)V
    .locals 2
    .parameter "enabled"
    .parameter "lv"

    .prologue
    .line 110
    invoke-super {p0, p1, p2}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->onModeChanged(ZLandroid/widget/AbsListView;)V

    .line 112
    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mSearchBarController:Lcom/miui/player/ui/controller/SearchBarController;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/miui/player/ui/controller/SearchBarController;->setVisible(Z)V

    .line 113
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 22
    const-string v0, "search_key"

    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mSearchKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method protected prepareForLoading(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 32
    if-eqz p1, :cond_0

    .line 33
    const-string v0, "search_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mSearchKey:Ljava/lang/String;

    .line 38
    :goto_0
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mOnlineStatusBarController:Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;

    const v1, 0x7f080074

    const v2, 0x7f080075

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->setLoadingHintTextId(II)V

    .line 41
    new-instance v0, Lcom/miui/player/ui/controller/SearchBarController;

    const-string v1, "music_search_histroy"

    new-instance v2, Lcom/miui/player/ui/OnlineMusicSearchActivity$SearchCommond;

    invoke-direct {v2, p0}, Lcom/miui/player/ui/OnlineMusicSearchActivity$SearchCommond;-><init>(Lcom/miui/player/ui/OnlineMusicSearchActivity;)V

    iget-object v3, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mSearchKey:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/miui/player/ui/controller/SearchBarController;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/miui/player/ui/controller/SearchBarController$SearchListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mSearchBarController:Lcom/miui/player/ui/controller/SearchBarController;

    .line 46
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mSearchBarController:Lcom/miui/player/ui/controller/SearchBarController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/SearchBarController;->showHistoryList(Z)V

    .line 47
    return-void

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "search_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mSearchKey:Ljava/lang/String;

    goto :goto_0
.end method

.method protected setTitleBar()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setStyle(I)V

    .line 104
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/OnlineMusicAdapter;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicSearchActivity;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
