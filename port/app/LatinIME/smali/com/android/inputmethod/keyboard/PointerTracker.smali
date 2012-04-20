.class public Lcom/android/inputmethod/keyboard/PointerTracker;
.super Ljava/lang/Object;
.source "PointerTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;,
        Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;,
        Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;
    }
.end annotation


# static fields
.field private static DEBUG_MODE:Z

.field private static final EMPTY_LISTENER:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

.field private static final TAG:Ljava/lang/String;

.field private static sConfigSlidingKeyInputEnabled:Z

.field private static sDelayBeforeKeyRepeatStart:I

.field private static sKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

.field private static sLongPressKeyTimeout:I

.field private static sLongPressShiftKeyTimeout:I

.field private static sLongPressSpaceKeyTimeout:I

.field private static sPointerTrackerQueue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

.field private static sTouchNoiseThresholdDistanceSquared:I

.field private static sTouchNoiseThresholdMillis:I

.field private static final sTrackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/keyboard/PointerTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDownTime:J

.field private mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

.field private mIgnoreModifierKey:Z

.field private mIsAllowedSlidingKeyInput:Z

.field mIsInSlidingKeyInput:Z

.field private mIsRepeatableKey:Z

.field private mIsShowingMoreKeysPanel:Z

.field private mKeyAlreadyProcessed:Z

.field private mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

.field private mKeyIndex:I

.field private final mKeyPreviewText:Landroid/widget/TextView;

.field private mKeyQuarterWidthSquared:I

.field private mKeyX:I

.field private mKeyY:I

.field private mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

.field private mKeyboardLayoutHasBeenChanged:Z

.field private mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;"
        }
    .end annotation
.end field

.field private mLastX:I

.field private mLastY:I

.field private mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

.field public final mPointerId:I

.field private mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

.field private mUpTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/android/inputmethod/keyboard/PointerTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->TAG:Ljava/lang/String;

    .line 38
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/keyboard/PointerTracker;->DEBUG_MODE:Z

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sTrackers:Ljava/util/List;

    .line 154
    new-instance v0, Lcom/android/inputmethod/keyboard/KeyboardActionListener$Adapter;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/KeyboardActionListener$Adapter;-><init>()V

    sput-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->EMPTY_LISTENER:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    return-void
.end method

