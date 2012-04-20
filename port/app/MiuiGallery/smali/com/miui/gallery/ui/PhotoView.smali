.class public Lcom/miui/gallery/ui/PhotoView;
.super Lcom/miui/gallery/ui/GLView;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;,
        Lcom/miui/gallery/ui/PhotoView$ImageData;,
        Lcom/miui/gallery/ui/PhotoView$Model;,
        Lcom/miui/gallery/ui/PhotoView$MyDownUpListener;,
        Lcom/miui/gallery/ui/PhotoView$MyScaleListener;,
        Lcom/miui/gallery/ui/PhotoView$MyGestureListener;,
        Lcom/miui/gallery/ui/PhotoView$PhotoTapListener;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/miui/gallery/app/GalleryActivity;

.field private final mDownUpDetector:Lcom/miui/gallery/ui/DownUpDetector;

.field private mEdgeView:Lcom/miui/gallery/ui/EdgeView;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;

.field private mIgnoreUpEvent:Z

.field private mImageRotation:I

.field private mLoadingSpinner:Lcom/miui/gallery/ui/ProgressSpinner;

.field private mLoadingState:I

.field private mLoadingText:Lcom/miui/gallery/ui/StringTexture;

.field private mModel:Lcom/miui/gallery/ui/PhotoView$Model;

.field private mNoThumbnailText:Lcom/miui/gallery/ui/StringTexture;

.field private mOpenedItemPath:Lcom/miui/gallery/data/Path;

.field private mPhotoTapListener:Lcom/miui/gallery/ui/PhotoView$PhotoTapListener;

.field private final mPositionController:Lcom/miui/gallery/ui/PositionController;

.field private final mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private final mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

.field private mShowVideoPlayIcon:Z

.field private final mTileView:Lcom/miui/gallery/ui/TileImageView;

.field private mTransitionMode:I

