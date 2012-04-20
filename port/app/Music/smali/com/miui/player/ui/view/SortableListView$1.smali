.class Lcom/miui/player/ui/view/SortableListView$1;
.super Ljava/lang/Object;
.source "SortableListView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/view/SortableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/view/SortableListView;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/view/SortableListView;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "v"
    .parameter "event"

    .prologue
    const/16 v8, 0x99

    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 75
    iget-object v4, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    iget-object v4, v4, Lcom/miui/player/ui/view/SortableListView;->mOnOrderChangedListener:Lcom/miui/player/ui/view/SortableListView$OnOrderChangedListener;

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    if-nez v4, :cond_1

    .line 77
    iget-object v4, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    invoke-virtual {v4, p2}, Lcom/miui/player/ui/view/SortableListView;->getHittenItemPosition(Landroid/view/MotionEvent;)I

    move-result v1

    .line 78
    .local v1, position:I
    if-ltz v1, :cond_1

    .line 80
    iget-object v4, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    iput v1, v4, Lcom/miui/player/ui/view/SortableListView;->mDraggingFrom:I

    .line 81
    iget-object v4, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    iput v1, v4, Lcom/miui/player/ui/view/SortableListView;->mDraggingTo:I

    .line 82
    iget-object v4, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    iput-boolean v7, v4, Lcom/miui/player/ui/view/SortableListView;->mInterceptTouchForSorting:Z

    .line 85
    iget-object v4, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    iget-object v5, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    invoke-virtual {v5}, Lcom/miui/player/ui/view/SortableListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, v1, v5

    invoke-virtual {v4, v5}, Lcom/miui/player/ui/view/SortableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 86
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    iput v5, v4, Lcom/miui/player/ui/view/SortableListView;->mDraggingItemWidth:I

    .line 87
    iget-object v4, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    iput v5, v4, Lcom/miui/player/ui/view/SortableListView;->mDraggingItemHeight:I

    .line 90
    iget-object v4, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    iget-object v5, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    iget-object v5, v5, Lcom/miui/player/ui/view/SortableListView;->mTmpLocation:[I

    invoke-virtual {v4, v5}, Lcom/miui/player/ui/view/SortableListView;->getLocationOnScreen([I)V

    .line 91
    iget-object v4, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    iget-object v6, v6, Lcom/miui/player/ui/view/SortableListView;->mTmpLocation:[I

    aget v6, v6, v7

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/miui/player/ui/view/SortableListView;->mDraggingY:I

    .line 92
    iget-object v4, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    iget-object v5, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    iget v5, v5, Lcom/miui/player/ui/view/SortableListView;->mDraggingY:I

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/miui/player/ui/view/SortableListView;->mOffsetYInDraggingItem:I

    .line 95
    iget-object v4, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    iget v4, v4, Lcom/miui/player/ui/view/SortableListView;->mDraggingItemWidth:I

    iget-object v5, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    iget v5, v5, Lcom/miui/player/ui/view/SortableListView;->mDraggingItemHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 99
    .local v2, snapshot:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 100
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v3, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 101
    iget-object v4, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    invoke-virtual {v6}, Lcom/miui/player/ui/view/SortableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v5, v4, Lcom/miui/player/ui/view/SortableListView;->mSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    .line 102
    iget-object v4, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    iget-object v4, v4, Lcom/miui/player/ui/view/SortableListView;->mSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4, v8}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 103
    iget-object v4, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    iget-object v4, v4, Lcom/miui/player/ui/view/SortableListView;->mSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v7, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    iget v7, v7, Lcom/miui/player/ui/view/SortableListView;->mDraggingItemHeight:I

    invoke-virtual {v4, v5, v10, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 109
    iget-object v4, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    iget-object v4, v4, Lcom/miui/player/ui/view/SortableListView;->mSnapshotBackgroundForOverUpperBound:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 110
    iget-object v4, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    iget-object v4, v4, Lcom/miui/player/ui/view/SortableListView;->mSnapshotBackgroundForOverUpperBound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 111
    iget-object v4, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    iget-object v4, v4, Lcom/miui/player/ui/view/SortableListView;->mSnapshotBackgroundForOverUpperBound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v7, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    iget v7, v7, Lcom/miui/player/ui/view/SortableListView;->mDraggingItemHeight:I

    invoke-virtual {v4, v5, v10, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 119
    :cond_0
    iget-object v4, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    iget-object v4, v4, Lcom/miui/player/ui/view/SortableListView;->mSnapshotShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    iget v6, v6, Lcom/miui/player/ui/view/SortableListView;->mSnapshotShadowPaddingTop:I

    neg-int v6, v6

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v7

    iget-object v8, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    iget v8, v8, Lcom/miui/player/ui/view/SortableListView;->mDraggingItemHeight:I

    iget-object v9, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    iget v9, v9, Lcom/miui/player/ui/view/SortableListView;->mSnapshotShadowPaddingBottom:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 126
    iget-object v4, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    iget-object v5, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    iget v5, v5, Lcom/miui/player/ui/view/SortableListView;->mDraggingItemWidth:I

    iget-object v6, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    iget v6, v6, Lcom/miui/player/ui/view/SortableListView;->mDraggingItemWidth:I

    invoke-virtual {v4, v5, v6, v10, v10}, Lcom/miui/player/ui/view/SortableListView;->createAnimation(IIII)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 129
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #position:I
    .end local v2           #snapshot:Landroid/graphics/Bitmap;
    .end local v3           #view:Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/miui/player/ui/view/SortableListView$1;->this$0:Lcom/miui/player/ui/view/SortableListView;

    iget-boolean v4, v4, Lcom/miui/player/ui/view/SortableListView;->mInterceptTouchForSorting:Z

    return v4
.end method
