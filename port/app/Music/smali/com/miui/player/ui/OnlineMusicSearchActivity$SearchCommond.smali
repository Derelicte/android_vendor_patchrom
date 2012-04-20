.class Lcom/miui/player/ui/OnlineMusicSearchActivity$SearchCommond;
.super Ljava/lang/Object;
.source "OnlineMusicSearchActivity.java"

# interfaces
.implements Lcom/miui/player/ui/controller/SearchBarController$SearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/OnlineMusicSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchCommond"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/OnlineMusicSearchActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/OnlineMusicSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity$SearchCommond;->this$0:Lcom/miui/player/ui/OnlineMusicSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doSearch(Ljava/lang/String;I)V
    .locals 2
    .parameter "searchInput"
    .parameter "type"

    .prologue
    .line 68
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity$SearchCommond;->this$0:Lcom/miui/player/ui/OnlineMusicSearchActivity;

    iput-object p1, v0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mSearchKey:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity$SearchCommond;->this$0:Lcom/miui/player/ui/OnlineMusicSearchActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/OnlineMusicSearchActivity;->startSongListLoadingAsync()V

    .line 73
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity$SearchCommond;->this$0:Lcom/miui/player/ui/OnlineMusicSearchActivity;

    iget-object v0, v0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mSearchBarController:Lcom/miui/player/ui/controller/SearchBarController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/SearchBarController;->showHistoryList(Z)V

    goto :goto_0
.end method

.method public onVisibleChanged(Z)V
    .locals 3
    .parameter "isVisible"

    .prologue
    const/4 v2, 0x0

    .line 79
    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity$SearchCommond;->this$0:Lcom/miui/player/ui/OnlineMusicSearchActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/OnlineMusicSearchActivity;->getListView()Landroid/widget/AbsListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity$SearchCommond;->this$0:Lcom/miui/player/ui/OnlineMusicSearchActivity;

    iget-object v0, v0, Lcom/miui/player/ui/OnlineMusicSearchActivity;->mOnlineStatusBarController:Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;

    invoke-virtual {v0, v2}, Lcom/miui/player/ui/controller/OnlineLoadingStatusBarController;->setVisible(Z)V

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity$SearchCommond;->this$0:Lcom/miui/player/ui/OnlineMusicSearchActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/OnlineMusicSearchActivity;->getListView()Landroid/widget/AbsListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setVisibility(I)V

    goto :goto_0
.end method
