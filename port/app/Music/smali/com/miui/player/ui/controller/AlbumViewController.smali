.class public Lcom/miui/player/ui/controller/AlbumViewController;
.super Lcom/miui/player/ui/controller/MediaPlaybackController;
.source "AlbumViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/controller/AlbumViewController$AlphaAnimation;
    }
.end annotation


# instance fields
.field final mAlbumFrame:Landroid/widget/ImageView;

.field private final mAlbumHeight:I

.field final mAlbumHelper:Landroid/widget/ImageView;

.field private final mAlbumWidth:I

.field final mAnimationStatus:Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;

.field final mContext:Landroid/content/Context;

.field private mCurrentAlbum:Landroid/graphics/Bitmap;

.field final mDefaulAlbum:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "parent"
    .parameter "status"
    .parameter "l"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/miui/player/ui/controller/MediaPlaybackController;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAnimationStatus:Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;

    .line 34
    const v0, 0x7f0c0014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumFrame:Landroid/widget/ImageView;

    .line 35
    const v0, 0x7f0c0015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumHelper:Landroid/widget/ImageView;

    .line 37
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mDefaulAlbum:Landroid/graphics/drawable/Drawable;

    .line 38
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mDefaulAlbum:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumHeight:I

    .line 39
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mDefaulAlbum:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumWidth:I

    .line 41
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumFrame:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected dirty(I)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, ret:Z
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 57
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mCurrentAlbum:Landroid/graphics/Bitmap;

    .line 58
    const/4 v0, 0x1

    .line 63
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/player/ui/controller/AlbumViewController;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 59
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 60
    const/4 v0, 0x1

    goto :goto_0

    .line 63
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected doUpdate()Z
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v5, 0x1

    .line 68
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    if-nez v0, :cond_1

    move v5, v13

    .line 128
    :cond_0
    :goto_0
    return v5

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAnimationStatus:Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;

    invoke-interface {v0}, Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/controller/AlbumViewController;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move v5, v13

    .line 74
    goto :goto_0

    .line 76
    :cond_2
    const/4 v8, 0x0

    .line 77
    .local v8, bm:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mContext:Landroid/content/Context;

    const-string v1, "display_album"

    invoke-static {v0, v1}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    iget-wide v1, v1, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;->mAlbumId:J

    iget-object v3, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    iget-object v3, v3, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;->mAlbumName:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    iget-object v4, v4, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;->mArtistName:Ljava/lang/String;

    iget v6, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumWidth:I

    iget v7, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumHeight:I

    invoke-static/range {v0 .. v7}, Lcom/miui/player/meta/AlbumManager;->getDisplayedAlbum(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mControllerInfo:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;->isForced()Z

    move-result v0

    if-eqz v0, :cond_4

    move v12, v5

    .line 83
    .local v12, forced:Z
    :goto_1
    if-eqz v12, :cond_5

    .line 84
    invoke-virtual {p0, v8}, Lcom/miui/player/ui/controller/AlbumViewController;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .end local v12           #forced:Z
    :cond_4
    move v12, v13

    .line 82
    goto :goto_1

    .line 86
    .restart local v12       #forced:Z
    :cond_5
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumFrame:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 87
    .local v9, current:Landroid/graphics/drawable/Drawable;
    if-nez v8, :cond_6

    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mDefaulAlbum:Landroid/graphics/drawable/Drawable;

    if-eq v9, v0, :cond_0

    .line 88
    :cond_6
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumHelper:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    invoke-virtual {p0, v8}, Lcom/miui/player/ui/controller/AlbumViewController;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 90
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mContext:Landroid/content/Context;

    const v1, 0x7f040001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v11

    .line 91
    .local v11, fadeOut:Landroid/view/animation/Animation;
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mContext:Landroid/content/Context;

    const/high16 v1, 0x7f04

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    .line 93
    .local v10, fadeIn:Landroid/view/animation/Animation;
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumFrame:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 94
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumHelper:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 96
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAnimationStatus:Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;

    if-eqz v0, :cond_7

    .line 97
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAnimationStatus:Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;

    invoke-interface {v0, v5}, Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;->setAnimationPlaying(Z)V

    .line 100
    :cond_7
    new-instance v0, Lcom/miui/player/ui/controller/AlbumViewController$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/controller/AlbumViewController$1;-><init>(Lcom/miui/player/ui/controller/AlbumViewController;)V

    invoke-virtual {v11, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_0
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumFrame:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mDefaulAlbum:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/xiaomi/common/util/BitmapHelper;->recycleImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 158
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumHelper:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mDefaulAlbum:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/xiaomi/common/util/BitmapHelper;->recycleImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 159
    return-void
.end method

.method setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bm"

    .prologue
    .line 147
    if-eqz p1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumFrame:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 149
    iput-object p1, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mCurrentAlbum:Landroid/graphics/Bitmap;

    .line 154
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumFrame:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mDefaulAlbum:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mCurrentAlbum:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected setVisible(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    const/16 v1, 0xff

    const/16 v2, 0x32

    .line 46
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumFrame:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 47
    iget-object v3, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumFrame:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 48
    iget-object v3, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumFrame:Landroid/widget/ImageView;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 49
    iget-object v0, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumHelper:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 51
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move v1, v2

    .line 49
    goto :goto_2
.end method

.method public startEnterAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .parameter "l"

    .prologue
    const/16 v3, 0xff

    .line 133
    new-instance v0, Lcom/miui/player/ui/controller/AlbumViewController$AlphaAnimation;

    iget-object v1, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumFrame:Landroid/widget/ImageView;

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/player/ui/controller/AlbumViewController$AlphaAnimation;-><init>(Landroid/widget/ImageView;II)V

    .line 134
    .local v0, a:Landroid/view/animation/Animation;
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 135
    iget-object v1, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumFrame:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 136
    iget-object v1, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumFrame:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 137
    return-void
.end method

.method public startLeaveAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .parameter "l"

    .prologue
    .line 141
    new-instance v0, Lcom/miui/player/ui/controller/AlbumViewController$AlphaAnimation;

    iget-object v1, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumFrame:Landroid/widget/ImageView;

    const/16 v2, 0xff

    const/16 v3, 0x32

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/player/ui/controller/AlbumViewController$AlphaAnimation;-><init>(Landroid/widget/ImageView;II)V

    .line 142
    .local v0, a:Landroid/view/animation/Animation;
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 143
    iget-object v1, p0, Lcom/miui/player/ui/controller/AlbumViewController;->mAlbumFrame:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 144
    return-void
.end method