.method public constructor <init>(ILcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V
    .locals 1
    .parameter "id"
    .parameter "handler"

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    sget-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->EMPTY_LISTENER:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyIndex:I

    .line 215
    if-nez p2, :cond_0

    .line 216
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 217
    :cond_0
    iput p1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mPointerId:I

    .line 218
    invoke-interface {p2}, Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getKeyDetector()Lcom/android/inputmethod/keyboard/KeyDetector;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->setKeyDetectorInner(Lcom/android/inputmethod/keyboard/KeyDetector;)V

    .line 219
    invoke-interface {p2}, Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getKeyboardActionListener()Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    .line 220
    invoke-interface {p2}, Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getDrawingProxy()Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    .line 221
    invoke-interface {p2}, Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getTimerProxy()Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    .line 222
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;->inflateKeyPreviewText()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyPreviewText:Landroid/widget/TextView;

    .line 223
    return-void
.end method

.method private callListenerOnCancelInput()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onCancelInput()V

    .line 284
    return-void
.end method

.method private callListenerOnCodeInput(Lcom/android/inputmethod/keyboard/Key;I[III)V
    .locals 2
    .parameter "key"
    .parameter "primaryCode"
    .parameter "keyCodes"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 249
    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIgnoreModifierKey:Z

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    invoke-static {v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->isModifierCode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 254
    .local v0, ignoreModifierKey:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 258
    :cond_0
    :goto_1
    return-void

    .line 249
    .end local v0           #ignoreModifierKey:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 256
    .restart local v0       #ignoreModifierKey:Z
    :cond_2
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    invoke-interface {v1, p2, p3, p4, p5}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onCodeInput(I[III)V

    goto :goto_1
.end method

.method private callListenerOnPressAndCheckKeyboardLayoutChange(Lcom/android/inputmethod/keyboard/Key;Z)Z
    .locals 5
    .parameter "key"
    .parameter "withSliding"

    .prologue
    const/4 v2, 0x0

    .line 231
    iget-boolean v3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIgnoreModifierKey:Z

    if-eqz v3, :cond_0

    iget v3, p1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    invoke-static {v3}, Lcom/android/inputmethod/keyboard/PointerTracker;->isModifierCode(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 235
    .local v0, ignoreModifierKey:Z
    :goto_0
    if-eqz v0, :cond_1

    move v1, v2

    .line 243
    :goto_1
    return v1

    .end local v0           #ignoreModifierKey:Z
    :cond_0
    move v0, v2

    .line 231
    goto :goto_0

    .line 237
    .restart local v0       #ignoreModifierKey:Z
    :cond_1
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 238
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    iget v4, p1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    invoke-interface {v3, v4, p2}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onPress(IZ)V

    .line 239
    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    .line 240
    .local v1, keyboardLayoutHasBeenChanged:Z
    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    goto :goto_1

    .end local v1           #keyboardLayoutHasBeenChanged:Z
    :cond_2
    move v1, v2

    .line 243
    goto :goto_1
.end method

.method private callListenerOnRelease(Lcom/android/inputmethod/keyboard/Key;IZ)V
    .locals 2
    .parameter "key"
    .parameter "primaryCode"
    .parameter "withSliding"

    .prologue
    .line 270
    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIgnoreModifierKey:Z

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    invoke-static {v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->isModifierCode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 274
    .local v0, ignoreModifierKey:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 278
    :cond_0
    :goto_1
    return-void

    .line 270
    .end local v0           #ignoreModifierKey:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 276
    .restart local v0       #ignoreModifierKey:Z
    :cond_2
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    invoke-interface {v1, p2, p3}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onRelease(IZ)V

    goto :goto_1
.end method

.method private callListenerOnTextInput(Lcom/android/inputmethod/keyboard/Key;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 263
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    iget-object v1, p1, Lcom/android/inputmethod/keyboard/Key;->mOutputText:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onTextInput(Ljava/lang/CharSequence;)V

    .line 265
    :cond_0
    return-void
.end method

.method private detectAndSendKey(III)V
    .locals 7
    .parameter "index"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 715
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v1

    .line 716
    .local v1, key:Lcom/android/inputmethod/keyboard/Key;
    if-nez v1, :cond_0

    .line 717
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnCancelInput()V

    .line 745
    :goto_0
    return-void

    .line 720
    :cond_0
    iget-object v0, v1, Lcom/android/inputmethod/keyboard/Key;->mOutputText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 721
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnTextInput(Lcom/android/inputmethod/keyboard/Key;)V

    .line 722
    iget v0, v1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    invoke-direct {p0, v1, v0, v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnRelease(Lcom/android/inputmethod/keyboard/Key;IZ)V

    goto :goto_0

    .line 724
    :cond_1
    iget v2, v1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    .line 725
    .local v2, code:I
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyDetector;->newCodeArray()[I

    move-result-object v3

    .line 726
    .local v3, codes:[I
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-virtual {v0, p2, p3, v3}, Lcom/android/inputmethod/keyboard/KeyDetector;->getKeyIndexAndNearbyCodes(II[I)I

    .line 730
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/Keyboard;->isManualTemporaryUpperCase()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/Key;->hasUppercaseLetter()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 731
    iget-object v0, v1, Lcom/android/inputmethod/keyboard/Key;->mHintLabel:Ljava/lang/CharSequence;

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 732
    aput v2, v3, v6

    .line 738
    :cond_2
    array-length v0, v3

    const/4 v4, 0x2

    if-lt v0, v4, :cond_3

    aget v0, v3, v6

    if-eq v0, v2, :cond_3

    aget v0, v3, v5

    if-ne v0, v2, :cond_3

    .line 739
    aget v0, v3, v6

    aput v0, v3, v5

    .line 740
    aput v2, v3, v6

    :cond_3
    move-object v0, p0

    move v4, p2

    move v5, p3

    .line 742
    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnCodeInput(Lcom/android/inputmethod/keyboard/Key;I[III)V

    .line 743
    invoke-direct {p0, v1, v2, v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnRelease(Lcom/android/inputmethod/keyboard/Key;IZ)V

    goto :goto_0
.end method

.method public static dismissAllKeyPreviews()V
    .locals 3

    .prologue
    .line 209
    sget-object v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sTrackers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/keyboard/PointerTracker;

    .line 210
    .local v1, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    iget v2, v1, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyIndex:I

    invoke-direct {v1, v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->setReleasedKeyGraphics(I)V

    goto :goto_0

    .line 212
    .end local v1           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_0
    return-void
.end method

.method public static getPointerTracker(ILcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)Lcom/android/inputmethod/keyboard/PointerTracker;
    .locals 4
    .parameter "id"
    .parameter "handler"

    .prologue
    .line 179
    sget-object v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sTrackers:Ljava/util/List;

    .line 182
    .local v2, trackers:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/keyboard/PointerTracker;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, i:I
    :goto_0
    if-gt v0, p0, :cond_0

    .line 183
    new-instance v1, Lcom/android/inputmethod/keyboard/PointerTracker;

    invoke-direct {v1, v0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;-><init>(ILcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    .line 184
    .local v1, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    .end local v1           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_0
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/inputmethod/keyboard/PointerTracker;

    return-object v3
.end method

.method public static init(ZLandroid/content/Context;)V
    .locals 3
    .parameter "hasDistinctMultitouch"
    .parameter "context"

    .prologue
    .line 158
    if-eqz p0, :cond_0

    .line 159
    new-instance v2, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    invoke-direct {v2}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;-><init>()V

    sput-object v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    .line 164
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 165
    .local v0, res:Landroid/content/res/Resources;
    const v2, 0x7f080008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sConfigSlidingKeyInputEnabled:Z

    .line 166
    const v2, 0x7f09000a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sDelayBeforeKeyRepeatStart:I

    .line 167
    const v2, 0x7f09000e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sLongPressKeyTimeout:I

    .line 168
    const v2, 0x7f09000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sLongPressShiftKeyTimeout:I

    .line 169
    const v2, 0x7f090010

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sLongPressSpaceKeyTimeout:I

    .line 170
    const v2, 0x7f090011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sTouchNoiseThresholdMillis:I

    .line 171
    const/high16 v2, 0x7f0a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 173
    .local v1, touchNoiseThresholdDistance:F
    mul-float v2, v1, v1

    float-to-int v2, v2

    sput v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sTouchNoiseThresholdDistanceSquared:I

    .line 175
    invoke-static {}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v2

    sput-object v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 176
    return-void

    .line 161
    .end local v0           #res:Landroid/content/res/Resources;
    .end local v1           #touchNoiseThresholdDistance:F
    :cond_0
    const/4 v2, 0x0

    sput-object v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    goto :goto_0
.end method

.method public static isAnyInSlidingKeyInput()Z
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->isAnyInSlidingKeyInput()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isKeyPreviewRequired(Lcom/android/inputmethod/keyboard/Key;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 355
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    .line 357
    .local v0, code:I
    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v1, -0x5

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->isModifierCode(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x6

    if-eq v0, v1, :cond_0

    const/4 v1, -0x7

    if-ne v0, v1, :cond_1

    .line 360
    :cond_0
    const/4 v1, 0x0

    .line 362
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isMajorEnoughMoveToBeOnNewKey(III)Z
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "newKey"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 678
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeys:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    if-nez v1, :cond_1

    .line 679
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "keyboard and/or key detector not set"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 680
    :cond_1
    iget v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyIndex:I

    .line 681
    .local v0, curKey:I
    if-ne p3, v0, :cond_2

    .line 687
    :goto_0
    return v3

    .line 683
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->isValidKeyIndex(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 684
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/keyboard/Key;

    invoke-virtual {v1, p1, p2}, Lcom/android/inputmethod/keyboard/Key;->squaredDistanceToEdge(II)I

    move-result v1

    iget-object v4, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/KeyDetector;->getKeyHysteresisDistanceSquared()I

    move-result v4

    if-lt v1, v4, :cond_3

    move v1, v2

    :goto_1
    move v3, v1

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move v3, v2

    .line 687
    goto :goto_0
.end method

.method private static isModifierCode(I)Z
    .locals 1
    .parameter "primaryCode"

    .prologue
    .line 307
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, -0x2

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isModifierInternal(I)Z
    .locals 2
    .parameter "keyIndex"

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .line 313
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    invoke-static {v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->isModifierCode(I)Z

    move-result v1

    goto :goto_0
.end method

.method private isOnModifierKey(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/inputmethod/keyboard/KeyDetector;->getKeyIndexAndNearbyCodes(II[I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->isModifierInternal(I)Z

    move-result v0

    return v0
.end method

.method private isValidKeyIndex(I)Z
    .locals 1
    .parameter "keyIndex"

    .prologue
    .line 299
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCancelEventInternal()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 649
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->cancelKeyTimers()V

    .line 650
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v0, p0}, Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;->cancelShowKeyPreview(Lcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 651
    iget v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyIndex:I

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->setReleasedKeyGraphics(I)V

    .line 652
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    .line 653
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsShowingMoreKeysPanel:Z

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;->dismissMoreKeysPanel()Z

    .line 655
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsShowingMoreKeysPanel:Z

    .line 657
    :cond_0
    return-void
.end method

.method private onDownEventInternal(IIJ)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    const/4 v2, 0x0

    .line 461
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/inputmethod/keyboard/PointerTracker;->onDownKey(IIJ)I

    move-result v0

    .line 464
    .local v0, keyIndex:I
    sget-boolean v1, Lcom/android/inputmethod/keyboard/PointerTracker;->sConfigSlidingKeyInputEnabled:Z

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->isModifierInternal(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyDetector;->alwaysAllowsSlidingInput()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsAllowedSlidingKeyInput:Z

    .line 466
    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    .line 467
    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    .line 468
    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsRepeatableKey:Z

    .line 469
    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    .line 470
    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIgnoreModifierKey:Z

    .line 471
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->isValidKeyIndex(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 475
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnPressAndCheckKeyboardLayoutChange(Lcom/android/inputmethod/keyboard/Key;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 476
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/inputmethod/keyboard/PointerTracker;->onDownKey(IIJ)I

    move-result v0

    .line 478
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->startRepeatKey(I)V

    .line 479
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->startLongPressTimer(I)V

    .line 480
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->setPressedKeyGraphics(I)V

    .line 482
    :cond_2
    return-void

    :cond_3
    move v1, v2

    .line 464
    goto :goto_0
.end method

.method private onDownKey(IIJ)I
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 378
    iput-wide p3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDownTime:J

    .line 379
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveKeyInternal(II)I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveToNewKey(III)I

    move-result v0

    return v0
.end method

.method private onMoveKey(II)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 389
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveKeyInternal(II)I

    move-result v0

    return v0
.end method

.method private onMoveKeyInternal(II)I
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 383
    iput p1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mLastX:I

    .line 384
    iput p2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mLastY:I

    .line 385
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/inputmethod/keyboard/KeyDetector;->getKeyIndexAndNearbyCodes(II[I)I

    move-result v0

    return v0
.end method

.method private onMoveToNewKey(III)I
    .locals 0
    .parameter "keyIndex"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 393
    iput p1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyIndex:I

    .line 394
    iput p2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyX:I

    .line 395
    iput p3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyY:I

    .line 396
    return p1
.end method

.method private onUpEventInternal(IIJ)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    const/4 v4, 0x0

    .line 596
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    invoke-interface {v3}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->cancelKeyTimers()V

    .line 597
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v3, p0}, Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;->cancelShowKeyPreview(Lcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 598
    iput-boolean v4, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    .line 600
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveKey(II)I

    move-result v3

    invoke-direct {p0, p1, p2, v3}, Lcom/android/inputmethod/keyboard/PointerTracker;->isMajorEnoughMoveToBeOnNewKey(III)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 601
    move v1, p1

    .line 602
    .local v1, keyX:I
    move v2, p2

    .line 608
    .local v2, keyY:I
    :goto_0
    invoke-direct {p0, v1, v2, p3, p4}, Lcom/android/inputmethod/keyboard/PointerTracker;->onUpKey(IIJ)I

    move-result v0

    .line 609
    .local v0, keyIndex:I
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->setReleasedKeyGraphics(I)V

    .line 610
    iget-boolean v3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsShowingMoreKeysPanel:Z

    if-eqz v3, :cond_0

    .line 611
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v3}, Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;->dismissMoreKeysPanel()Z

    .line 612
    iput-boolean v4, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsShowingMoreKeysPanel:Z

    .line 614
    :cond_0
    iget-boolean v3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    if-eqz v3, :cond_3

    .line 619
    :cond_1
    :goto_1
    return-void

    .line 605
    .end local v0           #keyIndex:I
    .end local v1           #keyX:I
    .end local v2           #keyY:I
    :cond_2
    iget v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyX:I

    .line 606
    .restart local v1       #keyX:I
    iget v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyY:I

    .restart local v2       #keyY:I
    goto :goto_0

    .line 616
    .restart local v0       #keyIndex:I
    :cond_3
    iget-boolean v3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsRepeatableKey:Z

    if-nez v3, :cond_1

    .line 617
    invoke-direct {p0, v0, v1, v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->detectAndSendKey(III)V

    goto :goto_1
.end method

.method private onUpKey(IIJ)I
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 400
    iput-wide p3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mUpTime:J

    .line 401
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyIndex:I

    .line 402
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveKeyInternal(II)I

    move-result v0

    return v0
.end method

.method public static setKeyDetector(Lcom/android/inputmethod/keyboard/KeyDetector;)V
    .locals 3
    .parameter "keyDetector"

    .prologue
    .line 201
    sget-object v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sTrackers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/keyboard/PointerTracker;

    .line 202
    .local v1, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    invoke-direct {v1, p0}, Lcom/android/inputmethod/keyboard/PointerTracker;->setKeyDetectorInner(Lcom/android/inputmethod/keyboard/KeyDetector;)V

    .line 204
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    goto :goto_0

    .line 206
    .end local v1           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_0
    return-void
.end method

.method private setKeyDetectorInner(Lcom/android/inputmethod/keyboard/KeyDetector;)V
    .locals 2
    .parameter "keyDetector"

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    .line 288
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/KeyDetector;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    .line 289
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    iget-object v1, v1, Lcom/android/inputmethod/keyboard/Keyboard;->mKeys:Ljava/util/List;

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeys:Ljava/util/List;

    .line 290
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    iget v1, v1, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyWidth:I

    div-int/lit8 v0, v1, 0x4

    .line 291
    .local v0, keyQuarterWidth:I
    mul-int v1, v0, v0

    iput v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyQuarterWidthSquared:I

    .line 292
    return-void
.end method

.method public static setKeyboardActionListener(Lcom/android/inputmethod/keyboard/KeyboardActionListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 195
    sget-object v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sTrackers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/keyboard/PointerTracker;

    .line 196
    .local v1, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    iput-object p0, v1, Lcom/android/inputmethod/keyboard/PointerTracker;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    goto :goto_0

    .line 198
    .end local v1           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_0
    return-void
.end method

.method private setPressedKeyGraphics(I)V
    .locals 2
    .parameter "keyIndex"

    .prologue
    .line 343
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .line 344
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/Key;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->isKeyPreviewRequired(Lcom/android/inputmethod/keyboard/Key;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v1, p1, p0}, Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;->showKeyPreview(ILcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 348
    :cond_0
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/Key;->onPressed()V

    .line 349
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v1, v0}, Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;->invalidateKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 351
    :cond_1
    return-void
.end method

.method private setReleasedKeyGraphics(I)V
    .locals 2
    .parameter "keyIndex"

    .prologue
    .line 334
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v1, p0}, Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;->dismissKeyPreview(Lcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 335
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .line 336
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/Key;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/Key;->onReleased()V

    .line 338
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v1, v0}, Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;->invalidateKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 340
    :cond_0
    return-void
.end method

.method private startLongPressTimer(I)V
    .locals 4
    .parameter "keyIndex"

    .prologue
    .line 692
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .line 693
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    if-nez v0, :cond_1

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    iget v1, v0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 695
    sget v1, Lcom/android/inputmethod/keyboard/PointerTracker;->sLongPressShiftKeyTimeout:I

    if-lez v1, :cond_0

    .line 696
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    sget v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sLongPressShiftKeyTimeout:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3, p1, p0}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->startLongPressTimer(JILcom/android/inputmethod/keyboard/PointerTracker;)V

    goto :goto_0

    .line 698
    :cond_2
    iget v1, v0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3

    .line 699
    sget v1, Lcom/android/inputmethod/keyboard/PointerTracker;->sLongPressSpaceKeyTimeout:I

    if-lez v1, :cond_0

    .line 700
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    sget v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sLongPressSpaceKeyTimeout:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3, p1, p0}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->startLongPressTimer(JILcom/android/inputmethod/keyboard/PointerTracker;)V

    goto :goto_0

    .line 702
    :cond_3
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/Key;->hasUppercaseLetter()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/Keyboard;->isManualTemporaryUpperCase()Z

    move-result v1

    if-nez v1, :cond_0

    .line 706
    :cond_4
    sget-object v1, Lcom/android/inputmethod/keyboard/PointerTracker;->sKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isInMomentarySwitchState()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 708
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    sget v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sLongPressKeyTimeout:I

    mul-int/lit8 v2, v2, 0x3

    int-to-long v2, v2

    invoke-interface {v1, v2, v3, p1, p0}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->startLongPressTimer(JILcom/android/inputmethod/keyboard/PointerTracker;)V

    goto :goto_0

    .line 710
    :cond_5
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    sget v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sLongPressKeyTimeout:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3, p1, p0}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->startLongPressTimer(JILcom/android/inputmethod/keyboard/PointerTracker;)V

    goto :goto_0
.end method

.method private startRepeatKey(I)V
    .locals 4
    .parameter "keyIndex"

    .prologue
    .line 660
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .line 661
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/inputmethod/keyboard/Key;->mRepeatable:Z

    if-eqz v1, :cond_0

    .line 662
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->onRepeatKey(I)V

    .line 663
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    sget v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sDelayBeforeKeyRepeatStart:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3, p1, p0}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->startKeyRepeatTimer(JILcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 664
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsRepeatableKey:Z

    .line 668
    :goto_0
    return-void

    .line 666
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsRepeatableKey:Z

    goto :goto_0
.end method

.method private startSlidingKeyInput(Lcom/android/inputmethod/keyboard/Key;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    if-nez v0, :cond_0

    .line 486
    iget v0, p1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    invoke-static {v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->isModifierCode(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIgnoreModifierKey:Z

    .line 487
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    .line 488
    return-void
.end method


# virtual methods
.method public getKey(I)Lcom/android/inputmethod/keyboard/Key;
    .locals 1
    .parameter "keyIndex"

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->isValidKeyIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/keyboard/Key;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeyIndexOn(II)I
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/inputmethod/keyboard/KeyDetector;->getKeyIndexAndNearbyCodes(II[I)I

    move-result v0

    return v0
.end method

.method public getKeyPreviewText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyPreviewText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLastX()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mLastX:I

    return v0
.end method

.method public getLastY()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mLastY:I

    return v0
.end method

.method public isInSlidingKeyInput()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    return v0
.end method

.method public isModifier()Z
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyIndex:I

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->isModifierInternal(I)Z

    move-result v0

    return v0
.end method

.method public isOnShiftKey(II)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 325
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/inputmethod/keyboard/KeyDetector;->getKeyIndexAndNearbyCodes(II[I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .line 326
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCancelEvent(IIJ)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 640
    sget-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    .line 641
    .local v0, queue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;
    if-eqz v0, :cond_0

    .line 642
    invoke-virtual {v0, p0, p3, p4}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->releaseAllPointersExcept(Lcom/android/inputmethod/keyboard/PointerTracker;J)V

    .line 643
    invoke-virtual {v0, p0}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->remove(Lcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 645
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/PointerTracker;->onCancelEventInternal()V

    .line 646
    return-void
.end method

.method public onDownEvent(IIJLcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"
    .parameter "handler"

    .prologue
    .line 429
    invoke-interface {p5}, Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getDrawingProxy()Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    move-result-object v6

    iput-object v6, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    .line 430
    invoke-interface {p5}, Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getTimerProxy()Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    move-result-object v6

    iput-object v6, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    .line 431
    invoke-interface {p5}, Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getKeyboardActionListener()Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v6

    invoke-static {v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->setKeyboardActionListener(Lcom/android/inputmethod/keyboard/KeyboardActionListener;)V

    .line 432
    invoke-interface {p5}, Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getKeyDetector()Lcom/android/inputmethod/keyboard/KeyDetector;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->setKeyDetectorInner(Lcom/android/inputmethod/keyboard/KeyDetector;)V

    .line 434
    iget-wide v6, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mUpTime:J

    sub-long v0, p3, v6

    .line 435
    .local v0, deltaT:J
    sget v6, Lcom/android/inputmethod/keyboard/PointerTracker;->sTouchNoiseThresholdMillis:I

    int-to-long v6, v6

    cmp-long v6, v0, v6

    if-gez v6, :cond_1

    .line 436
    iget v6, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mLastX:I

    sub-int v3, p1, v6

    .line 437
    .local v3, dx:I
    iget v6, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mLastY:I

    sub-int v4, p2, v6

    .line 438
    .local v4, dy:I
    mul-int v6, v3, v3

    mul-int v7, v4, v4

    add-int v2, v6, v7

    .line 439
    .local v2, distanceSquared:I
    sget v6, Lcom/android/inputmethod/keyboard/PointerTracker;->sTouchNoiseThresholdDistanceSquared:I

    if-ge v2, v6, :cond_1

    .line 440
    sget-boolean v6, Lcom/android/inputmethod/keyboard/PointerTracker;->DEBUG_MODE:Z

    if-eqz v6, :cond_0

    .line 441
    sget-object v6, Lcom/android/inputmethod/keyboard/PointerTracker;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDownEvent: ignore potential noise: time="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " distance="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    .line 458
    .end local v2           #distanceSquared:I
    .end local v3           #dx:I
    .end local v4           #dy:I
    :goto_0
    return-void

    .line 448
    :cond_1
    sget-object v5, Lcom/android/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    .line 449
    .local v5, queue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;
    if-eqz v5, :cond_3

    .line 450
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->isOnModifierKey(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 453
    invoke-virtual {v5, p3, p4}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->releaseAllPointers(J)V

    .line 455
    :cond_2
    invoke-virtual {v5, p0}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->add(Lcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 457
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/inputmethod/keyboard/PointerTracker;->onDownEventInternal(IIJ)V

    goto :goto_0
.end method

.method public onLongPressed()V
    .locals 2

    .prologue
    .line 628
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    .line 629
    iget v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyIndex:I

    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->setReleasedKeyGraphics(I)V

    .line 630
    sget-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    .line 631
    .local v0, queue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;
    if-eqz v0, :cond_0

    .line 632
    invoke-virtual {v0, p0}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->remove(Lcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 634
    :cond_0
    return-void
.end method

.method public onMoveEvent(IIJ)V
    .locals 15
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 493
    iget-boolean v10, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    if-eqz v10, :cond_1

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    iget v6, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mLastX:I

    .line 497
    .local v6, lastX:I
    iget v7, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mLastY:I

    .line 498
    .local v7, lastY:I
    iget v9, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyIndex:I

    .line 499
    .local v9, oldKeyIndex:I
    invoke-virtual {p0, v9}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v8

    .line 500
    .local v8, oldKey:Lcom/android/inputmethod/keyboard/Key;
    invoke-direct/range {p0 .. p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveKey(II)I

    move-result v4

    .line 501
    .local v4, keyIndex:I
    invoke-direct {p0, v4}, Lcom/android/inputmethod/keyboard/PointerTracker;->isValidKeyIndex(I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 502
    if-nez v8, :cond_3

    .line 508
    invoke-virtual {p0, v4}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnPressAndCheckKeyboardLayoutChange(Lcom/android/inputmethod/keyboard/Key;Z)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 509
    invoke-direct/range {p0 .. p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveKey(II)I

    move-result v4

    .line 510
    :cond_2
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {p0, v4, v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveToNewKey(III)I

    .line 511
    invoke-direct {p0, v4}, Lcom/android/inputmethod/keyboard/PointerTracker;->startLongPressTimer(I)V

    .line 512
    invoke-direct {p0, v4}, Lcom/android/inputmethod/keyboard/PointerTracker;->setPressedKeyGraphics(I)V

    goto :goto_0

    .line 513
    :cond_3
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {p0, v0, v1, v4}, Lcom/android/inputmethod/keyboard/PointerTracker;->isMajorEnoughMoveToBeOnNewKey(III)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 517
    invoke-direct {p0, v9}, Lcom/android/inputmethod/keyboard/PointerTracker;->setReleasedKeyGraphics(I)V

    .line 518
    iget v10, v8, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    const/4 v11, 0x1

    invoke-direct {p0, v8, v10, v11}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnRelease(Lcom/android/inputmethod/keyboard/Key;IZ)V

    .line 519
    invoke-direct {p0, v8}, Lcom/android/inputmethod/keyboard/PointerTracker;->startSlidingKeyInput(Lcom/android/inputmethod/keyboard/Key;)V

    .line 520
    iget-object v10, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    invoke-interface {v10}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->cancelKeyTimers()V

    .line 521
    invoke-direct {p0, v4}, Lcom/android/inputmethod/keyboard/PointerTracker;->startRepeatKey(I)V

    .line 522
    iget-boolean v10, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsAllowedSlidingKeyInput:Z

    if-eqz v10, :cond_5

    .line 526
    invoke-virtual {p0, v4}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnPressAndCheckKeyboardLayoutChange(Lcom/android/inputmethod/keyboard/Key;Z)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 527
    invoke-direct/range {p0 .. p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveKey(II)I

    move-result v4

    .line 528
    :cond_4
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {p0, v4, v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveToNewKey(III)I

    .line 529
    invoke-direct {p0, v4}, Lcom/android/inputmethod/keyboard/PointerTracker;->startLongPressTimer(I)V

    .line 530
    invoke-direct {p0, v4}, Lcom/android/inputmethod/keyboard/PointerTracker;->setPressedKeyGraphics(I)V

    goto :goto_0

    .line 535
    :cond_5
    sub-int v2, p1, v6

    .line 536
    .local v2, dx:I
    sub-int v3, p2, v7

    .line 537
    .local v3, dy:I
    mul-int v10, v2, v2

    mul-int v11, v3, v3

    add-int v5, v10, v11

    .line 538
    .local v5, lastMoveSquared:I
    iget v10, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyQuarterWidthSquared:I

    if-lt v5, v10, :cond_7

    .line 539
    sget-boolean v10, Lcom/android/inputmethod/keyboard/PointerTracker;->DEBUG_MODE:Z

    if-eqz v10, :cond_6

    .line 540
    sget-object v10, Lcom/android/inputmethod/keyboard/PointerTracker;->TAG:Ljava/lang/String;

    const-string v11, "onMoveEvent: sudden move is translated to up[%d,%d]/down[%d,%d] events"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_6
    move-wide/from16 v0, p3

    invoke-direct {p0, v6, v7, v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->onUpEventInternal(IIJ)V

    .line 543
    invoke-direct/range {p0 .. p4}, Lcom/android/inputmethod/keyboard/PointerTracker;->onDownEventInternal(IIJ)V

    goto/16 :goto_0

    .line 545
    :cond_7
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    .line 546
    invoke-direct {p0, v9}, Lcom/android/inputmethod/keyboard/PointerTracker;->setReleasedKeyGraphics(I)V

    goto/16 :goto_0

    .line 551
    .end local v2           #dx:I
    .end local v3           #dy:I
    .end local v5           #lastMoveSquared:I
    :cond_8
    if-eqz v8, :cond_0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {p0, v0, v1, v4}, Lcom/android/inputmethod/keyboard/PointerTracker;->isMajorEnoughMoveToBeOnNewKey(III)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 554
    invoke-direct {p0, v9}, Lcom/android/inputmethod/keyboard/PointerTracker;->setReleasedKeyGraphics(I)V

    .line 555
    iget v10, v8, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    const/4 v11, 0x1

    invoke-direct {p0, v8, v10, v11}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnRelease(Lcom/android/inputmethod/keyboard/Key;IZ)V

    .line 556
    invoke-direct {p0, v8}, Lcom/android/inputmethod/keyboard/PointerTracker;->startSlidingKeyInput(Lcom/android/inputmethod/keyboard/Key;)V

    .line 557
    iget-object v10, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    invoke-interface {v10}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->cancelLongPressTimer()V

    .line 558
    iget-boolean v10, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsAllowedSlidingKeyInput:Z

    if-eqz v10, :cond_9

    .line 559
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {p0, v4, v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveToNewKey(III)I

    goto/16 :goto_0

    .line 561
    :cond_9
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    goto/16 :goto_0
.end method

.method public onPhantomUpEvent(IIJ)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 591
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/inputmethod/keyboard/PointerTracker;->onUpEventInternal(IIJ)V

    .line 592
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    .line 593
    return-void
.end method

.method public onRepeatKey(I)V
    .locals 3
    .parameter "keyIndex"

    .prologue
    .line 671
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .line 672
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    if-eqz v0, :cond_0

    .line 673
    iget v1, v0, Lcom/android/inputmethod/keyboard/Key;->mX:I

    iget v2, v0, Lcom/android/inputmethod/keyboard/Key;->mY:I

    invoke-direct {p0, p1, v1, v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->detectAndSendKey(III)V

    .line 675
    :cond_0
    return-void
.end method

.method public onShowMoreKeysPanel(IIJLcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"
    .parameter "handler"

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/PointerTracker;->onLongPressed()V

    .line 623
    invoke-virtual/range {p0 .. p5}, Lcom/android/inputmethod/keyboard/PointerTracker;->onDownEvent(IIJLcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    .line 624
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsShowingMoreKeysPanel:Z

    .line 625
    return-void
.end method

.method public onUpEvent(IIJ)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 571
    sget-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    .line 572
    .local v0, queue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;
    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/PointerTracker;->isModifier()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 576
    invoke-virtual {v0, p0, p3, p4}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->releaseAllPointersExcept(Lcom/android/inputmethod/keyboard/PointerTracker;J)V

    .line 580
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->remove(Lcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 582
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/inputmethod/keyboard/PointerTracker;->onUpEventInternal(IIJ)V

    .line 583
    return-void

    .line 578
    :cond_1
    invoke-virtual {v0, p0, p3, p4}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->releaseAllPointersOlderThan(Lcom/android/inputmethod/keyboard/PointerTracker;J)V

    goto :goto_0
.end method

.method public processMotionEvent(IIIJLcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V
    .locals 6
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"
    .parameter "handler"

    .prologue
    .line 407
    packed-switch p1, :pswitch_data_0

    .line 423
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v5, p6

    .line 410
    invoke-virtual/range {v0 .. v5}, Lcom/android/inputmethod/keyboard/PointerTracker;->onDownEvent(IIJLcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    goto :goto_0

    .line 414
    :pswitch_2
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/inputmethod/keyboard/PointerTracker;->onUpEvent(IIJ)V

    goto :goto_0

    .line 417
    :pswitch_3
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveEvent(IIJ)V

    goto :goto_0

    .line 420
    :pswitch_4
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/inputmethod/keyboard/PointerTracker;->onCancelEvent(IIJ)V

    goto :goto_0

    .line 407
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
