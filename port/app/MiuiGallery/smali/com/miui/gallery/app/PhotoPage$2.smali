.class Lcom/miui/gallery/app/PhotoPage$2;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/PhotoPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/miui/gallery/app/PhotoPage$2;->this$0:Lcom/miui/gallery/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingFinished()V
    .locals 3

    .prologue
    .line 265
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage$2;->this$0:Lcom/miui/gallery/app/PhotoPage;

    iget-object v1, v1, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GalleryUtils;->setSpinnerVisibility(Landroid/app/Activity;Z)V

    .line 266
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage$2;->this$0:Lcom/miui/gallery/app/PhotoPage;

    #getter for: Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;
    invoke-static {v1}, Lcom/miui/gallery/app/PhotoPage;->access$500(Lcom/miui/gallery/app/PhotoPage;)Lcom/miui/gallery/app/PhotoPage$Model;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/app/PhotoPage$Model;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 267
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage$2;->this$0:Lcom/miui/gallery/app/PhotoPage;

    #getter for: Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;
    invoke-static {v1}, Lcom/miui/gallery/app/PhotoPage;->access$500(Lcom/miui/gallery/app/PhotoPage;)Lcom/miui/gallery/app/PhotoPage$Model;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/miui/gallery/data/MediaItem;

    move-result-object v0

    .line 268
    .local v0, photo:Lcom/miui/gallery/data/MediaItem;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage$2;->this$0:Lcom/miui/gallery/app/PhotoPage;

    #calls: Lcom/miui/gallery/app/PhotoPage;->updateCurrentPhoto(Lcom/miui/gallery/data/MediaItem;)V
    invoke-static {v1, v0}, Lcom/miui/gallery/app/PhotoPage;->access$600(Lcom/miui/gallery/app/PhotoPage;Lcom/miui/gallery/data/MediaItem;)V

    .line 272
    .end local v0           #photo:Lcom/miui/gallery/data/MediaItem;
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage$2;->this$0:Lcom/miui/gallery/app/PhotoPage;

    invoke-virtual {v1}, Lcom/miui/gallery/app/PhotoPage;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage$2;->this$0:Lcom/miui/gallery/app/PhotoPage;

    iget-object v1, v1, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage$2;->this$0:Lcom/miui/gallery/app/PhotoPage;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/app/StateManager;->finishState(Lcom/miui/gallery/app/ActivityState;)V

    goto :goto_0
.end method

.method public onLoadingStarted()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage$2;->this$0:Lcom/miui/gallery/app/PhotoPage;

    iget-object v0, v0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GalleryUtils;->setSpinnerVisibility(Landroid/app/Activity;Z)V

    .line 277
    return-void
.end method

.method public onPhotoAvailable(JZ)V
    .locals 0
    .parameter "version"
    .parameter "fullImage"

    .prologue
    .line 281
    return-void
.end method

.method public onPhotoChanged(ILcom/miui/gallery/data/Path;)V
    .locals 4
    .parameter "index"
    .parameter "item"

    .prologue
    .line 251
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage$2;->this$0:Lcom/miui/gallery/app/PhotoPage;

    #setter for: Lcom/miui/gallery/app/PhotoPage;->mCurrentIndex:I
    invoke-static {v1, p1}, Lcom/miui/gallery/app/PhotoPage;->access$302(Lcom/miui/gallery/app/PhotoPage;I)I

    .line 252
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage$2;->this$0:Lcom/miui/gallery/app/PhotoPage;

    #getter for: Lcom/miui/gallery/app/PhotoPage;->mResultIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/miui/gallery/app/PhotoPage;->access$400(Lcom/miui/gallery/app/PhotoPage;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "index-hint"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    if-eqz p2, :cond_1

    .line 254
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage$2;->this$0:Lcom/miui/gallery/app/PhotoPage;

    #getter for: Lcom/miui/gallery/app/PhotoPage;->mResultIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/miui/gallery/app/PhotoPage;->access$400(Lcom/miui/gallery/app/PhotoPage;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "media-item-path"

    invoke-virtual {p2}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage$2;->this$0:Lcom/miui/gallery/app/PhotoPage;

    #getter for: Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;
    invoke-static {v1}, Lcom/miui/gallery/app/PhotoPage;->access$500(Lcom/miui/gallery/app/PhotoPage;)Lcom/miui/gallery/app/PhotoPage$Model;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/miui/gallery/data/MediaItem;

    move-result-object v0

    .line 256
    .local v0, photo:Lcom/miui/gallery/data/MediaItem;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage$2;->this$0:Lcom/miui/gallery/app/PhotoPage;

    #calls: Lcom/miui/gallery/app/PhotoPage;->updateCurrentPhoto(Lcom/miui/gallery/data/MediaItem;)V
    invoke-static {v1, v0}, Lcom/miui/gallery/app/PhotoPage;->access$600(Lcom/miui/gallery/app/PhotoPage;Lcom/miui/gallery/data/MediaItem;)V

    .line 260
    .end local v0           #photo:Lcom/miui/gallery/data/MediaItem;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage$2;->this$0:Lcom/miui/gallery/app/PhotoPage;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/miui/gallery/app/PhotoPage$2;->this$0:Lcom/miui/gallery/app/PhotoPage;

    #getter for: Lcom/miui/gallery/app/PhotoPage;->mResultIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/miui/gallery/app/PhotoPage;->access$400(Lcom/miui/gallery/app/PhotoPage;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/app/PhotoPage;->setStateResult(ILandroid/content/Intent;)V

    .line 261
    return-void

    .line 258
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage$2;->this$0:Lcom/miui/gallery/app/PhotoPage;

    #getter for: Lcom/miui/gallery/app/PhotoPage;->mResultIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/miui/gallery/app/PhotoPage;->access$400(Lcom/miui/gallery/app/PhotoPage;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "media-item-path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0
.end method
