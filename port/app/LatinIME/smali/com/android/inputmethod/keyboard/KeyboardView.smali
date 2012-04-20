.class public Lcom/android/inputmethod/keyboard/KeyboardView;
.super Landroid/view/View;
.source "KeyboardView.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;,
        Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;,
        Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;
    }
.end annotation


# static fields
.field private static final KEY_LABEL_REFERENCE_CHAR:[C

.field private static final KEY_NUMERIC_HINT_LABEL_REFERENCE_CHAR:[C

.field private static final LONG_PRESSABLE_STATE_SET:[I

.field private static final sTextBounds:Landroid/graphics/Rect;

.field private static final sTextHeightCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTextWidthCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBackgroundDimAmount:F

.field private mBuffer:Landroid/graphics/Bitmap;

.field private mBufferNeedsUpdate:Z

.field private mCanvas:Landroid/graphics/Canvas;

.field private mDelayAfterPreview:I

.field private final mDelayBeforePreview:I

.field private final mDirtyRect:Landroid/graphics/Rect;

.field private final mDrawingHandler:Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;

.field private mInvalidatedKey:Lcom/android/inputmethod/keyboard/Key;

.field private final mInvalidatedKeyRect:Landroid/graphics/Rect;

.field private final mKeyDrawParams:Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;

.field protected final mKeyPreviewDrawParams:Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;

.field private final mKeyPreviewLayoutId:I

.field private mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

.field protected final mMoreKeysLayout:I

.field private mNeedsToDimBackground:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mPreviewPlacer:Landroid/view/ViewGroup;

.field private mShowKeyPreviewPopup:Z

.field protected final mVerticalCorrection:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    new-array v0, v3, [I

    const v1, 0x101023c

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardView;->sTextHeightCache:Ljava/util/HashMap;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardView;->sTextWidthCache:Ljava/util/HashMap;

    .line 131
    new-array v0, v3, [C

    const/16 v1, 0x4d

    aput-char v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_LABEL_REFERENCE_CHAR:[C

    .line 132
    new-array v0, v3, [C

    const/16 v1, 0x38

    aput-char v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_NUMERIC_HINT_LABEL_REFERENCE_CHAR:[C

    .line 732
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardView;->sTextBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 345
    const v0, 0x7f010002

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 346
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 349
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    iput-boolean v5, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mShowKeyPreviewPopup:Z

    .line 115
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    .line 119
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKeyRect:Landroid/graphics/Rect;

    .line 124
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 134
    new-instance v2, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;

    invoke-direct {v2, p0}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;-><init>(Lcom/android/inputmethod/keyboard/KeyboardView;)V

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDrawingHandler:Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;

    .line 351
    sget-object v2, Lcom/android/inputmethod/latin/R$styleable;->KeyboardView:[I

    const v3, 0x7f0e0005

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 354
    .local v0, a:Landroid/content/res/TypedArray;
    new-instance v2, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    invoke-direct {v2, v0}, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;-><init>(Landroid/content/res/TypedArray;)V

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    .line 355
    new-instance v2, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    invoke-direct {v2, v0, v3}, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;-><init>(Landroid/content/res/TypedArray;Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;)V

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPreviewDrawParams:Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;

    .line 356
    const/16 v2, 0x13

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPreviewLayoutId:I

    .line 357
    iget v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPreviewLayoutId:I

    if-nez v2, :cond_0

    .line 358
    iput-boolean v4, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mShowKeyPreviewPopup:Z

    .line 360
    :cond_0
    const/16 v2, 0x1d

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mVerticalCorrection:F

    .line 362
    const/16 v2, 0x1e

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mMoreKeysLayout:I

    .line 363
    const/16 v2, 0x21

    const/high16 v3, 0x3f00

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBackgroundDimAmount:F

    .line 364
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 366
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 368
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f090006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDelayBeforePreview:I

    .line 369
    const v2, 0x7f090007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDelayAfterPreview:I

    .line 371
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 372
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 373
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 374
    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/keyboard/KeyboardView;ILcom/android/inputmethod/keyboard/PointerTracker;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardView;->showKey(ILcom/android/inputmethod/keyboard/PointerTracker;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/res/TypedArray;I)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-static {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->getRatio(Landroid/content/res/TypedArray;I)F

    move-result v0

    return v0
.end method

.method private addKeyPreview(Landroid/widget/TextView;)V
    .locals 4
    .parameter "keyPreview"

    .prologue
    const/4 v3, 0x0

    .line 851
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPlacer:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 852
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPlacer:Landroid/view/ViewGroup;

    .line 853
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 855
    .local v0, windowContentView:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPlacer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 857
    .end local v0           #windowContentView:Landroid/view/ViewGroup;
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPlacer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPlacer:Landroid/view/ViewGroup;

    invoke-static {v2, v3, v3}, Lcom/android/inputmethod/compat/FrameLayoutCompatUtils;->newLayoutParam(Landroid/view/ViewGroup;II)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 859
    return-void
.end method

.method private static drawHorizontalLine(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V
    .locals 6
    .parameter "canvas"
    .parameter "y"
    .parameter "w"
    .parameter "color"
    .parameter "paint"

    .prologue
    .line 794
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 795
    const/high16 v0, 0x3f80

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 796
    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 797
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 798
    return-void
.end method

.method private static drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 3
    .parameter "canvas"
    .parameter "icon"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 786
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 787
    invoke-virtual {p1, v2, v2, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 788
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 789
    neg-int v0, p2

    int-to-float v0, v0

    neg-int v1, p3

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 790
    return-void
.end method

.method private static drawRectangle(Landroid/graphics/Canvas;FFFFILandroid/graphics/Paint;)V
    .locals 6
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "color"
    .parameter "paint"

    .prologue
    const/4 v1, 0x0

    .line 809
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 810
    const/high16 v0, 0x3f80

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 811
    invoke-virtual {p6, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 812
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object v0, p0

    move v2, v1

    move v3, p3

    move v4, p4

    move-object v5, p6

    .line 813
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 814
    neg-float v0, p1

    neg-float v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 815
    return-void
.end method

.method private static drawVerticalLine(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V
    .locals 6
    .parameter "canvas"
    .parameter "x"
    .parameter "h"
    .parameter "color"
    .parameter "paint"

    .prologue
    .line 801
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 802
    const/high16 v0, 0x3f80

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 803
    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 804
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p1

    move v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 805
    return-void
.end method

.method private static getCharGeometryCacheKey(CLandroid/graphics/Paint;)I
    .locals 4
    .parameter "reference"
    .parameter "paint"

    .prologue
    .line 735
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    float-to-int v2, v3

    .line 736
    .local v2, labelSize:I
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 737
    .local v1, face:Landroid/graphics/Typeface;
    shl-int/lit8 v0, p0, 0xf

    .line 738
    .local v0, codePointOffset:I
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    if-ne v1, v3, :cond_0

    .line 739
    add-int v3, v0, v2

    .line 745
    :goto_0
    return v3

    .line 740
    :cond_0
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    if-ne v1, v3, :cond_1

    .line 741
    add-int v3, v0, v2

    add-int/lit16 v3, v3, 0x1000

    goto :goto_0

    .line 742
    :cond_1
    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    if-ne v1, v3, :cond_2

    .line 743
    add-int v3, v0, v2

    add-int/lit16 v3, v3, 0x2000

    goto :goto_0

    .line 745
    :cond_2
    add-int v3, v0, v2

    goto :goto_0
.end method

.method private static getCharHeight([CLandroid/graphics/Paint;)F
    .locals 6
    .parameter "character"
    .parameter "paint"

    .prologue
    const/4 v5, 0x0

    .line 750
    aget-char v3, p0, v5

    invoke-static {v3, p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->getCharGeometryCacheKey(CLandroid/graphics/Paint;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 751
    .local v2, key:Ljava/lang/Integer;
    sget-object v3, Lcom/android/inputmethod/keyboard/KeyboardView;->sTextHeightCache:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 752
    .local v0, cachedValue:Ljava/lang/Float;
    if-eqz v0, :cond_0

    .line 753
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 758
    :goto_0
    return v1

    .line 755
    :cond_0
    const/4 v3, 0x1

    sget-object v4, Lcom/android/inputmethod/keyboard/KeyboardView;->sTextBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0, v5, v3, v4}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 756
    sget-object v3, Lcom/android/inputmethod/keyboard/KeyboardView;->sTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v1, v3

    .line 757
    .local v1, height:F
    sget-object v3, Lcom/android/inputmethod/keyboard/KeyboardView;->sTextHeightCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static getCharWidth([CLandroid/graphics/Paint;)F
    .locals 6
    .parameter "character"
    .parameter "paint"

    .prologue
    const/4 v5, 0x0

    .line 762
    aget-char v3, p0, v5

    invoke-static {v3, p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->getCharGeometryCacheKey(CLandroid/graphics/Paint;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 763
    .local v1, key:Ljava/lang/Integer;
    sget-object v3, Lcom/android/inputmethod/keyboard/KeyboardView;->sTextWidthCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 764
    .local v0, cachedValue:Ljava/lang/Float;
    if-eqz v0, :cond_0

    .line 765
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 770
    :goto_0
    return v2

    .line 767
    :cond_0
    const/4 v3, 0x1

    sget-object v4, Lcom/android/inputmethod/keyboard/KeyboardView;->sTextBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0, v5, v3, v4}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 768
    sget-object v3, Lcom/android/inputmethod/keyboard/KeyboardView;->sTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v2, v3

    .line 769
    .local v2, width:F
    sget-object v3, Lcom/android/inputmethod/keyboard/KeyboardView;->sTextWidthCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static getLabelWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)F
    .locals 4
    .parameter "label"
    .parameter "paint"

    .prologue
    .line 774
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sget-object v3, Lcom/android/inputmethod/keyboard/KeyboardView;->sTextBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 775
    sget-object v0, Lcom/android/inputmethod/keyboard/KeyboardView;->sTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private static getRatio(Landroid/content/res/TypedArray;I)F
    .locals 2
    .parameter "a"
    .parameter "index"

    .prologue
    const/16 v1, 0x3e8

    .line 378
    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    return v0
.end method

.method private onBufferDraw()V
    .locals 18

    .prologue
    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getWidth()I

    move-result v17

    .line 458
    .local v17, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getHeight()I

    move-result v13

    .line 459
    .local v13, height:I
    if-eqz v17, :cond_0

    if-nez v13, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move/from16 v0, v17

    if-ne v2, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v13, :cond_4

    .line 462
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 464
    :cond_3
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    invoke-static {v0, v13, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v7, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v4, v7, v0, v13}, Landroid/graphics/Rect;->union(IIII)V

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_7

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 472
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 473
    .local v3, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    sget-object v4, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 474
    const/high16 v2, -0x100

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    if-eqz v2, :cond_0

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/Keyboard;->isManualTemporaryUpperCase()Z

    move-result v6

    .line 479
    .local v6, isManualTemporaryUpperCase:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    .line 480
    .local v5, params:Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKey:Lcom/android/inputmethod/keyboard/Key;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKeyRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKey:Lcom/android/inputmethod/keyboard/Key;

    iget v2, v2, Lcom/android/inputmethod/keyboard/Key;->mX:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKey:Lcom/android/inputmethod/keyboard/Key;

    iget v4, v4, Lcom/android/inputmethod/keyboard/Key;->mVisualInsetsLeft:I

    add-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPaddingLeft()I

    move-result v4

    add-int v15, v2, v4

    .line 484
    .local v15, keyDrawX:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKey:Lcom/android/inputmethod/keyboard/Key;

    iget v2, v2, Lcom/android/inputmethod/keyboard/Key;->mY:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPaddingTop()I

    move-result v4

    add-int v16, v2, v4

    .line 485
    .local v16, keyDrawY:I
    int-to-float v2, v15

    move/from16 v0, v16

    int-to-float v4, v0

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 486
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKey:Lcom/android/inputmethod/keyboard/Key;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-static/range {v1 .. v6}, Lcom/android/inputmethod/keyboard/KeyboardView;->onBufferDrawKey(Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/Keyboard;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;Z)V

    .line 488
    neg-int v2, v15

    int-to-float v2, v2

    move/from16 v0, v16

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 501
    .end local v15           #keyDrawX:I
    .end local v16           #keyDrawY:I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mNeedsToDimBackground:Z

    if-eqz v2, :cond_6

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBackgroundDimAmount:F

    const/high16 v7, 0x437f

    mul-float/2addr v4, v7

    float-to-int v4, v4

    shl-int/lit8 v4, v4, 0x18

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 503
    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v0, v17

    int-to-float v10, v0

    int-to-float v11, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object v7, v3

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 506
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKey:Lcom/android/inputmethod/keyboard/Key;

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_0

    .line 469
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v5           #params:Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;
    .end local v6           #isManualTemporaryUpperCase:Z
    :cond_7
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v2, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    goto/16 :goto_1

    .line 491
    .restart local v3       #canvas:Landroid/graphics/Canvas;
    .restart local v5       #params:Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;
    .restart local v6       #isManualTemporaryUpperCase:Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    iget-object v2, v2, Lcom/android/inputmethod/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/keyboard/Key;

    .line 492
    .local v1, key:Lcom/android/inputmethod/keyboard/Key;
    iget v2, v1, Lcom/android/inputmethod/keyboard/Key;->mX:I

    iget v4, v1, Lcom/android/inputmethod/keyboard/Key;->mVisualInsetsLeft:I

    add-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPaddingLeft()I

    move-result v4

    add-int v15, v2, v4

    .line 493
    .restart local v15       #keyDrawX:I
    iget v2, v1, Lcom/android/inputmethod/keyboard/Key;->mY:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPaddingTop()I

    move-result v4

    add-int v16, v2, v4

    .line 494
    .restart local v16       #keyDrawY:I
    int-to-float v2, v15

    move/from16 v0, v16

    int-to-float v4, v0

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-static/range {v1 .. v6}, Lcom/android/inputmethod/keyboard/KeyboardView;->onBufferDrawKey(Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/Keyboard;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;Z)V

    .line 496
    neg-int v2, v15

    int-to-float v2, v2

    move/from16 v0, v16

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2
.end method

.method private static onBufferDrawKey(Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/Keyboard;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;Z)V
    .locals 48
    .parameter "key"
    .parameter "keyboard"
    .parameter "canvas"
    .parameter "paint"
    .parameter "params"
    .parameter "isManualTemporaryUpperCase"

    .prologue
    .line 520
    sget-boolean v38, Lcom/android/inputmethod/latin/LatinImeLogger;->sVISUALDEBUG:Z

    .line 522
    .local v38, debugShowAlign:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->isSpacer()Z

    move-result v4

    if-nez v4, :cond_3

    .line 523
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/inputmethod/keyboard/Key;->mVisualInsetsLeft:I

    sub-int/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/inputmethod/keyboard/Key;->mVisualInsetsRight:I

    sub-int/2addr v4, v6

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v6

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int v32, v4, v6

    .line 525
    .local v32, bgWidth:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v6

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int v31, v4, v6

    .line 526
    .local v31, bgHeight:I
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    neg-int v0, v4

    move/from16 v33, v0

    .line 527
    .local v33, bgX:I
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v0, v4

    move/from16 v34, v0

    .line 528
    .local v34, bgY:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->getCurrentDrawableState()[I

    move-result-object v39

    .line 529
    .local v39, drawableState:[I
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v30, v0

    .line 530
    .local v30, background:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v30

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 531
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v35

    .line 532
    .local v35, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, v35

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move/from16 v0, v32

    if-ne v0, v4, :cond_0

    move-object/from16 v0, v35

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v31

    if-eq v0, v4, :cond_1

    .line 533
    :cond_0
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v32

    move/from16 v2, v31

    invoke-virtual {v0, v4, v6, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 535
    :cond_1
    move/from16 v0, v33

    int-to-float v4, v0

    move/from16 v0, v34

    int-to-float v6, v0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 536
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 537
    if-eqz v38, :cond_2

    .line 538
    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v32

    int-to-float v7, v0

    move/from16 v0, v31

    int-to-float v8, v0

    const/high16 v9, -0x7f40

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v4, p2

    invoke-static/range {v4 .. v10}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawRectangle(Landroid/graphics/Canvas;FFFFILandroid/graphics/Paint;)V

    .line 540
    :cond_2
    move/from16 v0, v33

    neg-int v4, v0

    int-to-float v4, v4

    move/from16 v0, v34

    neg-int v6, v0

    int-to-float v6, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 544
    .end local v30           #background:Landroid/graphics/drawable/Drawable;
    .end local v31           #bgHeight:I
    .end local v32           #bgWidth:I
    .end local v33           #bgX:I
    .end local v34           #bgY:I
    .end local v35           #bounds:Landroid/graphics/Rect;
    .end local v39           #drawableState:[I
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/inputmethod/keyboard/Key;->mVisualInsetsLeft:I

    sub-int/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/inputmethod/keyboard/Key;->mVisualInsetsRight:I

    sub-int v43, v4, v6

    .line 545
    .local v43, keyWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    move/from16 v42, v0

    .line 546
    .local v42, keyHeight:I
    move/from16 v0, v43

    int-to-float v4, v0

    const/high16 v6, 0x3f00

    mul-float v36, v4, v6

    .line 547
    .local v36, centerX:F
    move/from16 v0, v42

    int-to-float v4, v0

    const/high16 v6, 0x3f00

    mul-float v37, v4, v6

    .line 549
    .local v37, centerY:F
    if-eqz v38, :cond_4

    .line 550
    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v43

    int-to-float v7, v0

    move/from16 v0, v42

    int-to-float v8, v0

    const v9, -0x7fffff40

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v4, p2

    invoke-static/range {v4 .. v10}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawRectangle(Landroid/graphics/Canvas;FFFFILandroid/graphics/Paint;)V

    .line 554
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 555
    .local v11, icon:Landroid/graphics/drawable/Drawable;
    move/from16 v8, v36

    .line 556
    .local v8, positionX:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    if-eqz v4, :cond_7

    .line 558
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/inputmethod/keyboard/Keyboard;->adjustLabelCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 560
    .local v5, label:Ljava/lang/CharSequence;
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextStyle:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/inputmethod/keyboard/Key;->selectTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 561
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLetterSize:I

    move-object/from16 v0, p4

    iget v6, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLargeLetterSize:I

    move-object/from16 v0, p4

    iget v7, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelSize:I

    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLabelSize:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7, v10}, Lcom/android/inputmethod/keyboard/Key;->selectTextSize(IIII)I

    move-result v46

    .line 563
    .local v46, labelSize:I
    move/from16 v0, v46

    int-to-float v4, v0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 564
    sget-object v4, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_LABEL_REFERENCE_CHAR:[C

    move-object/from16 v0, p3

    invoke-static {v4, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getCharHeight([CLandroid/graphics/Paint;)F

    move-result v44

    .line 565
    .local v44, labelCharHeight:F
    sget-object v4, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_LABEL_REFERENCE_CHAR:[C

    move-object/from16 v0, p3

    invoke-static {v4, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getCharWidth([CLandroid/graphics/Paint;)F

    move-result v45

    .line 568
    .local v45, labelCharWidth:F
    const/high16 v4, 0x4000

    div-float v4, v44, v4

    add-float v9, v37, v4

    .line 571
    .local v9, baseline:F
    const/16 v47, 0x0

    .line 572
    .local v47, labelWidth:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->isAlignLeft()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 573
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelHorizontalPadding:F

    float-to-int v4, v4

    int-to-float v8, v4

    .line 574
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 596
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->needsXScale()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 597
    const/high16 v4, 0x3f80

    move/from16 v0, v43

    int-to-float v6, v0

    const v7, 0x3f666666

    mul-float/2addr v6, v7

    move-object/from16 v0, p3

    invoke-static {v5, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getLabelWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)F

    move-result v7

    div-float/2addr v6, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 601
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->hasUppercaseLetter()Z

    move-result v4

    if-eqz v4, :cond_12

    if-eqz p5, :cond_12

    .line 602
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextInactivatedColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 606
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 608
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mShadowRadius:F

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mShadowColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v6, v7, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 613
    :goto_2
    const/4 v6, 0x0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object/from16 v4, p2

    move-object/from16 v10, p3

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 615
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v6, v7, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 616
    const/high16 v4, 0x3f80

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 618
    if-eqz v11, :cond_6

    .line 619
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 620
    .local v14, iconWidth:I
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    .line 621
    .local v15, iconHeight:I
    sub-int v4, v42, v15

    div-int/lit8 v13, v4, 0x2

    .line 622
    .local v13, iconY:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->hasLabelWithIconLeft()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 623
    const/high16 v4, 0x4000

    div-float v4, v47, v4

    sub-float v4, v36, v4

    float-to-int v12, v4

    .local v12, iconX:I
    move-object/from16 v10, p2

    .line 624
    invoke-static/range {v10 .. v15}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 631
    .end local v12           #iconX:I
    .end local v13           #iconY:I
    .end local v14           #iconWidth:I
    .end local v15           #iconHeight:I
    :cond_6
    :goto_3
    if-eqz v38, :cond_7

    .line 632
    new-instance v28, Landroid/graphics/Paint;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Paint;-><init>()V

    .line 633
    .local v28, line:Landroid/graphics/Paint;
    move/from16 v0, v43

    int-to-float v4, v0

    const v6, -0x3fff8000

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v9, v4, v6, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawHorizontalLine(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V

    .line 634
    move/from16 v0, v42

    int-to-float v4, v0

    const v6, -0x3f7fff80

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v8, v4, v6, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawVerticalLine(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V

    .line 639
    .end local v5           #label:Ljava/lang/CharSequence;
    .end local v9           #baseline:F
    .end local v28           #line:Landroid/graphics/Paint;
    .end local v44           #labelCharHeight:F
    .end local v45           #labelCharWidth:F
    .end local v46           #labelSize:I
    .end local v47           #labelWidth:F
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/Key;->mHintLabel:Ljava/lang/CharSequence;

    if-eqz v4, :cond_8

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Key;->mHintLabel:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    .line 643
    .local v17, hint:Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->hasHintLabel()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 644
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLabelColor:I

    move/from16 v40, v0

    .line 645
    .local v40, hintColor:I
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLabelSize:I

    move/from16 v41, v0

    .line 646
    .local v41, hintSize:I
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 656
    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 657
    move/from16 v0, v41

    int-to-float v4, v0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 659
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->hasHintLabel()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 663
    sget-object v4, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_LABEL_REFERENCE_CHAR:[C

    move-object/from16 v0, p3

    invoke-static {v4, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getCharWidth([CLandroid/graphics/Paint;)F

    move-result v4

    const/high16 v6, 0x4000

    mul-float/2addr v4, v6

    add-float v20, v8, v4

    .line 664
    .local v20, hintX:F
    sget-object v4, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_LABEL_REFERENCE_CHAR:[C

    move-object/from16 v0, p3

    invoke-static {v4, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getCharHeight([CLandroid/graphics/Paint;)F

    move-result v4

    const/high16 v6, 0x4000

    div-float/2addr v4, v6

    add-float v21, v37, v4

    .line 665
    .local v21, hintY:F
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 679
    :goto_5
    const/16 v18, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move-object/from16 v16, p2

    move-object/from16 v22, p3

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 681
    if-eqz v38, :cond_8

    .line 682
    new-instance v28, Landroid/graphics/Paint;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Paint;-><init>()V

    .line 683
    .restart local v28       #line:Landroid/graphics/Paint;
    move/from16 v0, v21

    float-to-int v4, v0

    int-to-float v4, v4

    move/from16 v0, v43

    int-to-float v6, v0

    const v7, -0x3f7f8000

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v4, v6, v7, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawHorizontalLine(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V

    .line 684
    move/from16 v0, v20

    float-to-int v4, v0

    int-to-float v4, v4

    move/from16 v0, v42

    int-to-float v6, v0

    const v7, -0x3f7f8000

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v4, v6, v7, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawVerticalLine(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V

    .line 689
    .end local v17           #hint:Ljava/lang/CharSequence;
    .end local v20           #hintX:F
    .end local v21           #hintY:F
    .end local v28           #line:Landroid/graphics/Paint;
    .end local v40           #hintColor:I
    .end local v41           #hintSize:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    if-nez v4, :cond_9

    if-eqz v11, :cond_9

    .line 690
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 691
    .restart local v14       #iconWidth:I
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    .line 693
    .restart local v15       #iconHeight:I
    sub-int v4, v42, v15

    div-int/lit8 v13, v4, 0x2

    .line 694
    .restart local v13       #iconY:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->isAlignLeft()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 695
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelHorizontalPadding:F

    float-to-int v12, v4

    .line 696
    .restart local v12       #iconX:I
    move/from16 v29, v12

    .local v29, alignX:I
    :goto_6
    move-object/from16 v10, p2

    .line 704
    invoke-static/range {v10 .. v15}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 706
    if-eqz v38, :cond_9

    .line 707
    new-instance v28, Landroid/graphics/Paint;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Paint;-><init>()V

    .line 708
    .restart local v28       #line:Landroid/graphics/Paint;
    move/from16 v0, v29

    int-to-float v4, v0

    move/from16 v0, v42

    int-to-float v6, v0

    const v7, -0x3f7fff80

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v4, v6, v7, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawVerticalLine(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V

    .line 709
    int-to-float v0, v12

    move/from16 v23, v0

    int-to-float v0, v13

    move/from16 v24, v0

    int-to-float v0, v14

    move/from16 v25, v0

    int-to-float v0, v15

    move/from16 v26, v0

    const/high16 v27, -0x7f40

    move-object/from16 v22, p2

    invoke-static/range {v22 .. v28}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawRectangle(Landroid/graphics/Canvas;FFFFILandroid/graphics/Paint;)V

    .line 714
    .end local v12           #iconX:I
    .end local v13           #iconY:I
    .end local v14           #iconWidth:I
    .end local v15           #iconHeight:I
    .end local v28           #line:Landroid/graphics/Paint;
    .end local v29           #alignX:I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->hasPopupHint()Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/Key;->mMoreKeys:[Ljava/lang/CharSequence;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/keyboard/Key;->mMoreKeys:[Ljava/lang/CharSequence;

    array-length v4, v4

    if-gtz v4, :cond_b

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->needsSpecialPopupHint()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 716
    :cond_b
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLetterSize:I

    int-to-float v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 717
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLabelColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 718
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 719
    move/from16 v0, v43

    int-to-float v4, v0

    move-object/from16 v0, p4

    iget v6, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLetterPadding:F

    sub-float/2addr v4, v6

    sget-object v6, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_LABEL_REFERENCE_CHAR:[C

    move-object/from16 v0, p3

    invoke-static {v6, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getCharWidth([CLandroid/graphics/Paint;)F

    move-result v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    sub-float v20, v4, v6

    .line 721
    .restart local v20       #hintX:F
    move/from16 v0, v42

    int-to-float v4, v0

    move-object/from16 v0, p4

    iget v6, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyPopupHintLetterPadding:F

    sub-float v21, v4, v6

    .line 722
    .restart local v21       #hintY:F
    const-string v4, "\u2026"

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, p3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 724
    if-eqz v38, :cond_c

    .line 725
    new-instance v28, Landroid/graphics/Paint;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Paint;-><init>()V

    .line 726
    .restart local v28       #line:Landroid/graphics/Paint;
    move/from16 v0, v21

    float-to-int v4, v0

    int-to-float v4, v4

    move/from16 v0, v43

    int-to-float v6, v0

    const v7, -0x3f7f8000

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v4, v6, v7, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawHorizontalLine(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V

    .line 727
    move/from16 v0, v20

    float-to-int v4, v0

    int-to-float v4, v4

    move/from16 v0, v42

    int-to-float v6, v0

    const v7, -0x3f7f8000

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v4, v6, v7, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawVerticalLine(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V

    .line 730
    .end local v20           #hintX:F
    .end local v21           #hintY:F
    .end local v28           #line:Landroid/graphics/Paint;
    :cond_c
    return-void

    .line 575
    .restart local v5       #label:Ljava/lang/CharSequence;
    .restart local v9       #baseline:F
    .restart local v44       #labelCharHeight:F
    .restart local v45       #labelCharWidth:F
    .restart local v46       #labelSize:I
    .restart local v47       #labelWidth:F
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->isAlignRight()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 576
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelHorizontalPadding:F

    float-to-int v4, v4

    sub-int v4, v43, v4

    int-to-float v8, v4

    .line 577
    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_0

    .line 578
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->isAlignLeftOfCenter()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 580
    const/high16 v4, 0x40e0

    mul-float v4, v4, v45

    const/high16 v6, 0x4080

    div-float/2addr v4, v6

    sub-float v8, v36, v4

    .line 581
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_0

    .line 582
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->hasLabelWithIconLeft()Z

    move-result v4

    if-eqz v4, :cond_10

    if-eqz v11, :cond_10

    .line 583
    move-object/from16 v0, p3

    invoke-static {v5, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getLabelWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)F

    move-result v4

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    const v6, 0x3d4ccccd

    move/from16 v0, v43

    int-to-float v7, v0

    mul-float/2addr v6, v7

    add-float v47, v4, v6

    .line 585
    const/high16 v4, 0x4000

    div-float v4, v47, v4

    add-float v8, v36, v4

    .line 586
    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_0

    .line 587
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->hasLabelWithIconRight()Z

    move-result v4

    if-eqz v4, :cond_11

    if-eqz v11, :cond_11

    .line 588
    move-object/from16 v0, p3

    invoke-static {v5, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getLabelWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)F

    move-result v4

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    const v6, 0x3d4ccccd

    move/from16 v0, v43

    int-to-float v7, v0

    mul-float/2addr v6, v7

    add-float v47, v4, v6

    .line 590
    const/high16 v4, 0x4000

    div-float v4, v47, v4

    sub-float v8, v36, v4

    .line 591
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_0

    .line 593
    :cond_11
    move/from16 v8, v36

    .line 594
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_0

    .line 604
    :cond_12
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 611
    :cond_13
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_2

    .line 625
    .restart local v13       #iconY:I
    .restart local v14       #iconWidth:I
    .restart local v15       #iconHeight:I
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->hasLabelWithIconRight()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 626
    const/high16 v4, 0x4000

    div-float v4, v47, v4

    add-float v4, v4, v36

    int-to-float v6, v14

    sub-float/2addr v4, v6

    float-to-int v12, v4

    .restart local v12       #iconX:I
    move-object/from16 v10, p2

    .line 627
    invoke-static/range {v10 .. v15}, Lcom/android/inputmethod/keyboard/KeyboardView;->drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    goto/16 :goto_3

    .line 647
    .end local v5           #label:Ljava/lang/CharSequence;
    .end local v9           #baseline:F
    .end local v12           #iconX:I
    .end local v13           #iconY:I
    .end local v14           #iconWidth:I
    .end local v15           #iconHeight:I
    .end local v44           #labelCharHeight:F
    .end local v45           #labelCharWidth:F
    .end local v46           #labelSize:I
    .end local v47           #labelWidth:F
    .restart local v17       #hint:Ljava/lang/CharSequence;
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->hasUppercaseLetter()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 648
    if-eqz p5, :cond_16

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyUppercaseLetterActivatedColor:I

    move/from16 v40, v0

    .line 651
    .restart local v40       #hintColor:I
    :goto_7
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyUppercaseLetterSize:I

    move/from16 v41, v0

    .restart local v41       #hintSize:I
    goto/16 :goto_4

    .line 648
    .end local v40           #hintColor:I
    .end local v41           #hintSize:I
    :cond_16
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyUppercaseLetterInactivatedColor:I

    move/from16 v40, v0

    goto :goto_7

    .line 653
    :cond_17
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLetterColor:I

    move/from16 v40, v0

    .line 654
    .restart local v40       #hintColor:I
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLetterSize:I

    move/from16 v41, v0

    .restart local v41       #hintSize:I
    goto/16 :goto_4

    .line 666
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->hasUppercaseLetter()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 668
    move/from16 v0, v43

    int-to-float v4, v0

    move-object/from16 v0, p4

    iget v6, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyUppercaseLetterPadding:F

    sub-float/2addr v4, v6

    sget-object v6, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_LABEL_REFERENCE_CHAR:[C

    move-object/from16 v0, p3

    invoke-static {v6, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getCharWidth([CLandroid/graphics/Paint;)F

    move-result v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    sub-float v20, v4, v6

    .line 670
    .restart local v20       #hintX:F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    neg-float v0, v4

    move/from16 v21, v0

    .line 671
    .restart local v21       #hintY:F
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_5

    .line 674
    .end local v20           #hintX:F
    .end local v21           #hintY:F
    :cond_19
    move/from16 v0, v43

    int-to-float v4, v0

    move-object/from16 v0, p4

    iget v6, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyHintLetterPadding:F

    sub-float/2addr v4, v6

    sget-object v6, Lcom/android/inputmethod/keyboard/KeyboardView;->KEY_NUMERIC_HINT_LABEL_REFERENCE_CHAR:[C

    move-object/from16 v0, p3

    invoke-static {v6, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getCharWidth([CLandroid/graphics/Paint;)F

    move-result v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    sub-float v20, v4, v6

    .line 676
    .restart local v20       #hintX:F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    neg-float v0, v4

    move/from16 v21, v0

    .line 677
    .restart local v21       #hintY:F
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_5

    .line 697
    .end local v17           #hint:Ljava/lang/CharSequence;
    .end local v20           #hintX:F
    .end local v21           #hintY:F
    .end local v40           #hintColor:I
    .end local v41           #hintSize:I
    .restart local v13       #iconY:I
    .restart local v14       #iconWidth:I
    .restart local v15       #iconHeight:I
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Key;->isAlignRight()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 698
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelHorizontalPadding:F

    float-to-int v4, v4

    sub-int v4, v43, v4

    sub-int v12, v4, v14

    .line 699
    .restart local v12       #iconX:I
    add-int v29, v12, v14

    .restart local v29       #alignX:I
    goto/16 :goto_6

    .line 701
    .end local v12           #iconX:I
    .end local v29           #alignX:I
    :cond_1b
    sub-int v4, v43, v14

    div-int/lit8 v12, v4, 0x2

    .line 702
    .restart local v12       #iconX:I
    div-int/lit8 v4, v14, 0x2

    add-int v29, v12, v4

    .restart local v29       #alignX:I
    goto/16 :goto_6
.end method

.method private showKey(ILcom/android/inputmethod/keyboard/PointerTracker;)V
    .locals 16
    .parameter "keyIndex"
    .parameter "tracker"

    .prologue
    .line 862
    invoke-virtual/range {p2 .. p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKeyPreviewText()Landroid/widget/TextView;

    move-result-object v8

    .line 865
    .local v8, previewText:Landroid/widget/TextView;
    invoke-virtual {v8}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    if-nez v12, :cond_0

    .line 866
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/inputmethod/keyboard/KeyboardView;->addKeyPreview(Landroid/widget/TextView;)V

    .line 869
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDrawingHandler:Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->cancelDismissKeyPreview(Lcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 870
    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v2

    .line 874
    .local v2, key:Lcom/android/inputmethod/keyboard/Key;
    if-nez v2, :cond_1

    .line 924
    :goto_0
    return-void

    .line 877
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPreviewDrawParams:Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;

    .line 878
    .local v5, params:Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;
    iget v12, v2, Lcom/android/inputmethod/keyboard/Key;->mX:I

    iget v13, v2, Lcom/android/inputmethod/keyboard/Key;->mVisualInsetsLeft:I

    add-int v4, v12, v13

    .line 879
    .local v4, keyDrawX:I
    iget v12, v2, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    iget v13, v2, Lcom/android/inputmethod/keyboard/Key;->mVisualInsetsLeft:I

    sub-int/2addr v12, v13

    iget v13, v2, Lcom/android/inputmethod/keyboard/Key;->mVisualInsetsRight:I

    sub-int v3, v12, v13

    .line 881
    .local v3, keyDrawWidth:I
    iget-object v12, v2, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    if-eqz v12, :cond_4

    .line 883
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 884
    iget-object v12, v2, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_3

    .line 885
    const/4 v12, 0x0

    iget v13, v5, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mKeyLetterSize:I

    int-to-float v13, v13

    invoke-virtual {v8, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 886
    sget-object v12, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 891
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    iget-object v13, v2, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v12, v13}, Lcom/android/inputmethod/keyboard/Keyboard;->adjustLabelCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 898
    :goto_2
    iget-object v12, v5, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 900
    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-virtual {v8, v12, v13}, Landroid/widget/TextView;->measure(II)V

    .line 902
    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v12

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v13

    add-int/2addr v13, v3

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 904
    .local v9, previewWidth:I
    iget v6, v5, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewHeight:I

    .line 905
    .local v6, previewHeight:I
    iget-object v12, v5, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mCoordinates:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/inputmethod/keyboard/KeyboardView;->getLocationInWindow([I)V

    .line 906
    sub-int v12, v9, v3

    div-int/lit8 v12, v12, 0x2

    sub-int v12, v4, v12

    iget-object v13, v5, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mCoordinates:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int v10, v12, v13

    .line 907
    .local v10, previewX:I
    iget v12, v2, Lcom/android/inputmethod/keyboard/Key;->mY:I

    sub-int/2addr v12, v6

    iget-object v13, v5, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mCoordinates:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    iget v13, v5, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewOffset:I

    add-int v11, v12, v13

    .line 909
    .local v11, previewY:I
    if-gez v10, :cond_6

    iget-object v12, v5, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewLeftBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_6

    .line 910
    iget-object v12, v5, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewLeftBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 911
    const/4 v10, 0x0

    .line 918
    :cond_2
    :goto_3
    invoke-virtual {v8}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    iget-object v12, v2, Lcom/android/inputmethod/keyboard/Key;->mMoreKeys:[Ljava/lang/CharSequence;

    if-eqz v12, :cond_7

    sget-object v12, Lcom/android/inputmethod/keyboard/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    :goto_4
    invoke-virtual {v13, v12}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 920
    iget v12, v5, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewTextColor:I

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 921
    invoke-static {v8, v10, v11, v9, v6}, Lcom/android/inputmethod/compat/FrameLayoutCompatUtils;->placeViewAt(Landroid/view/View;IIII)V

    .line 923
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 888
    .end local v6           #previewHeight:I
    .end local v9           #previewWidth:I
    .end local v10           #previewX:I
    .end local v11           #previewY:I
    :cond_3
    const/4 v12, 0x0

    iget v13, v5, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewTextSize:I

    int-to-float v13, v13

    invoke-virtual {v8, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 889
    iget-object v12, v5, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mKeyTextStyle:Landroid/graphics/Typeface;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 893
    :cond_4
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/Key;->getPreviewIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 894
    .local v7, previewIcon:Landroid/graphics/drawable/Drawable;
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v7, :cond_5

    .end local v7           #previewIcon:Landroid/graphics/drawable/Drawable;
    :goto_5
    invoke-virtual {v8, v12, v13, v14, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 896
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 894
    .restart local v7       #previewIcon:Landroid/graphics/drawable/Drawable;
    :cond_5
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_5

    .line 912
    .end local v7           #previewIcon:Landroid/graphics/drawable/Drawable;
    .restart local v6       #previewHeight:I
    .restart local v9       #previewWidth:I
    .restart local v10       #previewX:I
    .restart local v11       #previewY:I
    :cond_6
    add-int v12, v10, v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getWidth()I

    move-result v13

    if-le v12, v13, :cond_2

    iget-object v12, v5, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewRightBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_2

    .line 913
    iget-object v12, v5, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->mPreviewRightBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 914
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getWidth()I

    move-result v12

    sub-int v10, v12, v9

    goto :goto_3

    .line 918
    :cond_7
    sget-object v12, Lcom/android/inputmethod/keyboard/KeyboardView;->EMPTY_STATE_SET:[I

    goto :goto_4
.end method


# virtual methods
.method public cancelAllMessages()V
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDrawingHandler:Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->cancelAllMessages()V

    .line 819
    return-void
.end method

.method public cancelShowKeyPreview(Lcom/android/inputmethod/keyboard/PointerTracker;)V
    .locals 1
    .parameter "tracker"

    .prologue
    .line 841
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDrawingHandler:Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->cancelShowKeyPreview(Lcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 842
    return-void
.end method

.method public closing()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 959
    invoke-static {}, Lcom/android/inputmethod/keyboard/PointerTracker;->dismissAllKeyPreviews()V

    .line 960
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->cancelAllMessages()V

    .line 962
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 963
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->requestLayout()V

    .line 964
    return-void
.end method

.method public dimEntireKeyboard(Z)V
    .locals 2
    .parameter "dimmed"

    .prologue
    .line 511
    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mNeedsToDimBackground:Z

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 512
    .local v0, needsRedrawing:Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mNeedsToDimBackground:Z

    .line 513
    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->invalidateAllKeys()V

    .line 516
    :cond_0
    return-void

    .line 511
    .end local v0           #needsRedrawing:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dismissKeyPreview(Lcom/android/inputmethod/keyboard/PointerTracker;)V
    .locals 3
    .parameter "tracker"

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDrawingHandler:Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->cancelShowKeyPreview(Lcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 847
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDrawingHandler:Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDelayAfterPreview:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->dismissKeyPreview(JLcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 848
    return-void
.end method

.method public dismissMoreKeysPanel()Z
    .locals 1

    .prologue
    .line 968
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultLabelWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)F
    .locals 1
    .parameter "label"
    .parameter "paint"

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyLabelSize:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 780
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->mKeyTextStyle:Landroid/graphics/Typeface;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 781
    invoke-static {p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardView;->getLabelWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)F

    move-result v0

    return v0
.end method

.method public getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    return-object v0
.end method

.method public inflateKeyPreviewText()Landroid/widget/TextView;
    .locals 4

    .prologue
    .line 824
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 825
    .local v0, context:Landroid/content/Context;
    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPreviewLayoutId:I

    if-eqz v1, :cond_0

    .line 826
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPreviewLayoutId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 828
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public invalidateAllKeys()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 933
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 934
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBufferNeedsUpdate:Z

    .line 935
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->invalidate()V

    .line 936
    return-void
.end method

.method public invalidateKey(Lcom/android/inputmethod/keyboard/Key;)V
    .locals 5
    .parameter "key"

    .prologue
    .line 947
    if-nez p1, :cond_0

    .line 956
    :goto_0
    return-void

    .line 949
    :cond_0
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKey:Lcom/android/inputmethod/keyboard/Key;

    .line 950
    iget v2, p1, Lcom/android/inputmethod/keyboard/Key;->mX:I

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPaddingLeft()I

    move-result v3

    add-int v0, v2, v3

    .line 951
    .local v0, x:I
    iget v2, p1, Lcom/android/inputmethod/keyboard/Key;->mY:I

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPaddingTop()I

    move-result v3

    add-int v1, v2, v3

    .line 952
    .local v1, y:I
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKeyRect:Landroid/graphics/Rect;

    iget v3, p1, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    add-int/2addr v3, v0

    iget v4, p1, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 953
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKeyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 954
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBufferNeedsUpdate:Z

    .line 955
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mInvalidatedKeyRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/keyboard/KeyboardView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public isKeyPreviewPopupEnabled()Z
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mShowKeyPreviewPopup:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 978
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 979
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->closing()V

    .line 980
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPlacer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mPreviewPlacer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 984
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 985
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 987
    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 448
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 449
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBufferNeedsUpdate:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 450
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBufferNeedsUpdate:Z

    .line 451
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->onBufferDraw()V

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 454
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 437
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    if-eqz v1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    iget v1, v1, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedHeight:I

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getPaddingBottom()I

    move-result v2

    add-int v0, v1, v2

    .line 440
    .local v0, height:I
    invoke-virtual {p0, p1, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->setMeasuredDimension(II)V

    .line 444
    .end local v0           #height:I
    :goto_0
    return-void

    .line 442
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_0
.end method

.method public setKeyPreviewPopupEnabled(ZI)V
    .locals 0
    .parameter "previewEnabled"
    .parameter "delay"

    .prologue
    .line 422
    iput-boolean p1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mShowKeyPreviewPopup:Z

    .line 423
    iput p2, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDelayAfterPreview:I

    .line 424
    return-void
.end method

.method public setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V
    .locals 5
    .parameter "keyboard"

    .prologue
    const/4 v4, 0x0

    .line 390
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDrawingHandler:Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->cancelAllShowKeyPreviews()V

    .line 391
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    if-eqz v1, :cond_0

    .line 392
    invoke-static {}, Lcom/android/inputmethod/keyboard/PointerTracker;->dismissAllKeyPreviews()V

    .line 394
    :cond_0
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    .line 395
    invoke-static {p1}, Lcom/android/inputmethod/latin/LatinImeLogger;->onSetKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 396
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->requestLayout()V

    .line 397
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 398
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mBufferNeedsUpdate:Z

    .line 399
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->invalidateAllKeys()V

    .line 400
    iget v1, p1, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyHeight:I

    iget v2, p1, Lcom/android/inputmethod/keyboard/Keyboard;->mVerticalGap:I

    sub-int v0, v1, v2

    .line 401
    .local v0, keyHeight:I
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyDrawParams:Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/keyboard/KeyboardView$KeyDrawParams;->updateKeyHeight(I)V

    .line 402
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mKeyPreviewDrawParams:Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/keyboard/KeyboardView$KeyPreviewDrawParams;->updateKeyHeight(I)V

    .line 403
    return-void
.end method

.method public showKeyPreview(ILcom/android/inputmethod/keyboard/PointerTracker;)V
    .locals 3
    .parameter "keyIndex"
    .parameter "tracker"

    .prologue
    .line 834
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mShowKeyPreviewPopup:Z

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDrawingHandler:Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardView;->mDelayBeforePreview:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->showKeyPreview(JILcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 837
    :cond_0
    return-void
.end method
