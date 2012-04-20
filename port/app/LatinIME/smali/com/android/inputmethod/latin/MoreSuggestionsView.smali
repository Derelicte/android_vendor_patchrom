.class public Lcom/android/inputmethod/latin/MoreSuggestionsView;
.super Lcom/android/inputmethod/keyboard/KeyboardView;
.source "MoreSuggestionsView.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/MoreKeysPanel;


# static fields
.field private static final EMPTY_TIMER_PROXY:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;


# instance fields
.field private mController:Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;

.field private final mCoordinates:[I

.field private mIsDismissing:Z

.field private mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

.field private final mModalPanelKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

.field private final mModalPanelKeyEventHandler:Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;

.field private mOriginX:I

.field private mOriginY:I

.field private final mSlidingPanelKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

.field private final mSuggestionsPaneListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy$Adapter;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy$Adapter;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->EMPTY_TIMER_PROXY:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 82
    const v0, 0x7f010008

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/MoreSuggestionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mCoordinates:[I

    .line 55
    new-instance v1, Lcom/android/inputmethod/latin/MoreSuggestionsView$1;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/latin/MoreSuggestionsView$1;-><init>(Lcom/android/inputmethod/latin/MoreSuggestionsView;)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mSuggestionsPaneListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    .line 203
    new-instance v1, Lcom/android/inputmethod/latin/MoreSuggestionsView$2;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/latin/MoreSuggestionsView$2;-><init>(Lcom/android/inputmethod/latin/MoreSuggestionsView;)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mModalPanelKeyEventHandler:Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 89
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Lcom/android/inputmethod/keyboard/KeyDetector;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/inputmethod/keyboard/KeyDetector;-><init>(F)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mModalPanelKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    .line 90
    new-instance v1, Lcom/android/inputmethod/keyboard/MoreKeysDetector;

    const v2, 0x7f0a0017

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/inputmethod/keyboard/MoreKeysDetector;-><init>(F)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mSlidingPanelKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    .line 92
    invoke-virtual {p0, v3, v3}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->setKeyPreviewPopupEnabled(ZI)V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/latin/MoreSuggestionsView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/inputmethod/latin/MoreSuggestionsView;)Lcom/android/inputmethod/keyboard/KeyDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mModalPanelKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/inputmethod/latin/MoreSuggestionsView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mSuggestionsPaneListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    return-object v0
.end method

.method static synthetic access$300()Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->EMPTY_TIMER_PROXY:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    return-object v0
.end method

.method private static wrapUp(IIII)I
    .locals 1
    .parameter "x"
    .parameter "width"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 175
    if-ge p0, p2, :cond_0

    .line 179
    .end local p2
    :goto_0
    return p2

    .line 177
    .restart local p2
    :cond_0
    add-int v0, p0, p1

    if-le v0, p3, :cond_1

    .line 178
    sub-int p2, p3, p1

    goto :goto_0

    :cond_1
    move p2, p0

    .line 179
    goto :goto_0
.end method


# virtual methods
.method public dismissMoreKeysPanel()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 186
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mIsDismissing:Z

    if-eqz v2, :cond_0

    move v0, v1

    .line 190
    :goto_0
    return v0

    .line 187
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mIsDismissing:Z

    .line 188
    iget-object v2, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mController:Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;

    invoke-interface {v2}, Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;->dismissMoreKeysPanel()Z

    move-result v0

    .line 189
    .local v0, dismissed:Z
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mIsDismissing:Z

    goto :goto_0
.end method

.method public getDrawingProxy()Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;
    .locals 0

    .prologue
    .line 127
    return-object p0
.end method

.method public getKeyDetector()Lcom/android/inputmethod/keyboard/KeyDetector;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mSlidingPanelKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    return-object v0
.end method

.method public getKeyboardActionListener()Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mSuggestionsPaneListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    return-object v0
.end method

.method public getTimerProxy()Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->EMPTY_TIMER_PROXY:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v1

    .line 98
    .local v1, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    if-eqz v1, :cond_0

    .line 99
    iget v3, v1, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedWidth:I

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->getPaddingRight()I

    move-result v4

    add-int v2, v3, v4

    .line 100
    .local v2, width:I
    iget v3, v1, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedHeight:I

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->getPaddingBottom()I

    move-result v4

    add-int v0, v3, v4

    .line 101
    .local v0, height:I
    invoke-virtual {p0, v2, v0}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->setMeasuredDimension(II)V

    .line 105
    .end local v0           #height:I
    .end local v2           #width:I
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardView;->onMeasure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "me"

    .prologue
    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 228
    .local v1, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 229
    .local v4, eventTime:J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    .line 230
    .local v8, index:I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 231
    .local v7, id:I
    invoke-static {v7, p0}, Lcom/android/inputmethod/keyboard/PointerTracker;->getPointerTracker(ILcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v0

    .line 232
    .local v0, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v2, v6

    .line 233
    .local v2, x:I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v3, v6

    .line 234
    .local v3, y:I
    iget-object v6, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mModalPanelKeyEventHandler:Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;

    invoke-virtual/range {v0 .. v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->processMotionEvent(IIIJLcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    .line 235
    const/4 v6, 0x1

    return v6
.end method

.method public setKeyPreviewPopupEnabled(ZI)V
    .locals 1
    .parameter "previewEnabled"
    .parameter "delay"

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-super {p0, v0, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->setKeyPreviewPopupEnabled(ZI)V

    .line 140
    return-void
.end method

.method public setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V
    .locals 4
    .parameter "keyboard"

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 110
    iget-object v0, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mModalPanelKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->getPaddingLeft()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->getPaddingTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/inputmethod/keyboard/KeyDetector;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;FF)V

    .line 111
    iget-object v0, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mSlidingPanelKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->getPaddingLeft()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->getPaddingTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mVerticalCorrection:F

    add-float/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/inputmethod/keyboard/KeyDetector;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;FF)V

    .line 113
    return-void
.end method

.method public setShifted(Z)V
    .locals 0
    .parameter "shifted"

    .prologue
    .line 145
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
    .line 150
    iput-object p2, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mController:Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;

    .line 151
    iput-object p6, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    .line 152
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 153
    .local v0, container:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/MoreSuggestions;

    .line 155
    .local v1, pane:Lcom/android/inputmethod/latin/MoreSuggestions;
    iget-object v5, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mCoordinates:[I

    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 156
    iget v5, v1, Lcom/android/inputmethod/latin/MoreSuggestions;->mOccupiedWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int v5, p3, v5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    add-int v2, v5, v6

    .line 157
    .local v2, paneLeft:I
    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, v1, Lcom/android/inputmethod/latin/MoreSuggestions;->mOccupiedWidth:I

    sub-int/2addr v6, v7

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mCoordinates:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->wrapUp(IIII)I

    move-result v3

    .line 161
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

    iget-object v6, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mCoordinates:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int v4, v5, v6

    .line 165
    .local v4, y:I
    invoke-virtual {p5, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 166
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p5, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 167
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p5, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 168
    const/4 v5, 0x0

    invoke-virtual {p5, p1, v5, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 170
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mCoordinates:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mOriginX:I

    .line 171
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v4

    iget-object v6, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mCoordinates:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mOriginY:I

    .line 172
    return-void
.end method

.method public translateX(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 195
    iget v0, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mOriginX:I

    sub-int v0, p1, v0

    return v0
.end method

.method public translateY(I)I
    .locals 1
    .parameter "y"

    .prologue
    .line 200
    iget v0, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mOriginY:I

    sub-int v0, p1, v0

    return v0
.end method
