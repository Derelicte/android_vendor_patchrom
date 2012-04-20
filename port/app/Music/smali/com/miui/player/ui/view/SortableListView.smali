.class public Lcom/miui/player/ui/view/SortableListView;
.super Landroid/widget/ListView;
.source "SortableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/view/SortableListView$OnOrderChangedListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xc8

.field private static final SCROLL_BOUND:F = 0.25f

.field private static final SCROLL_SPEED_MAX:I = 0x10

.field private static final SNAPSHOT_ALPHA:I = 0x99

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mDraggingFrom:I

.field mDraggingItemHeight:I

.field mDraggingItemWidth:I

.field mDraggingTo:I

.field mDraggingY:I

.field mInterceptTouchForSorting:Z

.field private mItemUpperBound:I

.field mOffsetYInDraggingItem:I

.field mOnOrderChangedListener:Lcom/miui/player/ui/view/SortableListView$OnOrderChangedListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field mScrollBound:I

.field private mScrollLowerBound:I

.field private mScrollUpperBound:I

.field mSnapshot:Landroid/graphics/drawable/BitmapDrawable;

.field mSnapshotBackgroundForOverUpperBound:Landroid/graphics/drawable/Drawable;

.field mSnapshotShadow:Landroid/graphics/drawable/Drawable;

.field mSnapshotShadowPaddingBottom:I

.field mSnapshotShadowPaddingTop:I

