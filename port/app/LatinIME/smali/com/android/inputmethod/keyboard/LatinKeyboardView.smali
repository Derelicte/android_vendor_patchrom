.class public Lcom/android/inputmethod/keyboard/LatinKeyboardView;
.super Lcom/android/inputmethod/keyboard/KeyboardView;
.source "LatinKeyboardView.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;
.implements Lcom/android/inputmethod/keyboard/SuddenJumpingTouchEventHandler$ProcessMotionEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/LatinKeyboardView$1;,
        Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;,
        Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mConfigShowMiniKeyboardAtTouchedPoint:Z

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field private final mHasDistinctMultitouch:Z

.field protected mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

.field private final mKeyRepeatInterval:I

.field private final mKeyTimerHandler:Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

.field private mKeyboardActionListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

.field private mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

.field private final mMoreKeysPanelCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            "Lcom/android/inputmethod/keyboard/MoreKeysPanel;",
            ">;"
        }
    .end annotation
.end field

.field private mMoreKeysPanelPointerTrackerId:I

.field private mMoreKeysWindow:Landroid/widget/PopupWindow;

.field private mOldKeyIndex:I

.field private mOldPointerCount:I

.field private final mTouchScreenRegulator:Lcom/android/inputmethod/keyboard/SuddenJumpingTouchEventHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 207
    const v0, 0x7f010002

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 211
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    new-instance v3, Ljava/util/WeakHashMap;

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanelCache:Ljava/util/WeakHashMap;

    .line 77
    iput v6, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mOldPointerCount:I

    .line 86
    new-instance v3, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

    invoke-direct {v3, p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;-><init>(Lcom/android/inputmethod/keyboard/LatinKeyboardView;)V

    iput-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyTimerHandler:Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

    .line 213
    new-instance v3, Lcom/android/inputmethod/keyboard/SuddenJumpingTouchEventHandler;

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/android/inputmethod/keyboard/SuddenJumpingTouchEventHandler;-><init>(Landroid/content/Context;Lcom/android/inputmethod/keyboard/SuddenJumpingTouchEventHandler$ProcessMotionEvent;)V

    iput-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mTouchScreenRegulator:Lcom/android/inputmethod/keyboard/SuddenJumpingTouchEventHandler;

    .line 215
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 216
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f080010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mConfigShowMiniKeyboardAtTouchedPoint:Z

    .line 218
    const v3, 0x7f0a001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 219
    .local v1, keyHysteresisDistance:F
    new-instance v3, Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-direct {v3, v1}, Lcom/android/inputmethod/keyboard/KeyDetector;-><init>(F)V

    iput-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    .line 221
    const/4 v0, 0x1

    .line 222
    .local v0, ignoreMultitouch:Z
    new-instance v3, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;

    invoke-direct {v5, p0, v7}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;-><init>(Lcom/android/inputmethod/keyboard/LatinKeyboardView;Lcom/android/inputmethod/keyboard/LatinKeyboardView$1;)V

    invoke-direct {v3, v4, v5, v7, v6}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 224
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 226
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mHasDistinctMultitouch:Z

    .line 228
    const v3, 0x7f09000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyRepeatInterval:I

    .line 230
    iget-boolean v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mHasDistinctMultitouch:Z

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/inputmethod/keyboard/PointerTracker;->init(ZLandroid/content/Context;)V

    .line 231
    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/keyboard/LatinKeyboardView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyRepeatInterval:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/inputmethod/keyboard/LatinKeyboardView;ILcom/android/inputmethod/keyboard/PointerTracker;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->openMiniKeyboardIfRequired(ILcom/android/inputmethod/keyboard/PointerTracker;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/inputmethod/keyboard/LatinKeyboardView;I)Lcom/android/inputmethod/keyboard/PointerTracker;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getPointerTracker(I)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/inputmethod/keyboard/LatinKeyboardView;)Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyTimerHandler:Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/inputmethod/keyboard/LatinKeyboardView;Lcom/android/inputmethod/keyboard/PointerTracker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->onDoubleTapShiftKey(Lcom/android/inputmethod/keyboard/PointerTracker;Z)V

    return-void
.end method

