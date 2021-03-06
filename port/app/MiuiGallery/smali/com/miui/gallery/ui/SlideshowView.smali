.class public Lcom/miui/gallery/ui/SlideshowView;
.super Lcom/miui/gallery/ui/GLView;
.source "SlideshowView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/SlideshowView$SlideshowAnimation;
    }
.end annotation


# instance fields
.field private mCurrentAnimation:Lcom/miui/gallery/ui/SlideshowView$SlideshowAnimation;

.field private mCurrentRotation:I

.field private mCurrentTexture:Lcom/miui/gallery/ui/BitmapTexture;

.field private mPrevAnimation:Lcom/miui/gallery/ui/SlideshowView$SlideshowAnimation;

.field private mPrevRotation:I

.field private mPrevTexture:Lcom/miui/gallery/ui/BitmapTexture;

.field private mRandom:Ljava/util/Random;

.field private final mTransitionAnimation:Lcom/miui/gallery/anim/FloatAnimation;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/miui/gallery/ui/GLView;-><init>()V

    .line 46
    new-instance v0, Lcom/miui/gallery/anim/FloatAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/anim/FloatAnimation;-><init>(FFI)V

    iput-object v0, p0, Lcom/miui/gallery/ui/SlideshowView;->mTransitionAnimation:Lcom/miui/gallery/anim/FloatAnimation;

    .line 49
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/SlideshowView;->mRandom:Ljava/util/Random;

    .line 123
    return-void
.end method


