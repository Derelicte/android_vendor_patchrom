.class public Lcom/android/monitor/widget/TrafficStatusBar;
.super Landroid/view/View;
.source "TrafficStatusBar.java"


# instance fields
.field private mLimitValue:J

.field private mThresholdValue:J

.field private mUsedStatusColor:I

.field private mUsedValue:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/monitor/widget/TrafficStatusBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/monitor/widget/TrafficStatusBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method private getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "id"

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/monitor/widget/TrafficStatusBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 66
    const v10, 0x7f020018

    invoke-direct {p0, v10}, Lcom/android/monitor/widget/TrafficStatusBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 67
    .local v1, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/monitor/widget/TrafficStatusBar;->getWidth()I

    move-result v10

    add-int/lit8 v7, v10, -0xe

    .local v7, width:I
    const/4 v2, 0x7

    .line 68
    .local v2, left:I
    new-instance v0, Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    invoke-direct {v0, v2, v10, v7, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 69
    .local v0, bounds:Landroid/graphics/Rect;
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 70
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 73
    iget-wide v10, p0, Lcom/android/monitor/widget/TrafficStatusBar;->mLimitValue:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_0

    .line 75
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 76
    iget-wide v10, p0, Lcom/android/monitor/widget/TrafficStatusBar;->mUsedValue:J

    int-to-long v12, v7

    mul-long/2addr v10, v12

    iget-wide v12, p0, Lcom/android/monitor/widget/TrafficStatusBar;->mLimitValue:J

    div-long/2addr v10, v12

    long-to-int v10, v10

    add-int/2addr v10, v2

    iput v10, v0, Landroid/graphics/Rect;->right:I

    .line 77
    iget v10, p0, Lcom/android/monitor/widget/TrafficStatusBar;->mUsedStatusColor:I

    invoke-direct {p0, v10}, Lcom/android/monitor/widget/TrafficStatusBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 78
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 79
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 82
    iget-wide v10, p0, Lcom/android/monitor/widget/TrafficStatusBar;->mThresholdValue:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_0

    .line 83
    iget-wide v10, p0, Lcom/android/monitor/widget/TrafficStatusBar;->mThresholdValue:J

    int-to-long v12, v7

    mul-long/2addr v10, v12

    iget-wide v12, p0, Lcom/android/monitor/widget/TrafficStatusBar;->mLimitValue:J

    div-long/2addr v10, v12

    long-to-int v10, v10

    add-int/lit8 v10, v10, 0x7

    iput v10, v0, Landroid/graphics/Rect;->left:I

    .line 84
    iget v10, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v10, v10, 0x5

    iput v10, v0, Landroid/graphics/Rect;->right:I

    .line 85
    const v10, 0x7f020010

    invoke-direct {p0, v10}, Lcom/android/monitor/widget/TrafficStatusBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 86
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 87
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 92
    :cond_0
    const/4 v10, 0x0

    iput v10, v0, Landroid/graphics/Rect;->left:I

    .line 93
    iget v10, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/monitor/widget/TrafficStatusBar;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    iput v10, v0, Landroid/graphics/Rect;->right:I

    .line 94
    const v10, 0x7f020019

    invoke-direct {p0, v10}, Lcom/android/monitor/widget/TrafficStatusBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 95
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 96
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 99
    new-instance v3, Landroid/graphics/Paint;

    const v10, 0x3070008

    invoke-direct {v3, v10}, Landroid/graphics/Paint;-><init>(I)V

    .line 100
    .local v3, paint:Landroid/graphics/Paint;
    const/16 v10, 0x101

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setFlags(I)V

    .line 101
    const/16 v5, 0x18

    .line 102
    .local v5, textSize:I
    int-to-float v10, v5

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 103
    iget-object v10, p0, Lcom/android/monitor/widget/TrafficStatusBar;->mContext:Landroid/content/Context;

    iget-wide v11, p0, Lcom/android/monitor/widget/TrafficStatusBar;->mUsedValue:J

    invoke-static {v10, v11, v12}, Lcom/android/monitor/util/SysUtils;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, status:Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-int v6, v10

    .line 105
    .local v6, textWidth:I
    invoke-virtual {p0}, Lcom/android/monitor/widget/TrafficStatusBar;->getWidth()I

    move-result v10

    sub-int/2addr v10, v6

    div-int/lit8 v8, v10, 0x2

    .line 106
    .local v8, x:I
    invoke-virtual {p0}, Lcom/android/monitor/widget/TrafficStatusBar;->getHeight()I

    move-result v10

    sub-int/2addr v10, v5

    div-int/lit8 v10, v10, 0x2

    add-int/lit8 v9, v10, 0x14

    .line 107
    .local v9, y:I
    int-to-float v10, v8

    int-to-float v11, v9

    invoke-virtual {p1, v4, v10, v11, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 108
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 109
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 110
    return-void
.end method

.method public setStatusColor(I)V
    .locals 0
    .parameter "usedColor"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/monitor/widget/TrafficStatusBar;->mUsedStatusColor:I

    .line 60
    invoke-virtual {p0}, Lcom/android/monitor/widget/TrafficStatusBar;->invalidate()V

    .line 61
    return-void
.end method

.method public setStatusValue(JJJ)V
    .locals 0
    .parameter "limit"
    .parameter "used"
    .parameter "threshold"

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/android/monitor/widget/TrafficStatusBar;->mLimitValue:J

    .line 53
    iput-wide p3, p0, Lcom/android/monitor/widget/TrafficStatusBar;->mUsedValue:J

    .line 54
    iput-wide p5, p0, Lcom/android/monitor/widget/TrafficStatusBar;->mThresholdValue:J

    .line 55
    invoke-virtual {p0}, Lcom/android/monitor/widget/TrafficStatusBar;->invalidate()V

    .line 56
    return-void
.end method
