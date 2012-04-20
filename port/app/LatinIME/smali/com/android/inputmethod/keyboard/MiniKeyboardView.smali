.class public Lcom/android/inputmethod/keyboard/MiniKeyboardView;
.super Lcom/android/inputmethod/keyboard/KeyboardView;
.source "MiniKeyboardView.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/MoreKeysPanel;


# static fields
.field private static final EMPTY_TIMER_PROXY:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;


# instance fields
.field private mController:Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;

.field private final mCoordinates:[I

.field private mIsDismissing:Z

.field private final mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

.field private mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

.field private final mMiniKeyboardListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

.field private mOriginX:I

.field private mOriginY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy$Adapter;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy$Adapter;-><init>()V

    sput-object v0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->EMPTY_TIMER_PROXY:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 74
    const v0, 0x7f010004

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mCoordinates:[I

    .line 46
    new-instance v1, Lcom/android/inputmethod/keyboard/MiniKeyboardView$1;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/keyboard/MiniKeyboardView$1;-><init>(Lcom/android/inputmethod/keyboard/MiniKeyboardView;)V

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mMiniKeyboardListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 81
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Lcom/android/inputmethod/keyboard/MoreKeysDetector;

    const v2, 0x7f0a0007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/inputmethod/keyboard/MoreKeysDetector;-><init>(F)V

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    .line 83
    invoke-virtual {p0, v3, v3}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->setKeyPreviewPopupEnabled(ZI)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/keyboard/MiniKeyboardView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    return-object v0
.end method

.method private static wrapUp(IIII)I
    .locals 1
    .parameter "x"
    .parameter "width"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 169
    if-ge p0, p2, :cond_0

    .line 173
    .end local p2
    :goto_0
    return p2

    .line 171
    .restart local p2
    :cond_0
    add-int v0, p0, p1

    if-le v0, p3, :cond_1

    .line 172
    sub-int p2, p3, p1

    goto :goto_0

    :cond_1
    move p2, p0

    .line 173
    goto :goto_0
.end method


# virtual methods
.method public dismissMoreKeysPanel()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 180
    iget-boolean v2, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mIsDismissing:Z

    if-eqz v2, :cond_0

    move v0, v1

    .line 184
    :goto_0
    return v0

    .line 181
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mIsDismissing:Z

    .line 182
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mController:Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;

    invoke-interface {v2}, Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;->dismissMoreKeysPanel()Z

    move-result v0

    .line 183
    .local v0, dismissed:Z
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mIsDismissing:Z

    goto :goto_0
.end method

.method public getDrawingProxy()Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;
    .locals 0

    .prologue
    .line 117
    return-object p0
.end method

.method public getKeyDetector()Lcom/android/inputmethod/keyboard/KeyDetector;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    return-object v0
.end method

.method public getKeyboardActionListener()Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mMiniKeyboardListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    return-object v0
.end method

.method public getTimerProxy()Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->EMPTY_TIMER_PROXY:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v1

    .line 89
    .local v1, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    if-eqz v1, :cond_0

    .line 90
    iget v3, v1, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedWidth:I

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->getPaddingRight()I

    move-result v4

    add-int v2, v3, v4

    .line 91
    .local v2, width:I
    iget v3, v1, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedHeight:I

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->getPaddingBottom()I

    move-result v4

    add-int v0, v3, v4

    .line 92
    .local v0, height:I
    invoke-virtual {p0, v2, v0}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->setMeasuredDimension(II)V

    .line 96
    .end local v0           #height:I
    .end local v2           #width:I
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardView;->onMeasure(II)V

    goto :goto_0
.end method

.method public setKeyPreviewPopupEnabled(ZI)V
    .locals 1
    .parameter "previewEnabled"
    .parameter "delay"

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-super {p0, v0, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->setKeyPreviewPopupEnabled(ZI)V

    .line 130
    return-void
.end method

.method public setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V
    .locals 4
    .parameter "keyboard"

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 101
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->getPaddingLeft()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->getPaddingTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mVerticalCorrection:F

    add-float/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/inputmethod/keyboard/KeyDetector;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;FF)V

    .line 103
    return-void
.end method

.method public setShifted(Z)V
    .locals 2
    .parameter "shifted"

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v0

    .line 135
    .local v0, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/Keyboard;->setShifted(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->invalidateAllKeys()V

    .line 138
    :cond_0
    return-void
.end method

.method public showMoreKeysPanel(Landroid/view/View;Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;IILandroid/widget/PopupWindow;Lcom/android/inputmethod/keyboard/KeyboardActionListener;)V
    .locals 9
    .parameter "parentView"
    .parameter "controller"
    .parameter "pointX"
    .parameter "pointY"
    .parameter "window"
    .parameter "listener"

    .prologue
    .line 143
    iput-object p2, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mController:Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;

    .line 144
    iput-object p6, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    .line 145
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 146
    .local v0, container:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/keyboard/MiniKeyboard;

    .line 148
    .local v1, miniKeyboard:Lcom/android/inputmethod/keyboard/MiniKeyboard;
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mCoordinates:[I

    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 149
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/MiniKeyboard;->getDefaultCoordX()I

    move-result v5

    sub-int v5, p3, v5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    add-int v2, v5, v6

    .line 151
    .local v2, miniKeyboardLeft:I
    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, v1, Lcom/android/inputmethod/keyboard/MiniKeyboard;->mOccupiedWidth:I

    sub-int/2addr v6, v7

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mCoordinates:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->wrapUp(IIII)I

    move-result v3

    .line 155
    .local v3, x:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int v5, p4, v5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mCoordinates:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int v4, v5, v6

    .line 159
    .local v4, y:I
    invoke-virtual {p5, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 160
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p5, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 161
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p5, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 162
    const/4 v5, 0x0

    invoke-virtual {p5, p1, v5, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 164
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mCoordinates:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mOriginX:I

    .line 165
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v4

    iget-object v6, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mCoordinates:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mOriginY:I

    .line 166
    return-void
.end method

.method public translateX(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 189
    iget v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mOriginX:I

    sub-int v0, p1, v0

    return v0
.end method

.method public translateY(I)I
    .locals 1
    .parameter "y"

    .prologue
    .line 194
    iget v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mOriginY:I

    sub-int v0, p1, v0

    return v0
.end method
