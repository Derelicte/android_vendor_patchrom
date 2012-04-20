.class Lcom/miui/player/ui/controller/AlbumViewController$1;
.super Ljava/lang/Object;
.source "AlbumViewController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/controller/AlbumViewController;->doUpdate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/controller/AlbumViewController;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/controller/AlbumViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/miui/player/ui/controller/AlbumViewController$1;->this$0:Lcom/miui/player/ui/controller/AlbumViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation1"

    .prologue
    .line 104
    iget-object v1, p0, Lcom/miui/player/ui/controller/AlbumViewController$1;->this$0:Lcom/miui/player/ui/controller/AlbumViewController;

    iget-object v1, v1, Lcom/miui/player/ui/controller/AlbumViewController;->mAnimationStatus:Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/miui/player/ui/controller/AlbumViewController$1;->this$0:Lcom/miui/player/ui/controller/AlbumViewController;

    iget-object v1, v1, Lcom/miui/player/ui/controller/AlbumViewController;->mAnimationStatus:Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;->setAnimationPlaying(Z)V

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/controller/AlbumViewController$1;->this$0:Lcom/miui/player/ui/controller/AlbumViewController;

    iget-object v1, v1, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumHelper:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 109
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/miui/player/ui/controller/AlbumViewController$1;->this$0:Lcom/miui/player/ui/controller/AlbumViewController;

    iget-object v1, v1, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumHelper:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object v1, p0, Lcom/miui/player/ui/controller/AlbumViewController$1;->this$0:Lcom/miui/player/ui/controller/AlbumViewController;

    iget-object v1, v1, Lcom/miui/player/ui/controller/AlbumViewController;->mDefaulAlbum:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_1

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 111
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 113
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation1"

    .prologue
    .line 117
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation1"

    .prologue
    .line 121
    return-void
.end method