.field mTmpLocation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/miui/player/ui/view/SortableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/ui/view/SortableListView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/player/ui/view/SortableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/player/ui/view/SortableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, -0x1

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput v1, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingFrom:I

    .line 32
    iput v1, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingTo:I

    .line 48
    iput v1, p0, Lcom/miui/player/ui/view/SortableListView;->mItemUpperBound:I

    .line 268
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/miui/player/ui/view/SortableListView;->mTmpLocation:[I

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/ui/view/SortableListView;->mSnapshotShadow:Landroid/graphics/drawable/Drawable;

    .line 64
    iget-object v1, p0, Lcom/miui/player/ui/view/SortableListView;->mSnapshotShadow:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0x99

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 67
    .local v0, padding:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/miui/player/ui/view/SortableListView;->mSnapshotShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 68
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/miui/player/ui/view/SortableListView;->mSnapshotShadowPaddingTop:I

    .line 69
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/miui/player/ui/view/SortableListView;->mSnapshotShadowPaddingBottom:I

    .line 72
    new-instance v1, Lcom/miui/player/ui/view/SortableListView$1;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/view/SortableListView$1;-><init>(Lcom/miui/player/ui/view/SortableListView;)V

    iput-object v1, p0, Lcom/miui/player/ui/view/SortableListView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 132
    return-void
.end method

.method private setViewAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "view"
    .parameter "animation"

    .prologue
    .line 332
    if-nez p1, :cond_0

    .line 340
    :goto_0
    return-void

    .line 334
    :cond_0
    if-eqz p2, :cond_1

    .line 335
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 338
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method private setViewAnimationByPisition(ILandroid/view/animation/Animation;)V
    .locals 1
    .parameter "position"
    .parameter "animation"

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/miui/player/ui/view/SortableListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/view/SortableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/miui/player/ui/view/SortableListView;->setViewAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 329
    return-void
.end method

.method private updateDraggingToPisition(I)V
    .locals 4
    .parameter "draggingTo"

    .prologue
    const/4 v3, 0x0

    .line 288
    iget v0, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingTo:I

    if-eq p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 325
    :cond_0
    return-void

    .line 290
    :cond_1
    sget-object v0, Lcom/miui/player/ui/view/SortableListView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sort item from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingFrom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " To "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget v0, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingFrom:I

    iget v1, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingTo:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 295
    :goto_0
    iget v0, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingTo:I

    if-le v0, p1, :cond_2

    iget v0, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingTo:I

    iget v1, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingFrom:I

    if-le v0, v1, :cond_2

    .line 296
    sget-object v0, Lcom/miui/player/ui/view/SortableListView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingTo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set move down reverse animation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget v0, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingTo:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingTo:I

    iget v1, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingItemHeight:I

    neg-int v1, v1

    invoke-virtual {p0, v3, v3, v1, v3}, Lcom/miui/player/ui/view/SortableListView;->createAnimation(IIII)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/player/ui/view/SortableListView;->setViewAnimationByPisition(ILandroid/view/animation/Animation;)V

    goto :goto_0

    .line 302
    :cond_2
    iget v0, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingFrom:I

    iget v1, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingTo:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-le v0, v1, :cond_3

    .line 303
    :goto_1
    iget v0, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingTo:I

    if-ge v0, p1, :cond_3

    iget v0, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingTo:I

    iget v1, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingFrom:I

    if-ge v0, v1, :cond_3

    .line 304
    sget-object v0, Lcom/miui/player/ui/view/SortableListView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingTo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set move up reverse animation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget v0, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingTo:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingTo:I

    iget v1, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingItemHeight:I

    invoke-virtual {p0, v3, v3, v1, v3}, Lcom/miui/player/ui/view/SortableListView;->createAnimation(IIII)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/player/ui/view/SortableListView;->setViewAnimationByPisition(ILandroid/view/animation/Animation;)V

    goto :goto_1

    .line 311
    :cond_3
    iget v0, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingFrom:I

    iget v1, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingTo:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 312
    :goto_2
    iget v0, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingTo:I

    if-ge v0, p1, :cond_4

    .line 313
    iget v0, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingTo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingTo:I

    iget v1, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingItemHeight:I

    neg-int v1, v1

    invoke-virtual {p0, v3, v3, v3, v1}, Lcom/miui/player/ui/view/SortableListView;->createAnimation(IIII)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/player/ui/view/SortableListView;->setViewAnimationByPisition(ILandroid/view/animation/Animation;)V

    .line 314
    sget-object v0, Lcom/miui/player/ui/view/SortableListView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingTo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set move up animation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 319
    :cond_4
    iget v0, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingFrom:I

    iget v1, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingTo:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 320
    :goto_3
    iget v0, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingTo:I

    if-le v0, p1, :cond_0

    .line 321
    iget v0, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingTo:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingTo:I

    iget v1, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingItemHeight:I

    invoke-virtual {p0, v3, v3, v3, v1}, Lcom/miui/player/ui/view/SortableListView;->createAnimation(IIII)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/player/ui/view/SortableListView;->setViewAnimationByPisition(ILandroid/view/animation/Animation;)V

    .line 322
    sget-object v0, Lcom/miui/player/ui/view/SortableListView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingTo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set move down animation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method createAnimation(IIII)Landroid/view/animation/Animation;
    .locals 5
    .parameter "fromX"
    .parameter "toX"
    .parameter "fromY"
    .parameter "toY"

    .prologue
    .line 135
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 136
    .local v0, result:Landroid/view/animation/Animation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 137
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 138
    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 164
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 166
    iget v2, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingFrom:I

    if-ltz v2, :cond_5

    .line 167
    iget v2, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingY:I

    iget v3, p0, Lcom/miui/player/ui/view/SortableListView;->mOffsetYInDraggingItem:I

    sub-int v1, v2, v3

    .line 170
    .local v1, offset:I
    invoke-virtual {p0}, Lcom/miui/player/ui/view/SortableListView;->getHeaderViewsCount()I

    move-result v0

    .line 171
    .local v0, index:I
    invoke-virtual {p0}, Lcom/miui/player/ui/view/SortableListView;->getFirstVisiblePosition()I

    move-result v2

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/player/ui/view/SortableListView;->getLastVisiblePosition()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/ui/view/SortableListView;->getFirstVisiblePosition()I

    move-result v0

    .line 174
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/ui/view/SortableListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    .line 175
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/view/SortableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 178
    invoke-virtual {p0}, Lcom/miui/player/ui/view/SortableListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Lcom/miui/player/ui/view/SortableListView;->getFooterViewsCount()I

    move-result v3

    sub-int v0, v2, v3

    .line 179
    invoke-virtual {p0}, Lcom/miui/player/ui/view/SortableListView;->getFirstVisiblePosition()I

    move-result v2

    if-lt v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/miui/player/ui/view/SortableListView;->getLastVisiblePosition()I

    move-result v2

    if-le v0, v2, :cond_3

    .line 180
    :cond_2
    invoke-virtual {p0}, Lcom/miui/player/ui/view/SortableListView;->getLastVisiblePosition()I

    move-result v0

    .line 182
    :cond_3
    invoke-virtual {p0}, Lcom/miui/player/ui/view/SortableListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    .line 183
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/view/SortableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingItemHeight:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 185
    int-to-float v2, v1

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 186
    iget-object v2, p0, Lcom/miui/player/ui/view/SortableListView;->mSnapshotShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 187
    iget-object v2, p0, Lcom/miui/player/ui/view/SortableListView;->mSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 188
    iget-object v2, p0, Lcom/miui/player/ui/view/SortableListView;->mSnapshotBackgroundForOverUpperBound:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingTo:I

    iget v3, p0, Lcom/miui/player/ui/view/SortableListView;->mItemUpperBound:I

    if-ge v2, v3, :cond_4

    .line 189
    iget-object v2, p0, Lcom/miui/player/ui/view/SortableListView;->mSnapshotBackgroundForOverUpperBound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 191
    :cond_4
    neg-int v2, v1

    int-to-float v2, v2

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 193
    .end local v0           #index:I
    .end local v1           #offset:I
    :cond_5
    return-void
.end method

.method getHittenItemPosition(Landroid/view/MotionEvent;)I
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 271
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 272
    .local v4, y:F
    invoke-virtual {p0}, Lcom/miui/player/ui/view/SortableListView;->getFirstVisiblePosition()I

    move-result v0

    .line 274
    .local v0, firstPosition:I
    invoke-virtual {p0}, Lcom/miui/player/ui/view/SortableListView;->getLastVisiblePosition()I

    move-result v1

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 275
    sub-int v5, v1, v0

    invoke-virtual {p0, v5}, Lcom/miui/player/ui/view/SortableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 276
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 277
    iget-object v5, p0, Lcom/miui/player/ui/view/SortableListView;->mTmpLocation:[I

    invoke-virtual {v2, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 278
    iget-object v5, p0, Lcom/miui/player/ui/view/SortableListView;->mTmpLocation:[I

    aget v5, v5, v7

    int-to-float v5, v5

    cmpg-float v5, v5, v3

    if-gtz v5, :cond_0

    iget-object v5, p0, Lcom/miui/player/ui/view/SortableListView;->mTmpLocation:[I

    aget v5, v5, v7

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, v5, v3

    if-ltz v5, :cond_0

    iget-object v5, p0, Lcom/miui/player/ui/view/SortableListView;->mTmpLocation:[I

    aget v5, v5, v8

    int-to-float v5, v5

    cmpg-float v5, v5, v4

    if-gtz v5, :cond_0

    iget-object v5, p0, Lcom/miui/player/ui/view/SortableListView;->mTmpLocation:[I

    aget v5, v5, v8

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, v5, v4

    if-ltz v5, :cond_0

    .line 284
    .end local v1           #i:I
    .end local v2           #view:Landroid/view/View;
    :goto_1
    return v1

    .line 274
    .restart local v1       #i:I
    .restart local v2       #view:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 284
    .end local v2           #view:Landroid/view/View;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getListenerForStartingSort()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/miui/player/ui/view/SortableListView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getOrderedAnimation(I)Landroid/view/animation/Animation;
    .locals 4
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, animation:Landroid/view/animation/Animation;
    iget v1, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingFrom:I

    if-ne v1, p1, :cond_1

    .line 345
    iget v1, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingItemWidth:I

    iget v2, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingItemWidth:I

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/miui/player/ui/view/SortableListView;->createAnimation(IIII)Landroid/view/animation/Animation;

    move-result-object v0

    .line 346
    sget-object v1, Lcom/miui/player/ui/view/SortableListView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set move out animation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_0
    :goto_0
    return-object v0

    .line 348
    :cond_1
    iget v1, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingFrom:I

    if-ge v1, p1, :cond_2

    iget v1, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingTo:I

    if-gt p1, v1, :cond_2

    .line 349
    iget v1, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingItemHeight:I

    neg-int v1, v1

    invoke-virtual {p0, v3, v3, v3, v1}, Lcom/miui/player/ui/view/SortableListView;->createAnimation(IIII)Landroid/view/animation/Animation;

    move-result-object v0

    .line 350
    sget-object v1, Lcom/miui/player/ui/view/SortableListView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set move up animation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 352
    :cond_2
    iget v1, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingFrom:I

    if-le v1, p1, :cond_0

    iget v1, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingTo:I

    if-lt p1, v1, :cond_0

    .line 353
    iget v1, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingItemHeight:I

    invoke-virtual {p0, v3, v3, v3, v1}, Lcom/miui/player/ui/view/SortableListView;->createAnimation(IIII)Landroid/view/animation/Animation;

    move-result-object v0

    .line 354
    sget-object v1, Lcom/miui/player/ui/view/SortableListView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set move down animation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/miui/player/ui/view/SortableListView;->mInterceptTouchForSorting:Z

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/view/SortableListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 199
    const/4 v0, 0x1

    .line 202
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 156
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 157
    const/4 v0, 0x1

    int-to-float v1, p2

    const/high16 v2, 0x3e80

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/view/SortableListView;->mScrollBound:I

    .line 158
    iget v0, p0, Lcom/miui/player/ui/view/SortableListView;->mScrollBound:I

    iput v0, p0, Lcom/miui/player/ui/view/SortableListView;->mScrollUpperBound:I

    .line 159
    iget v0, p0, Lcom/miui/player/ui/view/SortableListView;->mScrollBound:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/miui/player/ui/view/SortableListView;->mScrollLowerBound:I

    .line 160
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v8, -0x1

    .line 207
    iget-boolean v4, p0, Lcom/miui/player/ui/view/SortableListView;->mInterceptTouchForSorting:Z

    if-nez v4, :cond_0

    .line 208
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 265
    :goto_0
    return v4

    .line 211
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    packed-switch v4, :pswitch_data_0

    .line 265
    :cond_1
    :goto_1
    :pswitch_0
    const/4 v4, 0x1

    goto :goto_0

    .line 213
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 214
    .local v3, y:I
    iget-boolean v4, p0, Lcom/miui/player/ui/view/SortableListView;->mInterceptTouchForSorting:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingY:I

    if-eq v3, v4, :cond_1

    .line 216
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/view/SortableListView;->getHittenItemPosition(Landroid/view/MotionEvent;)I

    move-result v1

    .line 217
    .local v1, position:I
    invoke-virtual {p0}, Lcom/miui/player/ui/view/SortableListView;->getHeaderViewsCount()I

    move-result v4

    if-lt v1, v4, :cond_3

    invoke-virtual {p0}, Lcom/miui/player/ui/view/SortableListView;->getCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/player/ui/view/SortableListView;->getFooterViewsCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v1, v4, :cond_4

    .line 218
    :cond_3
    iget v1, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingTo:I

    .line 220
    :cond_4
    invoke-direct {p0, v1}, Lcom/miui/player/ui/view/SortableListView;->updateDraggingToPisition(I)V

    .line 223
    iput v3, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingY:I

    .line 224
    invoke-virtual {p0}, Lcom/miui/player/ui/view/SortableListView;->invalidate()V

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, delta:I
    iget v4, p0, Lcom/miui/player/ui/view/SortableListView;->mScrollLowerBound:I

    if-le v3, v4, :cond_6

    .line 230
    iget v4, p0, Lcom/miui/player/ui/view/SortableListView;->mScrollLowerBound:I

    sub-int/2addr v4, v3

    mul-int/lit8 v4, v4, 0x10

    iget v5, p0, Lcom/miui/player/ui/view/SortableListView;->mScrollBound:I

    div-int v0, v4, v5

    .line 235
    :cond_5
    :goto_2
    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {p0}, Lcom/miui/player/ui/view/SortableListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/view/SortableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 237
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 238
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p0, v1, v4}, Lcom/miui/player/ui/view/SortableListView;->setSelectionFromTop(II)V

    goto :goto_1

    .line 231
    .end local v2           #v:Landroid/view/View;
    :cond_6
    iget v4, p0, Lcom/miui/player/ui/view/SortableListView;->mScrollUpperBound:I

    if-ge v3, v4, :cond_5

    .line 233
    iget v4, p0, Lcom/miui/player/ui/view/SortableListView;->mScrollUpperBound:I

    sub-int/2addr v4, v3

    mul-int/lit8 v4, v4, 0x10

    iget v5, p0, Lcom/miui/player/ui/view/SortableListView;->mScrollBound:I

    div-int v0, v4, v5

    goto :goto_2

    .line 246
    .end local v0           #delta:I
    .end local v1           #position:I
    .end local v3           #y:I
    :pswitch_2
    iget v4, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingFrom:I

    if-ltz v4, :cond_7

    .line 247
    iget-object v4, p0, Lcom/miui/player/ui/view/SortableListView;->mOnOrderChangedListener:Lcom/miui/player/ui/view/SortableListView$OnOrderChangedListener;

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingFrom:I

    iget v5, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingTo:I

    if-eq v4, v5, :cond_8

    iget v4, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingTo:I

    if-ltz v4, :cond_8

    .line 249
    iget-object v4, p0, Lcom/miui/player/ui/view/SortableListView;->mOnOrderChangedListener:Lcom/miui/player/ui/view/SortableListView$OnOrderChangedListener;

    iget v5, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingFrom:I

    invoke-virtual {p0}, Lcom/miui/player/ui/view/SortableListView;->getHeaderViewsCount()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingTo:I

    invoke-virtual {p0}, Lcom/miui/player/ui/view/SortableListView;->getHeaderViewsCount()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-interface {v4, v5, v6}, Lcom/miui/player/ui/view/SortableListView$OnOrderChangedListener;->OnOrderChanged(II)V

    .line 258
    :cond_7
    :goto_3
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/miui/player/ui/view/SortableListView;->mInterceptTouchForSorting:Z

    .line 259
    iput v8, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingFrom:I

    .line 260
    iput v8, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingTo:I

    .line 261
    invoke-virtual {p0}, Lcom/miui/player/ui/view/SortableListView;->invalidate()V

    goto/16 :goto_1

    .line 254
    :cond_8
    iget v4, p0, Lcom/miui/player/ui/view/SortableListView;->mDraggingFrom:I

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/miui/player/ui/view/SortableListView;->setViewAnimationByPisition(ILandroid/view/animation/Animation;)V

    goto :goto_3

    .line 211
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setItemUpperBound(ILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "upper"
    .parameter "snapshotShadow"

    .prologue
    .line 142
    iput p1, p0, Lcom/miui/player/ui/view/SortableListView;->mItemUpperBound:I

    .line 143
    iput-object p2, p0, Lcom/miui/player/ui/view/SortableListView;->mSnapshotBackgroundForOverUpperBound:Landroid/graphics/drawable/Drawable;

    .line 144
    return-void
.end method

.method public setOnOrderChangedListener(Lcom/miui/player/ui/view/SortableListView$OnOrderChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/miui/player/ui/view/SortableListView;->mOnOrderChangedListener:Lcom/miui/player/ui/view/SortableListView$OnOrderChangedListener;

    .line 148
    return-void
.end method
