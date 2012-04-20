.class public abstract Lcom/miui/gallery/ui/IconDrawer;
.super Lcom/miui/gallery/ui/SelectionDrawer;
.source "IconDrawer.java"


# instance fields
.field private final mCameraIcon:Lcom/miui/gallery/ui/ResourceTexture;

.field private final mDarkStrip:Lcom/miui/gallery/ui/NinePatchTexture;

.field private final mFrameNewIndic:Lcom/miui/gallery/ui/ResourceTexture;

.field private final mFrameNewPressed:Lcom/miui/gallery/ui/ResourceTexture;

.field private final mFramePressed:Lcom/miui/gallery/ui/ResourceTexture;

.field private final mLocalSetIcon:Lcom/miui/gallery/ui/ResourceTexture;

.field private final mMtpIcon:Lcom/miui/gallery/ui/ResourceTexture;

.field private final mPanoramaBorder:Lcom/miui/gallery/ui/NinePatchTexture;

.field private final mPicasaIcon:Lcom/miui/gallery/ui/ResourceTexture;

.field private final mVideoOverlay:Lcom/miui/gallery/ui/Texture;

.field private final mVideoPlayIcon:Lcom/miui/gallery/ui/Texture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/miui/gallery/ui/SelectionDrawer;-><init>()V

    .line 47
    new-instance v0, Lcom/miui/gallery/ui/ResourceTexture;

    const v1, 0x7f020043

    invoke-direct {v0, p1, v1}, Lcom/miui/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/IconDrawer;->mLocalSetIcon:Lcom/miui/gallery/ui/ResourceTexture;

    .line 48
    new-instance v0, Lcom/miui/gallery/ui/ResourceTexture;

    const v1, 0x7f020042

    invoke-direct {v0, p1, v1}, Lcom/miui/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/IconDrawer;->mCameraIcon:Lcom/miui/gallery/ui/ResourceTexture;

    .line 49
    new-instance v0, Lcom/miui/gallery/ui/ResourceTexture;

    const v1, 0x7f020044

    invoke-direct {v0, p1, v1}, Lcom/miui/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/IconDrawer;->mPicasaIcon:Lcom/miui/gallery/ui/ResourceTexture;

    .line 50
    new-instance v0, Lcom/miui/gallery/ui/ResourceTexture;

    const v1, 0x7f020045

    invoke-direct {v0, p1, v1}, Lcom/miui/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/IconDrawer;->mMtpIcon:Lcom/miui/gallery/ui/ResourceTexture;

    .line 51
    new-instance v0, Lcom/miui/gallery/ui/ResourceTexture;

    const v1, 0x7f020063

    invoke-direct {v0, p1, v1}, Lcom/miui/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/IconDrawer;->mVideoOverlay:Lcom/miui/gallery/ui/Texture;

    .line 52
    new-instance v0, Lcom/miui/gallery/ui/ResourceTexture;

    const v1, 0x7f02004c

    invoke-direct {v0, p1, v1}, Lcom/miui/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/IconDrawer;->mVideoPlayIcon:Lcom/miui/gallery/ui/Texture;

    .line 53
    new-instance v0, Lcom/miui/gallery/ui/NinePatchTexture;

    const v1, 0x7f02005b

    invoke-direct {v0, p1, v1}, Lcom/miui/gallery/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/IconDrawer;->mPanoramaBorder:Lcom/miui/gallery/ui/NinePatchTexture;

    .line 54
    new-instance v0, Lcom/miui/gallery/ui/ResourceTexture;

    const v1, 0x7f020047

    invoke-direct {v0, p1, v1}, Lcom/miui/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/IconDrawer;->mFramePressed:Lcom/miui/gallery/ui/ResourceTexture;

    .line 55
    new-instance v0, Lcom/miui/gallery/ui/ResourceTexture;

    const v1, 0x7f020046

    invoke-direct {v0, p1, v1}, Lcom/miui/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/IconDrawer;->mFrameNewPressed:Lcom/miui/gallery/ui/ResourceTexture;

    .line 56
    new-instance v0, Lcom/miui/gallery/ui/ResourceTexture;

    const v1, 0x7f020020

    invoke-direct {v0, p1, v1}, Lcom/miui/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/IconDrawer;->mFrameNewIndic:Lcom/miui/gallery/ui/ResourceTexture;

    .line 57
    new-instance v0, Lcom/miui/gallery/ui/NinePatchTexture;

    const v1, 0x7f02002e

    invoke-direct {v0, p1, v1}, Lcom/miui/gallery/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/IconDrawer;->mDarkStrip:Lcom/miui/gallery/ui/NinePatchTexture;

    .line 58
    return-void
