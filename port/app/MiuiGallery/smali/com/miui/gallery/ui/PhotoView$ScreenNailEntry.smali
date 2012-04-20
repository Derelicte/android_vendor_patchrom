.class Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
.super Ljava/lang/Object;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenNailEntry"
.end annotation


# instance fields
.field private mDrawHeight:I

.field private mDrawWidth:I

.field private mEnabled:Z

.field private mOffsetX:I

.field private mRotation:I

.field private mTexture:Lcom/miui/gallery/ui/BitmapTexture;

.field private mVisible:Z

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoView;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/PhotoView;)V
    .locals 0
    .parameter

    .prologue
    .line 665
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->this$0:Lcom/miui/gallery/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PhotoView;Lcom/miui/gallery/ui/PhotoView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 665
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;-><init>(Lcom/miui/gallery/ui/PhotoView;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;)Lcom/miui/gallery/ui/BitmapTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 665
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;Lcom/miui/gallery/ui/BitmapTexture;)Lcom/miui/gallery/ui/BitmapTexture;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 665
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;

    return-object p1
.end method

.method static synthetic access$800(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mVisible:Z

    return v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 665
    iget v0, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mOffsetX:I

    return v0
.end method


# virtual methods
.method public draw(Lcom/miui/gallery/ui/GLCanvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 734
    iget v6, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mOffsetX:I

    .line 735
    .local v6, x:I
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->this$0:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoView;->getHeight()I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    .line 737
    .local v7, y:I
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;

    if-eqz v0, :cond_1

    .line 738
    iget v0, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mRotation:I

    if-eqz v0, :cond_0

    .line 739
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/miui/gallery/ui/GLCanvas;->save(I)I

    .line 740
    int-to-float v0, v6

    int-to-float v1, v7

    invoke-interface {p1, v0, v1, v2}, Lcom/miui/gallery/ui/GLCanvas;->translate(FFF)V

    .line 741
    iget v0, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mRotation:I

    int-to-float v0, v0

    const/high16 v1, 0x3f80

    invoke-interface {p1, v0, v2, v2, v1}, Lcom/miui/gallery/ui/GLCanvas;->rotate(FFFF)V

    .line 742
    neg-int v0, v6

    int-to-float v0, v0

    neg-int v1, v7

    int-to-float v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/miui/gallery/ui/GLCanvas;->translate(FFF)V

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;

    iget v1, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mDrawWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int v2, v6, v1

    iget v1, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mDrawHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int v3, v7, v1

    iget v4, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mDrawWidth:I

    iget v5, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mDrawHeight:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/ui/BitmapTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;IIII)V

    .line 746
    iget v0, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mRotation:I

    if-eqz v0, :cond_1

    .line 747
    invoke-interface {p1}, Lcom/miui/gallery/ui/GLCanvas;->restore()V

    .line 750
    :cond_1
    return-void
.end method

.method public gapToSide()I
    .locals 2

    .prologue
    .line 708
    iget v0, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mRotation:I

    div-int/lit8 v0, v0, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mDrawHeight:I

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->this$0:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoView;->getWidth()I

    move-result v1

    #calls: Lcom/miui/gallery/ui/PhotoView;->gapToSide(II)I
    invoke-static {v0, v1}, Lcom/miui/gallery/ui/PhotoView;->access$1900(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mDrawWidth:I

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->this$0:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoView;->getWidth()I

    move-result v1

    #calls: Lcom/miui/gallery/ui/PhotoView;->gapToSide(II)I
    invoke-static {v0, v1}, Lcom/miui/gallery/ui/PhotoView;->access$1900(II)I

    move-result v0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 730
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mEnabled:Z

    return v0
.end method

.method public layoutLeftEdgeAt(I)V
    .locals 3
    .parameter "x"

    .prologue
    .line 702
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->this$0:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoView;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mVisible:Z

    .line 703
    iget v0, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mRotation:I

    iget v1, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mDrawWidth:I

    iget v2, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mDrawHeight:I

    #calls: Lcom/miui/gallery/ui/PhotoView;->getRotated(III)I
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/ui/PhotoView;->access$1800(III)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iput v0, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mOffsetX:I

    .line 705
    return-void

    .line 702
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public layoutRightEdgeAt(I)V
    .locals 3
    .parameter "x"

    .prologue
    .line 696
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mVisible:Z

    .line 697
    iget v0, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mRotation:I

    iget v1, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mDrawWidth:I

    iget v2, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mDrawHeight:I

    #calls: Lcom/miui/gallery/ui/PhotoView;->getRotated(III)I
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/ui/PhotoView;->access$1800(III)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    iput v0, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mOffsetX:I

    .line 699
    return-void

    .line 696
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(ZLandroid/graphics/Bitmap;I)V
    .locals 1
    .parameter "enabled"
    .parameter "bitmap"
    .parameter "rotation"

    .prologue
    .line 677
    iput-boolean p1, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mEnabled:Z

    .line 678
    iput p3, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mRotation:I

    .line 679
    if-nez p2, :cond_1

    .line 680
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/BitmapTexture;->recycle()V

    .line 681
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;

    .line 693
    :goto_0
    return-void

    .line 683
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;

    if-eqz v0, :cond_3

    .line 684
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/BitmapTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, p2, :cond_2

    .line 685
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/BitmapTexture;->recycle()V

    .line 686
    new-instance v0, Lcom/miui/gallery/ui/BitmapTexture;

    invoke-direct {v0, p2}, Lcom/miui/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;

    .line 691
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->updateDrawingSize()V

    goto :goto_0

    .line 689
    :cond_3
    new-instance v0, Lcom/miui/gallery/ui/BitmapTexture;

    invoke-direct {v0, p2}, Lcom/miui/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;

    goto :goto_1
.end method

.method public updateDrawingSize()V
    .locals 4

    .prologue
    .line 714
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;

    if-nez v3, :cond_0

    .line 727
    :goto_0
    return-void

    .line 716
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/BitmapTexture;->getWidth()I

    move-result v2

    .line 717
    .local v2, width:I
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/BitmapTexture;->getHeight()I

    move-result v0

    .line 721
    .local v0, height:I
    iget v3, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mRotation:I

    div-int/lit8 v3, v3, 0x5a

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->this$0:Lcom/miui/gallery/ui/PhotoView;

    #getter for: Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;
    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoView;->access$1200(Lcom/miui/gallery/ui/PhotoView;)Lcom/miui/gallery/ui/PositionController;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/miui/gallery/ui/PositionController;->getMinimalScale(II)F

    move-result v1

    .line 725
    .local v1, s:F
    :goto_1
    int-to-float v3, v2

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mDrawWidth:I

    .line 726
    int-to-float v3, v0

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mDrawHeight:I

    goto :goto_0

    .line 721
    .end local v1           #s:F
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->this$0:Lcom/miui/gallery/ui/PhotoView;

    #getter for: Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;
    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoView;->access$1200(Lcom/miui/gallery/ui/PhotoView;)Lcom/miui/gallery/ui/PositionController;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/miui/gallery/ui/PositionController;->getMinimalScale(II)F

    move-result v1

    goto :goto_1
.end method
