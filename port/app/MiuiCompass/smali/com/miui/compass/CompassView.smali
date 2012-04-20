.class public Lcom/miui/compass/CompassView;
.super Landroid/widget/ImageView;
.source "CompassView.java"


# instance fields
.field private compass:Landroid/graphics/drawable/Drawable;

.field private mDirection:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/compass/CompassView;->mDirection:F

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/compass/CompassView;->compass:Landroid/graphics/drawable/Drawable;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/compass/CompassView;->mDirection:F

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/compass/CompassView;->compass:Landroid/graphics/drawable/Drawable;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/compass/CompassView;->mDirection:F

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/compass/CompassView;->compass:Landroid/graphics/drawable/Drawable;

    .line 29
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 33
    iget-object v0, p0, Lcom/miui/compass/CompassView;->compass:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/miui/compass/CompassView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/compass/CompassView;->compass:Landroid/graphics/drawable/Drawable;

    .line 35
    iget-object v0, p0, Lcom/miui/compass/CompassView;->compass:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/compass/CompassView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/compass/CompassView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 38
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 39
    iget v0, p0, Lcom/miui/compass/CompassView;->mDirection:F

    invoke-virtual {p0}, Lcom/miui/compass/CompassView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/compass/CompassView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 40
    iget-object v0, p0, Lcom/miui/compass/CompassView;->compass:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 42
    return-void
.end method

.method public updateDirection(F)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 45
    iput p1, p0, Lcom/miui/compass/CompassView;->mDirection:F

    .line 46
    invoke-virtual {p0}, Lcom/miui/compass/CompassView;->invalidate()V

    .line 47
    return-void
.end method
