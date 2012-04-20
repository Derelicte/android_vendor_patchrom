.class public Lcom/android/inputmethod/latin/SubtypeSwitcher;
.super Ljava/lang/Object;
.source "SubtypeSwitcher.java"


# static fields
.field private static DBG:Z

.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/android/inputmethod/latin/SubtypeSwitcher;


# instance fields
.field private mAllEnabledSubtypesOfCurrentInputMethod:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mCurrentSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

.field private final mEnabledKeyboardSubtypesOfCurrentInputMethod:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

.field private mInputLocale:Ljava/util/Locale;

.field private mInputLocaleStr:Ljava/lang/String;

.field private mIsNetworkConnected:Z

.field private mIsSystemLanguageSameAsInputLanguage:Z

.field private final mLocaleSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private mNeedsToDisplayLanguage:Z

.field private mResources:Landroid/content/res/Resources;

.field private mService:Lcom/android/inputmethod/latin/LatinIME;

.field private mShortcutInputMethodInfo:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

.field private mShortcutSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

.field private mSystemLocale:Ljava/util/Locale;

.field private mVoiceInputWrapper:Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->DBG:Z

    .line 48
    const-class v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->sInstance:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x5f

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mLocaleSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledKeyboardSubtypesOfCurrentInputMethod:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/latin/SubtypeSwitcher;)Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/inputmethod/latin/SubtypeSwitcher;)Lcom/android/inputmethod/latin/LatinIME;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mService:Lcom/android/inputmethod/latin/LatinIME;

    return-object v0
.end method

.method private static contains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "hay"
    .parameter "needle"

    .prologue
    .line 377
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 378
    .local v1, element:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 379
    const/4 v4, 0x1

    .line 381
    .end local v1           #element:Ljava/lang/String;
    :goto_1
    return v4

    .line 377
    .restart local v1       #element:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 381
    .end local v1           #element:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->sInstance:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    return-object v0
.end method

.method private static getSubtypeLocale(Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)Ljava/lang/String;
    .locals 2
    .parameter "subtype"

    .prologue
    .line 199
    const-string v1, "KeyboardLocale"

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, keyboardLocale:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #keyboardLocale:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #keyboardLocale:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getLocale()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static init(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 90
    invoke-static {p0}, Lcom/android/inputmethod/latin/SubtypeLocale;->init(Landroid/content/Context;)V

    .line 91
    sget-object v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->sInstance:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->initialize(Lcom/android/inputmethod/latin/LatinIME;)V

    .line 92
    sget-object v0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->sInstance:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateAllParameters()V

    .line 93
    return-void
.end method

