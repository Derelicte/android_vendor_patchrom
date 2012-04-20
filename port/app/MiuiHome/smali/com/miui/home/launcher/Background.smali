.class public Lcom/miui/home/launcher/Background;
.super Landroid/view/SurfaceView;
.source "Background.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/Background$1;,
        Lcom/miui/home/launcher/Background$DimAnimator;
    }
.end annotation


# instance fields
.field private mAnimator:Lcom/miui/home/launcher/Background$DimAnimator;

.field private mEditingBackground:Landroid/graphics/drawable/Drawable;

.field private mPreviewBackground:Landroid/graphics/drawable/Drawable;

.field private mStatusbarBackground:Landroid/graphics/drawable/Drawable;

.field private mWallpaperMask:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    new-instance v0, Lcom/miui/home/launcher/Background$DimAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/Background$DimAnimator;-><init>(Lcom/miui/home/launcher/Background;Lcom/miui/home/launcher/Background$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Background;->mAnimator:Lcom/miui/home/launcher/Background$DimAnimator;

    .line 26
    invoke-virtual {p0}, Lcom/miui/home/launcher/Background;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Background;->mPreviewBackground:Landroid/graphics/drawable/Drawable;

    .line 27
    invoke-virtual {p0}, Lcom/miui/home/launcher/Background;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Background;->mEditingBackground:Landroid/graphics/drawable/Drawable;

    .line 28
    invoke-virtual {p0}, Lcom/miui/home/launcher/Background;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Background;->mWallpaperMask:Landroid/graphics/drawable/Drawable;

    .line 29
    invoke-virtual {p0}, Lcom/miui/home/launcher/Background;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Background;->mStatusbarBackground:Landroid/graphics/drawable/Drawable;

    .line 30
    invoke-virtual {p0}, Lcom/miui/home/launcher/Background;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 31
    invoke-virtual {p0}, Lcom/miui/home/launcher/Background;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/Background;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/miui/home/launcher/Background;->mStatusbarBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 144
    return-void
.end method

.method public setDesktopMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 111
    iget-object v1, p0, Lcom/miui/home/launcher/Background;->mWallpaperMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Background;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/Background;->mWallpaperMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/Background;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/Background;->getMeasuredHeight()I

    move-result v3

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 114
    .local v0, r:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/miui/home/launcher/Background;->mWallpaperMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 115
    invoke-virtual {p0}, Lcom/miui/home/launcher/Background;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/Background;->mStatusbarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 116
    iget-object v1, p0, Lcom/miui/home/launcher/Background;->mStatusbarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 118
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/Background;->mAnimator:Lcom/miui/home/launcher/Background$DimAnimator;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/home/launcher/Background;->mWallpaperMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Background;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/home/launcher/Background$DimAnimator;->start(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/os/Handler;)V

    .line 119
    return-void
.end method

.method public setEnterEditingMode()V
    .locals 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/miui/home/launcher/Background;->mAnimator:Lcom/miui/home/launcher/Background$DimAnimator;

    iget-object v1, p0, Lcom/miui/home/launcher/Background;->mWallpaperMask:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/miui/home/launcher/Background;->mEditingBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Background;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/Background$DimAnimator;->start(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/os/Handler;)V

    .line 104
    return-void
.end method

.method public setEnterPreviewMode()V
    .locals 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/home/launcher/Background;->mAnimator:Lcom/miui/home/launcher/Background$DimAnimator;

    iget-object v1, p0, Lcom/miui/home/launcher/Background;->mWallpaperMask:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/miui/home/launcher/Background;->mPreviewBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Background;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/Background$DimAnimator;->start(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/os/Handler;)V

    .line 96
    return-void
.end method

.method public setExitEditingMode()V
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/miui/home/launcher/Background;->mAnimator:Lcom/miui/home/launcher/Background$DimAnimator;

    iget-object v1, p0, Lcom/miui/home/launcher/Background;->mEditingBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/miui/home/launcher/Background;->mWallpaperMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Background;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/Background$DimAnimator;->start(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/os/Handler;)V

    .line 108
    return-void
.end method

.method public setExitPreviewMode()V
    .locals 4

    .prologue
    .line 99
    iget-object v0, p0, Lcom/miui/home/launcher/Background;->mAnimator:Lcom/miui/home/launcher/Background$DimAnimator;

    iget-object v1, p0, Lcom/miui/home/launcher/Background;->mPreviewBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/miui/home/launcher/Background;->mWallpaperMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Background;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/Background$DimAnimator;->start(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/os/Handler;)V

    .line 100
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 123
    iget-object v0, p0, Lcom/miui/home/launcher/Background;->mEditingBackground:Landroid/graphics/drawable/Drawable;

    sub-int v1, p3, p1

    sub-int v2, p4, p2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 124
    iget-object v0, p0, Lcom/miui/home/launcher/Background;->mPreviewBackground:Landroid/graphics/drawable/Drawable;

    sub-int v1, p3, p1

    sub-int v2, p4, p2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/miui/home/launcher/Background;->setDesktopMode()V

    .line 136
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 130
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 140
    return-void
.end method