.method private getPointerTracker(I)Lcom/android/inputmethod/keyboard/PointerTracker;
    .locals 1
    .parameter "id"

    .prologue
    .line 473
    invoke-static {p1, p0}, Lcom/android/inputmethod/keyboard/PointerTracker;->getPointerTracker(ILcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v0

    return-object v0
.end method

.method private invokeCodeInput(I)V
    .locals 3
    .parameter "primaryCode"

    .prologue
    const/4 v2, -0x1

    .line 432
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboardActionListener()Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v2, v2}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onCodeInput(I[III)V

    .line 435
    return-void
.end method

.method private invokeCustomRequest(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboardActionListener()Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onCustomRequest(I)Z

    move-result v0

    return v0
.end method

.method private invokeReleaseKey(I)V
    .locals 2
    .parameter "primaryCode"

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboardActionListener()Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onRelease(IZ)V

    .line 439
    return-void
.end method

.method private onDoubleTapShiftKey(Lcom/android/inputmethod/keyboard/PointerTracker;Z)V
    .locals 1
    .parameter "tracker"
    .parameter "ignore"

    .prologue
    .line 352
    if-eqz p2, :cond_0

    const/16 v0, -0x62

    .line 354
    .local v0, primaryCode:I
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->invokeCodeInput(I)V

    .line 355
    return-void

    .line 352
    .end local v0           #primaryCode:I
    :cond_0
    const/4 v0, -0x3

    goto :goto_0
.end method

.method private openMiniKeyboardIfRequired(ILcom/android/inputmethod/keyboard/PointerTracker;)Z
    .locals 3
    .parameter "keyIndex"
    .parameter "tracker"

    .prologue
    const/4 v1, 0x0

    .line 334
    iget v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysLayout:I

    if-nez v2, :cond_1

    .line 344
    :cond_0
    :goto_0
    return v1

    .line 339
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    if-nez v2, :cond_0

    .line 341
    invoke-virtual {p2, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .line 342
    .local v0, parentKey:Lcom/android/inputmethod/keyboard/Key;
    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p0, v0, p2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->onLongPress(Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/PointerTracker;)Z

    move-result v1

    goto :goto_0
.end method

.method private openMoreKeysPanel(Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/PointerTracker;)Z
    .locals 13
    .parameter "parentKey"
    .parameter "tracker"

    .prologue
    const/4 v12, 0x1

    .line 442
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanelCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    .line 443
    .local v0, moreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;
    if-nez v0, :cond_1

    .line 444
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->onCreateMoreKeysPanel(Lcom/android/inputmethod/keyboard/Key;)Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    move-result-object v0

    .line 445
    if-nez v0, :cond_0

    .line 446
    const/4 v1, 0x0

    .line 469
    :goto_0
    return v1

    .line 447
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanelCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysWindow:Landroid/widget/PopupWindow;

    if-nez v1, :cond_2

    .line 450
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysWindow:Landroid/widget/PopupWindow;

    .line 451
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 452
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysWindow:Landroid/widget/PopupWindow;

    const v2, 0x7f0e0026

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 454
    :cond_2
    iput-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    .line 455
    iget v1, p2, Lcom/android/inputmethod/keyboard/PointerTracker;->mPointerId:I

    iput v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanelPointerTrackerId:I

    .line 457
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v11

    .line 458
    .local v11, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    invoke-virtual {v11}, Lcom/android/inputmethod/keyboard/Keyboard;->isShiftedOrShiftLocked()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/inputmethod/keyboard/MoreKeysPanel;->setShifted(Z)V

    .line 459
    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mConfigShowMiniKeyboardAtTouchedPoint:Z

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->getLastX()I

    move-result v3

    .line 461
    .local v3, pointX:I
    :goto_1
    iget v1, p1, Lcom/android/inputmethod/keyboard/Key;->mY:I

    iget v2, v11, Lcom/android/inputmethod/keyboard/Keyboard;->mVerticalGap:I

    sub-int v4, v1, v2

    .line 462
    .local v4, pointY:I
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboardActionListener()Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v6

    move-object v1, p0

    move-object v2, p0

    invoke-interface/range {v0 .. v6}, Lcom/android/inputmethod/keyboard/MoreKeysPanel;->showMoreKeysPanel(Landroid/view/View;Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;IILandroid/widget/PopupWindow;Lcom/android/inputmethod/keyboard/KeyboardActionListener;)V

    .line 464
    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->getLastX()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/inputmethod/keyboard/MoreKeysPanel;->translateX(I)I

    move-result v6

    .line 465
    .local v6, translatedX:I
    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->getLastY()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/inputmethod/keyboard/MoreKeysPanel;->translateY(I)I

    move-result v7

    .line 466
    .local v7, translatedY:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object v5, p2

    move-object v10, v0

    invoke-virtual/range {v5 .. v10}, Lcom/android/inputmethod/keyboard/PointerTracker;->onShowMoreKeysPanel(IIJLcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    .line 468
    invoke-virtual {p0, v12}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->dimEntireKeyboard(Z)V

    move v1, v12

    .line 469
    goto :goto_0

    .line 459
    .end local v3           #pointX:I
    .end local v4           #pointY:I
    .end local v6           #translatedX:I
    .end local v7           #translatedY:I
    :cond_3
    iget v1, p1, Lcom/android/inputmethod/keyboard/Key;->mX:I

    iget v2, p1, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int v3, v1, v2

    goto :goto_1
.end method


# virtual methods
.method public cancelAllMessages()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyTimerHandler:Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->cancelAllMessages()V

    .line 329
    invoke-super {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->cancelAllMessages()V

    .line 330
    return-void
.end method

.method public closing()V
    .locals 1

    .prologue
    .line 596
    invoke-super {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->closing()V

    .line 597
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->dismissMoreKeysPanel()Z

    .line 598
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanelCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 599
    return-void
.end method

.method public dismissMoreKeysPanel()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 603
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 604
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 605
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    .line 606
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanelPointerTrackerId:I

    .line 607
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->dimEntireKeyboard(Z)V

    .line 608
    const/4 v0, 0x1

    .line 610
    :cond_0
    return v0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 658
    invoke-static {}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->getInstance()Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 659
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getPointerTracker(I)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v0

    .line 660
    .local v0, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    invoke-static {}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->getInstance()Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->dispatchHoverEvent(Landroid/view/MotionEvent;Lcom/android/inputmethod/keyboard/PointerTracker;)Z

    move-result v1

    .line 664
    .end local v0           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_0
    return v1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 639
    invoke-static {}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->getInstance()Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 640
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getPointerTracker(I)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v0

    .line 641
    .local v0, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    invoke-static {}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->getInstance()Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Lcom/android/inputmethod/keyboard/PointerTracker;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-super {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 645
    .end local v0           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-super {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "c"

    .prologue
    .line 619
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$GCUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$GCUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/Utils$GCUtils;->reset()V

    .line 620
    const/4 v2, 0x1

    .line 621
    .local v2, tryGC:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    if-eqz v2, :cond_0

    .line 623
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    const/4 v2, 0x0

    .line 621
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 625
    :catch_0
    move-exception v0

    .line 626
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$GCUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$GCUtils;

    move-result-object v3

    const-string v4, "LatinKeyboardView"

    invoke-virtual {v3, v4, v0}, Lcom/android/inputmethod/latin/Utils$GCUtils;->tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v2

    goto :goto_1

    .line 629
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_0
    return-void
.end method

.method public getDrawingProxy()Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;
    .locals 0

    .prologue
    .line 259
    return-object p0
.end method

.method public getKeyDetector()Lcom/android/inputmethod/keyboard/KeyDetector;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    return-object v0
.end method

.method public getKeyboardActionListener()Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyboardActionListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    return-object v0
.end method

.method public getPointerCount()I
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mOldPointerCount:I

    return v0
.end method

.method public getTimerProxy()Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyTimerHandler:Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

    return-object v0
.end method

.method public handleBack()Z
    .locals 1

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->dismissMoreKeysPanel()Z

    move-result v0

    return v0
.end method

.method public hasDistinctMultitouch()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mHasDistinctMultitouch:Z

    return v0
.end method

.method public isInSlidingKeyInput()Z
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    if-eqz v0, :cond_0

    .line 478
    const/4 v0, 0x1

    .line 480
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/inputmethod/keyboard/PointerTracker;->isAnyInSlidingKeyInput()Z

    move-result v0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 634
    invoke-static {}, Lcom/android/inputmethod/deprecated/VoiceProxy;->getInstance()Lcom/android/inputmethod/deprecated/VoiceProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/VoiceProxy;->onAttachedToWindow()V

    .line 635
    return-void
.end method

.method protected onCreateMoreKeysPanel(Lcom/android/inputmethod/keyboard/Key;)Lcom/android/inputmethod/keyboard/MoreKeysPanel;
    .locals 7
    .parameter "parentKey"

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x2

    .line 359
    iget-object v4, p1, Lcom/android/inputmethod/keyboard/Key;->mMoreKeys:[Ljava/lang/CharSequence;

    if-nez v4, :cond_0

    .line 374
    :goto_0
    return-object v2

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget v5, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysLayout:I

    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 363
    .local v0, container:Landroid/view/View;
    if-nez v0, :cond_1

    .line 364
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 366
    :cond_1
    const v4, 0x7f07003b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/keyboard/MiniKeyboardView;

    .line 368
    .local v2, miniKeyboardView:Lcom/android/inputmethod/keyboard/MiniKeyboardView;
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v3

    .line 369
    .local v3, parentKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    new-instance v4, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;

    iget v5, v3, Lcom/android/inputmethod/keyboard/Keyboard;->mMoreKeysTemplate:I

    invoke-direct {v4, p0, v5, p1, v3}, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;-><init>(Lcom/android/inputmethod/keyboard/KeyboardView;ILcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/Keyboard;)V

    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->build()Lcom/android/inputmethod/keyboard/MiniKeyboard;

    move-result-object v1

    .line 371
    .local v1, miniKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    invoke-virtual {v2, v1}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 372
    invoke-virtual {v0, v6, v6}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onLongPress(Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/PointerTracker;)Z
    .locals 5
    .parameter "parentKey"
    .parameter "tracker"

    .prologue
    const/4 v3, 0x1

    .line 395
    iget v2, p1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    .line 396
    .local v2, primaryCode:I
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v0

    .line 397
    .local v0, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    instance-of v4, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    if-eqz v4, :cond_1

    move-object v1, v0

    .line 398
    check-cast v1, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    .line 399
    .local v1, latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    const/16 v4, 0x30

    if-ne v2, v4, :cond_0

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isPhoneKeyboard()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 400
    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->onLongPressed()V

    .line 402
    const/16 v4, 0x2b

    invoke-direct {p0, v4}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->invokeCodeInput(I)V

    .line 403
    invoke-direct {p0, v2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->invokeReleaseKey(I)V

    .line 423
    .end local v1           #latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    :goto_0
    return v3

    .line 406
    .restart local v1       #latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    :cond_0
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isAlphaKeyboard()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 407
    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->onLongPressed()V

    .line 408
    const/4 v4, -0x3

    invoke-direct {p0, v4}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->invokeCodeInput(I)V

    .line 409
    invoke-direct {p0, v2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->invokeReleaseKey(I)V

    goto :goto_0

    .line 413
    .end local v1           #latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    :cond_1
    const/4 v4, -0x6

    if-eq v2, v4, :cond_2

    const/16 v4, 0x20

    if-ne v2, v4, :cond_4

    .line 415
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->invokeCustomRequest(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 416
    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->onLongPressed()V

    .line 417
    invoke-direct {p0, v2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->invokeReleaseKey(I)V

    goto :goto_0

    .line 420
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->openMoreKeysPanel(Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/PointerTracker;)Z

    move-result v3

    goto :goto_0

    .line 423
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->openMoreKeysPanel(Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/PointerTracker;)Z

    move-result v3

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "me"

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v0

    if-nez v0, :cond_0

    .line 491
    const/4 v0, 0x0

    .line 493
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mTouchScreenRegulator:Lcom/android/inputmethod/keyboard/SuddenJumpingTouchEventHandler;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public processMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .parameter "me"

    .prologue
    .line 498
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mHasDistinctMultitouch:Z

    if-nez v7, :cond_0

    const/16 v20, 0x1

    .line 499
    .local v20, nonDistinctMultitouch:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 500
    .local v8, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v22

    .line 501
    .local v22, pointerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mOldPointerCount:I

    move/from16 v21, v0

    .line 502
    .local v21, oldPointerCount:I
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mOldPointerCount:I

    .line 507
    if-eqz v20, :cond_1

    const/4 v7, 0x1

    move/from16 v0, v22

    if-le v0, v7, :cond_1

    const/4 v7, 0x1

    move/from16 v0, v21

    if-le v0, v7, :cond_1

    .line 508
    const/4 v7, 0x1

    .line 591
    :goto_1
    return v7

    .line 498
    .end local v8           #action:I
    .end local v20           #nonDistinctMultitouch:Z
    .end local v21           #oldPointerCount:I
    .end local v22           #pointerCount:I
    :cond_0
    const/16 v20, 0x0

    goto :goto_0

    .line 512
    .restart local v8       #action:I
    .restart local v20       #nonDistinctMultitouch:Z
    .restart local v21       #oldPointerCount:I
    .restart local v22       #pointerCount:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    if-nez v7, :cond_2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 514
    invoke-static {}, Lcom/android/inputmethod/keyboard/PointerTracker;->dismissAllKeyPreviews()V

    .line 515
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyTimerHandler:Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

    invoke-virtual {v7}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->cancelKeyTimers()V

    .line 516
    const/4 v7, 0x1

    goto :goto_1

    .line 519
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    .line 520
    .local v5, eventTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v16

    .line 521
    .local v16, index:I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .line 523
    .local v15, id:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanelPointerTrackerId:I

    if-ne v15, v7, :cond_5

    .line 524
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v9, v9

    invoke-interface {v7, v9}, Lcom/android/inputmethod/keyboard/MoreKeysPanel;->translateX(I)I

    move-result v3

    .line 525
    .local v3, x:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v9, v9

    invoke-interface {v7, v9}, Lcom/android/inputmethod/keyboard/MoreKeysPanel;->translateY(I)I

    move-result v4

    .line 531
    .local v4, y:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyTimerHandler:Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

    invoke-virtual {v7}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->isInKeyRepeat()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 532
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getPointerTracker(I)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v2

    .line 535
    .local v2, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    const/4 v7, 0x1

    move/from16 v0, v22

    if-le v0, v7, :cond_3

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->isModifier()Z

    move-result v7

    if-nez v7, :cond_3

    .line 536
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyTimerHandler:Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

    invoke-virtual {v7}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->cancelKeyRepeatTimer()V

    .line 544
    .end local v2           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_3
    if-eqz v20, :cond_9

    .line 546
    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getPointerTracker(I)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v2

    .line 547
    .restart local v2       #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    const/4 v7, 0x1

    move/from16 v0, v22

    if-ne v0, v7, :cond_6

    const/4 v7, 0x2

    move/from16 v0, v21

    if-ne v0, v7, :cond_6

    .line 551
    invoke-virtual {v2, v3, v4}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKeyIndexOn(II)I

    move-result v19

    .line 552
    .local v19, newKeyIndex:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mOldKeyIndex:I

    move/from16 v0, v19

    if-eq v7, v0, :cond_4

    move-object/from16 v7, p0

    .line 553
    invoke-virtual/range {v2 .. v7}, Lcom/android/inputmethod/keyboard/PointerTracker;->onDownEvent(IIJLcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    .line 554
    const/4 v7, 0x1

    if-ne v8, v7, :cond_4

    .line 555
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->onUpEvent(IIJ)V

    .line 570
    .end local v19           #newKeyIndex:I
    :cond_4
    :goto_3
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 527
    .end local v2           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_5
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v3, v7

    .line 528
    .restart local v3       #x:I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v4, v7

    .restart local v4       #y:I
    goto :goto_2

    .line 557
    .restart local v2       #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_6
    const/4 v7, 0x2

    move/from16 v0, v22

    if-ne v0, v7, :cond_7

    const/4 v7, 0x1

    move/from16 v0, v21

    if-ne v0, v7, :cond_7

    .line 560
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->getLastX()I

    move-result v17

    .line 561
    .local v17, lastX:I
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->getLastY()I

    move-result v18

    .line 562
    .local v18, lastY:I
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKeyIndexOn(II)I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mOldKeyIndex:I

    .line 563
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1, v5, v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->onUpEvent(IIJ)V

    goto :goto_3

    .line 564
    .end local v17           #lastX:I
    .end local v18           #lastY:I
    :cond_7
    const/4 v7, 0x1

    move/from16 v0, v22

    if-ne v0, v7, :cond_8

    const/4 v7, 0x1

    move/from16 v0, v21

    if-ne v0, v7, :cond_8

    move-object v7, v2

    move v9, v3

    move v10, v4

    move-wide v11, v5

    move-object/from16 v13, p0

    .line 565
    invoke-virtual/range {v7 .. v13}, Lcom/android/inputmethod/keyboard/PointerTracker;->processMotionEvent(IIIJLcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    goto :goto_3

    .line 567
    :cond_8
    sget-object v7, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown touch panel behavior: pointer count is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (old "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 573
    .end local v2           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_9
    const/4 v7, 0x2

    if-ne v8, v7, :cond_b

    .line 574
    const/4 v14, 0x0

    .local v14, i:I
    :goto_4
    move/from16 v0, v22

    if-ge v14, v0, :cond_c

    .line 575
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getPointerTracker(I)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v2

    .line 577
    .restart local v2       #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    if-eqz v7, :cond_a

    iget v7, v2, Lcom/android/inputmethod/keyboard/PointerTracker;->mPointerId:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanelPointerTrackerId:I

    if-ne v7, v9, :cond_a

    .line 579
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v9, v9

    invoke-interface {v7, v9}, Lcom/android/inputmethod/keyboard/MoreKeysPanel;->translateX(I)I

    move-result v23

    .line 580
    .local v23, px:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v9, v9

    invoke-interface {v7, v9}, Lcom/android/inputmethod/keyboard/MoreKeysPanel;->translateY(I)I

    move-result v24

    .line 585
    .local v24, py:I
    :goto_5
    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v2, v0, v1, v5, v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveEvent(IIJ)V

    .line 574
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 582
    .end local v23           #px:I
    .end local v24           #py:I
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v0, v7

    move/from16 v23, v0

    .line 583
    .restart local v23       #px:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v0, v7

    move/from16 v24, v0

    .restart local v24       #py:I
    goto :goto_5

    .line 588
    .end local v2           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    .end local v14           #i:I
    .end local v23           #px:I
    .end local v24           #py:I
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getPointerTracker(I)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v7

    move v9, v3

    move v10, v4

    move-wide v11, v5

    move-object/from16 v13, p0

    invoke-virtual/range {v7 .. v13}, Lcom/android/inputmethod/keyboard/PointerTracker;->processMotionEvent(IIIJLcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    .line 591
    :cond_c
    const/4 v7, 0x1

    goto/16 :goto_1
.end method

.method public setKeyPreviewPopupEnabled(ZI)V
    .locals 3
    .parameter "previewEnabled"
    .parameter "delay"

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v0

    .line 270
    .local v0, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    instance-of v2, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 271
    check-cast v1, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    .line 272
    .local v1, latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isPhoneKeyboard()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isNumberKeyboard()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    :cond_0
    const/4 v2, 0x0

    invoke-super {p0, v2, p2}, Lcom/android/inputmethod/keyboard/KeyboardView;->setKeyPreviewPopupEnabled(ZI)V

    .line 279
    .end local v1           #latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    :goto_0
    return-void

    .line 278
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardView;->setKeyPreviewPopupEnabled(ZI)V

    goto :goto_0
.end method

.method public setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V
    .locals 4
    .parameter "keyboard"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyTimerHandler:Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->cancelKeyTimers()V

    .line 292
    invoke-super {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 293
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getPaddingLeft()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getPaddingTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mVerticalCorrection:F

    add-float/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/inputmethod/keyboard/KeyDetector;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;FF)V

    .line 295
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    iget v1, p1, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyWidth:I

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/KeyDetector;->setProximityThreshold(I)V

    .line 296
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-static {v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->setKeyDetector(Lcom/android/inputmethod/keyboard/KeyDetector;)V

    .line 297
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mTouchScreenRegulator:Lcom/android/inputmethod/keyboard/SuddenJumpingTouchEventHandler;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 298
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanelCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 299
    return-void
.end method

.method public setKeyboardActionListener(Lcom/android/inputmethod/keyboard/KeyboardActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyboardActionListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    .line 240
    invoke-static {p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->setKeyboardActionListener(Lcom/android/inputmethod/keyboard/KeyboardActionListener;)V

    .line 241
    return-void
.end method

.method public setProximityCorrectionEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/KeyDetector;->setProximityCorrectionEnabled(Z)V

    .line 317
    return-void
.end method

.method public setSpacebarTextFadeFactor(FLcom/android/inputmethod/keyboard/LatinKeyboard;)V
    .locals 2
    .parameter "fadeFactor"
    .parameter "oldKeyboard"

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v0

    .line 381
    .local v0, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    instance-of v1, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    if-eqz v1, :cond_0

    if-ne v0, p2, :cond_0

    .line 382
    check-cast v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    .end local v0           #keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    invoke-virtual {v0, p1, p0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->setSpacebarTextFadeFactor(FLcom/android/inputmethod/keyboard/KeyboardView;)V

    .line 384
    :cond_0
    return-void
.end method

.method public startIgnoringDoubleTap()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyTimerHandler:Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->startIgnoringDoubleTap()V

    .line 236
    return-void
.end method
