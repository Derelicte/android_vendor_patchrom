.class Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;
.super Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;
.source "HomePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/HomePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeRecentAlbumViewGestureLisenter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/HomePage;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/HomePage;)V
    .locals 2
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    .line 378
    #getter for: Lcom/miui/gallery/app/HomePage;->mRecentAlbumView:Lcom/miui/gallery/ui/HomeRecentAlbumView;
    invoke-static {p1}, Lcom/miui/gallery/app/HomePage;->access$600(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/ui/HomeRecentAlbumView;

    move-result-object v0

    #getter for: Lcom/miui/gallery/app/HomePage;->mRecentAlbumDataAdapter:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;
    invoke-static {p1}, Lcom/miui/gallery/app/HomePage;->access$1700(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;-><init>(Lcom/miui/gallery/app/HomePage;Lcom/miui/gallery/ui/AbstractHomeSlotView;Lcom/miui/gallery/ui/HomeSlidingWindowBase$Model;)V

    .line 379
    return-void
.end method


# virtual methods
.method public getTargetMediaObject(I)Lcom/miui/gallery/data/MediaObject;
    .locals 1
    .parameter "index"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mRecentAlbumDataAdapter:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;
    invoke-static {v0}, Lcom/miui/gallery/app/HomePage;->access$1700(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->getMediaSet(I)Lcom/miui/gallery/data/MediaSet;

    move-result-object v0

    return-object v0
.end method

.method public tapOnShowAll(I)V
    .locals 4
    .parameter

    .prologue
    .line 415
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 416
    const-string v1, "media-path"

    iget-object v2, p0, Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    iget-object v2, v2, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryActivity;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    iget-object v1, v1, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/app/AlbumSetPage;

    invoke-virtual {v1, v2, v0}, Lcom/miui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 419
    return-void
.end method

.method public tapOnTargetMediaObject(Lcom/miui/gallery/data/MediaObject;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 383
    check-cast p1, Lcom/miui/gallery/data/MediaSet;

    .line 384
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 385
    new-instance v0, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    invoke-virtual {v2}, Lcom/miui/gallery/app/HomePage;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 386
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaSet;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    .line 387
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 388
    iget-object v4, p0, Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    #calls: Lcom/miui/gallery/app/HomePage;->savePositions(I[I)V
    invoke-static {v4, p2, v3}, Lcom/miui/gallery/app/HomePage;->access$1000(Lcom/miui/gallery/app/HomePage;I[I)V

    .line 389
    const-string v4, "set-center"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 390
    iget-object v3, p0, Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mGetAlbum:Z
    invoke-static {v3}, Lcom/miui/gallery/app/HomePage;->access$1300(Lcom/miui/gallery/app/HomePage;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaSet;->isLeafAlbum()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 391
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    iget-object v0, v0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 392
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "album-path"

    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaSet;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 394
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 395
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 411
    :goto_1
    return-void

    .line 384
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 396
    :cond_1
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaSet;->getSubMediaSetCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 397
    const-string v3, "media-path"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v2, p0, Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    iget-object v2, v2, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/miui/gallery/app/HomePage;

    invoke-virtual {v2, v3, v1, v0}, Lcom/miui/gallery/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_1

    .line 401
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mGetContent:Z
    invoke-static {v3}, Lcom/miui/gallery/app/HomePage;->access$1100(Lcom/miui/gallery/app/HomePage;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaSet;->getSupportedOperations()I

    move-result v3

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_3

    .line 403
    const-string v3, "auto-select-all"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 405
    :cond_3
    const-string v3, "media-path"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v2, "media-name"

    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaSet;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v2, "cluster-menu"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 408
    iget-object v2, p0, Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    iget-object v2, v2, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/miui/gallery/app/AlbumPage;

    invoke-virtual {v2, v3, v1, v0}, Lcom/miui/gallery/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_1
.end method