.end method


# virtual methods
.method public drawFocus(Lcom/miui/gallery/ui/GLCanvas;II)V
    .locals 0
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 141
    return-void
.end method

.method protected drawLabelBackground(Lcom/miui/gallery/ui/GLCanvas;III)V
    .locals 6
    .parameter "canvas"
    .parameter "width"
    .parameter "height"
    .parameter "drawLabelBackground"

    .prologue
    .line 119
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    neg-int v0, p2

    div-int/lit8 v2, v0, 0x2

    .line 123
    .local v2, x:I
    add-int/lit8 v0, p3, 0x1

    div-int/lit8 v0, v0, 0x2

    sub-int v3, v0, p4

    .line 124
    .local v3, y:I
    iget-object v1, p0, Lcom/miui/gallery/ui/IconDrawer;->mDarkStrip:Lcom/miui/gallery/ui/NinePatchTexture;

    move-object v0, p1

    move v4, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/ui/IconDrawer;->drawFrame(Lcom/miui/gallery/ui/GLCanvas;Lcom/miui/gallery/ui/NinePatchTexture;IIII)V

    goto :goto_0
.end method

.method protected drawMediaTypeOverlay(Lcom/miui/gallery/ui/GLCanvas;IZIIII)V
    .locals 6
    .parameter "canvas"
    .parameter "mediaType"
    .parameter "isPanorama"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 88
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    .line 89
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/ui/IconDrawer;->drawVideoOverlay(Lcom/miui/gallery/ui/GLCanvas;IIII)V

    .line 91
    :cond_0
    return-void
.end method

.method protected drawPressedFrame(Lcom/miui/gallery/ui/GLCanvas;IIII)V
    .locals 6
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/miui/gallery/ui/IconDrawer;->mFramePressed:Lcom/miui/gallery/ui/ResourceTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/ui/ResourceTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;IIII)V

    .line 130
    return-void
.end method

.method protected drawSelectedFrame(Lcom/miui/gallery/ui/GLCanvas;IIII)V
    .locals 7
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v6, 0x30

    .line 134
    iget-object v0, p0, Lcom/miui/gallery/ui/IconDrawer;->mFrameNewPressed:Lcom/miui/gallery/ui/ResourceTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/ui/ResourceTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;IIII)V

    .line 136
    iget-object v0, p0, Lcom/miui/gallery/ui/IconDrawer;->mFrameNewIndic:Lcom/miui/gallery/ui/ResourceTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, v6

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/ui/ResourceTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;IIII)V

    .line 137
    return-void
.end method

.method protected drawVideoOverlay(Lcom/miui/gallery/ui/GLCanvas;IIII)V
    .locals 14
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 97
    move/from16 v0, p5

    int-to-float v1, v0

    iget-object v2, p0, Lcom/miui/gallery/ui/IconDrawer;->mVideoOverlay:Lcom/miui/gallery/ui/Texture;

    invoke-interface {v2}, Lcom/miui/gallery/ui/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v13, v1, v2

    .line 98
    .local v13, scale:F
    iget-object v1, p0, Lcom/miui/gallery/ui/IconDrawer;->mVideoOverlay:Lcom/miui/gallery/ui/Texture;

    invoke-interface {v1}, Lcom/miui/gallery/ui/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 99
    .local v5, w:I
    iget-object v1, p0, Lcom/miui/gallery/ui/IconDrawer;->mVideoOverlay:Lcom/miui/gallery/ui/Texture;

    invoke-interface {v1}, Lcom/miui/gallery/ui/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 100
    .local v6, h:I
    iget-object v1, p0, Lcom/miui/gallery/ui/IconDrawer;->mVideoOverlay:Lcom/miui/gallery/ui/Texture;

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/miui/gallery/ui/Texture;->draw(Lcom/miui/gallery/ui/GLCanvas;IIII)V

    .line 102
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/lit8 v11, v1, 0x6

    .line 103
    .local v11, side:I
    iget-object v7, p0, Lcom/miui/gallery/ui/IconDrawer;->mVideoPlayIcon:Lcom/miui/gallery/ui/Texture;

    neg-int v1, v11

    div-int/lit8 v9, v1, 0x2

    neg-int v1, v11

    div-int/lit8 v10, v1, 0x2

    move-object v8, p1

    move v12, v11

    invoke-interface/range {v7 .. v12}, Lcom/miui/gallery/ui/Texture;->draw(Lcom/miui/gallery/ui/GLCanvas;IIII)V

    .line 104
    return-void
.end method

.method public prepareDrawing()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method
