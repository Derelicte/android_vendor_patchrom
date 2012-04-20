.class public Lcom/android/systemui/statusbar/phone/BatteryIndicatorCharging;
.super Lcom/android/systemui/statusbar/phone/BatteryIndicator;
.source "BatteryIndicatorCharging.java"


# instance fields
.field private mOffsetX:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 22
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v2, :cond_0

    .line 23
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 24
    .local v1, padding:Landroid/graphics/Rect;
    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 25
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicatorCharging;->mOffsetX:I

    .line 27
    .end local v1           #padding:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 49
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->onLayout(ZIIII)V

    .line 50
    add-int v0, p4, p4

    sub-int/2addr v0, p2

    invoke-virtual {p0, p4, p3, v0, p5}, Lcom/android/systemui/statusbar/phone/BatteryIndicatorCharging;->setFrame(IIII)Z

    .line 51
    return-void
.end method

.method protected updateCanvas(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 55
    return-void
.end method

.method protected updateDrawable()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 31
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicatorCharging;->mScreenIsOn:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicatorCharging;->mIsCharging:Z

    if-eqz v3, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicatorCharging;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 33
    .local v1, parent:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v2, v3, v4

    .line 34
    .local v2, parentWidth:I
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicatorCharging;->mIconLevel:I

    add-int/lit8 v3, v3, -0x64

    mul-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x64

    iget v4, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicatorCharging;->mOffsetX:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v5, v3, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 36
    .local v0, animation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v3, 0x5dc

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 37
    const-wide/16 v3, 0xdac

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 38
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 39
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/BatteryIndicatorCharging;->startAnimation(Landroid/view/animation/Animation;)V

    .line 45
    .end local v0           #animation:Landroid/view/animation/TranslateAnimation;
    .end local v1           #parent:Landroid/view/View;
    .end local v2           #parentWidth:I
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicatorCharging;->clearAnimation()V

    goto :goto_0
.end method
