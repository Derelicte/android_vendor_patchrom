.class abstract Lcom/miui/gallery/photoeditor/actions/AbstractSeekBar;
.super Landroid/widget/SeekBar;
.source "AbstractSeekBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 9
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v8, 0x0

    .line 41
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    .line 44
    invoke-virtual {p0}, Lcom/miui/gallery/photoeditor/actions/AbstractSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 45
    .local v3, res:Landroid/content/res/Resources;
    const v6, 0x7f0200aa

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 48
    .local v5, thumb:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    mul-int/2addr v6, p2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    div-int v4, v6, v7

    .line 49
    .local v4, scaledWidth:I
    add-int/lit8 v6, v4, 0x1

    div-int/lit8 v2, v6, 0x2

    .line 50
    .local v2, padding:I
    invoke-virtual {p0, v2, v8, v2, v8}, Lcom/miui/gallery/photoeditor/actions/AbstractSeekBar;->setPadding(IIII)V

    .line 52
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, p2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 53
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 54
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 55
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 57
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v6}, Lcom/miui/gallery/photoeditor/actions/AbstractSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 58
    return-void
.end method