.method private initialize(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 3
    .parameter "service"

    .prologue
    const/4 v2, 0x0

    .line 100
    iput-object p1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mService:Lcom/android/inputmethod/latin/LatinIME;

    .line 101
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mResources:Landroid/content/res/Resources;

    .line 102
    invoke-static {}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getInstance()Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    .line 103
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Lcom/android/inputmethod/latin/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 105
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledKeyboardSubtypesOfCurrentInputMethod:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 106
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 107
    iput-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    .line 108
    iput-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocale:Ljava/util/Locale;

    .line 109
    iput-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    .line 110
    iput-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .line 111
    iput-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mAllEnabledSubtypesOfCurrentInputMethod:Ljava/util/List;

    .line 112
    iput-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mVoiceInputWrapper:Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;

    .line 114
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 115
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mIsNetworkConnected:Z

    .line 116
    return-void

    .line 115
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVoiceSupported(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "locale"

    .prologue
    .line 553
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/inputmethod/deprecated/VoiceProxy;->getSupportedLocalesString(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, supportedLocalesString:Ljava/lang/String;
    const-string v2, "\\s+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 557
    .local v1, voiceInputSupportedLocales:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private switchToTargetIME(Ljava/lang/String;Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V
    .locals 4
    .parameter "imiId"
    .parameter "subtype"

    .prologue
    .line 321
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->getWindow()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v0, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 322
    .local v0, token:Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 343
    :goto_0
    return-void

    .line 325
    :cond_0
    new-instance v1, Lcom/android/inputmethod/latin/SubtypeSwitcher$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/inputmethod/latin/SubtypeSwitcher$1;-><init>(Lcom/android/inputmethod/latin/SubtypeSwitcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/android/inputmethod/latin/SubtypeSwitcher$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private triggerVoiceIME()V
    .locals 3

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME;->isInputViewShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    :goto_0
    return-void

    .line 515
    :cond_0
    invoke-static {}, Lcom/android/inputmethod/deprecated/VoiceProxy;->getInstance()Lcom/android/inputmethod/deprecated/VoiceProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/deprecated/VoiceProxy;->startListening(ZLandroid/os/IBinder;)V

    goto :goto_0
.end method

.method private updateAllParameters()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    .line 122
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {v0}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getCurrentInputMethodSubtype()Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateSubtype(Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateParametersOnStartInputView()V

    .line 124
    return-void
.end method

.method private updateEnabledSubtypes()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 135
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getCurrentSubtypeMode()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, currentMode:Ljava/lang/String;
    const/4 v1, 0x1

    .line 137
    .local v1, foundCurrentSubtypeBecameDisabled:Z
    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v6}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getEnabledInputMethodSubtypeList(Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;Z)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mAllEnabledSubtypesOfCurrentInputMethod:Ljava/util/List;

    .line 139
    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 140
    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledKeyboardSubtypesOfCurrentInputMethod:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 141
    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mAllEnabledSubtypesOfCurrentInputMethod:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .line 142
    .local v3, ims:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    invoke-static {v3}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getSubtypeLocale(Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, locale:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getMode()Ljava/lang/String;

    move-result-object v5

    .line 144
    .local v5, mode:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mLocaleSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v7, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 145
    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mLocaleSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 146
    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mLocaleSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v8}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_1
    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 149
    const/4 v1, 0x0

    .line 151
    :cond_2
    const-string v7, "keyboard"

    invoke-virtual {v3}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 152
    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledKeyboardSubtypesOfCurrentInputMethod:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    .end local v3           #ims:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    .end local v4           #locale:Ljava/lang/String;
    .end local v5           #mode:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getEnabledKeyboardLocaleCount()I

    move-result v7

    if-gt v7, v6, :cond_4

    iget-boolean v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mIsSystemLanguageSameAsInputLanguage:Z

    if-nez v7, :cond_7

    :cond_4
    :goto_1
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mNeedsToDisplayLanguage:Z

    .line 157
    if-eqz v1, :cond_6

    .line 158
    sget-boolean v6, Lcom/android/inputmethod/latin/SubtypeSwitcher;->DBG:Z

    if-eqz v6, :cond_5

    .line 159
    sget-object v6, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current subtype: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    sget-object v6, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    const-string v7, "Last subtype was disabled. Update to the current one."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_5
    iget-object v6, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {v6}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getCurrentInputMethodSubtype()Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateSubtype(Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V

    .line 164
    :cond_6
    return-void

    .line 155
    :cond_7
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private updateInputLocale(Ljava/lang/String;)V
    .locals 5
    .parameter "inputLocaleStr"

    .prologue
    const/4 v2, 0x1

    .line 290
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 291
    invoke-static {p1}, Lcom/android/inputmethod/latin/LocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocale:Ljava/util/Locale;

    .line 292
    iput-object p1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    .line 299
    :goto_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getSystemLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mIsSystemLanguageSameAsInputLanguage:Z

    .line 301
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getEnabledKeyboardLocaleCount()I

    move-result v1

    if-gt v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mIsSystemLanguageSameAsInputLanguage:Z

    if-nez v1, :cond_3

    :cond_0
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mNeedsToDisplayLanguage:Z

    .line 303
    return-void

    .line 294
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocale:Ljava/util/Locale;

    .line 295
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, country:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 301
    .end local v0           #country:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateShortcutIME()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 167
    sget-boolean v4, Lcom/android/inputmethod/latin/SubtypeSwitcher;->DBG:Z

    if-eqz v4, :cond_0

    .line 168
    sget-object v6, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update shortcut IME from : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    if-nez v4, :cond_3

    const-string v4, "<null>"

    :goto_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    if-nez v4, :cond_4

    const-string v4, "<null>"

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    iget-object v4, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {v4}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getShortcutInputMethodsAndSubtypes()Ljava/util/Map;

    move-result-object v2

    .line 177
    .local v2, shortcuts:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;>;"
    iput-object v5, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    .line 178
    iput-object v5, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .line 179
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    .line 180
    .local v1, imi:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 183
    .local v3, subtypes:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;"
    iput-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    .line 186
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    :goto_2
    iput-object v4, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .line 189
    .end local v1           #imi:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;
    .end local v3           #subtypes:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;"
    :cond_1
    sget-boolean v4, Lcom/android/inputmethod/latin/SubtypeSwitcher;->DBG:Z

    if-eqz v4, :cond_2

    .line 190
    sget-object v5, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update shortcut IME to : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    if-nez v4, :cond_6

    const-string v4, "<null>"

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    if-nez v4, :cond_7

    const-string v4, "<null>"

    :goto_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_2
    return-void

    .line 168
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #shortcuts:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;>;"
    :cond_3
    iget-object v4, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    invoke-virtual {v4}, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->getId()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-static {v8}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getSubtypeLocale(Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v8}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #imi:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;
    .restart local v2       #shortcuts:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;>;"
    .restart local v3       #subtypes:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;"
    :cond_5
    move-object v4, v5

    .line 186
    goto :goto_2

    .line 190
    .end local v1           #imi:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;
    .end local v3           #subtypes:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;>;"
    :cond_6
    iget-object v4, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    invoke-virtual {v4}, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->getId()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-static {v7}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getSubtypeLocale(Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v7}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getMode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4
.end method


# virtual methods
.method public currentSubtypeContainsExtraValueKey(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentSubtypeMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v0}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getMode()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "keyboard"

    goto :goto_0
.end method

.method public getEnabledKeyboardLocaleCount()I
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mEnabledKeyboardSubtypesOfCurrentInputMethod:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getInputLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getInputLocaleStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public isKeyboardMode()Z
    .locals 2

    .prologue
    .line 482
    const-string v0, "keyboard"

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getCurrentSubtypeMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isShortcutImeEnabled()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 385
    iget-object v5, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    if-nez v5, :cond_1

    .line 404
    :cond_0
    :goto_0
    return v3

    .line 388
    :cond_1
    iget-object v5, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    if-nez v5, :cond_2

    move v3, v4

    .line 389
    goto :goto_0

    .line 393
    :cond_2
    iget-object v5, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v5}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->hasOriginalObject()Z

    move-result v5

    if-nez v5, :cond_3

    move v3, v4

    .line 394
    goto :goto_0

    .line 396
    :cond_3
    const/4 v0, 0x1

    .line 398
    .local v0, allowsImplicitlySelectedSubtypes:Z
    iget-object v5, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    iget-object v6, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    invoke-virtual {v5, v6, v4}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getEnabledInputMethodSubtypeList(Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;Z)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .line 400
    .local v1, enabledSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    iget-object v5, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v1, v5}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v3, v4

    .line 401
    goto :goto_0
.end method

.method public isShortcutImeReady()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 408
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    if-nez v1, :cond_1

    .line 409
    const/4 v0, 0x0

    .line 416
    :cond_0
    :goto_0
    return v0

    .line 410
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    if-eqz v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v1}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getExtraValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "requireNetworkConnectivity"

    invoke-static {v1, v2}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mIsNetworkConnected:Z

    goto :goto_0
.end method

.method public isVoiceMode()Z
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "voice"

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getCurrentSubtypeMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public needsToDisplayLanguage(Ljava/util/Locale;)Z
    .locals 1
    .parameter "keyboardLocale"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    const/4 v0, 0x0

    .line 443
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mNeedsToDisplayLanguage:Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "conf"

    .prologue
    .line 474
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 476
    .local v0, systemLocale:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 477
    invoke-direct {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateAllParameters()V

    .line 479
    :cond_0
    return-void
.end method

.method public onNetworkStateChanged(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 420
    const-string v4, "noConnectivity"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 422
    .local v1, noConnection:Z
    if-nez v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mIsNetworkConnected:Z

    .line 424
    invoke-static {}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v2

    .line 425
    .local v2, switcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 426
    .local v0, keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_1

    .line 427
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isShortcutImeReady()Z

    move-result v3

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->updateShortcutKey(ZLcom/android/inputmethod/keyboard/KeyboardView;)V

    .line 429
    :cond_1
    return-void
.end method

.method public switchToShortcutIME()V
    .locals 3

    .prologue
    .line 310
    iget-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    if-nez v2, :cond_0

    .line 317
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    invoke-virtual {v2}, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->getId()Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, imiId:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mShortcutSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .line 316
    .local v1, subtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;
    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->switchToTargetIME(Ljava/lang/String;Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V

    goto :goto_0
.end method

.method public updateParametersOnStartInputView()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateEnabledSubtypes()V

    .line 130
    invoke-direct {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateShortcutIME()V

    .line 131
    return-void
.end method

.method public updateSubtype(Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)V
    .locals 10
    .parameter "newSubtype"

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getCurrentSubtypeMode()Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, oldMode:Ljava/lang/String;
    if-nez p1, :cond_7

    .line 212
    sget-object v7, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    const-string v8, "Couldn\'t get the current subtype."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string v2, "en_US"

    .line 214
    .local v2, newLocale:Ljava/lang/String;
    const-string v3, "keyboard"

    .line 219
    .local v3, newMode:Ljava/lang/String;
    :goto_0
    sget-boolean v7, Lcom/android/inputmethod/latin/SubtypeSwitcher;->DBG:Z

    if-eqz v7, :cond_0

    .line 220
    sget-object v7, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update subtype to:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", from: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    const/4 v0, 0x0

    .line 224
    .local v0, languageChanged:Z
    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 225
    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 226
    const/4 v0, 0x1

    .line 228
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateInputLocale(Ljava/lang/String;)V

    .line 230
    :cond_2
    const/4 v1, 0x0

    .line 231
    .local v1, modeChanged:Z
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 232
    if-eqz v4, :cond_3

    .line 233
    const/4 v1, 0x1

    .line 236
    :cond_3
    iput-object p1, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mCurrentSubtype:Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;

    .line 240
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isKeyboardMode()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 241
    if-eqz v1, :cond_4

    .line 242
    const-string v7, "voice"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mVoiceInputWrapper:Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;

    if-eqz v7, :cond_4

    .line 243
    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mVoiceInputWrapper:Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;

    invoke-virtual {v7}, Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;->cancel()V

    .line 246
    :cond_4
    if-nez v1, :cond_5

    if-eqz v0, :cond_6

    .line 247
    :cond_5
    invoke-direct {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateShortcutIME()V

    .line 248
    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/LatinIME;->onRefreshKeyboard()V

    .line 282
    :cond_6
    :goto_1
    return-void

    .line 216
    .end local v0           #languageChanged:Z
    .end local v1           #modeChanged:Z
    .end local v2           #newLocale:Ljava/lang/String;
    .end local v3           #newMode:Ljava/lang/String;
    :cond_7
    invoke-static {p1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getSubtypeLocale(Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;)Ljava/lang/String;

    move-result-object v2

    .line 217
    .restart local v2       #newLocale:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getMode()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #newMode:Ljava/lang/String;
    goto/16 :goto_0

    .line 250
    .restart local v0       #languageChanged:Z
    .restart local v1       #modeChanged:Z
    :cond_8
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isVoiceMode()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mVoiceInputWrapper:Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;

    if-eqz v7, :cond_b

    .line 251
    const-string v7, "voice"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 252
    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mVoiceInputWrapper:Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;

    invoke-virtual {v7}, Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;->reset()V

    .line 256
    :cond_9
    if-nez v0, :cond_a

    if-nez v1, :cond_a

    invoke-static {}, Lcom/android/inputmethod/deprecated/VoiceProxy;->getInstance()Lcom/android/inputmethod/deprecated/VoiceProxy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/inputmethod/deprecated/VoiceProxy;->needsToShowWarningDialog()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 258
    :cond_a
    invoke-direct {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->triggerVoiceIME()V

    goto :goto_1

    .line 261
    :cond_b
    const-string v7, "voice"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mVoiceInputWrapper:Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;

    if-eqz v7, :cond_c

    .line 264
    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mVoiceInputWrapper:Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;

    invoke-virtual {v7}, Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;->reset()V

    .line 266
    :cond_c
    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/LatinIME;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 267
    .local v5, packageName:Ljava/lang/String;
    const/4 v6, -0x1

    .line 269
    .local v6, version:I
    :try_start_0
    iget-object v7, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/LatinIME;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget v6, v7, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_2
    sget-object v7, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown subtype mode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/inputmethod/latin/SubtypeSwitcher;->mVoiceInputWrapper:Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". IME is already changed to other IME."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    if-eqz p1, :cond_6

    .line 276
    sget-object v7, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Subtype mode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getMode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    sget-object v7, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Subtype locale:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getLocale()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    sget-object v7, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Subtype extra value:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->getExtraValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    sget-object v7, Lcom/android/inputmethod/latin/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Subtype is auxiliary:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/inputmethod/compat/InputMethodSubtypeCompatWrapper;->isAuxiliary()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 271
    :catch_0
    move-exception v7

    goto/16 :goto_2
.end method