.field private mVideoPlayIcon:Lcom/miui/gallery/ui/Texture;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;)V
    .locals 9
    .parameter "activity"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v5, -0x1

    const/high16 v4, 0x41a0

    const/4 v6, 0x0

    .line 102
    invoke-direct {p0}, Lcom/miui/gallery/ui/GLView;-><init>()V

    .line 72
    new-array v3, v8, [Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    .line 85
    iput v7, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    .line 95
    iput v8, p0, Lcom/miui/gallery/ui/PhotoView;->mLoadingState:I

    .line 471
    iput-boolean v7, p0, Lcom/miui/gallery/ui/PhotoView;->mIgnoreUpEvent:Z

    .line 103
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoView;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    .line 104
    new-instance v3, Lcom/miui/gallery/ui/TileImageView;

    invoke-direct {v3, p1}, Lcom/miui/gallery/ui/TileImageView;-><init>(Lcom/miui/gallery/app/GalleryContext;)V

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    .line 105
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    invoke-virtual {p0, v3}, Lcom/miui/gallery/ui/PhotoView;->addComponent(Lcom/miui/gallery/ui/GLView;)V

    .line 106
    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    .local v0, context:Landroid/content/Context;
    new-instance v3, Lcom/miui/gallery/ui/EdgeView;

    invoke-direct {v3, v0}, Lcom/miui/gallery/ui/EdgeView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mEdgeView:Lcom/miui/gallery/ui/EdgeView;

    .line 108
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mEdgeView:Lcom/miui/gallery/ui/EdgeView;

    invoke-virtual {p0, v3}, Lcom/miui/gallery/ui/PhotoView;->addComponent(Lcom/miui/gallery/ui/GLView;)V

    .line 109
    new-instance v3, Lcom/miui/gallery/ui/ProgressSpinner;

    invoke-direct {v3, v0}, Lcom/miui/gallery/ui/ProgressSpinner;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mLoadingSpinner:Lcom/miui/gallery/ui/ProgressSpinner;

    .line 110
    const v3, 0x7f0d0035

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/miui/gallery/ui/StringTexture;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mLoadingText:Lcom/miui/gallery/ui/StringTexture;

    .line 113
    const v3, 0x7f0d0037

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/miui/gallery/ui/StringTexture;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mNoThumbnailText:Lcom/miui/gallery/ui/StringTexture;

    .line 117
    new-instance v3, Lcom/miui/gallery/ui/PhotoView$1;

    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/miui/gallery/ui/PhotoView$1;-><init>(Lcom/miui/gallery/ui/PhotoView;Lcom/miui/gallery/ui/GLRoot;)V

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;

    .line 141
    new-instance v3, Landroid/view/GestureDetector;

    new-instance v4, Lcom/miui/gallery/ui/PhotoView$MyGestureListener;

    invoke-direct {v4, p0, v6}, Lcom/miui/gallery/ui/PhotoView$MyGestureListener;-><init>(Lcom/miui/gallery/ui/PhotoView;Lcom/miui/gallery/ui/PhotoView$1;)V

    const/4 v5, 0x1

    invoke-direct {v3, v0, v4, v6, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 143
    new-instance v3, Landroid/view/ScaleGestureDetector;

    new-instance v4, Lcom/miui/gallery/ui/PhotoView$MyScaleListener;

    invoke-direct {v4, p0, v6}, Lcom/miui/gallery/ui/PhotoView$MyScaleListener;-><init>(Lcom/miui/gallery/ui/PhotoView;Lcom/miui/gallery/ui/PhotoView$1;)V

    invoke-direct {v3, v0, v4}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 144
    new-instance v3, Lcom/miui/gallery/ui/DownUpDetector;

    new-instance v4, Lcom/miui/gallery/ui/PhotoView$MyDownUpListener;

    invoke-direct {v4, p0, v6}, Lcom/miui/gallery/ui/PhotoView$MyDownUpListener;-><init>(Lcom/miui/gallery/ui/PhotoView;Lcom/miui/gallery/ui/PhotoView$1;)V

    invoke-direct {v3, v4}, Lcom/miui/gallery/ui/DownUpDetector;-><init>(Lcom/miui/gallery/ui/DownUpDetector$DownUpListener;)V

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mDownUpDetector:Lcom/miui/gallery/ui/DownUpDetector;

    .line 146
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    array-length v2, v3

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 147
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    new-instance v4, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    invoke-direct {v4, p0, v6}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;-><init>(Lcom/miui/gallery/ui/PhotoView;Lcom/miui/gallery/ui/PhotoView$1;)V

    aput-object v4, v3, v1

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_0
    new-instance v3, Lcom/miui/gallery/ui/PositionController;

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoView;->mEdgeView:Lcom/miui/gallery/ui/EdgeView;

    invoke-direct {v3, p0, v0, v4}, Lcom/miui/gallery/ui/PositionController;-><init>(Lcom/miui/gallery/ui/PhotoView;Landroid/content/Context;Lcom/miui/gallery/ui/EdgeView;)V

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    .line 151
    new-instance v3, Lcom/miui/gallery/ui/ResourceTexture;

    const v4, 0x7f02004b

    invoke-direct {v3, v0, v4}, Lcom/miui/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mVideoPlayIcon:Lcom/miui/gallery/ui/Texture;

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/PhotoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoView;->onTransitionComplete()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/miui/gallery/ui/PhotoView;->mLoadingState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    return v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/ui/PhotoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/miui/gallery/ui/PhotoView;->mLoadingState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/gallery/ui/PhotoView;)[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/ui/PhotoView;)Lcom/miui/gallery/ui/PositionController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/ui/PhotoView;)Lcom/miui/gallery/ui/PhotoView$PhotoTapListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mPhotoTapListener:Lcom/miui/gallery/ui/PhotoView$PhotoTapListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/ui/PhotoView;F)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoView;->swipeImages(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/ui/PhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoView;->mIgnoreUpEvent:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/miui/gallery/ui/PhotoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/miui/gallery/ui/PhotoView;->mIgnoreUpEvent:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/miui/gallery/ui/PhotoView;)Lcom/miui/gallery/ui/EdgeView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mEdgeView:Lcom/miui/gallery/ui/EdgeView;

    return-object v0
.end method

