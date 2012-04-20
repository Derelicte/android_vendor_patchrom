.class public Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;
.super Ljava/lang/Object;
.source "AccessibleInputMethodServiceProxy.java"

# interfaces
.implements Lcom/android/inputmethod/accessibility/AccessibleKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy$AccessibilityHandler;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;


# instance fields
.field private mAccessibilityHandler:Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy$AccessibilityHandler;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mInputMethod:Landroid/inputmethodservice/InputMethodService;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;

    invoke-direct {v0}, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;-><init>()V

    sput-object v0, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;->sInstance:Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;->notifyNoHoverSelection()V

    return-void
.end method

.method public static getInstance()Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;->sInstance:Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;

    return-object v0
.end method

.method public static init(Landroid/inputmethodservice/InputMethodService;Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter "inputMethod"
    .parameter "prefs"

    .prologue
    .line 86
    sget-object v0, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;->sInstance:Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;

    invoke-direct {v0, p0, p1}, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;->initInternal(Landroid/inputmethodservice/InputMethodService;Landroid/content/SharedPreferences;)V

    .line 87
    return-void
.end method

.method private initInternal(Landroid/inputmethodservice/InputMethodService;Landroid/content/SharedPreferences;)V
    .locals 2
    .parameter "inputMethod"
    .parameter "prefs"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;->mInputMethod:Landroid/inputmethodservice/InputMethodService;

    .line 99
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;->mVibrator:Landroid/os/Vibrator;

    .line 100
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;->mAudioManager:Landroid/media/AudioManager;

    .line 101
    new-instance v0, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy$AccessibilityHandler;

    invoke-virtual {p1}, Landroid/inputmethodservice/InputMethodService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy$AccessibilityHandler;-><init>(Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;->mAccessibilityHandler:Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy$AccessibilityHandler;

    .line 102
    return-void
.end method

.method private notifyNoHoverSelection()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 158
    iget-object v2, p0, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;->mInputMethod:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    new-instance v3, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v3}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {v2, v3, v6}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 161
    .local v0, extracted:Landroid/view/inputmethod/ExtractedText;
    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    iget-object v2, p0, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;->mInputMethod:Landroid/inputmethodservice/InputMethodService;

    const v3, 0x7f0b00aa

    invoke-virtual {v2, v3}, Landroid/inputmethodservice/InputMethodService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, text:Ljava/lang/CharSequence;
    :goto_1
    invoke-static {}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->getInstance()Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->speak(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 169
    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;->mInputMethod:Landroid/inputmethodservice/InputMethodService;

    const v3, 0x7f0b00a9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/inputmethodservice/InputMethodService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #text:Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method private sendDownUpKeyEvents(I)V
    .locals 3
    .parameter "keyCode"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 148
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    const/high16 v2, -0x4080

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    .line 149
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;->mInputMethod:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    .line 150
    return-void
.end method


# virtual methods
.method public onFlickGesture(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 130
    packed-switch p1, :pswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 132
    :pswitch_0
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;->sendDownUpKeyEvents(I)V

    goto :goto_0

    .line 135
    :pswitch_1
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;->sendDownUpKeyEvents(I)V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEnter(I)V
    .locals 1
    .parameter "primaryCode"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;->mAccessibilityHandler:Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy$AccessibilityHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy$AccessibilityHandler;->cancelNoHoverSelection()V

    .line 112
    return-void
.end method

.method public onHoverExit(I)V
    .locals 1
    .parameter "primaryCode"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;->mAccessibilityHandler:Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy$AccessibilityHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy$AccessibilityHandler;->postNoHoverSelection()V

    .line 121
    return-void
.end method
