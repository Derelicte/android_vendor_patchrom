.class public Lcom/android/inputmethod/deprecated/VoiceProxy;
.super Ljava/lang/Object;
.source "VoiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;,
        Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceResults;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/android/inputmethod/deprecated/VoiceProxy;


# instance fields
.field private mAfterVoiceInput:Z

.field private mHasUsedVoiceInput:Z

.field private mHasUsedVoiceInputUnsupportedLocale:Z

.field private mImmediatelyAfterVoiceInput:Z

.field private mLocaleSupportedForVoiceInput:Z

.field private mPasswordText:Z

.field private mShowingVoiceSuggestions:Z

.field private mVoiceInputHighlighted:Z

.field private final mVoiceResults:Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceResults;

.field private final mWordToSuggestions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-direct {v0}, Lcom/android/inputmethod/deprecated/VoiceProxy;-><init>()V

    sput-object v0, Lcom/android/inputmethod/deprecated/VoiceProxy;->sInstance:Lcom/android/inputmethod/deprecated/VoiceProxy;

    .line 89
    const-class v0, Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/deprecated/VoiceProxy;->TAG:Ljava/lang/String;

    .line 90
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/deprecated/VoiceProxy;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceResults;

    invoke-direct {v0}, Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceResults;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceResults:Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceResults;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mWordToSuggestions:Ljava/util/Map;

    .line 150
    return-void
.end method

.method public static getInstance()Lcom/android/inputmethod/deprecated/VoiceProxy;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/android/inputmethod/deprecated/VoiceProxy;->sInstance:Lcom/android/inputmethod/deprecated/VoiceProxy;

    return-object v0
.end method

.method public static getSupportedLocalesString(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2
    .parameter "resolver"

    .prologue
    .line 875
    const-string v0, "latin_ime_voice_input_supported_locales"

    const-string v1, "en en_US en_GB en_AU en_CA en_IE en_IN en_NZ en_SG en_ZA "

    invoke-static {p0, v0, v1}, Lcom/android/inputmethod/deprecated/voice/SettingsUtil;->getSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;Lcom/android/inputmethod/latin/LatinIME$UIHandler;)Lcom/android/inputmethod/deprecated/VoiceProxy;
    .locals 1
    .parameter "context"
    .parameter "prefs"
    .parameter "h"

    .prologue
    .line 120
    sget-object v0, Lcom/android/inputmethod/deprecated/VoiceProxy;->sInstance:Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/inputmethod/deprecated/VoiceProxy;->initInternal(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;Lcom/android/inputmethod/latin/LatinIME$UIHandler;)V

    .line 121
    sget-object v0, Lcom/android/inputmethod/deprecated/VoiceProxy;->sInstance:Lcom/android/inputmethod/deprecated/VoiceProxy;

    return-object v0
.end method

.method private initInternal(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;Lcom/android/inputmethod/latin/LatinIME$UIHandler;)V
    .locals 0
    .parameter "service"
    .parameter "prefs"
    .parameter "h"

    .prologue
    .line 130
    return-void
.end method


# virtual methods
.method public commitVoiceInput()V
    .locals 0

    .prologue
    .line 397
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 732
    return-void
.end method

.method public flushAndLogAllTextModificationCounters(ILjava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0
    .parameter "index"
    .parameter "suggestion"
    .parameter "wordSeparators"

    .prologue
    .line 177
    return-void
.end method

.method public flushVoiceInputLogs(Z)V
    .locals 0
    .parameter "configurationChanged"

    .prologue
    .line 162
    return-void
.end method

.method public handleBackspace()V
    .locals 0

    .prologue
    .line 476
    return-void
.end method

.method public handleCharacter()V
    .locals 0

    .prologue
    .line 493
    return-void
.end method

.method public handleClose()V
    .locals 0

    .prologue
    .line 515
    return-void
.end method

.method public handleSeparator()V
    .locals 0

    .prologue
    .line 504
    return-void
.end method

.method public handleVoiceResults(Z)V
    .locals 0
    .parameter "capitalizeFirstWord"

    .prologue
    .line 525
    return-void
.end method

.method public hideVoiceWindow(Z)V
    .locals 0
    .parameter "configurationChanging"

    .prologue
    .line 321
    return-void
.end method

.method public isVoiceInputHighlighted()Z
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInputHighlighted:Z

    return v0
.end method

.method public loadSettings(Landroid/view/inputmethod/EditorInfo;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter "attribute"
    .parameter "sp"

    .prologue
    .line 714
    return-void
.end method

.method public logAndRevertVoiceInput()Z
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x0

    return v0
.end method

.method public needsToShowWarningDialog()Z
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mHasUsedVoiceInput:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mLocaleSupportedForVoiceInput:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mHasUsedVoiceInputUnsupportedLocale:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 760
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "configuration"

    .prologue
    .line 769
    return-void
.end method

.method public onStartInputView(Landroid/os/IBinder;)V
    .locals 0
    .parameter "keyboardViewToken"

    .prologue
    .line 741
    return-void
.end method

.method public rememberReplacedWord(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0
    .parameter "suggestion"
    .parameter "wordSeparators"

    .prologue
    .line 415
    return-void
.end method

.method public resetVoiceStates(Z)V
    .locals 1
    .parameter "isPasswordText"

    .prologue
    const/4 v0, 0x0

    .line 153
    iput-boolean v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mAfterVoiceInput:Z

    .line 154
    iput-boolean v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mImmediatelyAfterVoiceInput:Z

    .line 155
    iput-boolean v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mShowingVoiceSuggestions:Z

    .line 156
    iput-boolean v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInputHighlighted:Z

    .line 157
    iput-boolean p1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mPasswordText:Z

    .line 158
    return-void
.end method

.method public setCursorAndSelection(II)V
    .locals 0
    .parameter "newSelEnd"
    .parameter "newSelStart"

    .prologue
    .line 340
    return-void
.end method

.method public setVoiceInputHighlighted(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 349
    iput-boolean p1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInputHighlighted:Z

    .line 350
    return-void
.end method

.method public showPunctuationHintIfNecessary()V
    .locals 0

    .prologue
    .line 308
    return-void
.end method

.method public startListening(ZLandroid/os/IBinder;)V
    .locals 0
    .parameter "swipe"
    .parameter "token"

    .prologue
    .line 681
    return-void
.end method