.method static synthetic access$1800(III)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoView;->getRotated(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/miui/gallery/ui/PhotoView;->gapToSide(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/ui/PhotoView;Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/Path;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoView;->mOpenedItemPath:Lcom/miui/gallery/data/Path;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/PhotoView;)Lcom/miui/gallery/ui/ProgressSpinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mLoadingSpinner:Lcom/miui/gallery/ui/ProgressSpinner;

    return-object v0
.end method

.method private static gapToSide(II)I
    .locals 2
    .parameter "imageWidth"
    .parameter "viewWidth"

    .prologue
    .line 296
    const/4 v0, 0x0

    sub-int v1, p1, p0

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static getRotated(III)I
    .locals 1
    .parameter "degree"
    .parameter "original"
    .parameter "theother"

    .prologue
    .line 662
    div-int/lit8 v0, p0, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method private layoutScreenNails()V
    .locals 9

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoView;->getWidth()I

    move-result v6

    .line 315
    .local v6, width:I
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoView;->getHeight()I

    move-result v3

    .line 319
    .local v3, height:I
    iget-object v7, p0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    invoke-virtual {v7}, Lcom/miui/gallery/ui/PositionController;->getImageBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 320
    .local v0, bounds:Landroid/graphics/RectF;
    iget v7, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 321
    .local v4, left:I
    iget v7, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 322
    .local v5, right:I
    sub-int v7, v5, v4

    invoke-static {v7, v6}, Lcom/miui/gallery/ui/PhotoView;->gapToSide(II)I

    move-result v2

    .line 325
    .local v2, gap:I
    iget-object v7, p0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    const/4 v8, 0x0

    aget-object v1, v7, v8

    .line 327
    .local v1, entry:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 328
    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->gapToSide()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v7, v7, 0x60

    sub-int v7, v4, v7

    invoke-virtual {v1, v7}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->layoutRightEdgeAt(I)V

    .line 333
    :cond_0
    iget-object v7, p0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    const/4 v8, 0x1

    aget-object v1, v7, v8

    .line 334
    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 335
    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->gapToSide()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v7, v7, 0x60

    add-int/2addr v7, v5

    invoke-virtual {v1, v7}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->layoutLeftEdgeAt(I)V

    .line 338
    :cond_1
    return-void
.end method

.method private onTransitionComplete()V
    .locals 2

    .prologue
    .line 625
    iget v0, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    .line 626
    .local v0, mode:I
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    .line 628
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoView;->mModel:Lcom/miui/gallery/ui/PhotoView$Model;

    if-nez v1, :cond_1

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 630
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoView;->switchToNextImage()V

    goto :goto_0

    .line 631
    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 632
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoView;->switchToPreviousImage()V

    goto :goto_0
.end method

.method private setTileViewPosition(IIF)Z
    .locals 6
    .parameter "centerX"
    .parameter "centerY"
    .parameter "scale"

    .prologue
    .line 167
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PositionController;->getImageWidth()I

    move-result v4

    sub-int v0, v4, p1

    .line 168
    .local v0, inverseX:I
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PositionController;->getImageHeight()I

    move-result v4

    sub-int v1, v4, p2

    .line 169
    .local v1, inverseY:I
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    .line 170
    .local v3, t:Lcom/miui/gallery/ui/TileImageView;
    iget v2, p0, Lcom/miui/gallery/ui/PhotoView;->mImageRotation:I

    .line 171
    .local v2, rotation:I
    sparse-switch v2, :sswitch_data_0

    .line 176
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 172
    :sswitch_0
    const/4 v4, 0x0

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/miui/gallery/ui/TileImageView;->setPosition(IIFI)Z

    move-result v4

    .line 175
    :goto_0
    return v4

    .line 173
    :sswitch_1
    const/16 v4, 0x5a

    invoke-virtual {v3, p2, v0, p3, v4}, Lcom/miui/gallery/ui/TileImageView;->setPosition(IIFI)Z

    move-result v4

    goto :goto_0

    .line 174
    :sswitch_2
    const/16 v4, 0xb4

    invoke-virtual {v3, v0, v1, p3, v4}, Lcom/miui/gallery/ui/TileImageView;->setPosition(IIFI)Z

    move-result v4

    goto :goto_0

    .line 175
    :sswitch_3
    const/16 v4, 0x10e

    invoke-virtual {v3, v1, p1, p3, v4}, Lcom/miui/gallery/ui/TileImageView;->setPosition(IIFI)Z

    move-result v4

    goto :goto_0

    .line 171
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private stopCurrentSwipingIfNeeded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 395
    iget v0, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 396
    iput v2, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    .line 397
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PositionController;->stopAnimation()V

    .line 398
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoView;->switchToNextImage()V

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    iget v0, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 400
    iput v2, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    .line 401
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PositionController;->stopAnimation()V

    .line 402
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoView;->switchToPreviousImage()V

    goto :goto_0
.end method

.method private swipeImages(F)Z
    .locals 10
    .parameter "velocity"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 407
    iget v7, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    if-eq v7, v9, :cond_1

    .line 439
    :cond_0
    :goto_0
    return v5

    .line 411
    :cond_1
    iget-object v7, p0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    aget-object v2, v7, v6

    .line 412
    .local v2, next:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    iget-object v7, p0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    aget-object v3, v7, v5

    .line 414
    .local v3, prev:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoView;->getWidth()I

    move-result v4

    .line 418
    .local v4, width:I
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    .line 419
    .local v0, controller:Lcom/miui/gallery/ui/PositionController;
    invoke-virtual {v0}, Lcom/miui/gallery/ui/PositionController;->isAtMinimalScale()Z

    move-result v1

    .line 421
    .local v1, isMinimal:Z
    const/high16 v7, -0x3c6a

    cmpg-float v7, p1, v7

    if-gez v7, :cond_3

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PositionController;->isAtRightEdge()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 423
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoView;->stopCurrentSwipingIfNeeded()V

    .line 424
    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 425
    iput v8, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    .line 426
    #getter for: Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mOffsetX:I
    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->access$900(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;)I

    move-result v5

    div-int/lit8 v7, v4, 0x2

    sub-int/2addr v5, v7

    invoke-virtual {v0, v5}, Lcom/miui/gallery/ui/PositionController;->startHorizontalSlide(I)V

    move v5, v6

    .line 427
    goto :goto_0

    .line 429
    :cond_3
    const/high16 v7, 0x4396

    cmpl-float v7, p1, v7

    if-lez v7, :cond_0

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PositionController;->isAtLeftEdge()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 431
    :cond_4
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoView;->stopCurrentSwipingIfNeeded()V

    .line 432
    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 433
    iput v9, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    .line 434
    #getter for: Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mOffsetX:I
    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->access$900(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;)I

    move-result v5

    div-int/lit8 v7, v4, 0x2

    sub-int/2addr v5, v7

    invoke-virtual {v0, v5}, Lcom/miui/gallery/ui/PositionController;->startHorizontalSlide(I)V

    move v5, v6

    .line 435
    goto :goto_0
.end method

.method private switchToNextImage()V
    .locals 4

    .prologue
    .line 598
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 599
    .local v1, prevNail:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    const/4 v3, 0x1

    aget-object v0, v2, v3

    .line 600
    .local v0, nextNail:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/TileImageView;->invalidateTiles()V

    .line 601
    #getter for: Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;
    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->access$1700(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;)Lcom/miui/gallery/ui/BitmapTexture;

    move-result-object v2

    if-eqz v2, :cond_0

    #getter for: Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;
    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->access$1700(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;)Lcom/miui/gallery/ui/BitmapTexture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/ui/BitmapTexture;->recycle()V

    .line 602
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    iget-object v2, v2, Lcom/miui/gallery/ui/TileImageView;->mBackupImage:Lcom/miui/gallery/ui/BitmapTexture;

    #setter for: Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;
    invoke-static {v1, v2}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->access$1702(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;Lcom/miui/gallery/ui/BitmapTexture;)Lcom/miui/gallery/ui/BitmapTexture;

    .line 603
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    #getter for: Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;
    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->access$1700(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;)Lcom/miui/gallery/ui/BitmapTexture;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/gallery/ui/TileImageView;->mBackupImage:Lcom/miui/gallery/ui/BitmapTexture;

    .line 604
    const/4 v2, 0x0

    #setter for: Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;
    invoke-static {v0, v2}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->access$1702(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;Lcom/miui/gallery/ui/BitmapTexture;)Lcom/miui/gallery/ui/BitmapTexture;

    .line 605
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView;->mModel:Lcom/miui/gallery/ui/PhotoView$Model;

    invoke-interface {v2}, Lcom/miui/gallery/ui/PhotoView$Model;->next()V

    .line 606
    return-void
.end method

.method private switchToPreviousImage()V
    .locals 4

    .prologue
    .line 610
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 611
    .local v1, prevNail:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    const/4 v3, 0x1

    aget-object v0, v2, v3

    .line 612
    .local v0, nextNail:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/TileImageView;->invalidateTiles()V

    .line 613
    #getter for: Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;
    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->access$1700(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;)Lcom/miui/gallery/ui/BitmapTexture;

    move-result-object v2

    if-eqz v2, :cond_0

    #getter for: Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;
    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->access$1700(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;)Lcom/miui/gallery/ui/BitmapTexture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/ui/BitmapTexture;->recycle()V

    .line 614
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    iget-object v2, v2, Lcom/miui/gallery/ui/TileImageView;->mBackupImage:Lcom/miui/gallery/ui/BitmapTexture;

    #setter for: Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;
    invoke-static {v0, v2}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->access$1702(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;Lcom/miui/gallery/ui/BitmapTexture;)Lcom/miui/gallery/ui/BitmapTexture;

    .line 615
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    #getter for: Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;
    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->access$1700(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;)Lcom/miui/gallery/ui/BitmapTexture;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/gallery/ui/TileImageView;->mBackupImage:Lcom/miui/gallery/ui/BitmapTexture;

    .line 616
    const/4 v2, 0x0

    #setter for: Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;
    invoke-static {v0, v2}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->access$1702(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;Lcom/miui/gallery/ui/BitmapTexture;)Lcom/miui/gallery/ui/BitmapTexture;

    .line 617
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView;->mModel:Lcom/miui/gallery/ui/PhotoView$Model;

    invoke-interface {v2}, Lcom/miui/gallery/ui/PhotoView$Model;->previous()V

    .line 618
    return-void
.end method

.method private updateLoadingState()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 240
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mModel:Lcom/miui/gallery/ui/PhotoView$Model;

    invoke-interface {v0}, Lcom/miui/gallery/ui/PhotoView$Model;->getLevelCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mModel:Lcom/miui/gallery/ui/PhotoView$Model;

    invoke-interface {v0}, Lcom/miui/gallery/ui/PhotoView$Model;->getBackupImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;

    invoke-virtual {v0, v3}, Lcom/miui/gallery/ui/SynchronizedHandler;->removeMessages(I)V

    .line 242
    iput v3, p0, Lcom/miui/gallery/ui/PhotoView;->mLoadingState:I

    .line 252
    :cond_1
    :goto_0
    return-void

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mModel:Lcom/miui/gallery/ui/PhotoView$Model;

    invoke-interface {v0}, Lcom/miui/gallery/ui/PhotoView$Model;->isFailedToLoad()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;

    invoke-virtual {v0, v3}, Lcom/miui/gallery/ui/SynchronizedHandler;->removeMessages(I)V

    .line 245
    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/gallery/ui/PhotoView;->mLoadingState:I

    goto :goto_0

    .line 246
    :cond_3
    iget v0, p0, Lcom/miui/gallery/ui/PhotoView;->mLoadingState:I

    if-eqz v0, :cond_1

    .line 247
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/ui/PhotoView;->mLoadingState:I

    .line 248
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;

    invoke-virtual {v0, v3}, Lcom/miui/gallery/ui/SynchronizedHandler;->removeMessages(I)V

    .line 249
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Lcom/miui/gallery/ui/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private updateScreenNailEntry(ILcom/miui/gallery/ui/PhotoView$ImageData;)V
    .locals 4
    .parameter "which"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 187
    iget v1, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    aget-object v0, v1, p1

    .line 193
    .local v0, entry:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    if-nez p2, :cond_2

    .line 194
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, v3}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->set(ZLandroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 196
    :cond_2
    const/4 v1, 0x1

    iget-object v2, p2, Lcom/miui/gallery/ui/PhotoView$ImageData;->bitmap:Landroid/graphics/Bitmap;

    iget v3, p2, Lcom/miui/gallery/ui/PhotoView$ImageData;->rotation:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->set(ZLandroid/graphics/Bitmap;I)V

    goto :goto_0
.end method


# virtual methods
.method public isDown()Z
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mDownUpDetector:Lcom/miui/gallery/ui/DownUpDetector;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/DownUpDetector;->isDown()Z

    move-result v0

    return v0
.end method

.method public isInTransition()Z
    .locals 1

    .prologue
    .line 791
    iget v0, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyImageInvalidated(I)V
    .locals 3
    .parameter "which"

    .prologue
    .line 202
    packed-switch p1, :pswitch_data_0

    .line 232
    :goto_0
    return-void

    .line 204
    :pswitch_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoView;->mModel:Lcom/miui/gallery/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/miui/gallery/ui/PhotoView$Model;->getPreviousImage()Lcom/miui/gallery/ui/PhotoView$ImageData;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/ui/PhotoView;->updateScreenNailEntry(ILcom/miui/gallery/ui/PhotoView$ImageData;)V

    .line 206
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoView;->layoutScreenNails()V

    .line 207
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoView;->invalidate()V

    goto :goto_0

    .line 211
    :pswitch_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoView;->mModel:Lcom/miui/gallery/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/miui/gallery/ui/PhotoView$Model;->getNextImage()Lcom/miui/gallery/ui/PhotoView$ImageData;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/ui/PhotoView;->updateScreenNailEntry(ILcom/miui/gallery/ui/PhotoView$ImageData;)V

    .line 212
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoView;->layoutScreenNails()V

    .line 213
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoView;->invalidate()V

    goto :goto_0

    .line 218
    :pswitch_2
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/TileImageView;->notifyModelInvalidated()V

    .line 220
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mModel:Lcom/miui/gallery/ui/PhotoView$Model;

    invoke-interface {v0}, Lcom/miui/gallery/ui/PhotoView$Model;->getImageRotation()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/PhotoView;->mImageRotation:I

    .line 221
    iget v0, p0, Lcom/miui/gallery/ui/PhotoView;->mImageRotation:I

    div-int/lit8 v0, v0, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    iget v1, v1, Lcom/miui/gallery/ui/TileImageView;->mImageWidth:I

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    iget v2, v2, Lcom/miui/gallery/ui/TileImageView;->mImageHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/PositionController;->setImageSize(II)V

    .line 228
    :goto_1
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoView;->updateLoadingState()V

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    iget v1, v1, Lcom/miui/gallery/ui/TileImageView;->mImageHeight:I

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    iget v2, v2, Lcom/miui/gallery/ui/TileImageView;->mImageWidth:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/PositionController;->setImageSize(II)V

    goto :goto_1

    .line 202
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public notifyModelInvalidated()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 255
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mModel:Lcom/miui/gallery/ui/PhotoView$Model;

    if-nez v0, :cond_0

    .line 256
    invoke-direct {p0, v1, v3}, Lcom/miui/gallery/ui/PhotoView;->updateScreenNailEntry(ILcom/miui/gallery/ui/PhotoView$ImageData;)V

    .line 257
    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/ui/PhotoView;->updateScreenNailEntry(ILcom/miui/gallery/ui/PhotoView$ImageData;)V

    .line 262
    :goto_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoView;->layoutScreenNails()V

    .line 264
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mModel:Lcom/miui/gallery/ui/PhotoView$Model;

    if-nez v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/TileImageView;->notifyModelInvalidated()V

    .line 266
    iput v1, p0, Lcom/miui/gallery/ui/PhotoView;->mImageRotation:I

    .line 267
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    invoke-virtual {v0, v1, v1}, Lcom/miui/gallery/ui/PositionController;->setImageSize(II)V

    .line 268
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoView;->updateLoadingState()V

    .line 272
    :goto_1
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mModel:Lcom/miui/gallery/ui/PhotoView$Model;

    invoke-interface {v0}, Lcom/miui/gallery/ui/PhotoView$Model;->getPreviousImage()Lcom/miui/gallery/ui/PhotoView$ImageData;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/miui/gallery/ui/PhotoView;->updateScreenNailEntry(ILcom/miui/gallery/ui/PhotoView$ImageData;)V

    .line 260
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mModel:Lcom/miui/gallery/ui/PhotoView$Model;

    invoke-interface {v0}, Lcom/miui/gallery/ui/PhotoView$Model;->getNextImage()Lcom/miui/gallery/ui/PhotoView$ImageData;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/miui/gallery/ui/PhotoView;->updateScreenNailEntry(ILcom/miui/gallery/ui/PhotoView$ImageData;)V

    goto :goto_0

    .line 270
    :cond_1
    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/PhotoView;->notifyImageInvalidated(I)V

    goto :goto_1
.end method

.method public notifyOnNewImage()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 562
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    invoke-virtual {v0, v1, v1}, Lcom/miui/gallery/ui/PositionController;->setImageSize(II)V

    .line 563
    return-void
.end method

.method public notifyTransitionComplete()V
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/SynchronizedHandler;->sendEmptyMessage(I)Z

    .line 622
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changeSize"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 285
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    invoke-virtual {v4, p2, p3, p4, p5}, Lcom/miui/gallery/ui/TileImageView;->layout(IIII)V

    .line 286
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoView;->mEdgeView:Lcom/miui/gallery/ui/EdgeView;

    invoke-virtual {v4, p2, p3, p4, p5}, Lcom/miui/gallery/ui/EdgeView;->layout(IIII)V

    .line 287
    if-eqz p1, :cond_0

    .line 288
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoView;->getHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/miui/gallery/ui/PositionController;->setViewSize(II)V

    .line 289
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    .local v0, arr$:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 290
    .local v1, entry:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->updateDrawingSize()V

    .line 289
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 293
    .end local v0           #arr$:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    .end local v1           #entry:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 277
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 278
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mDownUpDetector:Lcom/miui/gallery/ui/DownUpDetector;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/DownUpDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 279
    const/4 v0, 0x1

    return v0
.end method

.method public openAnimationStarted()V
    .locals 1

    .prologue
    .line 787
    const/4 v0, 0x5

    iput v0, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    .line 788
    return-void
.end method

.method public pause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 754
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PositionController;->skipAnimation()V

    .line 755
    iput v5, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    .line 756
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/TileImageView;->freeTextures()V

    .line 757
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    .local v0, arr$:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 758
    .local v1, entry:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    const/4 v4, 0x0

    invoke-virtual {v1, v5, v4, v5}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->set(ZLandroid/graphics/Bitmap;I)V

    .line 757
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 760
    .end local v1           #entry:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    :cond_0
    return-void
.end method

.method protected render(Lcom/miui/gallery/ui/GLCanvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 342
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    .line 345
    .local v10, p:Lcom/miui/gallery/ui/PositionController;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/gallery/ui/PhotoView;->mLoadingState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 346
    invoke-super/range {p0 .. p1}, Lcom/miui/gallery/ui/GLView;->render(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 350
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 353
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    const/4 v2, 0x0

    aget-object v11, v1, v2

    .line 354
    .local v11, prevNail:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    const/4 v2, 0x1

    aget-object v9, v1, v2

    .line 356
    .local v9, nextNail:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    #getter for: Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mVisible:Z
    invoke-static {v11}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->access$800(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->draw(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 357
    :cond_1
    #getter for: Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mVisible:Z
    invoke-static {v9}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->access$800(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->draw(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 366
    .end local v9           #nextNail:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    .end local v11           #prevNail:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/PhotoView;->getWidth()I

    move-result v13

    .line 367
    .local v13, w:I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/PhotoView;->getHeight()I

    move-result v7

    .line 368
    .local v7, h:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PositionController;->getImageBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 369
    .local v14, x:I
    div-int/lit8 v15, v7, 0x2

    .line 370
    .local v15, y:I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/PhotoView;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/PhotoView;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/lit8 v5, v1, 0x6

    .line 372
    .local v5, s:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/gallery/ui/PhotoView;->mLoadingState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 373
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/gallery/ui/PhotoView;->mLoadingText:Lcom/miui/gallery/ui/StringTexture;

    .line 374
    .local v8, m:Lcom/miui/gallery/ui/StringTexture;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/gallery/ui/PhotoView;->mLoadingSpinner:Lcom/miui/gallery/ui/ProgressSpinner;

    .line 375
    .local v12, r:Lcom/miui/gallery/ui/ProgressSpinner;
    invoke-virtual {v12}, Lcom/miui/gallery/ui/ProgressSpinner;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v14, v1

    invoke-virtual {v12}, Lcom/miui/gallery/ui/ProgressSpinner;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v15, v2

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v1, v2}, Lcom/miui/gallery/ui/ProgressSpinner;->draw(Lcom/miui/gallery/ui/GLCanvas;II)V

    .line 376
    invoke-virtual {v8}, Lcom/miui/gallery/ui/StringTexture;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v14, v1

    div-int/lit8 v2, v5, 0x2

    add-int/2addr v2, v15

    add-int/lit8 v2, v2, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v1, v2}, Lcom/miui/gallery/ui/StringTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;II)V

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/PhotoView;->invalidate()V

    .line 384
    .end local v8           #m:Lcom/miui/gallery/ui/StringTexture;
    .end local v12           #r:Lcom/miui/gallery/ui/ProgressSpinner;
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/miui/gallery/ui/PhotoView;->mShowVideoPlayIcon:Z

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/gallery/ui/PhotoView;->mLoadingState:I

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/gallery/ui/PhotoView;->mLoadingState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    .line 387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/PhotoView;->mVideoPlayIcon:Lcom/miui/gallery/ui/Texture;

    div-int/lit8 v2, v5, 0x2

    sub-int v3, v14, v2

    div-int/lit8 v2, v5, 0x2

    sub-int v4, v15, v2

    move-object/from16 v2, p1

    move v6, v5

    invoke-interface/range {v1 .. v6}, Lcom/miui/gallery/ui/Texture;->draw(Lcom/miui/gallery/ui/GLCanvas;IIII)V

    .line 390
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PositionController;->advanceAnimation()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/PhotoView;->invalidate()V

    .line 391
    :cond_5
    return-void

    .line 378
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/gallery/ui/PhotoView;->mLoadingState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 379
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/gallery/ui/PhotoView;->mNoThumbnailText:Lcom/miui/gallery/ui/StringTexture;

    .line 380
    .restart local v8       #m:Lcom/miui/gallery/ui/StringTexture;
    invoke-virtual {v8}, Lcom/miui/gallery/ui/StringTexture;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v14, v1

    div-int/lit8 v2, v5, 0x2

    add-int/2addr v2, v15

    add-int/lit8 v2, v2, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v1, v2}, Lcom/miui/gallery/ui/StringTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;II)V

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/TileImageView;->prepareTextures()V

    .line 764
    return-void
.end method

.method public retrieveSavedPosition()Lcom/miui/gallery/ui/PositionRepository$Position;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 776
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView;->mOpenedItemPath:Lcom/miui/gallery/data/Path;

    if-eqz v2, :cond_0

    .line 777
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-static {v2}, Lcom/miui/gallery/ui/PositionRepository;->getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/ui/PositionRepository;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mOpenedItemPath:Lcom/miui/gallery/data/Path;

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/PositionRepository;->get(Ljava/lang/Long;)Lcom/miui/gallery/ui/PositionRepository$Position;

    move-result-object v0

    .line 780
    .local v0, position:Lcom/miui/gallery/ui/PositionRepository$Position;
    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoView;->mOpenedItemPath:Lcom/miui/gallery/data/Path;

    .line 783
    .end local v0           #position:Lcom/miui/gallery/ui/PositionRepository$Position;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public setModel(Lcom/miui/gallery/ui/PhotoView$Model;)V
    .locals 1
    .parameter "model"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mModel:Lcom/miui/gallery/ui/PhotoView$Model;

    if-ne v0, p1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoView;->mModel:Lcom/miui/gallery/ui/PhotoView$Model;

    .line 158
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/TileImageView;->setModel(Lcom/miui/gallery/ui/TileImageView$Model;)V

    .line 159
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoView;->notifyOnNewImage()V

    goto :goto_0
.end method

.method public setOpenedItem(Lcom/miui/gallery/data/Path;)V
    .locals 0
    .parameter "itemPath"

    .prologue
    .line 767
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoView;->mOpenedItemPath:Lcom/miui/gallery/data/Path;

    .line 768
    return-void
.end method

.method public setPhotoTapListener(Lcom/miui/gallery/ui/PhotoView$PhotoTapListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoView;->mPhotoTapListener:Lcom/miui/gallery/ui/PhotoView$PhotoTapListener;

    .line 164
    return-void
.end method

.method public setPosition(IIF)V
    .locals 1
    .parameter "centerX"
    .parameter "centerY"
    .parameter "scale"

    .prologue
    .line 181
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoView;->setTileViewPosition(IIF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoView;->layoutScreenNails()V

    .line 184
    :cond_0
    return-void
.end method

.method public showVideoPlayIcon(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 771
    iput-boolean p1, p0, Lcom/miui/gallery/ui/PhotoView;->mShowVideoPlayIcon:Z

    .line 772
    return-void
.end method

.method public snapToNeighborImage()Z
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 443
    iget v10, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    if-eqz v10, :cond_1

    .line 468
    :cond_0
    :goto_0
    return v8

    .line 445
    :cond_1
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    aget-object v3, v10, v9

    .line 446
    .local v3, next:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    aget-object v4, v10, v8

    .line 448
    .local v4, prev:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoView;->getWidth()I

    move-result v7

    .line 449
    .local v7, width:I
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    .line 451
    .local v1, controller:Lcom/miui/gallery/ui/PositionController;
    invoke-virtual {v1}, Lcom/miui/gallery/ui/PositionController;->getImageBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 452
    .local v0, bounds:Landroid/graphics/RectF;
    iget v10, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 453
    .local v2, left:I
    iget v10, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 454
    .local v5, right:I
    sub-int v10, v5, v2

    invoke-static {v10, v7}, Lcom/miui/gallery/ui/PhotoView;->gapToSide(II)I

    move-result v10

    add-int/lit16 v6, v10, 0x100

    .line 457
    .local v6, threshold:I
    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    sub-int v10, v7, v5

    if-ge v6, v10, :cond_2

    .line 458
    const/4 v8, 0x3

    iput v8, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    .line 459
    #getter for: Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mOffsetX:I
    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->access$900(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;)I

    move-result v8

    div-int/lit8 v10, v7, 0x2

    sub-int/2addr v8, v10

    invoke-virtual {v1, v8}, Lcom/miui/gallery/ui/PositionController;->startHorizontalSlide(I)V

    move v8, v9

    .line 460
    goto :goto_0

    .line 462
    :cond_2
    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    if-ge v6, v2, :cond_0

    .line 463
    const/4 v8, 0x4

    iput v8, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    .line 464
    #getter for: Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mOffsetX:I
    invoke-static {v4}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->access$900(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;)I

    move-result v8

    div-int/lit8 v10, v7, 0x2

    sub-int/2addr v8, v10

    invoke-virtual {v1, v8}, Lcom/miui/gallery/ui/PositionController;->startHorizontalSlide(I)V

    move v8, v9

    .line 465
    goto :goto_0
.end method

.method public startSlideInAnimation(I)V
    .locals 3
    .parameter "direction"

    .prologue
    .line 566
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    .line 567
    .local v0, a:Lcom/miui/gallery/ui/PositionController;
    invoke-virtual {v0}, Lcom/miui/gallery/ui/PositionController;->stopAnimation()V

    .line 568
    packed-switch p1, :pswitch_data_0

    .line 575
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 571
    :pswitch_0
    iput p1, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    .line 572
    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PositionController;->startSlideInAnimation(I)V

    .line 577
    return-void

    .line 568
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
