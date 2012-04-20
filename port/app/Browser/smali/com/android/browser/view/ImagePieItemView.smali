.class public Lcom/android/browser/view/ImagePieItemView;
.super Landroid/widget/ImageView;
.source "ImagePieItemView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 30
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v1, v4

    .line 31
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v2, v4

    .line 32
    .local v2, y:I
    invoke-virtual {p0}, Lcom/android/browser/view/ImagePieItemView;->getLeft()I

    move-result v4

    if-lt v1, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/view/ImagePieItemView;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/browser/view/ImagePieItemView;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v1, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/view/ImagePieItemView;->getTop()I

    move-result v4

    if-lt v2, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/view/ImagePieItemView;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/browser/view/ImagePieItemView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    if-lt v2, v4, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v3

    .line 37
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 48
    :goto_1
    :pswitch_0
    const/4 v3, 0x1

    goto :goto_0

    .line 42
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/browser/view/ImagePieItemView;->performClick()Z

    .line 43
    invoke-virtual {p0, v3}, Lcom/android/browser/view/ImagePieItemView;->setPressed(Z)V

    goto :goto_1

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
