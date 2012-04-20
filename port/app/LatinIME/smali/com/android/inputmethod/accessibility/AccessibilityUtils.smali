.class public Lcom/android/inputmethod/accessibility/AccessibilityUtils;
.super Ljava/lang/Object;
.source "AccessibilityUtils.java"


# static fields
.field private static final CLASS:Ljava/lang/String;

.field private static final PACKAGE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/android/inputmethod/accessibility/AccessibilityUtils;


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAudioManager:Lcom/android/inputmethod/compat/AudioManagerCompatWrapper;

.field private mCompatManager:Lcom/android/inputmethod/compat/AccessibilityManagerCompatWrapper;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->TAG:Ljava/lang/String;

    .line 40
    const-class v0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->CLASS:Ljava/lang/String;

    .line 41
    const-class v0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->PACKAGE:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    invoke-direct {v0}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;-><init>()V

    sput-object v0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->sInstance:Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public static getInstance()Lcom/android/inputmethod/accessibility/AccessibilityUtils;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->sInstance:Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    return-object v0
.end method

.method public static init(Landroid/inputmethodservice/InputMethodService;Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter "inputMethod"
    .parameter "prefs"

    .prologue
    .line 63
    sget-object v0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->sInstance:Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    invoke-direct {v0, p0, p1}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->initInternal(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 64
    invoke-static {p0, p1}, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->init(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 65
    invoke-static {p0, p1}, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;->init(Landroid/inputmethodservice/InputMethodService;Landroid/content/SharedPreferences;)V

    .line 66
    invoke-static {p0, p1}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->init(Landroid/inputmethodservice/InputMethodService;Landroid/content/SharedPreferences;)V

    .line 67
    return-void
.end method

.method private initInternal(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "context"
    .parameter "prefs"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->mContext:Landroid/content/Context;

    .line 79
    const-string v1, "accessibility"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 81
    new-instance v1, Lcom/android/inputmethod/compat/AccessibilityManagerCompatWrapper;

    iget-object v2, p0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {v1, v2}, Lcom/android/inputmethod/compat/AccessibilityManagerCompatWrapper;-><init>(Landroid/view/accessibility/AccessibilityManager;)V

    iput-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->mCompatManager:Lcom/android/inputmethod/compat/AccessibilityManagerCompatWrapper;

    .line 83
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 85
    .local v0, audioManager:Landroid/media/AudioManager;
    new-instance v1, Lcom/android/inputmethod/compat/AudioManagerCompatWrapper;

    invoke-direct {v1, v0}, Lcom/android/inputmethod/compat/AudioManagerCompatWrapper;-><init>(Landroid/media/AudioManager;)V

    iput-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->mAudioManager:Lcom/android/inputmethod/compat/AudioManagerCompatWrapper;

    .line 86
    return-void
.end method


# virtual methods
.method public isTouchExplorationEnabled()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->mCompatManager:Lcom/android/inputmethod/compat/AccessibilityManagerCompatWrapper;

    invoke-virtual {v0}, Lcom/android/inputmethod/compat/AccessibilityManagerCompatWrapper;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStartInputViewInternal(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 3
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->shouldObscureInput(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 180
    .local v0, text:Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->speak(Ljava/lang/CharSequence;)V

    .line 182
    .end local v0           #text:Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method public shouldObscureInput(Landroid/view/inputmethod/EditorInfo;)Z
    .locals 4
    .parameter "attribute"

    .prologue
    const/4 v1, 0x0

    .line 124
    if-nez p1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v1

    .line 128
    :cond_1
    sget-object v2, Lcom/android/inputmethod/compat/SettingsSecureCompatUtils;->ACCESSIBILITY_SPEAK_PASSWORD:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 129
    iget-object v2, p0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/inputmethod/compat/SettingsSecureCompatUtils;->ACCESSIBILITY_SPEAK_PASSWORD:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    .line 131
    .local v0, speakPassword:Z
    :goto_1
    if-nez v0, :cond_0

    .line 136
    .end local v0           #speakPassword:Z
    :cond_2
    iget-object v2, p0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->mAudioManager:Lcom/android/inputmethod/compat/AudioManagerCompatWrapper;

    invoke-virtual {v2}, Lcom/android/inputmethod/compat/AudioManagerCompatWrapper;->isWiredHeadsetOn()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->mAudioManager:Lcom/android/inputmethod/compat/AudioManagerCompatWrapper;

    invoke-virtual {v2}, Lcom/android/inputmethod/compat/AudioManagerCompatWrapper;->isBluetoothA2dpOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v1}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isPasswordInputType(I)Z

    move-result v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 129
    goto :goto_1
.end method

.method public speak(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    sget-object v1, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->TAG:Ljava/lang/String;

    const-string v2, "Attempted to speak when accessibility was disabled!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_0
    return-void

    .line 158
    :cond_0
    const/16 v1, 0x8

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 161
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    sget-object v1, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 162
    sget-object v1, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->CLASS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 163
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    .line 164
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 165
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method
