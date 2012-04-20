.class public Lcom/miui/gallery/ui/SlotView;
.super Lcom/miui/gallery/ui/GLView;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/SlotView$1;,
        Lcom/miui/gallery/ui/SlotView$MyGestureListener;,
        Lcom/miui/gallery/ui/SlotView$Layout;,
        Lcom/miui/gallery/ui/SlotView$Spec;,
        Lcom/miui/gallery/ui/SlotView$ItemEntry;,
        Lcom/miui/gallery/ui/SlotView$MyAnimation;,
        Lcom/miui/gallery/ui/SlotView$SimpleListener;,
        Lcom/miui/gallery/ui/SlotView$Listener;
    }
.end annotation


# instance fields
.field private mAnimation:Lcom/miui/gallery/ui/SlotView$MyAnimation;

.field private mCurrentItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/ui/SlotView$ItemEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mDownInScrolling:Z

.field private mEnableScroll:Z

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field public mItemList:Lcom/miui/gallery/util/LinkedNode$List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/LinkedNode$List",
            "<",
            "Lcom/miui/gallery/ui/SlotView$ItemEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/miui/gallery/ui/DisplayItem;",
            "Lcom/miui/gallery/ui/SlotView$ItemEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

.field private mListener:Lcom/miui/gallery/ui/SlotView$Listener;

.field private mMoreAnimation:Z

.field private mNextItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/ui/SlotView$ItemEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mOverscrollEffect:I

.field private final mPaper:Lcom/miui/gallery/ui/Paper;

.field private mPositions:Lcom/miui/gallery/ui/PositionProvider;

.field private final mScroller:Lcom/miui/gallery/ui/ScrollerHelper;

.field private mStartIndex:I

.field private final mTempPosition:Lcom/miui/gallery/ui/PositionRepository$Position;

.field private mUIListener:Lcom/miui/gallery/ui/UserInteractionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Lcom/miui/gallery/ui/GLView;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/SlotView;->mEnableScroll:Z

    .line 61
    new-instance v0, Lcom/miui/gallery/ui/Paper;

    invoke-direct {v0}, Lcom/miui/gallery/ui/Paper;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mPaper:Lcom/miui/gallery/ui/Paper;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mItems:Ljava/util/HashMap;

    .line 70
    invoke-static {}, Lcom/miui/gallery/util/LinkedNode;->newList()Lcom/miui/gallery/util/LinkedNode$List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mItemList:Lcom/miui/gallery/util/LinkedNode$List;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mCurrentItems:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mNextItems:Ljava/util/ArrayList;

    .line 76
    iput-boolean v1, p0, Lcom/miui/gallery/ui/SlotView;->mMoreAnimation:Z

    .line 77
    iput-object v2, p0, Lcom/miui/gallery/ui/SlotView;->mAnimation:Lcom/miui/gallery/ui/SlotView$MyAnimation;

    .line 78
    new-instance v0, Lcom/miui/gallery/ui/PositionRepository$Position;

    invoke-direct {v0}, Lcom/miui/gallery/ui/PositionRepository$Position;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mTempPosition:Lcom/miui/gallery/ui/PositionRepository$Position;

    .line 79
    new-instance v0, Lcom/miui/gallery/ui/SlotView$Layout;

    invoke-direct {v0}, Lcom/miui/gallery/ui/SlotView$Layout;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/ui/SlotView;->mStartIndex:I

    .line 85
    iput v1, p0, Lcom/miui/gallery/ui/SlotView;->mOverscrollEffect:I

    .line 92
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/miui/gallery/ui/SlotView$MyGestureListener;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/ui/SlotView$MyGestureListener;-><init>(Lcom/miui/gallery/ui/SlotView;Lcom/miui/gallery/ui/SlotView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 94
    new-instance v0, Lcom/miui/gallery/ui/ScrollerHelper;

    invoke-direct {v0, p1}, Lcom/miui/gallery/ui/ScrollerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mScroller:Lcom/miui/gallery/ui/ScrollerHelper;

    .line 95
    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/SlotView;)Lcom/miui/gallery/ui/SlotView$Layout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/SlotView;)Lcom/miui/gallery/ui/SlotView$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mListener:Lcom/miui/gallery/ui/SlotView$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/SlotView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/miui/gallery/ui/SlotView;->mEnableScroll:Z

    return v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/SlotView;)Lcom/miui/gallery/ui/ScrollerHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mScroller:Lcom/miui/gallery/ui/ScrollerHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/SlotView;)Lcom/miui/gallery/ui/UserInteractionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mUIListener:Lcom/miui/gallery/ui/UserInteractionListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/ui/SlotView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/miui/gallery/ui/SlotView;->mOverscrollEffect:I

    return v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/ui/SlotView;)Lcom/miui/gallery/ui/Paper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mPaper:Lcom/miui/gallery/ui/Paper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/ui/SlotView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/miui/gallery/ui/SlotView;->mDownInScrolling:Z

    return v0
