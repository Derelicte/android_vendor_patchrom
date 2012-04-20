.class public Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
.super Ljava/lang/Object;
.source "KeyboardSwitcher.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;
    }
.end annotation


# static fields
.field private static final DEBUG_CACHE:Z

.field private static final KEYBOARD_THEMES:[I

.field private static final TAG:Ljava/lang/String;

.field private static mLayoutSwitchBackSymbols:Ljava/lang/String;

.field private static final sInstance:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;


# instance fields
.field private mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

.field private mCurrentInputView:Lcom/android/inputmethod/latin/InputView;

.field private mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

.field private mIsAutoCorrectionActive:Z

.field private final mKeyboardCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/inputmethod/keyboard/KeyboardId;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/android/inputmethod/keyboard/LatinKeyboard;",
            ">;>;"
        }
    .end annotation
.end field

.field private mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

.field private mMainKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

.field private mPackageName:Ljava/lang/String;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mResources:Landroid/content/res/Resources;

.field private mSavedKeyboardState:Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;

.field private mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

.field private mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

.field private mSwitchState:I

.field private mSymbolKeyState:Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;

.field private mSymbolsKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

.field private mSymbolsShiftedKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

.field private mThemeContext:Landroid/content/Context;

.field private mThemeIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    .line 50
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->DEBUG_CACHE:Z

    .line 54
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->KEYBOARD_THEMES:[I

    .line 107
    new-instance v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;-><init>()V

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->sInstance:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    return-void

    .line 54
    :array_0
    .array-data 0x4
        0x28t 0x0t 0xet 0x7ft
        0x27t 0x0t 0xet 0x7ft
        0x2ct 0x0t 0xet 0x7ft
        0x2bt 0x0t 0xet 0x7ft
        0x29t 0x0t 0xet 0x7ft
        0x2at 0x0t 0xet 0x7ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    const-string v1, "Shift"

    invoke-direct {v0, v1}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    .line 74
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;

    const-string v1, "Symbol"

    invoke-direct {v0, v1}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolKeyState:Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardCache:Ljava/util/HashMap;

    .line 84
    new-instance v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;-><init>(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;Lcom/android/inputmethod/keyboard/KeyboardSwitcher$1;)V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSavedKeyboardState:Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mThemeIndex:I

    .line 164
    return-void
.end method

.method static synthetic access$100(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)Lcom/android/inputmethod/keyboard/KeyboardId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)Lcom/android/inputmethod/keyboard/KeyboardId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolsShiftedKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)Lcom/android/inputmethod/keyboard/KeyboardId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mMainKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)Lcom/android/inputmethod/keyboard/KeyboardId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolsKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;)Lcom/android/inputmethod/latin/LatinIME;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    return-object v0
.end method

.method private createInputView(IZ)Landroid/view/View;
    .locals 7
    .parameter "newThemeIndex"
    .parameter "forceRecreate"

    .prologue
    .line 769
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/android/inputmethod/latin/InputView;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mThemeIndex:I

    if-ne v4, p1, :cond_0

    if-nez p2, :cond_0

    .line 770
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/android/inputmethod/latin/InputView;

    .line 803
    :goto_0
    return-object v4

    .line 772
    :cond_0
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    if-eqz v4, :cond_1

    .line 773
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->closing()V

    .line 776
    :cond_1
    iget v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mThemeIndex:I

    .line 777
    .local v2, oldThemeIndex:I
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$GCUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$GCUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/Utils$GCUtils;->reset()V

    .line 778
    const/4 v3, 0x1

    .line 779
    .local v3, tryGC:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v4, 0x5

    if-ge v1, v4, :cond_2

    if-eqz v3, :cond_2

    .line 781
    :try_start_0
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-direct {p0, v4, p1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setContextThemeWrapper(Landroid/content/Context;I)V

    .line 782
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mThemeContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/high16 v5, 0x7f03

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/inputmethod/latin/InputView;

    iput-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/android/inputmethod/latin/InputView;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 784
    const/4 v3, 0x0

    .line 779
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 785
    :catch_0
    move-exception v0

    .line 786
    .local v0, e:Ljava/lang/OutOfMemoryError;
    sget-object v4, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load keyboard failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$GCUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$GCUtils;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/android/inputmethod/latin/Utils$GCUtils;->tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v3

    .line 793
    goto :goto_2

    .line 789
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 790
    .local v0, e:Landroid/view/InflateException;
    sget-object v4, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load keyboard failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$GCUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$GCUtils;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/android/inputmethod/latin/Utils$GCUtils;->tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v3

    goto :goto_2

    .line 796
    .end local v0           #e:Landroid/view/InflateException;
    :cond_2
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/android/inputmethod/latin/InputView;

    const v5, 0x7f07003a

    invoke-virtual {v4, v5}, Lcom/android/inputmethod/latin/InputView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    iput-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    .line 797
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v4, v5}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->setKeyboardActionListener(Lcom/android/inputmethod/keyboard/KeyboardActionListener;)V

    .line 801
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-static {v4}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->setView(Lcom/android/inputmethod/keyboard/LatinKeyboardView;)V

    .line 803
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/android/inputmethod/latin/InputView;

    goto/16 :goto_0