# virtual methods
.method public next(Landroid/graphics/Bitmap;I)V
    .locals 4
    .parameter "bitmap"
    .parameter "rotation"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/ui/SlideshowView;->mTransitionAnimation:Lcom/miui/gallery/anim/FloatAnimation;

    invoke-virtual {v0}, Lcom/miui/gallery/anim/FloatAnimation;->start()V

    .line 55
    iget-object v0, p0, Lcom/miui/gallery/ui/SlideshowView;->mPrevTexture:Lcom/miui/gallery/ui/BitmapTexture;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/miui/gallery/ui/SlideshowView;->mPrevTexture:Lcom/miui/gallery/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/BitmapTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 57
    iget-object v0, p0, Lcom/miui/gallery/ui/SlideshowView;->mPrevTexture:Lcom/miui/gallery/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/BitmapTexture;->recycle()V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/SlideshowView;->mCurrentTexture:Lcom/miui/gallery/ui/BitmapTexture;

    iput-object v0, p0, Lcom/miui/gallery/ui/SlideshowView;->mPrevTexture:Lcom/miui/gallery/ui/BitmapTexture;

    .line 61
    iget-object v0, p0, Lcom/miui/gallery/ui/SlideshowView;->mCurrentAnimation:Lcom/miui/gallery/ui/SlideshowView$SlideshowAnimation;

    iput-object v0, p0, Lcom/miui/gallery/ui/SlideshowView;->mPrevAnimation:Lcom/miui/gallery/ui/SlideshowView$SlideshowAnimation;

    .line 62
    iget v0, p0, Lcom/miui/gallery/ui/SlideshowView;->mCurrentRotation:I

    iput v0, p0, Lcom/miui/gallery/ui/SlideshowView;->mPrevRotation:I

    .line 64
    iput p2, p0, Lcom/miui/gallery/ui/SlideshowView;->mCurrentRotation:I

    .line 65
    new-instance v0, Lcom/miui/gallery/ui/BitmapTexture;

    invoke-direct {v0, p1}, Lcom/miui/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/SlideshowView;->mCurrentTexture:Lcom/miui/gallery/ui/BitmapTexture;

    .line 66
    div-int/lit8 v0, p2, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 67
    new-instance v0, Lcom/miui/gallery/ui/SlideshowView$SlideshowAnimation;

    iget-object v1, p0, Lcom/miui/gallery/ui/SlideshowView;->mCurrentTexture:Lcom/miui/gallery/ui/BitmapTexture;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/BitmapTexture;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/ui/SlideshowView;->mCurrentTexture:Lcom/miui/gallery/ui/BitmapTexture;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/BitmapTexture;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/ui/SlideshowView;->mRandom:Ljava/util/Random;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/miui/gallery/ui/SlideshowView$SlideshowAnimation;-><init>(Lcom/miui/gallery/ui/SlideshowView;IILjava/util/Random;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/SlideshowView;->mCurrentAnimation:Lcom/miui/gallery/ui/SlideshowView$SlideshowAnimation;

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/ui/SlideshowView;->mCurrentAnimation:Lcom/miui/gallery/ui/SlideshowView$SlideshowAnimation;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SlideshowView$SlideshowAnimation;->start()V

    .line 77
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SlideshowView;->invalidate()V

    .line 78
    return-void

    .line 71
    :cond_1
    new-instance v0, Lcom/miui/gallery/ui/SlideshowView$SlideshowAnimation;

    iget-object v1, p0, Lcom/miui/gallery/ui/SlideshowView;->mCurrentTexture:Lcom/miui/gallery/ui/BitmapTexture;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/BitmapTexture;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/ui/SlideshowView;->mCurrentTexture:Lcom/miui/gallery/ui/BitmapTexture;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/BitmapTexture;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/ui/SlideshowView;->mRandom:Ljava/util/Random;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/miui/gallery/ui/SlideshowView$SlideshowAnimation;-><init>(Lcom/miui/gallery/ui/SlideshowView;IILjava/util/Random;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/SlideshowView;->mCurrentAnimation:Lcom/miui/gallery/ui/SlideshowView$SlideshowAnimation;

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/ui/SlideshowView;->mPrevTexture:Lcom/miui/gallery/ui/BitmapTexture;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/miui/gallery/ui/SlideshowView;->mPrevTexture:Lcom/miui/gallery/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/BitmapTexture;->recycle()V

    .line 83
    iput-object v1, p0, Lcom/miui/gallery/ui/SlideshowView;->mPrevTexture:Lcom/miui/gallery/ui/BitmapTexture;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/SlideshowView;->mCurrentTexture:Lcom/miui/gallery/ui/BitmapTexture;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/miui/gallery/ui/SlideshowView;->mCurrentTexture:Lcom/miui/gallery/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/BitmapTexture;->recycle()V

    .line 87
    iput-object v1, p0, Lcom/miui/gallery/ui/SlideshowView;->mCurrentTexture:Lcom/miui/gallery/ui/BitmapTexture;

    .line 89
    :cond_1
    return-void
.end method

.method protected render(Lcom/miui/gallery/ui/GLCanvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v5, 0x3f80

    .line 93
    invoke-interface {p1}, Lcom/miui/gallery/ui/GLCanvas;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 94
    .local v1, currentTimeMillis:J
    iget-object v6, p0, Lcom/miui/gallery/ui/SlideshowView;->mTransitionAnimation:Lcom/miui/gallery/anim/FloatAnimation;

    invoke-virtual {v6, v1, v2}, Lcom/miui/gallery/anim/FloatAnimation;->calculate(J)Z

    move-result v4

    .line 95
    .local v4, requestRender:Z
    invoke-interface {p1}, Lcom/miui/gallery/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v3

    .line 96
    .local v3, gl:Ljavax/microedition/khronos/opengles/GL11;
    invoke-interface {v3, v10, v10}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 97
    iget-object v6, p0, Lcom/miui/gallery/ui/SlideshowView;->mPrevTexture:Lcom/miui/gallery/ui/BitmapTexture;

    if-nez v6, :cond_3

    move v0, v5

    .line 99
    .local v0, alpha:F
    :goto_0
    iget-object v6, p0, Lcom/miui/gallery/ui/SlideshowView;->mPrevTexture:Lcom/miui/gallery/ui/BitmapTexture;

    if-eqz v6, :cond_0

    cmpl-float v6, v0, v5

    if-eqz v6, :cond_0

    .line 100
    iget-object v6, p0, Lcom/miui/gallery/ui/SlideshowView;->mPrevAnimation:Lcom/miui/gallery/ui/SlideshowView$SlideshowAnimation;

    invoke-virtual {v6, v1, v2}, Lcom/miui/gallery/ui/SlideshowView$SlideshowAnimation;->calculate(J)Z

    move-result v6

    or-int/2addr v4, v6

    .line 101
    invoke-interface {p1, v11}, Lcom/miui/gallery/ui/GLCanvas;->save(I)I

    .line 102
    sub-float v6, v5, v0

    invoke-interface {p1, v6}, Lcom/miui/gallery/ui/GLCanvas;->setAlpha(F)V

    .line 103
    iget-object v6, p0, Lcom/miui/gallery/ui/SlideshowView;->mPrevAnimation:Lcom/miui/gallery/ui/SlideshowView$SlideshowAnimation;

    invoke-virtual {v6, p1}, Lcom/miui/gallery/ui/SlideshowView$SlideshowAnimation;->apply(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 104
    iget v6, p0, Lcom/miui/gallery/ui/SlideshowView;->mPrevRotation:I

    int-to-float v6, v6

    invoke-interface {p1, v6, v9, v9, v5}, Lcom/miui/gallery/ui/GLCanvas;->rotate(FFFF)V

    .line 105
    iget-object v6, p0, Lcom/miui/gallery/ui/SlideshowView;->mPrevTexture:Lcom/miui/gallery/ui/BitmapTexture;

    iget-object v7, p0, Lcom/miui/gallery/ui/SlideshowView;->mPrevTexture:Lcom/miui/gallery/ui/BitmapTexture;

    invoke-virtual {v7}, Lcom/miui/gallery/ui/BitmapTexture;->getWidth()I

    move-result v7

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    iget-object v8, p0, Lcom/miui/gallery/ui/SlideshowView;->mPrevTexture:Lcom/miui/gallery/ui/BitmapTexture;

    invoke-virtual {v8}, Lcom/miui/gallery/ui/BitmapTexture;->getHeight()I

    move-result v8

    neg-int v8, v8

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v6, p1, v7, v8}, Lcom/miui/gallery/ui/BitmapTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;II)V

    .line 107
    invoke-interface {p1}, Lcom/miui/gallery/ui/GLCanvas;->restore()V

    .line 109
    :cond_0
    iget-object v6, p0, Lcom/miui/gallery/ui/SlideshowView;->mCurrentTexture:Lcom/miui/gallery/ui/BitmapTexture;

    if-eqz v6, :cond_1

    .line 110
    iget-object v6, p0, Lcom/miui/gallery/ui/SlideshowView;->mCurrentAnimation:Lcom/miui/gallery/ui/SlideshowView$SlideshowAnimation;

    invoke-virtual {v6, v1, v2}, Lcom/miui/gallery/ui/SlideshowView$SlideshowAnimation;->calculate(J)Z

    move-result v6

    or-int/2addr v4, v6

    .line 111
    invoke-interface {p1, v11}, Lcom/miui/gallery/ui/GLCanvas;->save(I)I

    .line 112
    invoke-interface {p1, v0}, Lcom/miui/gallery/ui/GLCanvas;->setAlpha(F)V

    .line 113
    iget-object v6, p0, Lcom/miui/gallery/ui/SlideshowView;->mCurrentAnimation:Lcom/miui/gallery/ui/SlideshowView$SlideshowAnimation;

    invoke-virtual {v6, p1}, Lcom/miui/gallery/ui/SlideshowView$SlideshowAnimation;->apply(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 114
    iget v6, p0, Lcom/miui/gallery/ui/SlideshowView;->mCurrentRotation:I

    int-to-float v6, v6

    invoke-interface {p1, v6, v9, v9, v5}, Lcom/miui/gallery/ui/GLCanvas;->rotate(FFFF)V

    .line 115
    iget-object v5, p0, Lcom/miui/gallery/ui/SlideshowView;->mCurrentTexture:Lcom/miui/gallery/ui/BitmapTexture;

    iget-object v6, p0, Lcom/miui/gallery/ui/SlideshowView;->mCurrentTexture:Lcom/miui/gallery/ui/BitmapTexture;

    invoke-virtual {v6}, Lcom/miui/gallery/ui/BitmapTexture;->getWidth()I

    move-result v6

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    iget-object v7, p0, Lcom/miui/gallery/ui/SlideshowView;->mCurrentTexture:Lcom/miui/gallery/ui/BitmapTexture;

    invoke-virtual {v7}, Lcom/miui/gallery/ui/BitmapTexture;->getHeight()I

    move-result v7

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v5, p1, v6, v7}, Lcom/miui/gallery/ui/BitmapTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;II)V

    .line 117
    invoke-interface {p1}, Lcom/miui/gallery/ui/GLCanvas;->restore()V

    .line 119
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/miui/gallery/ui/SlideshowView;->invalidate()V

    .line 120
    :cond_2
    const/16 v5, 0x303

    invoke-interface {v3, v10, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 121
    return-void

    .line 97
    .end local v0           #alpha:F
    :cond_3
    iget-object v6, p0, Lcom/miui/gallery/ui/SlideshowView;->mTransitionAnimation:Lcom/miui/gallery/anim/FloatAnimation;

    invoke-virtual {v6}, Lcom/miui/gallery/anim/FloatAnimation;->get()F

    move-result v0

    goto/16 :goto_0
.end method