.end method

.method private renderItem(Lcom/miui/gallery/ui/GLCanvas;Lcom/miui/gallery/ui/SlotView$ItemEntry;FIZ)I
    .locals 8
    .parameter "canvas"
    .parameter "entry"
    .parameter "interpolate"
    .parameter "pass"
    .parameter "paperActive"

    .prologue
    const/4 v7, 0x0

    .line 341
    const/4 v3, 0x6

    invoke-interface {p1, v3}, Lcom/miui/gallery/ui/GLCanvas;->save(I)I

    .line 342
    iget-object v1, p2, Lcom/miui/gallery/ui/SlotView$ItemEntry;->target:Lcom/miui/gallery/ui/PositionRepository$Position;

    .line 343
    .local v1, position:Lcom/miui/gallery/ui/PositionRepository$Position;
    iget-object v3, p0, Lcom/miui/gallery/ui/SlotView;->mPositions:Lcom/miui/gallery/ui/PositionProvider;

    if-eqz v3, :cond_0

    .line 344
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView;->mTempPosition:Lcom/miui/gallery/ui/PositionRepository$Position;

    .line 345
    iget-object v3, p2, Lcom/miui/gallery/ui/SlotView$ItemEntry;->target:Lcom/miui/gallery/ui/PositionRepository$Position;

    invoke-virtual {v1, v3}, Lcom/miui/gallery/ui/PositionRepository$Position;->set(Lcom/miui/gallery/ui/PositionRepository$Position;)V

    .line 346
    iget v3, v1, Lcom/miui/gallery/ui/PositionRepository$Position;->x:F

    iget v4, p0, Lcom/miui/gallery/ui/SlotView;->mScrollX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v1, Lcom/miui/gallery/ui/PositionRepository$Position;->x:F

    .line 347
    iget v3, v1, Lcom/miui/gallery/ui/PositionRepository$Position;->y:F

    iget v4, p0, Lcom/miui/gallery/ui/SlotView;->mScrollY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v1, Lcom/miui/gallery/ui/PositionRepository$Position;->y:F

    .line 348
    iget-object v3, p0, Lcom/miui/gallery/ui/SlotView;->mPositions:Lcom/miui/gallery/ui/PositionProvider;

    iget-object v4, p2, Lcom/miui/gallery/ui/SlotView$ItemEntry;->item:Lcom/miui/gallery/ui/DisplayItem;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/DisplayItem;->getIdentity()J

    move-result-wide v4

    invoke-interface {v3, v4, v5, v1}, Lcom/miui/gallery/ui/PositionProvider;->getPosition(JLcom/miui/gallery/ui/PositionRepository$Position;)Lcom/miui/gallery/ui/PositionRepository$Position;

    move-result-object v2

    .line 350
    .local v2, source:Lcom/miui/gallery/ui/PositionRepository$Position;
    iget v3, v2, Lcom/miui/gallery/ui/PositionRepository$Position;->x:F

    iget v4, p0, Lcom/miui/gallery/ui/SlotView;->mScrollX:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Lcom/miui/gallery/ui/PositionRepository$Position;->x:F

    .line 351
    iget v3, v2, Lcom/miui/gallery/ui/PositionRepository$Position;->y:F

    iget v4, p0, Lcom/miui/gallery/ui/SlotView;->mScrollY:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Lcom/miui/gallery/ui/PositionRepository$Position;->y:F

    .line 352
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView;->mTempPosition:Lcom/miui/gallery/ui/PositionRepository$Position;

    .line 353
    iget-object v3, p2, Lcom/miui/gallery/ui/SlotView$ItemEntry;->target:Lcom/miui/gallery/ui/PositionRepository$Position;

    invoke-static {v2, v3, v1, p3}, Lcom/miui/gallery/ui/PositionRepository$Position;->interpolate(Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/PositionRepository$Position;F)V

    .line 356
    .end local v2           #source:Lcom/miui/gallery/ui/PositionRepository$Position;
    :cond_0
    iget v3, v1, Lcom/miui/gallery/ui/PositionRepository$Position;->alpha:F

    invoke-interface {p1, v3}, Lcom/miui/gallery/ui/GLCanvas;->multiplyAlpha(F)V

    .line 357
    if-eqz p5, :cond_1

    .line 358
    iget-object v3, p0, Lcom/miui/gallery/ui/SlotView;->mPaper:Lcom/miui/gallery/ui/Paper;

    iget-object v4, p2, Lcom/miui/gallery/ui/SlotView$ItemEntry;->base:Lcom/miui/gallery/ui/PositionRepository$Position;

    iget v5, p0, Lcom/miui/gallery/ui/SlotView;->mScrollX:I

    int-to-float v5, v5

    iget v6, p0, Lcom/miui/gallery/ui/SlotView;->mScrollY:I

    int-to-float v6, v6

    invoke-virtual {v3, v1, v4, v5, v6}, Lcom/miui/gallery/ui/Paper;->getTransform(Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/PositionRepository$Position;FF)[F

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Lcom/miui/gallery/ui/GLCanvas;->multiplyMatrix([FI)V

    .line 364
    :goto_0
    iget v3, v1, Lcom/miui/gallery/ui/PositionRepository$Position;->theta:F

    const/high16 v4, 0x3f80

    invoke-interface {p1, v3, v7, v7, v4}, Lcom/miui/gallery/ui/GLCanvas;->rotate(FFFF)V

    .line 365
    iget-object v3, p2, Lcom/miui/gallery/ui/SlotView$ItemEntry;->item:Lcom/miui/gallery/ui/DisplayItem;

    invoke-virtual {v3, p1, p4}, Lcom/miui/gallery/ui/DisplayItem;->render(Lcom/miui/gallery/ui/GLCanvas;I)I

    move-result v0

    .line 366
    .local v0, more:I
    invoke-interface {p1}, Lcom/miui/gallery/ui/GLCanvas;->restore()V

    .line 367
    return v0

    .line 361
    .end local v0           #more:I
    :cond_1
    iget v3, v1, Lcom/miui/gallery/ui/PositionRepository$Position;->x:F

    iget v4, v1, Lcom/miui/gallery/ui/PositionRepository$Position;->y:F

    iget v5, v1, Lcom/miui/gallery/ui/PositionRepository$Position;->z:F

    invoke-interface {p1, v3, v4, v5}, Lcom/miui/gallery/ui/GLCanvas;->translate(FFF)V

    goto :goto_0
.end method

.method private updateScrollPosition(IZ)V
    .locals 1
    .parameter "position"
    .parameter "force"

    .prologue
    .line 196
    if-nez p2, :cond_0

    iget v0, p0, Lcom/miui/gallery/ui/SlotView;->mScrollY:I

    if-ne p1, v0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 200
    :cond_0
    iput p1, p0, Lcom/miui/gallery/ui/SlotView;->mScrollY:I

    .line 202
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/SlotView$Layout;->setScrollPosition(I)V

    .line 203
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/SlotView;->onScrollPositionChanged(I)V

    goto :goto_0
.end method


# virtual methods
.method public addComponent(Lcom/miui/gallery/ui/GLView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 145
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getScrollX()I
    .locals 1

    .prologue
    .line 754
    iget v0, p0, Lcom/miui/gallery/ui/SlotView;->mScrollX:I

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .prologue
    .line 758
    iget v0, p0, Lcom/miui/gallery/ui/SlotView;->mScrollY:I

    return v0
.end method

.method public getSlotRect(I)Landroid/graphics/Rect;
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/SlotView$Layout;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleEnd()I
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SlotView$Layout;->getVisibleEnd()I

    move-result v0

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SlotView$Layout;->getVisibleStart()I

    move-result v0

    return v0
.end method

.method public makeSlotVisible(I)V
    .locals 8
    .parameter "index"

    .prologue
    .line 114
    iget-object v7, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    invoke-virtual {v7, p1}, Lcom/miui/gallery/ui/SlotView$Layout;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 115
    .local v1, rect:Landroid/graphics/Rect;
    iget v4, p0, Lcom/miui/gallery/ui/SlotView;->mScrollY:I

    .line 116
    .local v4, visibleBegin:I
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SlotView;->getHeight()I

    move-result v6

    .line 117
    .local v6, visibleLength:I
    add-int v5, v4, v6

    .line 118
    .local v5, visibleEnd:I
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 119
    .local v2, slotBegin:I
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 121
    .local v3, slotEnd:I
    move v0, v4

    .line 122
    .local v0, position:I
    sub-int v7, v3, v2

    if-ge v6, v7, :cond_1

    .line 123
    move v0, v4

    .line 130
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/SlotView;->setScrollPosition(I)V

    .line 131
    return-void

    .line 124
    :cond_1
    if-ge v2, v4, :cond_2

    .line 125
    move v0, v2

    goto :goto_0

    .line 126
    :cond_2
    if-le v3, v5, :cond_0

    .line 127
    sub-int v0, v3, v6

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changeSize"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 155
    if-nez p1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/SlotView$Layout;->getVisibleStart()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/SlotView$Layout;->getVisibleEnd()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 162
    .local v0, visibleIndex:I
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/SlotView$Layout;->setSize(II)V

    .line 163
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/SlotView;->makeSlotVisible(I)V

    .line 165
    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {p0, v1, v2}, Lcom/miui/gallery/ui/SlotView;->onLayoutChanged(II)V

    .line 166
    iget v1, p0, Lcom/miui/gallery/ui/SlotView;->mOverscrollEffect:I

    if-nez v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView;->mPaper:Lcom/miui/gallery/ui/Paper;

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/Paper;->setSize(II)V

    goto :goto_0
.end method

.method protected onLayoutChanged(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 172
    return-void
.end method

.method protected onScrollPositionChanged(I)V
    .locals 2
    .parameter "newPosition"

    .prologue
    .line 207
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/SlotView$Layout;->getScrollLimit()I

    move-result v0

    .line 208
    .local v0, limit:I
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView;->mListener:Lcom/miui/gallery/ui/SlotView$Listener;

    invoke-interface {v1, p1, v0}, Lcom/miui/gallery/ui/SlotView$Listener;->onScrollPositionChanged(II)V

    .line 209
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 229
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mUIListener:Lcom/miui/gallery/ui/UserInteractionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mUIListener:Lcom/miui/gallery/ui/UserInteractionListener;

    invoke-interface {v0}, Lcom/miui/gallery/ui/UserInteractionListener;->onUserInteraction()V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 241
    :goto_0
    return v1

    .line 233
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mScroller:Lcom/miui/gallery/ui/ScrollerHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ScrollerHelper;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/miui/gallery/ui/SlotView;->mDownInScrolling:Z

    .line 234
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mScroller:Lcom/miui/gallery/ui/ScrollerHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ScrollerHelper;->forceFinished()V

    goto :goto_0

    .line 233
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 237
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mPaper:Lcom/miui/gallery/ui/Paper;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/Paper;->onRelease()V

    .line 238
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SlotView;->invalidate()V

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public putDisplayItem(Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/DisplayItem;)V
    .locals 3
    .parameter "target"
    .parameter "base"
    .parameter "item"

    .prologue
    .line 212
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/SlotView$Layout;->getSlotWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/SlotView$Layout;->getSlotHeight()I

    move-result v2

    invoke-virtual {p3, v1, v2}, Lcom/miui/gallery/ui/DisplayItem;->setBox(II)V

    .line 213
    new-instance v0, Lcom/miui/gallery/ui/SlotView$ItemEntry;

    invoke-direct {v0, p3, p1, p2}, Lcom/miui/gallery/ui/SlotView$ItemEntry;-><init>(Lcom/miui/gallery/ui/DisplayItem;Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/PositionRepository$Position;)V

    .line 214
    .local v0, entry:Lcom/miui/gallery/ui/SlotView$ItemEntry;
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView;->mItemList:Lcom/miui/gallery/util/LinkedNode$List;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/util/LinkedNode$List;->insertLast(Lcom/miui/gallery/util/LinkedNode;)V

    .line 215
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    return-void
.end method

.method public removeDisplayItem(Lcom/miui/gallery/ui/DisplayItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 219
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/SlotView$ItemEntry;

    .line 220
    .local v0, entry:Lcom/miui/gallery/ui/SlotView$ItemEntry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SlotView$ItemEntry;->remove()V

    .line 221
    :cond_0
    return-void
.end method

.method protected render(Lcom/miui/gallery/ui/GLCanvas;)V
    .locals 21
    .parameter "canvas"

    .prologue
    .line 259
    invoke-super/range {p0 .. p1}, Lcom/miui/gallery/ui/GLView;->render(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 261
    invoke-interface/range {p1 .. p1}, Lcom/miui/gallery/ui/GLCanvas;->currentAnimationTimeMillis()J

    move-result-wide v8

    .line 262
    .local v8, currentTimeMillis:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/SlotView;->mScroller:Lcom/miui/gallery/ui/ScrollerHelper;

    invoke-virtual {v2, v8, v9}, Lcom/miui/gallery/ui/ScrollerHelper;->advanceAnimation(J)Z

    move-result v13

    .line 264
    .local v13, more:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/ui/SlotView;->mScrollY:I

    move/from16 v16, v0

    .line 265
    .local v16, oldY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/SlotView;->mScroller:Lcom/miui/gallery/ui/ScrollerHelper;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/ScrollerHelper;->getPosition()I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/miui/gallery/ui/SlotView;->updateScrollPosition(IZ)V

    .line 267
    const/4 v7, 0x0

    .line 268
    .local v7, paperActive:Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/ui/SlotView;->mOverscrollEffect:I

    if-nez v2, :cond_4

    .line 270
    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/gallery/ui/SlotView;->mScrollY:I

    .line 271
    .local v15, newY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/SlotView$Layout;->getScrollLimit()I

    move-result v11

    .line 272
    .local v11, limit:I
    if-lez v16, :cond_0

    if-eqz v15, :cond_1

    :cond_0
    move/from16 v0, v16

    if-ge v0, v11, :cond_3

    if-ne v15, v11, :cond_3

    .line 273
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/SlotView;->mScroller:Lcom/miui/gallery/ui/ScrollerHelper;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/ScrollerHelper;->getCurrVelocity()F

    move-result v19

    .line 274
    .local v19, v:F
    if-ne v15, v11, :cond_2

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    .line 277
    :cond_2
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_3

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/SlotView;->mPaper:Lcom/miui/gallery/ui/Paper;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/Paper;->edgeReached(F)V

    .line 281
    .end local v19           #v:F
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/SlotView;->mPaper:Lcom/miui/gallery/ui/Paper;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/Paper;->advanceAnimation()Z

    move-result v7

    .line 284
    .end local v11           #limit:I
    .end local v15           #newY:I
    :cond_4
    or-int/2addr v13, v7

    .line 286
    const/high16 v5, 0x3f80

    .line 287
    .local v5, interpolate:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/SlotView;->mAnimation:Lcom/miui/gallery/ui/SlotView$MyAnimation;

    if-eqz v2, :cond_5

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/SlotView;->mAnimation:Lcom/miui/gallery/ui/SlotView$MyAnimation;

    invoke-virtual {v2, v8, v9}, Lcom/miui/gallery/ui/SlotView$MyAnimation;->calculate(J)Z

    move-result v2

    or-int/2addr v13, v2

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/SlotView;->mAnimation:Lcom/miui/gallery/ui/SlotView$MyAnimation;

    iget v5, v2, Lcom/miui/gallery/ui/SlotView$MyAnimation;->value:F

    .line 295
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/gallery/ui/SlotView;->mScrollY:I

    neg-int v3, v3

    int-to-float v3, v3

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v2, v3, v1}, Lcom/miui/gallery/ui/GLCanvas;->translate(FFF)V

    .line 298
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/gallery/ui/SlotView;->mItemList:Lcom/miui/gallery/util/LinkedNode$List;

    .line 299
    .local v12, list:Lcom/miui/gallery/util/LinkedNode$List;,"Lcom/miui/gallery/util/LinkedNode$List<Lcom/miui/gallery/ui/SlotView$ItemEntry;>;"
    invoke-virtual {v12}, Lcom/miui/gallery/util/LinkedNode$List;->getLast()Lcom/miui/gallery/util/LinkedNode;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/ui/SlotView$ItemEntry;

    .local v4, entry:Lcom/miui/gallery/ui/SlotView$ItemEntry;
    :goto_0
    if-eqz v4, :cond_8

    .line 300
    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/miui/gallery/ui/SlotView;->renderItem(Lcom/miui/gallery/ui/GLCanvas;Lcom/miui/gallery/ui/SlotView$ItemEntry;FIZ)I

    move-result v17

    .line 301
    .local v17, r:I
    and-int/lit8 v2, v17, 0x1

    if-eqz v2, :cond_6

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/SlotView;->mCurrentItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_6
    and-int/lit8 v2, v17, 0x2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    :goto_1
    or-int/2addr v13, v2

    .line 305
    invoke-virtual {v12, v4}, Lcom/miui/gallery/util/LinkedNode$List;->previousOf(Lcom/miui/gallery/util/LinkedNode;)Lcom/miui/gallery/util/LinkedNode;

    move-result-object v4

    .end local v4           #entry:Lcom/miui/gallery/ui/SlotView$ItemEntry;
    check-cast v4, Lcom/miui/gallery/ui/SlotView$ItemEntry;

    .line 306
    .restart local v4       #entry:Lcom/miui/gallery/ui/SlotView$ItemEntry;
    goto :goto_0

    .line 304
    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    .line 308
    .end local v17           #r:I
    :cond_8
    const/4 v6, 0x1

    .line 309
    .local v6, pass:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/SlotView;->mCurrentItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 310
    const/4 v10, 0x0

    .local v10, i:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/SlotView;->mCurrentItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    .local v14, n:I
    :goto_3
    if-ge v10, v14, :cond_b

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/SlotView;->mCurrentItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #entry:Lcom/miui/gallery/ui/SlotView$ItemEntry;
    check-cast v4, Lcom/miui/gallery/ui/SlotView$ItemEntry;

    .restart local v4       #entry:Lcom/miui/gallery/ui/SlotView$ItemEntry;
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 312
    invoke-direct/range {v2 .. v7}, Lcom/miui/gallery/ui/SlotView;->renderItem(Lcom/miui/gallery/ui/GLCanvas;Lcom/miui/gallery/ui/SlotView$ItemEntry;FIZ)I

    move-result v17

    .line 313
    .restart local v17       #r:I
    and-int/lit8 v2, v17, 0x1

    if-eqz v2, :cond_9

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/SlotView;->mNextItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_9
    and-int/lit8 v2, v17, 0x2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    :goto_4
    or-int/2addr v13, v2

    .line 310
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 316
    :cond_a
    const/4 v2, 0x0

    goto :goto_4

    .line 318
    .end local v17           #r:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/SlotView;->mCurrentItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/SlotView;->mNextItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 321
    .local v18, tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/ui/SlotView$ItemEntry;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/SlotView;->mCurrentItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/gallery/ui/SlotView;->mNextItems:Ljava/util/ArrayList;

    .line 322
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/gallery/ui/SlotView;->mCurrentItems:Ljava/util/ArrayList;

    .line 323
    add-int/lit8 v6, v6, 0x1

    .line 324
    goto :goto_2

    .line 329
    .end local v10           #i:I
    .end local v14           #n:I
    .end local v18           #tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/ui/SlotView$ItemEntry;>;"
    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/gallery/ui/SlotView;->mScrollY:I

    int-to-float v3, v3

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v2, v3, v1}, Lcom/miui/gallery/ui/GLCanvas;->translate(FFF)V

    .line 332
    if-eqz v13, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/SlotView;->invalidate()V

    .line 333
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/gallery/ui/SlotView;->mMoreAnimation:Z

    if-eqz v2, :cond_e

    if-nez v13, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/SlotView;->mUIListener:Lcom/miui/gallery/ui/UserInteractionListener;

    if-eqz v2, :cond_e

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/SlotView;->mUIListener:Lcom/miui/gallery/ui/UserInteractionListener;

    invoke-interface {v2}, Lcom/miui/gallery/ui/UserInteractionListener;->onUserInteractionEnd()V

    .line 336
    :cond_e
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/miui/gallery/ui/SlotView;->mMoreAnimation:Z

    .line 337
    return-void
.end method

.method public savePositions(Lcom/miui/gallery/ui/PositionRepository;)V
    .locals 5
    .parameter "repository"

    .prologue
    .line 182
    invoke-virtual {p1}, Lcom/miui/gallery/ui/PositionRepository;->clear()V

    .line 183
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView;->mItemList:Lcom/miui/gallery/util/LinkedNode$List;

    .line 184
    .local v1, list:Lcom/miui/gallery/util/LinkedNode$List;,"Lcom/miui/gallery/util/LinkedNode$List<Lcom/miui/gallery/ui/SlotView$ItemEntry;>;"
    invoke-virtual {v1}, Lcom/miui/gallery/util/LinkedNode$List;->getFirst()Lcom/miui/gallery/util/LinkedNode;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/SlotView$ItemEntry;

    .line 185
    .local v0, entry:Lcom/miui/gallery/ui/SlotView$ItemEntry;
    new-instance v2, Lcom/miui/gallery/ui/PositionRepository$Position;

    invoke-direct {v2}, Lcom/miui/gallery/ui/PositionRepository$Position;-><init>()V

    .line 186
    .local v2, position:Lcom/miui/gallery/ui/PositionRepository$Position;
    :goto_0
    if-eqz v0, :cond_0

    .line 187
    iget-object v3, v0, Lcom/miui/gallery/ui/SlotView$ItemEntry;->target:Lcom/miui/gallery/ui/PositionRepository$Position;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/PositionRepository$Position;->set(Lcom/miui/gallery/ui/PositionRepository$Position;)V

    .line 188
    iget v3, v2, Lcom/miui/gallery/ui/PositionRepository$Position;->x:F

    iget v4, p0, Lcom/miui/gallery/ui/SlotView;->mScrollX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/miui/gallery/ui/PositionRepository$Position;->x:F

    .line 189
    iget v3, v2, Lcom/miui/gallery/ui/PositionRepository$Position;->y:F

    iget v4, p0, Lcom/miui/gallery/ui/SlotView;->mScrollY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/miui/gallery/ui/PositionRepository$Position;->y:F

    .line 190
    iget-object v3, v0, Lcom/miui/gallery/ui/SlotView$ItemEntry;->item:Lcom/miui/gallery/ui/DisplayItem;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/DisplayItem;->getIdentity()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Lcom/miui/gallery/ui/PositionRepository;->putPosition(Ljava/lang/Long;Lcom/miui/gallery/ui/PositionRepository$Position;)V

    .line 191
    invoke-virtual {v1, v0}, Lcom/miui/gallery/util/LinkedNode$List;->nextOf(Lcom/miui/gallery/util/LinkedNode;)Lcom/miui/gallery/util/LinkedNode;

    move-result-object v0

    .end local v0           #entry:Lcom/miui/gallery/ui/SlotView$ItemEntry;
    check-cast v0, Lcom/miui/gallery/ui/SlotView$ItemEntry;

    .restart local v0       #entry:Lcom/miui/gallery/ui/SlotView$ItemEntry;
    goto :goto_0

    .line 193
    :cond_0
    return-void
.end method

.method public setCenterIndex(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 102
    iget-object v3, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    #getter for: Lcom/miui/gallery/ui/SlotView$Layout;->mSlotCount:I
    invoke-static {v3}, Lcom/miui/gallery/ui/SlotView$Layout;->access$100(Lcom/miui/gallery/ui/SlotView$Layout;)I

    move-result v2

    .line 103
    .local v2, slotCount:I
    if-ltz p1, :cond_0

    if-lt p1, v2, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    invoke-virtual {v3, p1}, Lcom/miui/gallery/ui/SlotView$Layout;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 107
    .local v1, rect:Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/miui/gallery/ui/SlotView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    .line 110
    .local v0, position:I
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/SlotView;->setScrollPosition(I)V

    goto :goto_0
.end method

.method public setEnableScroll(Z)V
    .locals 0
    .parameter "enableScroll"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/miui/gallery/ui/SlotView;->mEnableScroll:Z

    .line 99
    return-void
.end method

.method public setListener(Lcom/miui/gallery/ui/SlotView$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/miui/gallery/ui/SlotView;->mListener:Lcom/miui/gallery/ui/SlotView$Listener;

    .line 246
    return-void
.end method

.method public setScrollPosition(I)V
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SlotView$Layout;->getScrollLimit()I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/miui/gallery/common/Utils;->clamp(III)I

    move-result p1

    .line 135
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mScroller:Lcom/miui/gallery/ui/ScrollerHelper;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/ScrollerHelper;->setPosition(I)V

    .line 136
    invoke-direct {p0, p1, v1}, Lcom/miui/gallery/ui/SlotView;->updateScrollPosition(IZ)V

    .line 137
    return-void
.end method

.method public setSlotCount(I)Z
    .locals 3
    .parameter "slotCount"

    .prologue
    const/4 v2, -0x1

    .line 734
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/ui/SlotView$Layout;->setSlotCount(I)Z

    move-result v0

    .line 737
    .local v0, changed:Z
    iget v1, p0, Lcom/miui/gallery/ui/SlotView;->mStartIndex:I

    if-eq v1, v2, :cond_0

    .line 738
    iget v1, p0, Lcom/miui/gallery/ui/SlotView;->mStartIndex:I

    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/SlotView;->setCenterIndex(I)V

    .line 739
    iput v2, p0, Lcom/miui/gallery/ui/SlotView;->mStartIndex:I

    .line 741
    :cond_0
    iget v1, p0, Lcom/miui/gallery/ui/SlotView;->mScrollY:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/miui/gallery/ui/SlotView;->updateScrollPosition(IZ)V

    .line 742
    return v0
.end method

.method public setSlotSpec(Lcom/miui/gallery/ui/SlotView$Spec;)V
    .locals 1
    .parameter "spec"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mLayout:Lcom/miui/gallery/ui/SlotView$Layout;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/SlotView$Layout;->setSlotSpec(Lcom/miui/gallery/ui/SlotView$Spec;)V

    .line 141
    return-void
.end method

.method public startTransition(Lcom/miui/gallery/ui/PositionProvider;)V
    .locals 1
    .parameter "position"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/miui/gallery/ui/SlotView;->mPositions:Lcom/miui/gallery/ui/PositionProvider;

    .line 176
    new-instance v0, Lcom/miui/gallery/ui/SlotView$MyAnimation;

    invoke-direct {v0}, Lcom/miui/gallery/ui/SlotView$MyAnimation;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mAnimation:Lcom/miui/gallery/ui/SlotView$MyAnimation;

    .line 177
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mAnimation:Lcom/miui/gallery/ui/SlotView$MyAnimation;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SlotView$MyAnimation;->start()V

    .line 178
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/SlotView;->invalidate()V

    .line 179
    :cond_0
    return-void
.end method
