.class public Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;
.super Ljava/lang/Object;
.source "AccessibleKeyboardViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy$KeyboardFlickGestureDetector;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;


# instance fields
.field private mGestureDetector:Lcom/android/inputmethod/accessibility/FlickGestureDetector;

.field private mInputMethod:Landroid/inputmethodservice/InputMethodService;

.field private mLastHoverKeyIndex:I

.field private mListener:Lcom/android/inputmethod/accessibility/AccessibleKeyboardActionListener;

.field private mView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    invoke-direct {v0}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;-><init>()V

    sput-object v0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->sInstance:Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mLastHoverKeyIndex:I

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;)Lcom/android/inputmethod/accessibility/AccessibleKeyboardActionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mListener:Lcom/android/inputmethod/accessibility/AccessibleKeyboardActionListener;

    return-object v0
.end method

.method private fireKeyHoverEvent(Lcom/android/inputmethod/keyboard/PointerTracker;IZ)V
    .locals 3
    .parameter "tracker"
    .parameter "keyIndex"
    .parameter "entering"

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mListener:Lcom/android/inputmethod/accessibility/AccessibleKeyboardActionListener;

    if-nez v1, :cond_1

    .line 149
    sget-object v1, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->TAG:Ljava/lang/String;

    const-string v2, "No accessible keyboard action listener set!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    if-nez v1, :cond_2

    .line 154
    sget-object v1, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->TAG:Ljava/lang/String;

    const-string v2, "No keyboard view set!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 158
    :cond_2
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 161
    invoke-virtual {p1, p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .line 163
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    if-eqz v0, :cond_0

    .line 166
    if-eqz p3, :cond_3

    .line 167
    iget-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mListener:Lcom/android/inputmethod/accessibility/AccessibleKeyboardActionListener;

    iget v2, v0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    invoke-interface {v1, v2}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardActionListener;->onHoverEnter(I)V

    .line 168
    iget-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 170
    :cond_3
    iget-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mListener:Lcom/android/inputmethod/accessibility/AccessibleKeyboardActionListener;

    iget v2, v0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    invoke-interface {v1, v2}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardActionListener;->onHoverExit(I)V

    .line 171
    iget-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->sInstance:Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    return-object v0
.end method

.method public static init(Landroid/inputmethodservice/InputMethodService;Landroid/content/SharedPreferences;)V
    .locals 2
    .parameter "inputMethod"
    .parameter "prefs"

    .prologue
    .line 48
    sget-object v0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->sInstance:Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    invoke-direct {v0, p0, p1}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->initInternal(Landroid/inputmethodservice/InputMethodService;Landroid/content/SharedPreferences;)V

    .line 49
    sget-object v0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->sInstance:Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    invoke-static {}, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;->getInstance()Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;

    move-result-object v1

    iput-object v1, v0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mListener:Lcom/android/inputmethod/accessibility/AccessibleKeyboardActionListener;

    .line 50
    return-void
.end method

.method private initInternal(Landroid/inputmethodservice/InputMethodService;Landroid/content/SharedPreferences;)V
    .locals 2
    .parameter "inputMethod"
    .parameter "prefs"

    .prologue
    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 66
    .local v0, paint:Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 67
    const/high16 v1, 0x4160

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 68
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iput-object p1, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mInputMethod:Landroid/inputmethodservice/InputMethodService;

    .line 72
    new-instance v1, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy$KeyboardFlickGestureDetector;

    invoke-direct {v1, p0, p1}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy$KeyboardFlickGestureDetector;-><init>(Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mGestureDetector:Lcom/android/inputmethod/accessibility/FlickGestureDetector;

    .line 73
    return-void
.end method

.method public static setView(Lcom/android/inputmethod/keyboard/LatinKeyboardView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 57
    sget-object v0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->sInstance:Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    iput-object p0, v0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    .line 58
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;Lcom/android/inputmethod/keyboard/PointerTracker;)Z
    .locals 1
    .parameter "event"
    .parameter "tracker"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mGestureDetector:Lcom/android/inputmethod/accessibility/FlickGestureDetector;

    invoke-virtual {v0, p1, p0, p2}, Lcom/android/inputmethod/accessibility/FlickGestureDetector;->onHoverEvent(Landroid/view/MotionEvent;Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;Lcom/android/inputmethod/keyboard/PointerTracker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->onHoverEventInternal(Landroid/view/MotionEvent;Lcom/android/inputmethod/keyboard/PointerTracker;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Lcom/android/inputmethod/keyboard/PointerTracker;)Z
    .locals 8
    .parameter "event"
    .parameter "tracker"

    .prologue
    const/4 v4, 0x0

    .line 77
    iget-object v5, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    if-nez v5, :cond_1

    .line 78
    sget-object v5, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->TAG:Ljava/lang/String;

    const-string v6, "No keyboard view set!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    :goto_0
    return v4

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 103
    :cond_2
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 84
    :pswitch_0
    iget v5, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mLastHoverKeyIndex:I

    invoke-virtual {p2, v5}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v2

    .line 86
    .local v2, key:Lcom/android/inputmethod/keyboard/Key;
    if-eqz v2, :cond_2

    .line 89
    iget-object v5, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mInputMethod:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v5}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 90
    .local v1, info:Landroid/view/inputmethod/EditorInfo;
    invoke-static {}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->getInstance()Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->shouldObscureInput(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v3

    .line 91
    .local v3, shouldObscure:Z
    invoke-static {}, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->getInstance()Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;

    move-result-object v5

    iget-object v6, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v6}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v7}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v2, v3}, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->getDescriptionForKey(Landroid/content/Context;Lcom/android/inputmethod/keyboard/Keyboard;Lcom/android/inputmethod/keyboard/Key;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 95
    .local v0, description:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 82
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
    .end packed-switch
.end method

.method onHoverEventInternal(Landroid/view/MotionEvent;Lcom/android/inputmethod/keyboard/PointerTracker;)Z
    .locals 6
    .parameter "event"
    .parameter "tracker"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v1, v5

    .line 128
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v2, v5

    .line 130
    .local v2, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    move v3, v4

    .line 144
    :cond_0
    :goto_0
    return v3

    .line 133
    :pswitch_1
    invoke-virtual {p2, v1, v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKeyIndexOn(II)I

    move-result v0

    .line 135
    .local v0, keyIndex:I
    iget v5, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mLastHoverKeyIndex:I

    if-eq v0, v5, :cond_0

    .line 136
    iget v5, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mLastHoverKeyIndex:I

    invoke-direct {p0, p2, v5, v4}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->fireKeyHoverEvent(Lcom/android/inputmethod/keyboard/PointerTracker;IZ)V

    .line 137
    iput v0, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mLastHoverKeyIndex:I

    .line 138
    iget v4, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mLastHoverKeyIndex:I

    invoke-direct {p0, p2, v4, v3}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->fireKeyHoverEvent(Lcom/android/inputmethod/keyboard/PointerTracker;IZ)V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