.end method

.method private static getF2KeyMode(ZZ)I
    .locals 1
    .parameter "settingsKeyEnabled"
    .parameter "noSettingsKey"

    .prologue
    .line 842
    if-eqz p1, :cond_0

    .line 844
    const/4 v0, 0x2

    .line 852
    :goto_0
    return v0

    .line 847
    :cond_0
    if-eqz p0, :cond_1

    .line 848
    const/4 v0, 0x1

    goto :goto_0

    .line 852
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->sInstance:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    return-object v0
.end method

.method private getKeyboard(Lcom/android/inputmethod/keyboard/KeyboardId;)Lcom/android/inputmethod/keyboard/LatinKeyboard;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 262
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 263
    .local v2, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/inputmethod/keyboard/LatinKeyboard;>;"
    if-nez v2, :cond_1

    move-object v1, v5

    .line 264
    .local v1, keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    :goto_0
    if-nez v1, :cond_3

    .line 265
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    iget-object v6, p1, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    invoke-static {v4, v6}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v3

    .line 267
    .local v3, savedLocale:Ljava/util/Locale;
    :try_start_0
    new-instance v0, Lcom/android/inputmethod/keyboard/LatinKeyboard$Builder;

    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/inputmethod/keyboard/LatinKeyboard$Builder;-><init>(Landroid/content/Context;)V

    .line 268
    .local v0, builder:Lcom/android/inputmethod/keyboard/LatinKeyboard$Builder;
    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/LatinKeyboard$Builder;->load(Lcom/android/inputmethod/keyboard/KeyboardId;)Lcom/android/inputmethod/keyboard/LatinKeyboard$Builder;

    .line 269
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    const-string v6, "SupportTouchPositionCorrection"

    invoke-virtual {v4, v6}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->currentSubtypeContainsExtraValueKey(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/inputmethod/keyboard/LatinKeyboard$Builder;->setTouchPositionCorrectionEnabled(Z)V

    .line 272
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard$Builder;->build()Lcom/android/inputmethod/keyboard/LatinKeyboard;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 274
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-static {v4, v3}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    .line 276
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardCache:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-boolean v4, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->DEBUG_CACHE:Z

    if-eqz v4, :cond_0

    .line 279
    sget-object v6, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keyboard cache size="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ": "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v2, :cond_2

    const-string v4, "LOAD"

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " id="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " theme="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v1, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mThemeId:I

    invoke-static {v7}, Lcom/android/inputmethod/keyboard/Keyboard;->themeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .end local v0           #builder:Lcom/android/inputmethod/keyboard/LatinKeyboard$Builder;
    .end local v3           #savedLocale:Ljava/util/Locale;
    :cond_0
    :goto_2
    iget-boolean v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mIsAutoCorrectionActive:Z

    invoke-virtual {v1, v4}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->onAutoCorrectionStateChanged(Z)Lcom/android/inputmethod/keyboard/Key;

    .line 289
    invoke-virtual {v1, v8}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->setShiftLocked(Z)Z

    .line 290
    invoke-virtual {v1, v8}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->setShifted(Z)Z

    .line 294
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->setSpacebarTextFadeFactor(FLcom/android/inputmethod/keyboard/KeyboardView;)V

    .line 295
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isShortcutImeReady()Z

    move-result v4

    invoke-virtual {v1, v4, v5}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->updateShortcutKey(ZLcom/android/inputmethod/keyboard/KeyboardView;)V

    .line 296
    return-object v1

    .line 263
    .end local v1           #keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-object v1, v4

    goto/16 :goto_0

    .line 274
    .restart local v1       #keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    .restart local v3       #savedLocale:Ljava/util/Locale;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-static {v5, v3}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    throw v4

    .line 279
    .restart local v0       #builder:Lcom/android/inputmethod/keyboard/LatinKeyboard$Builder;
    :cond_2
    const-string v4, "GCed"

    goto :goto_1

    .line 283
    .end local v0           #builder:Lcom/android/inputmethod/keyboard/LatinKeyboard$Builder;
    .end local v3           #savedLocale:Ljava/util/Locale;
    :cond_3
    sget-boolean v4, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->DEBUG_CACHE:Z

    if-eqz v4, :cond_0

    .line 284
    sget-object v4, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keyboard cache size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": HIT  id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " theme="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mThemeId:I

    invoke-static {v7}, Lcom/android/inputmethod/keyboard/Keyboard;->themeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getKeyboardId(Landroid/view/inputmethod/EditorInfo;ZZLcom/android/inputmethod/latin/Settings$Values;)Lcom/android/inputmethod/keyboard/KeyboardId;
    .locals 22
    .parameter "editorInfo"
    .parameter "isSymbols"
    .parameter "isShift"
    .parameter "settingsValues"

    .prologue
    .line 301
    invoke-static/range {p1 .. p1}, Lcom/android/inputmethod/latin/Utils;->getKeyboardMode(Landroid/view/inputmethod/EditorInfo;)I

    move-result v8

    .line 303
    .local v8, mode:I
    packed-switch v8, :pswitch_data_0

    .line 311
    if-eqz p2, :cond_3

    .line 312
    if-eqz p3, :cond_2

    const v4, 0x7f050026

    .line 319
    .local v4, xmlId:I
    :goto_0
    invoke-virtual/range {p4 .. p4}, Lcom/android/inputmethod/latin/Settings$Values;->isSettingsKeyEnabled()Z

    move-result v20

    .line 321
    .local v20, settingsKeyEnabled:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mPackageName:Ljava/lang/String;

    const-string v3, "noMicrophoneKey"

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Lcom/android/inputmethod/latin/Utils;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    const-string v3, "nm"

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Lcom/android/inputmethod/latin/Utils;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    const/16 v19, 0x1

    .line 325
    .local v19, noMicrophone:Z
    :goto_1
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Settings$Values;->isVoiceKeyEnabled(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v19, :cond_5

    const/4 v13, 0x1

    .line 327
    .local v13, voiceKeyEnabled:Z
    :goto_2
    invoke-virtual/range {p4 .. p4}, Lcom/android/inputmethod/latin/Settings$Values;->isVoiceKeyOnMain()Z

    move-result v21

    .line 328
    .local v21, voiceKeyOnMain:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mPackageName:Ljava/lang/String;

    const-string v3, "noSettingsKey"

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Lcom/android/inputmethod/latin/Utils;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v12

    .line 330
    .local v12, noSettingsKey:Z
    if-eqz v20, :cond_6

    if-nez v12, :cond_6

    const/4 v10, 0x1

    .line 331
    .local v10, hasSettingsKey:Z
    :goto_3
    move/from16 v0, v20

    invoke-static {v0, v12}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getF2KeyMode(ZZ)I

    move-result v11

    .line 332
    .local v11, f2KeyMode:I
    if-eqz v13, :cond_7

    move/from16 v0, p2

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    const/4 v14, 0x1

    .line 333
    .local v14, hasShortcutKey:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mPackageName:Ljava/lang/String;

    const-string v3, "forceAscii"

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Lcom/android/inputmethod/latin/Utils;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v18

    .line 335
    .local v18, forceAscii:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    const-string v3, "AsciiCapable"

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->currentSubtypeContainsExtraValueKey(Ljava/lang/String;)Z

    move-result v15

    .line 337
    .local v15, asciiCapable:Z
    if-eqz v18, :cond_8

    if-nez v15, :cond_8

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 339
    .local v5, locale:Ljava/util/Locale;
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v16

    .line 340
    .local v16, conf:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    .line 342
    .local v17, dm:Landroid/util/DisplayMetrics;
    new-instance v2, Lcom/android/inputmethod/keyboard/KeyboardId;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, v17

    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v9, p1

    invoke-direct/range {v2 .. v14}, Lcom/android/inputmethod/keyboard/KeyboardId;-><init>(Ljava/lang/String;ILjava/util/Locale;IIILandroid/view/inputmethod/EditorInfo;ZIZZZ)V

    return-object v2

    .line 305
    .end local v4           #xmlId:I
    .end local v5           #locale:Ljava/util/Locale;
    .end local v10           #hasSettingsKey:Z
    .end local v11           #f2KeyMode:I
    .end local v12           #noSettingsKey:Z
    .end local v13           #voiceKeyEnabled:Z
    .end local v14           #hasShortcutKey:Z
    .end local v15           #asciiCapable:Z
    .end local v16           #conf:Landroid/content/res/Configuration;
    .end local v17           #dm:Landroid/util/DisplayMetrics;
    .end local v18           #forceAscii:Z
    .end local v19           #noMicrophone:Z
    .end local v20           #settingsKeyEnabled:Z
    .end local v21           #voiceKeyOnMain:Z
    :pswitch_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    const v4, 0x7f050008

    .line 306
    .restart local v4       #xmlId:I
    :goto_6
    goto/16 :goto_0

    .line 305
    .end local v4           #xmlId:I
    :cond_1
    const v4, 0x7f050007

    goto :goto_6

    .line 308
    :pswitch_1
    const v4, 0x7f050005

    .line 309
    .restart local v4       #xmlId:I
    goto/16 :goto_0

    .line 312
    .end local v4           #xmlId:I
    :cond_2
    const v4, 0x7f050023

    goto/16 :goto_0

    .line 314
    :cond_3
    const v4, 0x7f050009

    .restart local v4       #xmlId:I
    goto/16 :goto_0

    .line 321
    .restart local v20       #settingsKeyEnabled:Z
    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 325
    .restart local v19       #noMicrophone:Z
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 330
    .restart local v12       #noSettingsKey:Z
    .restart local v13       #voiceKeyEnabled:Z
    .restart local v21       #voiceKeyOnMain:Z
    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    .line 332
    .restart local v10       #hasSettingsKey:Z
    .restart local v11       #f2KeyMode:I
    :cond_7
    const/4 v14, 0x0

    goto :goto_4

    .line 337
    .restart local v14       #hasShortcutKey:Z
    .restart local v15       #asciiCapable:Z
    .restart local v18       #forceAscii:Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v5

    goto :goto_5

    .line 303
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getKeyboardThemeIndex(Landroid/content/Context;Landroid/content/SharedPreferences;)I
    .locals 6
    .parameter "context"
    .parameter "prefs"

    .prologue
    .line 181
    const/high16 v3, 0x7f0b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, defaultThemeId:Ljava/lang/String;
    const-string v3, "pref_keyboard_layout_20110916"

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, themeId:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 185
    .local v2, themeIndex:I
    if-ltz v2, :cond_0

    sget-object v3, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->KEYBOARD_THEMES:[I

    array-length v3, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v2, v3, :cond_0

    .line 191
    .end local v2           #themeIndex:I
    :goto_0
    return v2

    .line 187
    :catch_0
    move-exception v3

    .line 190
    :cond_0
    sget-object v3, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal keyboard theme in preference: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", default to 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getPointerCount()I
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getPointerCount()I

    move-result v0

    goto :goto_0
.end method

.method private getSwitchState(Lcom/android/inputmethod/keyboard/KeyboardId;)I
    .locals 1
    .parameter "id"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mMainKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {p1, v0}, Lcom/android/inputmethod/keyboard/KeyboardId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static init(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter "ims"
    .parameter "prefs"

    .prologue
    .line 167
    sget-object v0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->sInstance:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-direct {v0, p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->initInternal(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;)V

    .line 168
    return-void
.end method

.method private initInternal(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter "ims"
    .parameter "prefs"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    .line 172
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/LatinIME;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mPackageName:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    .line 174
    iput-object p2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    .line 175
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    .line 176
    invoke-static {p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardThemeIndex(Landroid/content/Context;Landroid/content/SharedPreferences;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setContextThemeWrapper(Landroid/content/Context;I)V

    .line 177
    invoke-interface {p2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 178
    return-void
.end method

.method private static isLayoutSwitchBackCharacter(I)Z
    .locals 2
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    .line 686
    sget-object v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mLayoutSwitchBackSymbols:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 688
    :cond_0
    :goto_0
    return v0

    .line 687
    :cond_1
    sget-object v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mLayoutSwitchBackSymbols:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isManualTemporaryUpperCaseFromAuto()Z
    .locals 2

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 412
    .local v0, latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isManualTemporaryUpperCaseFromAuto()Z

    move-result v1

    .line 414
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isShiftLockShifted()Z
    .locals 2

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 391
    .local v0, latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isShiftLockShifted()Z

    move-result v1

    .line 393
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isSpaceCharacter(I)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 682
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private postSetInputView(Landroid/view/View;)V
    .locals 2
    .parameter "newInputView"

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    new-instance v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$1;

    invoke-direct {v1, p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$1;-><init>(Lcom/android/inputmethod/keyboard/KeyboardSwitcher;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->post(Ljava/lang/Runnable;)Z

    .line 816
    return-void
.end method

.method private setAutomaticTemporaryUpperCase()V
    .locals 2

    .prologue
    .line 475
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    if-nez v1, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v0

    .line 477
    .local v0, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/Keyboard;->setAutomaticTemporaryUpperCase()V

    .line 479
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->invalidateAllKeys()V

    goto :goto_0
.end method

.method private setContextThemeWrapper(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "themeIndex"

    .prologue
    .line 195
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mThemeIndex:I

    if-eq v0, p2, :cond_0

    .line 196
    iput p2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mThemeIndex:I

    .line 197
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget-object v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->KEYBOARD_THEMES:[I

    aget v1, v1, p2

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mThemeContext:Landroid/content/Context;

    .line 198
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 200
    :cond_0
    return-void
.end method

.method private setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V
    .locals 6
    .parameter "keyboard"

    .prologue
    .line 229
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v1

    .line 230
    .local v1, oldKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v2, p1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 231
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/android/inputmethod/latin/InputView;

    iget v3, p1, Lcom/android/inputmethod/keyboard/Keyboard;->mTopPadding:I

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/InputView;->setKeyboardGeometry(I)V

    .line 232
    iget-object v2, p1, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    .line 233
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-direct {p0, v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getSwitchState(Lcom/android/inputmethod/keyboard/KeyboardId;)I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    .line 234
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftLockState(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 235
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-static {v3, v4}, Lcom/android/inputmethod/latin/Settings$Values;->isKeyPreviewPopupEnabled(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-static {v4, v5}, Lcom/android/inputmethod/latin/Settings$Values;->getKeyPreviewPopupDismissDelay(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->setKeyPreviewPopupEnabled(ZI)V

    .line 238
    if-eqz v1, :cond_0

    iget-object v2, p1, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v2, v2, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    iget-object v3, v1, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v3, v3, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 240
    .local v0, localeChanged:Z
    :goto_0
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    iget-object v2, v2, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->startDisplayLanguageOnSpacebar(Z)V

    .line 241
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 242
    return-void

    .line 238
    .end local v0           #localeChanged:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setManualTemporaryUpperCase(Z)V
    .locals 2
    .parameter "shifted"

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 419
    .local v0, latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->hasDistinctMultitouch()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isShiftLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->setShiftLocked(Z)Z

    .line 427
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->setShifted(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 428
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->invalidateAllKeys()V

    .line 431
    :cond_1
    return-void
.end method

.method private setShiftLocked(Z)V
    .locals 2
    .parameter "shiftLocked"

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 435
    .local v0, latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->setShiftLocked(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->invalidateAllKeys()V

    .line 438
    :cond_0
    return-void
.end method

.method private toggleKeyboardMode()V
    .locals 2

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mMainKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolsKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/android/inputmethod/keyboard/KeyboardId;)Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 675
    :goto_0
    return-void

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mMainKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/android/inputmethod/keyboard/KeyboardId;)Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    goto :goto_0
.end method

.method private toggleShiftInSymbol()V
    .locals 3

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 654
    :goto_0
    return-void

    .line 647
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolsKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolsShiftedKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 649
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolsShiftedKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/android/inputmethod/keyboard/KeyboardId;)Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 653
    .local v0, keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    goto :goto_0

    .line 651
    .end local v0           #keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    :cond_2
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolsKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/android/inputmethod/keyboard/KeyboardId;)Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .restart local v0       #keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    goto :goto_1
.end method

.method private updateShiftLockState(Lcom/android/inputmethod/keyboard/Keyboard;)V
    .locals 2
    .parameter "keyboard"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolsShiftedKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Keyboard;->hasShiftLockKey()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/inputmethod/keyboard/Keyboard;->setShiftLocked(Z)Z

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolsKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/inputmethod/keyboard/Keyboard;->setShiftLocked(Z)Z

    goto :goto_0
.end method


# virtual methods
.method public changeKeyboardMode()V
    .locals 1

    .prologue
    .line 515
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleKeyboardMode()V

    .line 516
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setShiftLocked(Z)V

    .line 518
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 519
    return-void
.end method

.method public getKeyboardMode()I
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    return-object v0
.end method

.method public getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;
    .locals 2

    .prologue
    .line 367
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v0

    .line 369
    .local v0, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    instance-of v1, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    if-eqz v1, :cond_0

    .line 370
    check-cast v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    .line 372
    .end local v0           #keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDistinctMultitouch()Z
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->hasDistinctMultitouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAlphabetMode()Z
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardId;->isAlphabetKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutomaticTemporaryUpperCase()Z
    .locals 2

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 398
    .local v0, latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isAutomaticTemporaryUpperCase()Z

    move-result v1

    .line 400
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInMomentarySwitchState()Z
    .locals 2

    .prologue
    .line 657
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInputViewShown()Z
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/android/inputmethod/latin/InputView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentInputView:Lcom/android/inputmethod/latin/InputView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/InputView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyboardAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 361
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 363
    :cond_0
    return v0
.end method

.method public isManualTemporaryUpperCase()Z
    .locals 2

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 405
    .local v0, latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isManualTemporaryUpperCase()Z

    move-result v1

    .line 407
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isShiftLocked()Z
    .locals 2

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 384
    .local v0, latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isShiftLocked()Z

    move-result v1

    .line 386
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isShiftedOrShiftLocked()Z
    .locals 2

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 377
    .local v0, latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isShiftedOrShiftLocked()Z

    move-result v1

    .line 379
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVibrateAndSoundFeedbackRequired()Z
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->isInSlidingKeyInput()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadKeyboard(Landroid/view/inputmethod/EditorInfo;Lcom/android/inputmethod/latin/Settings$Values;)V
    .locals 4
    .parameter "editorInfo"
    .parameter "settingsValues"

    .prologue
    .line 204
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardId(Landroid/view/inputmethod/EditorInfo;ZZLcom/android/inputmethod/latin/Settings$Values;)Lcom/android/inputmethod/keyboard/KeyboardId;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mMainKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    .line 205
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardId(Landroid/view/inputmethod/EditorInfo;ZZLcom/android/inputmethod/latin/Settings$Values;)Lcom/android/inputmethod/keyboard/KeyboardId;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolsKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    .line 206
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardId(Landroid/view/inputmethod/EditorInfo;ZZLcom/android/inputmethod/latin/Settings$Values;)Lcom/android/inputmethod/keyboard/KeyboardId;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolsShiftedKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    .line 207
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mLayoutSwitchBackSymbols:Ljava/lang/String;

    .line 208
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSavedKeyboardState:Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->getKeyboardId()Lcom/android/inputmethod/keyboard/KeyboardId;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboard(Lcom/android/inputmethod/keyboard/KeyboardId;)Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 209
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSavedKeyboardState:Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->restore()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, e:Ljava/lang/RuntimeException;
    sget-object v1, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loading keyboard failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mMainKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mMainKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onAutoCorrectionStateChanged(Z)V
    .locals 4
    .parameter "isAutoCorrection"

    .prologue
    .line 829
    iget-boolean v3, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mIsAutoCorrectionActive:Z

    if-eq v3, p1, :cond_0

    .line 830
    iput-boolean p1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mIsAutoCorrectionActive:Z

    .line 831
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v1

    .line 832
    .local v1, keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->needsAutoCorrectionSpacebarLed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 833
    invoke-virtual {v1, p1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->onAutoCorrectionStateChanged(Z)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .line 834
    .local v0, invalidatedKey:Lcom/android/inputmethod/keyboard/Key;
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v2

    .line 835
    .local v2, keyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;
    if-eqz v2, :cond_0

    .line 836
    invoke-virtual {v2, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->invalidateKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 839
    .end local v0           #invalidatedKey:Lcom/android/inputmethod/keyboard/Key;
    .end local v1           #keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    .end local v2           #keyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;
    :cond_0
    return-void
.end method

.method public onCancelInput()V
    .locals 2

    .prologue
    .line 634
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 635
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 636
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->changeKeyboardMode()V

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 638
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    goto :goto_0
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 2

    .prologue
    .line 765
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mThemeIndex:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->createInputView(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onFinishInputView()V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mIsAutoCorrectionActive:Z

    .line 222
    return-void
.end method

.method public onHideWindow()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mIsAutoCorrectionActive:Z

    .line 226
    return-void
.end method

.method public onKey(I)V
    .locals 3
    .parameter "code"

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 698
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    packed-switch v0, :pswitch_data_0

    .line 758
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 706
    :pswitch_1
    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    .line 708
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mMainKeyboardId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 709
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    goto :goto_0

    .line 711
    :cond_1
    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    goto :goto_0

    .line 713
    :cond_2
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 718
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->changeKeyboardMode()V

    goto :goto_0

    .line 722
    :cond_3
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    goto :goto_0

    .line 726
    :pswitch_2
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 728
    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    goto :goto_0

    .line 729
    :cond_4
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 732
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    .line 733
    iput v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    goto :goto_0

    .line 737
    :cond_5
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    goto :goto_0

    .line 741
    :pswitch_3
    invoke-static {p1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isSpaceCharacter(I)Z

    move-result v0

    if-nez v0, :cond_6

    if-ltz p1, :cond_6

    .line 742
    iput v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    .line 745
    :cond_6
    invoke-static {p1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isLayoutSwitchBackCharacter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->changeKeyboardMode()V

    goto :goto_0

    .line 753
    :pswitch_4
    invoke-static {p1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isSpaceCharacter(I)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isLayoutSwitchBackCharacter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    :cond_7
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->changeKeyboardMode()V

    goto :goto_0

    .line 698
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onOtherKeyPressed()V
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->onOtherKeyPressed()V

    .line 629
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolKeyState:Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;->onOtherKeyPressed()V

    .line 630
    return-void
.end method

.method public onPressShift(Z)V
    .locals 3
    .parameter "withSliding"

    .prologue
    const/4 v2, 0x1

    .line 522
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isKeyboardAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 555
    :goto_0
    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    .line 529
    .local v0, shiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 530
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 533
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->onPress()V

    .line 534
    invoke-direct {p0, v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setManualTemporaryUpperCase(Z)V

    goto :goto_0

    .line 535
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAutomaticTemporaryUpperCase()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 538
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->onPress()V

    .line 539
    invoke-direct {p0, v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setManualTemporaryUpperCase(Z)V

    goto :goto_0

    .line 540
    :cond_2
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 543
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->onPressOnShifted()V

    goto :goto_0

    .line 546
    :cond_3
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->onPress()V

    .line 547
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    goto :goto_0

    .line 551
    :cond_4
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->onPress()V

    .line 552
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    .line 553
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    goto :goto_0
.end method

.method public onPressSymbol()V
    .locals 1

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->changeKeyboardMode()V

    .line 605
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolKeyState:Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;->onPress()V

    .line 606
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    .line 607
    return-void
.end method

.method public onReleaseShift(Z)V
    .locals 3
    .parameter "withSliding"

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isKeyboardAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 597
    :goto_0
    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    .line 565
    .local v0, shiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 566
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->isMomentary()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 568
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    .line 596
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->onRelease()V

    goto :goto_0

    .line 569
    :cond_2
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftLocked()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftLockShifted()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->isPressing()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_1

    .line 572
    :cond_3
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftLocked()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->isIgnoring()Z

    move-result v1

    if-nez v1, :cond_4

    if-nez p1, :cond_4

    .line 574
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleCapsLock()V

    .line 578
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->startIgnoringDoubleTap()V

    goto :goto_1

    .line 579
    :cond_4
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->isPressingOnShifted()Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez p1, :cond_5

    .line 582
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    goto :goto_1

    .line 583
    :cond_5
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isManualTemporaryUpperCaseFromAuto()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->isPressing()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 587
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    goto :goto_1

    .line 592
    :cond_6
    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 593
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    goto :goto_1
.end method

.method public onReleaseSymbol()V
    .locals 2

    .prologue
    .line 616
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSwitchState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 617
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->changeKeyboardMode()V

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSymbolKeyState:Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;->onRelease()V

    .line 620
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 820
    const-string v1, "pref_keyboard_layout_20110916"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 821
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-static {v1, p1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardThemeIndex(Landroid/content/Context;Landroid/content/SharedPreferences;)I

    move-result v0

    .line 822
    .local v0, themeIndex:I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->createInputView(IZ)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->postSetInputView(Landroid/view/View;)V

    .line 826
    .end local v0           #themeIndex:I
    :cond_0
    :goto_0
    return-void

    .line 823
    :cond_1
    const-string v1, "show_settings_key"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 824
    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mThemeIndex:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->createInputView(IZ)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->postSetInputView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public saveKeyboardState()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mSavedKeyboardState:Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher$KeyboardLayoutState;->save()V

    .line 218
    return-void
.end method

.method public toggleCapsLock()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelUpdateShiftState()V

    .line 462
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setShiftLocked(Z)V

    .line 467
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->onRelease()V

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setShiftLocked(Z)V

    goto :goto_0
.end method

.method public toggleShift()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelUpdateShiftState()V

    .line 449
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setManualTemporaryUpperCase(Z)V

    .line 454
    :goto_1
    return-void

    .line 450
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 452
    :cond_1
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleShiftInSymbol()V

    goto :goto_1
.end method

.method public updateShiftState()V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    .line 494
    .local v0, shiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 495
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftLocked()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->isIgnoring()Z

    move-result v1

    if-nez v1, :cond_0

    .line 496
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->isReleasing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentAutoCapsState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 498
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setAutomaticTemporaryUpperCase()V

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->isMomentary()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->setManualTemporaryUpperCase(Z)V

    goto :goto_0

    .line 506
    :cond_2
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->onRelease()V

    goto :goto_0
.end method
