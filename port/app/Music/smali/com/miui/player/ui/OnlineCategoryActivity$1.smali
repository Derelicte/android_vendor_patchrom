.class Lcom/miui/player/ui/OnlineCategoryActivity$1;
.super Landroid/os/AsyncTask;
.source "OnlineCategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/OnlineCategoryActivity;->startCategoryLoadingAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/OnlineCategoryActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/OnlineCategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/miui/player/ui/OnlineCategoryActivity$1;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;
    .locals 3
    .parameter "params"

    .prologue
    .line 110
    iget-object v1, p0, Lcom/miui/player/ui/OnlineCategoryActivity$1;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    invoke-virtual {v1}, Lcom/miui/player/ui/OnlineCategoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "baidu"

    invoke-static {v1, v2}, Lcom/miui/player/network/OnlineMusicProxy;->getSongCategoryList(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

    move-result-object v0

    .line 113
    .local v0, musicList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/OnlineCategoryActivity$1;->doInBackground([Ljava/lang/Void;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 119
    sput-object p1, Lcom/miui/player/ui/OnlineCategoryActivity;->sCategoryListCache:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

    .line 120
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity$1;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    iget-object v0, v0, Lcom/miui/player/ui/OnlineCategoryActivity;->mAdapter:Lcom/miui/player/model/OnlineCategoryAdapter;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity$1;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    iget-object v0, v0, Lcom/miui/player/ui/OnlineCategoryActivity;->mAdapter:Lcom/miui/player/model/OnlineCategoryAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/player/model/OnlineCategoryAdapter;->updateCategoryList(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;)V

    .line 122
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity$1;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    iget-object v0, v0, Lcom/miui/player/ui/OnlineCategoryActivity;->mAdapter:Lcom/miui/player/model/OnlineCategoryAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/OnlineCategoryAdapter;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity$1;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    iget-object v0, v0, Lcom/miui/player/ui/OnlineCategoryActivity;->mOnlineStatusBarController:Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->setLoadSuccess()V

    .line 124
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity$1;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    iget-object v0, v0, Lcom/miui/player/ui/OnlineCategoryActivity;->mSearchBarController:Lcom/miui/player/ui/controller/SearchBarController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/SearchBarController;->setVisible(Z)V

    .line 130
    :goto_0
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity$1;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    iget-object v0, v0, Lcom/miui/player/ui/OnlineCategoryActivity;->mAdapter:Lcom/miui/player/model/OnlineCategoryAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/OnlineCategoryAdapter;->notifyDataSetChanged()V

    .line 131
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity$1;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/OnlineCategoryActivity;->setTitleBar()V

    .line 133
    :cond_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity$1;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    iget-object v0, v0, Lcom/miui/player/ui/OnlineCategoryActivity;->mOnlineStatusBarController:Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->setLoadFailed()V

    .line 127
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity$1;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    iget-object v0, v0, Lcom/miui/player/ui/OnlineCategoryActivity;->mSearchBarController:Lcom/miui/player/ui/controller/SearchBarController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/SearchBarController;->setVisible(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    check-cast p1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/OnlineCategoryActivity$1;->onPostExecute(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;)V

    return-void
.end method
