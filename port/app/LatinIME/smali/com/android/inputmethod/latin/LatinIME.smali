.class public Lcom/android/inputmethod/latin/LatinIME;
.super Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;
.source "LatinIME.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/KeyboardActionListener;
.implements Lcom/android/inputmethod/latin/SuggestionsView$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/LatinIME$UIHandler;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static final SUGGESTION_VISIBILITY_VALUE_ARRAY:[I

.field private static final TAG:Ljava/lang/String;

.field private static final sEmptyWordComposer:Lcom/android/inputmethod/latin/WordComposer;


# instance fields
.field private mApplicationSpecifiedCompletionOn:Z

.field private mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBestWord:Ljava/lang/CharSequence;

.field private mCommittedLength:I

.field private final mComposingStateManager:Lcom/android/inputmethod/latin/ComposingStateManager;

.field private final mComposingStringBuilder:Ljava/lang/StringBuilder;

.field private mConfigurationChanging:Z

.field private mCorrectionMode:I

.field private mCpsIntervals:[J

.field private mDeleteCount:I

.field private mDictionaryPackInstallReceiver:Landroid/content/BroadcastReceiver;

.field private mDisplayOrientation:I

.field private mEnteredText:Ljava/lang/CharSequence;

.field private mExpectingUpdateSelection:Z

.field private mExtractArea:Landroid/view/View;

.field private mFxVolume:F

.field public final mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

.field private mHasUncommittedTypedChars:Z

.field private mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

.field private mInputMethodId:Ljava/lang/String;

.field private mInputTypeNoAutoCorrect:Z

.field private mInsertSpaceOnPickSuggestionManually:Z

.field private mIsSettingsSuggestionStripOn:Z

.field private mIsUserDictionaryAvaliable:Z

.field private mJustAddedMagicSpace:Z

.field private mJustReplacedDoubleSpace:Z

.field private mKeyPreviewBackingView:Landroid/view/View;

.field private mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

.field private mKeypressVibrationDuration:J

.field private mLastKeyTime:J

.field private mLastSelectionEnd:I

.field private mLastSelectionStart:I

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResources:Landroid/content/res/Resources;

.field private mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

.field private mSilentModeOn:Z

.field private mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

.field private mSuggest:Lcom/android/inputmethod/latin/Suggest;

.field private mSuggestionVisibility:I

.field private mSuggestionsContainer:Landroid/view/View;

.field private mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

.field private mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

.field private mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

.field private mUserUnigramDictionary:Lcom/android/inputmethod/latin/UserUnigramDictionary;

.field private mVibrator:Lcom/android/inputmethod/compat/VibratorCompatWrapper;

.field private mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

.field private mWordComposer:Lcom/android/inputmethod/latin/WordComposer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    .line 154
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/inputmethod/latin/LatinIME;->SUGGESTION_VISIBILITY_VALUE_ARRAY:[I

    .line 1974
    new-instance v0, Lcom/android/inputmethod/latin/WordComposer;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/WordComposer;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/LatinIME;->sEmptyWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    return-void

    .line 154
    :array_0
    .array-data 0x4
        0x5et 0x0t 0xbt 0x7ft
        0x5ft 0x0t 0xbt 0x7ft
        0x60t 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;-><init>()V

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    .line 190
    new-instance v0, Lcom/android/inputmethod/latin/WordComposer;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/WordComposer;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    .line 213
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mFxVolume:F

    .line 217
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeypressVibrationDuration:J

    .line 226
    new-instance v0, Lcom/android/inputmethod/latin/DictionaryPackInstallBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/DictionaryPackInstallBroadcastReceiver;-><init>(Lcom/android/inputmethod/latin/LatinIME;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mDictionaryPackInstallReceiver:Landroid/content/BroadcastReceiver;

    .line 232
    invoke-static {}, Lcom/android/inputmethod/latin/ComposingStateManager;->getInstance()Lcom/android/inputmethod/latin/ComposingStateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStateManager:Lcom/android/inputmethod/latin/ComposingStateManager;

    .line 235
    new-instance v0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;-><init>(Lcom/android/inputmethod/latin/LatinIME;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    .line 2191
    new-instance v0, Lcom/android/inputmethod/latin/LatinIME$1;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/LatinIME$1;-><init>(Lcom/android/inputmethod/latin/LatinIME;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2398
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCpsIntervals:[J

    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/deprecated/VoiceProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/inputmethod/latin/LatinIME;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->onFinishInputViewInternal(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->onFinishInputInternal()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME;->onStartInputInternal(Landroid/view/inputmethod/EditorInfo;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME;->onStartInputViewInternal(Landroid/view/inputmethod/EditorInfo;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateRingerMode()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/SubtypeSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/inputmethod/latin/LatinIME;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputMethodId:Ljava/lang/String;

    return-object v0
.end method

.method private addToOnlyBigramDictionary(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "suggestion"
    .parameter "frequencyDelta"

    .prologue
    .line 2009
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/LatinIME;->checkAddToDictionary(Ljava/lang/CharSequence;IZ)V

    .line 2010
    return-void
.end method

.method private addToUserUnigramAndBigramDictionaries(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "suggestion"
    .parameter "frequencyDelta"

    .prologue
    .line 2005
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/LatinIME;->checkAddToDictionary(Ljava/lang/CharSequence;IZ)V

    .line 2006
    return-void
.end method

.method private checkAddToDictionary(Ljava/lang/CharSequence;IZ)V
    .locals 9
    .parameter "suggestion"
    .parameter "frequencyDelta"
    .parameter "selectedANotTypedWord"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2018
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v7, v5, :cond_1

    .line 2053
    :cond_0
    :goto_0
    return-void

    .line 2023
    :cond_1
    iget v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    iget v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 2028
    :cond_2
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserUnigramDictionary:Lcom/android/inputmethod/latin/UserUnigramDictionary;

    if-eqz v7, :cond_4

    .line 2029
    if-nez p3, :cond_5

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserUnigramDictionary:Lcom/android/inputmethod/latin/UserUnigramDictionary;

    invoke-virtual {v7, p1}, Lcom/android/inputmethod/latin/UserUnigramDictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v4, v5

    .line 2031
    .local v4, selectedATypedWordAndItsInUserUnigramDic:Z
    :goto_1
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/Suggest;->getUnigramDictionaries()Ljava/util/Map;

    move-result-object v7

    invoke-static {v7, p1, v5}, Lcom/android/inputmethod/latin/AutoCorrection;->isValidWord(Ljava/util/Map;Ljava/lang/CharSequence;Z)Z

    move-result v1

    .line 2033
    .local v1, isValidWord:Z
    if-nez v4, :cond_3

    if-nez v1, :cond_6

    :cond_3
    move v2, v5

    .line 2035
    .local v2, needsToAddToUserUnigramDictionary:Z
    :goto_2
    if-eqz v2, :cond_4

    .line 2036
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserUnigramDictionary:Lcom/android/inputmethod/latin/UserUnigramDictionary;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Lcom/android/inputmethod/latin/UserUnigramDictionary;->addWord(Ljava/lang/String;I)V

    .line 2040
    .end local v1           #isValidWord:Z
    .end local v2           #needsToAddToUserUnigramDictionary:Z
    .end local v4           #selectedATypedWordAndItsInUserUnigramDic:Z
    :cond_4
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

    if-eqz v5, :cond_0

    .line 2044
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2045
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2046
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-object v5, v5, Lcom/android/inputmethod/latin/Settings$Values;->mWordSeparators:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/android/inputmethod/latin/EditingUtils;->getPreviousWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2048
    .local v3, prevWord:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2049
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/inputmethod/latin/UserBigramDictionary;->addBigrams(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v3           #prevWord:Ljava/lang/CharSequence;
    :cond_5
    move v4, v6

    .line 2029
    goto :goto_1

    .restart local v1       #isValidWord:Z
    .restart local v4       #selectedATypedWordAndItsInUserUnigramDic:Z
    :cond_6
    move v2, v6

    .line 2033
    goto :goto_2
.end method

.method private commitBestWord(Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "bestWord"

    .prologue
    const/4 v5, 0x1

    .line 1956
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 1957
    .local v2, switcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isKeyboardAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1972
    :goto_0
    return-void

    .line 1959
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1960
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 1961
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-object v4, v4, Lcom/android/inputmethod/latin/Settings$Values;->mWordSeparators:Ljava/lang/String;

    invoke-virtual {v3, p1, v4}, Lcom/android/inputmethod/deprecated/VoiceProxy;->rememberReplacedWord(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 1962
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v3, v3, Lcom/android/inputmethod/latin/Settings$Values;->mEnableSuggestionSpanInsertion:Z

    if-eqz v3, :cond_2

    .line 1963
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/SuggestionsView;->getSuggestions()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v1

    .line 1964
    .local v1, suggestedWords:Lcom/android/inputmethod/latin/SuggestedWords;
    invoke-static {p0, p1, v1}, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->getTextWithSuggestionSpan(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/SuggestedWords;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v0, v3, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1970
    .end local v1           #suggestedWords:Lcom/android/inputmethod/latin/SuggestedWords;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    .line 1971
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iput v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mCommittedLength:I

    goto :goto_0

    .line 1967
    :cond_2
    invoke-interface {v0, p1, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_1
.end method

.method private handleBackspace(Z)V
    .locals 9
    .parameter "justReplacedDoubleSpace"

    .prologue
    const/16 v8, 0x43

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1389
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-virtual {v6}, Lcom/android/inputmethod/deprecated/VoiceProxy;->logAndRevertVoiceInput()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1459
    :cond_0
    :goto_0
    return-void

    .line 1391
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1392
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_0

    .line 1393
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1395
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-virtual {v6}, Lcom/android/inputmethod/deprecated/VoiceProxy;->handleBackspace()V

    .line 1397
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    if-nez v6, :cond_4

    move v0, v4

    .line 1398
    .local v0, deleteChar:Z
    :goto_1
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    if-eqz v6, :cond_3

    .line 1399
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 1400
    .local v2, length:I
    if-lez v2, :cond_7

    .line 1401
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1402
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/WordComposer;->deleteLast()V

    .line 1403
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStateManager:Lcom/android/inputmethod/latin/ComposingStateManager;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/ComposingStateManager;->isAutoCorrectionIndicatorOn()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {p0, v6}, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->getTextWithAutoCorrectionIndicatorUnderline(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1408
    .local v3, textWithUnderline:Ljava/lang/CharSequence;
    :goto_2
    invoke-interface {v1, v3, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1409
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 1410
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    .line 1412
    :cond_2
    if-ne v4, v2, :cond_6

    .line 1415
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateBigramPredictions()V

    .line 1424
    .end local v2           #length:I
    .end local v3           #textWithUnderline:Ljava/lang/CharSequence;
    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateShiftKeyState()V

    .line 1426
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->backspace()V

    .line 1427
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->isUndoCommit()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1428
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->revertLastWord(Landroid/view/inputmethod/InputConnection;)V

    .line 1429
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .end local v0           #deleteChar:Z
    :cond_4
    move v0, v5

    .line 1397
    goto :goto_1

    .line 1403
    .restart local v0       #deleteChar:Z
    .restart local v2       #length:I
    :cond_5
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1418
    .restart local v3       #textWithUnderline:Ljava/lang/CharSequence;
    :cond_6
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestions()V

    goto :goto_3

    .line 1421
    .end local v3           #textWithUnderline:Ljava/lang/CharSequence;
    :cond_7
    invoke-interface {v1, v4, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_3

    .line 1432
    .end local v2           #length:I
    :cond_8
    if-eqz p1, :cond_9

    .line 1433
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->revertDoubleSpace(Landroid/view/inputmethod/InputConnection;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1434
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 1439
    :cond_9
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v4}, Lcom/android/inputmethod/latin/LatinIME;->sameAsTextBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1440
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {v1, v4, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1458
    :cond_a
    :goto_4
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 1441
    :cond_b
    if-eqz v0, :cond_a

    .line 1442
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/SuggestionsView;->dismissAddToDictionaryHint()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1450
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->revertLastWord(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_4

    .line 1452
    :cond_c
    invoke-virtual {p0, v8}, Lcom/android/inputmethod/latin/LatinIME;->sendDownUpKeyEvents(I)V

    .line 1453
    iget v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    const/16 v5, 0x14

    if-le v4, v5, :cond_a

    .line 1454
    invoke-virtual {p0, v8}, Lcom/android/inputmethod/latin/LatinIME;->sendDownUpKeyEvents(I)V

    goto :goto_4
.end method

.method private handleCharacter(I[III)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1485
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/VoiceProxy;->handleCharacter()V

    .line 1487
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedMagicSpace:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/Settings$Values;->isMagicSpaceStripper(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1488
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->removeTrailingSpace()V

    .line 1492
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->isAlphabet(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/Settings$Values;->isSymbolExcludedFromWordSeparators(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestionsRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isCursorTouchingWord()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1494
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    if-nez v0, :cond_2

    .line 1495
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    .line 1496
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1497
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->reset()V

    .line 1498
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->clearSuggestions()V

    .line 1499
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStateManager:Lcom/android/inputmethod/latin/ComposingStateManager;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/ComposingStateManager;->onFinishComposingText()V

    .line 1502
    :cond_2
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 1503
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1504
    if-eqz p2, :cond_3

    aget v0, p2, v5

    if-ltz v0, :cond_3

    aget v0, p2, v5

    const v1, 0x10ffff

    if-le v0, v1, :cond_4

    .line 1553
    :cond_3
    :goto_0
    return-void

    .line 1508
    :cond_4
    aget v0, p2, v5

    .line 1509
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1512
    new-instance v1, Ljava/lang/String;

    new-array v3, v6, [I

    aput v0, v3, v5

    invoke-direct {v1, v3, v5, v6}, Ljava/lang/String;-><init>([III)V

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1514
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    if-ne v1, v6, :cond_8

    .line 1515
    invoke-virtual {v0, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 1523
    :cond_5
    :goto_1
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    if-eqz v1, :cond_a

    .line 1524
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    int-to-char v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1525
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/android/inputmethod/latin/WordComposer;->add(I[III)V

    .line 1526
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 1527
    if-eqz v3, :cond_7

    .line 1529
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v1

    if-ne v1, v6, :cond_6

    .line 1530
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentAutoCapsState()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/inputmethod/latin/WordComposer;->setAutoCapitalized(Z)V

    .line 1531
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStateManager:Lcom/android/inputmethod/latin/ComposingStateManager;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/ComposingStateManager;->onStartComposingText()V

    .line 1533
    :cond_6
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStateManager:Lcom/android/inputmethod/latin/ComposingStateManager;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/ComposingStateManager;->isAutoCorrectionIndicatorOn()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {p0, v1}, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->getTextWithAutoCorrectionIndicatorUnderline(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1538
    :goto_2
    invoke-interface {v3, v1, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1540
    :cond_7
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestions()V

    .line 1544
    :goto_3
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedMagicSpace:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    invoke-virtual {v1, p1}, Lcom/android/inputmethod/latin/Settings$Values;->isMagicSpaceSwapper(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1545
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->swapSwapperAndSpace()V

    .line 1550
    :goto_4
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 1552
    int-to-char v1, v0

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/latin/Settings$Values;->isWordSeparator(I)Z

    move-result v0

    invoke-static {v1, v0, p3, p4}, Lcom/android/inputmethod/latin/TextEntryState;->typedCharacter(CZII)V

    goto/16 :goto_0

    .line 1518
    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->onTextInput(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1533
    :cond_9
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1542
    :cond_a
    int-to-char v1, v0

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->sendKeyChar(C)V

    goto :goto_3

    .line 1547
    :cond_b
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedMagicSpace:Z

    goto :goto_4

    :cond_c
    move v0, p1

    goto :goto_1
.end method

.method private handleClose()V
    .locals 2

    .prologue
    .line 1629
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 1630
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-virtual {v1}, Lcom/android/inputmethod/deprecated/VoiceProxy;->handleClose()V

    .line 1631
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->requestHideSelf(I)V

    .line 1632
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 1633
    .local v0, inputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;
    if-eqz v0, :cond_0

    .line 1634
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->closing()V

    .line 1635
    :cond_0
    return-void
.end method

.method private handleSeparator(III)V
    .locals 8
    .parameter "primaryCode"
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v7, 0x20

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1556
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-virtual {v6}, Lcom/android/inputmethod/deprecated/VoiceProxy;->handleSeparator()V

    .line 1557
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStateManager:Lcom/android/inputmethod/latin/ComposingStateManager;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/ComposingStateManager;->onFinishComposingText()V

    .line 1560
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/SuggestionsView;->dismissAddToDictionaryHint()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1561
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelUpdateBigramPredictions()V

    .line 1562
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestions()V

    .line 1565
    :cond_0
    const/4 v1, 0x0

    .line 1567
    .local v1, pickedDefault:Z
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1568
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 1569
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1571
    :cond_1
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    if-eqz v6, :cond_2

    .line 1576
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v6, v6, Lcom/android/inputmethod/latin/Settings$Values;->mAutoCorrectEnabled:Z

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputTypeNoAutoCorrect:Z

    if-nez v6, :cond_7

    move v2, v4

    .line 1578
    .local v2, shouldAutoCorrect:Z
    :goto_0
    if-eqz v2, :cond_8

    const/16 v6, 0x27

    if-eq p1, v6, :cond_8

    .line 1579
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->pickDefaultSuggestion(I)Z

    move-result v1

    .line 1585
    .end local v2           #shouldAutoCorrect:Z
    :cond_2
    :goto_1
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedMagicSpace:Z

    if-eqz v6, :cond_b

    .line 1586
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    invoke-virtual {v6, p1}, Lcom/android/inputmethod/latin/Settings$Values;->isMagicSpaceSwapper(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1587
    int-to-char v5, p1

    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->sendKeyChar(C)V

    .line 1588
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->swapSwapperAndSpace()V

    .line 1598
    :goto_2
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestionsRequested()Z

    move-result v5

    if-eqz v5, :cond_3

    if-ne p1, v7, :cond_3

    .line 1599
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->maybeDoubleSpace()V

    .line 1602
    :cond_3
    int-to-char v5, p1

    invoke-static {v5, v4, p2, p3}, Lcom/android/inputmethod/latin/TextEntryState;->typedCharacter(CZII)V

    .line 1604
    if-eqz v1, :cond_4

    .line 1605
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v3

    .line 1606
    .local v3, typedWord:Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/android/inputmethod/latin/TextEntryState;->backToAcceptedDefault(Ljava/lang/CharSequence;)V

    .line 1607
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1608
    iget v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-static {v0, v4, v3, v5}, Lcom/android/inputmethod/compat/InputConnectionCompatUtils;->commitCorrection(Landroid/view/inputmethod/InputConnection;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1612
    .end local v3           #typedWord:Ljava/lang/CharSequence;
    :cond_4
    if-ne v7, p1, :cond_c

    .line 1613
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isCursorTouchingWord()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1614
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelUpdateSuggestions()V

    .line 1615
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateBigramPredictions()V

    .line 1622
    :cond_5
    :goto_3
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 1623
    if-eqz v0, :cond_6

    .line 1624
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1626
    :cond_6
    return-void

    :cond_7
    move v2, v5

    .line 1576
    goto :goto_0

    .line 1581
    .restart local v2       #shouldAutoCorrect:Z
    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_1

    .line 1590
    .end local v2           #shouldAutoCorrect:Z
    :cond_9
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    invoke-virtual {v6, p1}, Lcom/android/inputmethod/latin/Settings$Values;->isMagicSpaceStripper(I)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->removeTrailingSpace()V

    .line 1591
    :cond_a
    int-to-char v6, p1

    invoke-virtual {p0, v6}, Lcom/android/inputmethod/latin/LatinIME;->sendKeyChar(C)V

    .line 1592
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedMagicSpace:Z

    goto :goto_2

    .line 1595
    :cond_b
    int-to-char v5, p1

    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->sendKeyChar(C)V

    goto :goto_2

    .line 1620
    :cond_c
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->setPunctuationSuggestions()V

    goto :goto_3
.end method

.method private handleTab()V
    .locals 4

    .prologue
    .line 1462
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    iget v1, v3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 1463
    .local v1, imeOptions:I
    invoke-static {v1}, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->hasFlagNavigateNext(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->hasFlagNavigatePrevious(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1465
    const/16 v3, 0x3d

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->sendDownUpKeyEvents(I)V

    .line 1482
    :cond_0
    :goto_0
    return-void

    .line 1469
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1470
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1474
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isManualTemporaryUpperCase()Z

    move-result v2

    .line 1475
    .local v2, isManualTemporaryUpperCase:Z
    invoke-static {v1}, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->hasFlagNavigateNext(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    .line 1477
    invoke-static {v0}, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->performEditorActionNext(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_0

    .line 1478
    :cond_2
    invoke-static {v1}, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->hasFlagNavigatePrevious(I)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 1480
    invoke-static {v0}, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->performEditorActionPrevious(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_0
.end method

.method private initSuggest()V
    .locals 9

    .prologue
    .line 556
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInputLocaleStr()Ljava/lang/String;

    move-result-object v1

    .line 557
    .local v1, localeStr:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/inputmethod/latin/LocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 559
    .local v0, keyboardLocale:Ljava/util/Locale;
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    .line 560
    .local v4, res:Landroid/content/res/Resources;
    invoke-static {v4, v0}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v5

    .line 562
    .local v5, savedLocale:Ljava/util/Locale;
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v6, :cond_1

    .line 563
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/Suggest;->getContactsDictionary()Lcom/android/inputmethod/latin/ContactsDictionary;

    move-result-object v3

    .line 564
    .local v3, oldContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/Suggest;->close()V

    .line 569
    :goto_0
    invoke-static {v4}, Lcom/android/inputmethod/latin/Utils;->getMainDictionaryResourceId(Landroid/content/res/Resources;)I

    move-result v2

    .line 570
    .local v2, mainDicResId:I
    new-instance v6, Lcom/android/inputmethod/latin/Suggest;

    invoke-direct {v6, p0, v2, v0}, Lcom/android/inputmethod/latin/Suggest;-><init>(Landroid/content/Context;ILjava/util/Locale;)V

    iput-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    .line 571
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v6, v6, Lcom/android/inputmethod/latin/Settings$Values;->mAutoCorrectEnabled:Z

    if-eqz v6, :cond_0

    .line 572
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-wide v7, v7, Lcom/android/inputmethod/latin/Settings$Values;->mAutoCorrectionThreshold:D

    invoke-virtual {v6, v7, v8}, Lcom/android/inputmethod/latin/Suggest;->setAutoCorrectionThreshold(D)V

    .line 575
    :cond_0
    new-instance v6, Lcom/android/inputmethod/latin/UserDictionary;

    invoke-direct {v6, p0, v1}, Lcom/android/inputmethod/latin/UserDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    .line 576
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    invoke-virtual {v6, v7}, Lcom/android/inputmethod/latin/Suggest;->setUserDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    .line 577
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/UserDictionary;->isEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsUserDictionaryAvaliable:Z

    .line 579
    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->resetContactsDictionary(Lcom/android/inputmethod/latin/ContactsDictionary;)V

    .line 581
    new-instance v6, Lcom/android/inputmethod/latin/UserUnigramDictionary;

    const/4 v7, 0x3

    invoke-direct {v6, p0, p0, v1, v7}, Lcom/android/inputmethod/latin/UserUnigramDictionary;-><init>(Landroid/content/Context;Lcom/android/inputmethod/latin/LatinIME;Ljava/lang/String;I)V

    iput-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserUnigramDictionary:Lcom/android/inputmethod/latin/UserUnigramDictionary;

    .line 583
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserUnigramDictionary:Lcom/android/inputmethod/latin/UserUnigramDictionary;

    invoke-virtual {v6, v7}, Lcom/android/inputmethod/latin/Suggest;->setUserUnigramDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    .line 585
    new-instance v6, Lcom/android/inputmethod/latin/UserBigramDictionary;

    const/4 v7, 0x5

    invoke-direct {v6, p0, p0, v1, v7}, Lcom/android/inputmethod/latin/UserBigramDictionary;-><init>(Landroid/content/Context;Lcom/android/inputmethod/latin/LatinIME;Ljava/lang/String;I)V

    iput-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

    .line 587
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

    invoke-virtual {v6, v7}, Lcom/android/inputmethod/latin/Suggest;->setUserBigramDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    .line 589
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateCorrectionMode()V

    .line 591
    invoke-static {v4, v5}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    .line 592
    return-void

    .line 566
    .end local v2           #mainDicResId:I
    .end local v3           #oldContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;
    :cond_1
    const/4 v3, 0x0

    .restart local v3       #oldContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;
    goto :goto_0
.end method

.method private initializeInputAttributes(Landroid/view/inputmethod/EditorInfo;)V
    .locals 10
    .parameter "attribute"

    .prologue
    const v9, 0x8000

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 799
    if-nez p1, :cond_1

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 802
    .local v1, inputType:I
    if-nez v1, :cond_2

    .line 804
    sget-object v3, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    const-string v4, "InputType.TYPE_NULL is specified"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_2
    and-int/lit8 v0, v1, 0xf

    .line 807
    .local v0, inputClass:I
    and-int/lit16 v2, v1, 0xff0

    .line 808
    .local v2, variation:I
    if-nez v0, :cond_3

    .line 809
    sget-object v3, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    const-string v4, "Unexpected input class: inputType=0x%08x imeOptions=0x%08x"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_3
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mInsertSpaceOnPickSuggestionManually:Z

    .line 814
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputTypeNoAutoCorrect:Z

    .line 815
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    .line 816
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletionOn:Z

    .line 817
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 819
    if-ne v0, v8, :cond_0

    .line 820
    iput-boolean v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    .line 822
    invoke-static {v1}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isPasswordInputType(I)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v1}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isVisiblePasswordInputType(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 824
    :cond_4
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    .line 826
    :cond_5
    invoke-static {v2}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isEmailVariation(I)Z

    move-result v3

    if-nez v3, :cond_6

    const/16 v3, 0x60

    if-ne v2, v3, :cond_a

    .line 830
    :cond_6
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mInsertSpaceOnPickSuggestionManually:Z

    .line 834
    :goto_1
    invoke-static {v2}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isEmailVariation(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 835
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    .line 849
    :cond_7
    :goto_2
    const/high16 v3, 0x8

    and-int/2addr v3, v1

    if-eqz v3, :cond_8

    .line 850
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    .line 851
    iput-boolean v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputTypeNoAutoCorrect:Z

    .line 854
    :cond_8
    and-int v3, v1, v9

    if-nez v3, :cond_9

    const/high16 v3, 0x2

    and-int/2addr v3, v1

    if-nez v3, :cond_9

    .line 856
    iput-boolean v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputTypeNoAutoCorrect:Z

    .line 858
    :cond_9
    const/high16 v3, 0x1

    and-int/2addr v3, v1

    if-eqz v3, :cond_0

    .line 859
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    .line 860
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isFullscreenMode()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletionOn:Z

    goto :goto_0

    .line 832
    :cond_a
    iput-boolean v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mInsertSpaceOnPickSuggestionManually:Z

    goto :goto_1

    .line 836
    :cond_b
    const/16 v3, 0x10

    if-ne v2, v3, :cond_c

    .line 837
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    goto :goto_2

    .line 838
    :cond_c
    const/16 v3, 0xb0

    if-ne v2, v3, :cond_d

    .line 839
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    goto :goto_2

    .line 840
    :cond_d
    const/16 v3, 0xa0

    if-ne v2, v3, :cond_7

    .line 843
    and-int v3, v1, v9

    if-nez v3, :cond_7

    .line 844
    iput-boolean v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputTypeNoAutoCorrect:Z

    goto :goto_2
.end method

.method private isAlphabet(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 1239
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1240
    const/4 v0, 0x1

    .line 1242
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowingOptionDialog()Z
    .locals 1

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeDoubleSpace()V
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1185
    iget v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    if-nez v0, :cond_1

    .line 1204
    :cond_0
    :goto_0
    return-void

    .line 1186
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1187
    if-eqz v0, :cond_0

    .line 1188
    invoke-interface {v0, v6, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1189
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v6, :cond_2

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/inputmethod/latin/Utils;->canBeFollowedByPeriod(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_2

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_2

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->isAcceptingDoubleSpaces()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1194
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelDoubleSpacesTimer()V

    .line 1195
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1196
    invoke-interface {v0, v5, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1197
    const-string v1, ". "

    invoke-interface {v0, v1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1198
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1199
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 1200
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustReplacedDoubleSpace:Z

    goto :goto_0

    .line 1202
    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->startDoubleSpacesTimer()V

    goto :goto_0
.end method

.method private maybeRemovePreviousPeriod(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "ic"
    .parameter "text"

    .prologue
    const/16 v4, 0x2e

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1210
    invoke-interface {p1, v3, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1211
    .local v0, lastOne:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1214
    invoke-interface {p1, v3, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1216
    :cond_0
    return-void
.end method

.method private onFinishInputInternal()V
    .locals 3

    .prologue
    .line 873
    invoke-super {p0}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->onFinishInput()V

    .line 875
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->commit()V

    .line 877
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigurationChanging:Z

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/deprecated/VoiceProxy;->flushVoiceInputLogs(Z)V

    .line 879
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 880
    .local v0, inputView:Lcom/android/inputmethod/keyboard/KeyboardView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->closing()V

    .line 881
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserUnigramDictionary:Lcom/android/inputmethod/latin/UserUnigramDictionary;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserUnigramDictionary:Lcom/android/inputmethod/latin/UserUnigramDictionary;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/UserUnigramDictionary;->flushPendingWrites()V

    .line 882
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/UserBigramDictionary;->flushPendingWrites()V

    .line 883
    :cond_2
    return-void
.end method

.method private onFinishInputViewInternal(Z)V
    .locals 2
    .parameter "finishingInput"

    .prologue
    .line 886
    invoke-super {p0, p1}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->onFinishInputView(Z)V

    .line 887
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onFinishInputView()V

    .line 888
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 889
    .local v0, inputView:Lcom/android/inputmethod/keyboard/KeyboardView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->cancelAllMessages()V

    .line 891
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelUpdateSuggestions()V

    .line 892
    return-void
.end method

.method private onSettingsKeyPressed()V
    .locals 1

    .prologue
    .line 1247
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingOptionDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1255
    :goto_0
    return-void

    .line 1249
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->showSubtypeSelectorAndSettings()V

    goto :goto_0
.end method

.method private onStartInputInternal(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    .line 718
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 719
    return-void
.end method

.method private onStartInputViewInternal(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 12
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 722
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 723
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 724
    .local v3, switcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v2

    .line 726
    .local v2, inputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;
    sget-boolean v5, Lcom/android/inputmethod/latin/LatinIME;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 727
    sget-object v8, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onStartInputView: attribute:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez p1, :cond_1

    const-string v5, "none"

    :goto_0
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_0
    if-nez v2, :cond_2

    .line 796
    :goto_1
    return-void

    .line 727
    :cond_1
    const-string v5, "inputType=0x%08x imeOptions=0x%08x"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    iget v11, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    iget v11, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 737
    :cond_2
    invoke-static {}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->getInstance()Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    move-result-object v0

    .line 738
    .local v0, accessUtils:Lcom/android/inputmethod/accessibility/AccessibilityUtils;
    invoke-virtual {v0}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->isTouchExplorationEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 739
    invoke-virtual {v0, p1, p2}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->onStartInputViewInternal(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 742
    :cond_3
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateParametersOnStartInputView()V

    .line 744
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->reset()V

    .line 749
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    .line 750
    .local v4, voiceIme:Lcom/android/inputmethod/deprecated/VoiceProxy;
    if-eqz p1, :cond_8

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 751
    .local v1, inputType:I
    :goto_2
    invoke-static {v1}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isPasswordInputType(I)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v1}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isVisiblePasswordInputType(I)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_4
    move v5, v7

    :goto_3
    invoke-virtual {v4, v5}, Lcom/android/inputmethod/deprecated/VoiceProxy;->resetVoiceStates(Z)V

    .line 756
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateFullscreenMode()V

    .line 757
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->initializeInputAttributes(Landroid/view/inputmethod/EditorInfo;)V

    .line 759
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->closing()V

    .line 760
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    .line 761
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 762
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    .line 763
    iput v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    .line 764
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedMagicSpace:Z

    .line 765
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustReplacedDoubleSpace:Z

    .line 767
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->loadSettings()V

    .line 768
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateCorrectionMode()V

    .line 769
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0, v5, v8}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestionVisibility(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V

    .line 771
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v5, v5, Lcom/android/inputmethod/latin/Settings$Values;->mAutoCorrectEnabled:Z

    if-eqz v5, :cond_5

    .line 772
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-wide v8, v8, Lcom/android/inputmethod/latin/Settings$Values;->mAutoCorrectionThreshold:D

    invoke-virtual {v5, v8, v9}, Lcom/android/inputmethod/latin/Suggest;->setAutoCorrectionThreshold(D)V

    .line 774
    :cond_5
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v5, p1, v8}, Lcom/android/inputmethod/deprecated/VoiceProxy;->loadSettings(Landroid/view/inputmethod/EditorInfo;Landroid/content/SharedPreferences;)V

    .line 776
    invoke-static {}, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->loadSettings()V

    .line 778
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isKeyboardMode()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 779
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    invoke-virtual {v3, p1, v5}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->loadKeyboard(Landroid/view/inputmethod/EditorInfo;Lcom/android/inputmethod/latin/Settings$Values;)V

    .line 782
    :cond_6
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    if-eqz v5, :cond_7

    .line 783
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/SuggestionsView;->clear()V

    .line 784
    :cond_7
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestionsStripVisible()Z

    move-result v5

    invoke-direct {p0, v5, v6}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestionStripShownInternal(ZZ)V

    .line 787
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestions()V

    .line 789
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v5, v5, Lcom/android/inputmethod/latin/Settings$Values;->mKeyPreviewPopupOn:Z

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget v6, v6, Lcom/android/inputmethod/latin/Settings$Values;->mKeyPreviewPopupDismissDelay:I

    invoke-virtual {v2, v5, v6}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->setKeyPreviewPopupEnabled(ZI)V

    .line 791
    invoke-virtual {v2, v7}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->setProximityCorrectionEnabled(Z)V

    .line 793
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/inputmethod/deprecated/VoiceProxy;->onStartInputView(Landroid/os/IBinder;)V

    goto/16 :goto_1

    .end local v1           #inputType:I
    :cond_8
    move v1, v6

    .line 750
    goto/16 :goto_2

    .restart local v1       #inputType:I
    :cond_9
    move v5, v6

    .line 751
    goto/16 :goto_3
.end method

.method private pickDefaultSuggestion(I)Z
    .locals 3
    .parameter "separatorCode"

    .prologue
    const/4 v0, 0x1

    .line 1811
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->hasPendingUpdateSuggestions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1812
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelUpdateSuggestions()V

    .line 1813
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestions()V

    .line 1815
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1816
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-static {v1, v2, p1}, Lcom/android/inputmethod/latin/TextEntryState;->acceptedDefault(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 1817
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mExpectingUpdateSelection:Z

    .line 1818
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->commitBestWord(Ljava/lang/CharSequence;)V

    .line 1820
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v0}, Lcom/android/inputmethod/latin/LatinIME;->addToUserUnigramAndBigramDictionaries(Ljava/lang/CharSequence;I)V

    .line 1824
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private playKeyClick(I)V
    .locals 3
    .parameter "primaryCode"

    .prologue
    .line 2224
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 2225
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2226
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateRingerMode()V

    .line 2229
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSoundOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2231
    sparse-switch p1, :sswitch_data_0

    .line 2242
    const/4 v0, 0x5

    .line 2245
    .local v0, sound:I
    :goto_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mFxVolume:F

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    .line 2247
    .end local v0           #sound:I
    :cond_1
    return-void

    .line 2233
    :sswitch_0
    const/4 v0, 0x7

    .line 2234
    .restart local v0       #sound:I
    goto :goto_0

    .line 2236
    .end local v0           #sound:I
    :sswitch_1
    const/16 v0, 0x8

    .line 2237
    .restart local v0       #sound:I
    goto :goto_0

    .line 2239
    .end local v0           #sound:I
    :sswitch_2
    const/4 v0, 0x6

    .line 2240
    .restart local v0       #sound:I
    goto :goto_0

    .line 2231
    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_0
        0xa -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method private removeTrailingSpace()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1219
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1220
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 1227
    :cond_0
    :goto_0
    return-void

    .line 1222
    :cond_1
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1223
    .local v1, lastOne:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v5, :cond_0

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 1225
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0
.end method

.method private resetContactsDictionary(Lcom/android/inputmethod/latin/ContactsDictionary;)V
    .locals 3
    .parameter "oldContactsDictionary"

    .prologue
    .line 604
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v2, v2, Lcom/android/inputmethod/latin/Settings$Values;->mUseContactsDict:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 607
    .local v1, shouldSetDictionary:Z
    :goto_0
    if-nez v1, :cond_3

    .line 610
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/inputmethod/latin/ContactsDictionary;->close()V

    .line 611
    :cond_0
    const/4 v0, 0x0

    .line 621
    .local v0, dictionaryToUse:Lcom/android/inputmethod/latin/ContactsDictionary;
    :goto_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v2, :cond_1

    .line 622
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/latin/Suggest;->setContactsDictionary(Lcom/android/inputmethod/latin/ContactsDictionary;)V

    .line 624
    :cond_1
    return-void

    .line 604
    .end local v0           #dictionaryToUse:Lcom/android/inputmethod/latin/ContactsDictionary;
    .end local v1           #shouldSetDictionary:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 612
    .restart local v1       #shouldSetDictionary:Z
    :cond_3
    if-eqz p1, :cond_4

    .line 615
    invoke-virtual {p1, p0}, Lcom/android/inputmethod/latin/ContactsDictionary;->reopen(Landroid/content/Context;)V

    .line 616
    move-object v0, p1

    .restart local v0       #dictionaryToUse:Lcom/android/inputmethod/latin/ContactsDictionary;
    goto :goto_1

    .line 618
    .end local v0           #dictionaryToUse:Lcom/android/inputmethod/latin/ContactsDictionary;
    :cond_4
    new-instance v0, Lcom/android/inputmethod/latin/ContactsDictionary;

    const/4 v2, 0x4

    invoke-direct {v0, p0, v2}, Lcom/android/inputmethod/latin/ContactsDictionary;-><init>(Landroid/content/Context;I)V

    .restart local v0       #dictionaryToUse:Lcom/android/inputmethod/latin/ContactsDictionary;
    goto :goto_1
.end method

.method private revertDoubleSpace(Landroid/view/inputmethod/InputConnection;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2115
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelDoubleSpacesTimer()V

    .line 2118
    invoke-interface {p1, v4, v0}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2119
    const-string v3, ". "

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2125
    :goto_0
    return v0

    .line 2121
    :cond_0
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2122
    invoke-interface {p1, v4, v0}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2123
    const-string v0, "  "

    invoke-interface {p1, v0, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2124
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move v0, v1

    .line 2125
    goto :goto_0
.end method

.method private revertLastWord(Landroid/view/inputmethod/InputConnection;)V
    .locals 7
    .parameter "ic"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2081
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 2082
    :cond_0
    const/16 v2, 0x43

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->sendDownUpKeyEvents(I)V

    .line 2111
    :goto_0
    return-void

    .line 2086
    :cond_1
    invoke-interface {p1, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2087
    .local v0, separator:Ljava/lang/CharSequence;
    invoke-interface {p1, v5, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2088
    iget v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCommittedLength:I

    invoke-interface {p1, v2, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2089
    .local v1, textToTheLeft:Ljava/lang/CharSequence;
    iget v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCommittedLength:I

    invoke-interface {p1, v2, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2094
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/Settings$Values;->isWordSeparator(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2097
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1, v2, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2098
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/inputmethod/latin/TextEntryState;->acceptedTyped(Ljava/lang/CharSequence;)V

    .line 2099
    invoke-interface {p1, v0, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2100
    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2, v5, v6, v6}, Lcom/android/inputmethod/latin/TextEntryState;->typedCharacter(CZII)V

    .line 2103
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2109
    :goto_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelUpdateBigramPredictions()V

    .line 2110
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestions()V

    goto :goto_0

    .line 2105
    :cond_2
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    .line 2106
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1, v2, v5}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2107
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->backspace()V

    goto :goto_1
.end method

.method private sameAsTextBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "ic"
    .parameter "text"

    .prologue
    .line 2075
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2076
    .local v0, beforeText:Ljava/lang/CharSequence;
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private sendMagicSpace()V
    .locals 1

    .prologue
    .line 2133
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->sendKeyChar(C)V

    .line 2134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedMagicSpace:Z

    .line 2135
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 2136
    return-void
.end method

.method private setSuggestionStripShown(Z)V
    .locals 1
    .parameter "shown"

    .prologue
    .line 1048
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestionStripShownInternal(ZZ)V

    .line 1049
    return-void
.end method

.method private setSuggestionStripShownInternal(ZZ)V
    .locals 3
    .parameter "shown"
    .parameter "needsInputViewShown"

    .prologue
    const/4 v1, 0x0

    .line 1034
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->onEvaluateInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsContainer:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1035
    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 1037
    .local v0, shouldShowSuggestions:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1038
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1045
    .end local v0           #shouldShowSuggestions:Z
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v1

    .line 1035
    goto :goto_0

    .line 1038
    .restart local v0       #shouldShowSuggestions:Z
    :cond_3
    const/16 v1, 0x8

    goto :goto_1

    .line 1041
    :cond_4
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    :goto_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_5
    const/4 v1, 0x4

    goto :goto_3
.end method

.method private showSubtypeSelectorAndSettings()V
    .locals 4

    .prologue
    .line 2318
    const v0, 0x7f0b0077

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2319
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const v3, 0x7f0b00ea

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0b0076

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2324
    new-instance v2, Lcom/android/inputmethod/latin/LatinIME$2;

    invoke-direct {v2, p0}, Lcom/android/inputmethod/latin/LatinIME$2;-><init>(Lcom/android/inputmethod/latin/LatinIME;)V

    .line 2342
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2345
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->showOptionDialogInternal(Landroid/app/AlertDialog;)V

    .line 2346
    return-void
.end method

.method private swapSwapperAndSpace()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 1170
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1171
    if-nez v0, :cond_1

    .line 1182
    :cond_0
    :goto_0
    return-void

    .line 1172
    :cond_1
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1174
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v5, :cond_0

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 1176
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1177
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1179
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1180
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    goto :goto_0
.end method

.method private updateCorrectionMode()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2276
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v3, v3, Lcom/android/inputmethod/latin/Settings$Values;->mAutoCorrectEnabled:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputTypeNoAutoCorrect:Z

    if-nez v3, :cond_2

    move v0, v1

    .line 2278
    .local v0, shouldAutoCorrect:Z
    :goto_0
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v3, v3, Lcom/android/inputmethod/latin/Settings$Values;->mAutoCorrectEnabled:Z

    if-eqz v3, :cond_3

    const/4 v1, 0x2

    :cond_0
    :goto_1
    iput v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    .line 2281
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v1, v1, Lcom/android/inputmethod/latin/Settings$Values;->mBigramSuggestionEnabled:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v1, v1, Lcom/android/inputmethod/latin/Settings$Values;->mAutoCorrectEnabled:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    :goto_2
    iput v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    .line 2284
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v1, :cond_1

    .line 2285
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/Suggest;->setCorrectionMode(I)V

    .line 2287
    :cond_1
    return-void

    .end local v0           #shouldAutoCorrect:Z
    :cond_2
    move v0, v2

    .line 2276
    goto :goto_0

    .line 2278
    .restart local v0       #shouldAutoCorrect:Z
    :cond_3
    if-nez v0, :cond_0

    move v1, v2

    goto :goto_1

    .line 2281
    :cond_4
    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    goto :goto_2
.end method

.method private updateKeypressVibrationDuration()V
    .locals 2

    .prologue
    .line 2218
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/Utils;->getCurrentVibrationDuration(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeypressVibrationDuration:J

    .line 2219
    return-void
.end method

.method private updateRingerMode()V
    .locals 2

    .prologue
    .line 2210
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 2211
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    .line 2212
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 2215
    :goto_0
    return-void

    .line 2214
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSilentModeOn:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateSoundEffectVolume()V
    .locals 2

    .prologue
    .line 2205
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/Utils;->getCurrentKeypressSoundVolume(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)F

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mFxVolume:F

    .line 2206
    return-void
.end method

.method private updateSuggestionVisibility(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 2290
    const-string v0, "show_suggestions_setting"

    const v1, 0x7f0b0061

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2293
    sget-object v2, Lcom/android/inputmethod/latin/LatinIME;->SUGGESTION_VISIBILITY_VALUE_ARRAY:[I

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v2, v0

    .line 2294
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2295
    iput v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionVisibility:I

    .line 2299
    :cond_0
    return-void

    .line 2293
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addWordToDictionary(Ljava/lang/String;)Z
    .locals 2
    .parameter "word"

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Lcom/android/inputmethod/latin/UserDictionary;->addWord(Ljava/lang/String;I)V

    .line 1234
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestions()V

    .line 1235
    const/4 v0, 0x1

    return v0
.end method

.method public clearSuggestions()V
    .locals 1

    .prologue
    .line 1684
    sget-object v0, Lcom/android/inputmethod/latin/SuggestedWords;->EMPTY:Lcom/android/inputmethod/latin/SuggestedWords;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;)V

    .line 1685
    return-void
.end method

.method public commitTyped(Landroid/view/inputmethod/InputConnection;)V
    .locals 2
    .parameter "ic"

    .prologue
    const/4 v1, 0x1

    .line 1145
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    if-nez v0, :cond_0

    .line 1157
    :goto_0
    return-void

    .line 1146
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    .line 1147
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1148
    if-eqz p1, :cond_1

    .line 1149
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1, v0, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1151
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCommittedLength:I

    .line 1152
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/inputmethod/latin/TextEntryState;->acceptedTyped(Ljava/lang/CharSequence;)V

    .line 1153
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->addToUserUnigramAndBigramDictionaries(Ljava/lang/CharSequence;I)V

    .line 1156
    :cond_2
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestions()V

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2376
    invoke-super {p0, p1, p2, p3}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2378
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 2379
    const-string v1, "LatinIME state :"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Keyboard mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mComposingStringBuilder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIsSuggestionsRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCorrectionMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHasUncommittedTypedChars="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAutoCorrectEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v2, v2, Lcom/android/inputmethod/latin/Settings$Values;->mAutoCorrectEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInsertSpaceOnPickSuggestionManually="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mInsertSpaceOnPickSuggestionManually:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mApplicationSpecifiedCompletionOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletionOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  TextEntryState.state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSoundOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v2, v2, Lcom/android/inputmethod/latin/Settings$Values;->mSoundOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mVibrateOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v2, v2, Lcom/android/inputmethod/latin/Settings$Values;->mVibrateOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mKeyPreviewPopupOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v2, v2, Lcom/android/inputmethod/latin/Settings$Values;->mKeyPreviewPopupOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2392
    return-void
.end method

.method public getCurrentAutoCapsState()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1160
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1161
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 1162
    .local v0, ei:Landroid/view/inputmethod/EditorInfo;
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v3, v3, Lcom/android/inputmethod/latin/Settings$Values;->mAutoCap:Z

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v3, :cond_0

    .line 1164
    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-interface {v1, v3}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1166
    :cond_0
    return v2
.end method

.method public getCurrentWord()Lcom/android/inputmethod/latin/WordComposer;
    .locals 1

    .prologue
    .line 2267
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    return-object v0
.end method

.method public hideWindow()V
    .locals 2

    .prologue
    .line 992
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->commit()V

    .line 993
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onHideWindow()V

    .line 996
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 998
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigurationChanging:Z

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/deprecated/VoiceProxy;->hideVoiceWindow(Z)V

    .line 1001
    invoke-super {p0}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->hideWindow()V

    .line 1002
    return-void
.end method

.method public isCursorTouchingWord()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2056
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2057
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 2070
    :cond_0
    :goto_0
    return v3

    .line 2058
    :cond_1
    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2059
    .local v1, toLeft:Ljava/lang/CharSequence;
    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2060
    .local v2, toRight:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/latin/Settings$Values;->isWordSeparator(I)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/latin/Settings$Values;->isSuggestedPunctuation(I)Z

    move-result v5

    if-nez v5, :cond_2

    move v3, v4

    .line 2063
    goto :goto_0

    .line 2065
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/latin/Settings$Values;->isWordSeparator(I)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/latin/Settings$Values;->isSuggestedPunctuation(I)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    .line 2068
    goto :goto_0
.end method

.method public isShowingPunctuationList()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1643
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    if-nez v1, :cond_1

    .line 1644
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-object v1, v1, Lcom/android/inputmethod/latin/Settings$Values;->mSuggestPuncList:Lcom/android/inputmethod/latin/SuggestedWords;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/SuggestionsView;->getSuggestions()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isShowingSuggestionsStrip()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1648
    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionVisibility:I

    const v2, 0x7f0b005e

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionVisibility:I

    const v2, 0x7f0b005f

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mDisplayOrientation:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSoundOn()Z
    .locals 1

    .prologue
    .line 2271
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/Settings$Values;->mSoundOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSilentModeOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuggestionsRequested()Z
    .locals 1

    .prologue
    .line 1638
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingSuggestionsStrip()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuggestionsStripVisible()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1654
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    if-nez v2, :cond_1

    .line 1662
    :cond_0
    :goto_0
    return v0

    .line 1656
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/SuggestionsView;->isShowingAddToDictionaryHint()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->isRecorrecting()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    .line 1657
    goto :goto_0

    .line 1658
    :cond_3
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingSuggestionsStrip()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1660
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletionOn:Z

    if-eqz v0, :cond_4

    move v0, v1

    .line 1661
    goto :goto_0

    .line 1662
    :cond_4
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestionsRequested()Z

    move-result v0

    goto :goto_0
.end method

.method protected launchSettings()V
    .locals 1

    .prologue
    .line 2302
    const-class v0, Lcom/android/inputmethod/latin/Settings;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->launchSettingsClass(Ljava/lang/Class;)V

    .line 2303
    return-void
.end method

.method protected launchSettingsClass(Ljava/lang/Class;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/preference/PreferenceActivity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2310
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->handleClose()V

    .line 2311
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2312
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2313
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2314
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->startActivity(Landroid/content/Intent;)V

    .line 2315
    return-void
.end method

.method loadSettings()V
    .locals 3

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    .line 549
    :cond_1
    new-instance v0, Lcom/android/inputmethod/latin/Settings$Values;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInputLocaleStr()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/android/inputmethod/latin/Settings$Values;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    .line 550
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->resetContactsDictionary(Lcom/android/inputmethod/latin/ContactsDictionary;)V

    .line 551
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateSoundEffectVolume()V

    .line 552
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateKeypressVibrationDuration()V

    .line 553
    return-void

    .line 550
    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Suggest;->getContactsDictionary()Lcom/android/inputmethod/latin/ContactsDictionary;

    move-result-object v0

    goto :goto_0
.end method

.method public onCancelInput()V
    .locals 1

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onCancelInput()V

    .line 1386
    return-void
.end method

.method public onCodeInput(I[III)V
    .locals 10
    .parameter "primaryCode"
    .parameter "keyCodes"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1281
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1282
    .local v4, when:J
    const/4 v6, -0x5

    if-ne p1, v6, :cond_0

    iget-wide v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastKeyTime:J

    const-wide/16 v8, 0xc8

    add-long/2addr v6, v8

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    .line 1283
    :cond_0
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    .line 1285
    :cond_1
    iput-wide v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastKeyTime:J

    .line 1286
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 1287
    .local v3, switcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->hasDistinctMultitouch()Z

    move-result v0

    .line 1288
    .local v0, distinctMultiTouch:Z
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustReplacedDoubleSpace:Z

    .line 1289
    .local v1, lastStateOfJustReplacedDoubleSpace:Z
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustReplacedDoubleSpace:Z

    .line 1290
    const/4 v2, 0x1

    .line 1291
    .local v2, shouldStartKeyTypedTimer:Z
    sparse-switch p1, :sswitch_data_0

    .line 1349
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    invoke-virtual {v6, p1}, Lcom/android/inputmethod/latin/Settings$Values;->isWordSeparator(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1350
    invoke-direct {p0, p1, p3, p4}, Lcom/android/inputmethod/latin/LatinIME;->handleSeparator(III)V

    .line 1354
    :goto_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mExpectingUpdateSelection:Z

    .line 1357
    :cond_2
    :goto_1
    invoke-virtual {v3, p1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onKey(I)V

    .line 1359
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    .line 1360
    if-eqz v2, :cond_3

    .line 1361
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->startKeyTypedTimer()V

    .line 1363
    :cond_3
    return-void

    .line 1293
    :sswitch_0
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->handleBackspace(Z)V

    .line 1294
    iget v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    .line 1295
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mExpectingUpdateSelection:Z

    .line 1296
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnDelete()V

    goto :goto_1

    .line 1300
    :sswitch_1
    if-nez v0, :cond_4

    .line 1301
    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    .line 1303
    :cond_4
    const/4 v2, 0x0

    .line 1304
    goto :goto_1

    .line 1307
    :sswitch_2
    if-nez v0, :cond_5

    .line 1308
    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->changeKeyboardMode()V

    .line 1310
    :cond_5
    const/4 v2, 0x0

    .line 1311
    goto :goto_1

    .line 1313
    :sswitch_3
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingOptionDialog()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1314
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->handleClose()V

    goto :goto_1

    .line 1318
    :sswitch_4
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->isIgnoringSpecialKey()Z

    move-result v6

    if-nez v6, :cond_6

    .line 1319
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->onSettingsKeyPressed()V

    .line 1321
    :cond_6
    const/4 v2, 0x0

    .line 1322
    goto :goto_1

    .line 1324
    :sswitch_5
    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleCapsLock()V

    .line 1328
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->vibrate()V

    .line 1329
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->playKeyClick(I)V

    goto :goto_1

    .line 1332
    :sswitch_7
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->isIgnoringSpecialKey()Z

    move-result v6

    if-nez v6, :cond_7

    .line 1333
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->switchToShortcutIME()V

    .line 1335
    :cond_7
    const/4 v2, 0x0

    .line 1336
    goto :goto_1

    .line 1338
    :sswitch_8
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->handleTab()V

    goto :goto_1

    .line 1352
    :cond_8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/inputmethod/latin/LatinIME;->handleCharacter(I[III)V

    goto :goto_0

    .line 1291
    :sswitch_data_0
    .sparse-switch
        -0x62 -> :sswitch_6
        -0x7 -> :sswitch_7
        -0x6 -> :sswitch_4
        -0x5 -> :sswitch_0
        -0x4 -> :sswitch_3
        -0x3 -> :sswitch_5
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_1
        0x9 -> :sswitch_8
    .end sparse-switch
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 7
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x0

    .line 1053
    invoke-super {p0, p1}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 1054
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v4

    .line 1055
    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsContainer:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1084
    :cond_0
    :goto_0
    return-void

    .line 1060
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mExtractArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1061
    :goto_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_4

    move v2, v1

    .line 1063
    :goto_2
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_5

    move v3, v1

    .line 1065
    :goto_3
    add-int/2addr v0, v2

    add-int v2, v0, v3

    .line 1068
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1069
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 1070
    sub-int v0, v2, v3

    .line 1072
    :goto_4
    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/KeyboardView;->getWidth()I

    move-result v3

    .line 1073
    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/KeyboardView;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x64

    .line 1076
    sget-boolean v4, Lcom/android/inputmethod/latin/LatinIME;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 1077
    sget-object v4, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Touchable region: y="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :cond_2
    invoke-static {p1, v1, v0, v3, v2}, Lcom/android/inputmethod/latin/LatinIME;->setTouchableRegionCompat(Landroid/inputmethodservice/InputMethodService$Insets;IIII)V

    .line 1082
    :goto_5
    iput v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 1083
    iput v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1060
    goto :goto_1

    .line 1061
    :cond_4
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_2

    .line 1063
    :cond_5
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_5
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "conf"

    .prologue
    .line 649
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v1, p1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 650
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStateManager:Lcom/android/inputmethod/latin/ComposingStateManager;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/ComposingStateManager;->onFinishComposingText()V

    .line 652
    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mDisplayOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_1

    .line 653
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mDisplayOrientation:I

    .line 654
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->startOrientationChanging()V

    .line 655
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 656
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 657
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 658
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingOptionDialog()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 659
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 662
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigurationChanging:Z

    .line 663
    invoke-super {p0, p1}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 664
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-virtual {v1, p1}, Lcom/android/inputmethod/deprecated/VoiceProxy;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 665
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigurationChanging:Z

    .line 668
    invoke-static {p1}, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 669
    return-void
.end method

.method public onCreate()V
    .locals 10

    .prologue
    .line 488
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 489
    .local v5, prefs:Landroid/content/SharedPreferences;
    iput-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;

    .line 490
    invoke-static {p0, v5}, Lcom/android/inputmethod/latin/LatinImeLogger;->init(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 491
    invoke-static {p0, v5}, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->init(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;)V

    .line 492
    invoke-static {p0}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->init(Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;)V

    .line 493
    invoke-static {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->init(Lcom/android/inputmethod/latin/LatinIME;)V

    .line 494
    invoke-static {p0, v5}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->init(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;)V

    .line 495
    invoke-static {p0, v5}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->init(Landroid/inputmethodservice/InputMethodService;Landroid/content/SharedPreferences;)V

    .line 497
    invoke-super {p0}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->onCreate()V

    .line 499
    invoke-static {}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getInstance()Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    move-result-object v8

    iput-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    .line 500
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/inputmethod/latin/Utils;->getInputMethodId(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputMethodId:Ljava/lang/String;

    .line 501
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v8

    iput-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    .line 502
    invoke-static {}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v8

    iput-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 503
    invoke-static {p0}, Lcom/android/inputmethod/compat/VibratorCompatWrapper;->getInstance(Landroid/content/Context;)Lcom/android/inputmethod/compat/VibratorCompatWrapper;

    move-result-object v8

    iput-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mVibrator:Lcom/android/inputmethod/compat/VibratorCompatWrapper;

    .line 504
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->onCreate()V

    .line 505
    sget-boolean v8, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v8, Lcom/android/inputmethod/latin/LatinIME;->DEBUG:Z

    .line 507
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 508
    .local v6, res:Landroid/content/res/Resources;
    iput-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    .line 510
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->loadSettings()V

    .line 512
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$GCUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$GCUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/Utils$GCUtils;->reset()V

    .line 513
    const/4 v7, 0x1

    .line 514
    .local v7, tryGC:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v8, 0x5

    if-ge v2, v8, :cond_0

    if-eqz v7, :cond_0

    .line 516
    :try_start_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->initSuggest()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    const/4 v7, 0x0

    .line 514
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$GCUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$GCUtils;

    move-result-object v8

    const-string v9, "InitSuggest"

    invoke-virtual {v8, v9, v0}, Lcom/android/inputmethod/latin/Utils$GCUtils;->tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v7

    goto :goto_1

    .line 523
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_0
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    iput v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mDisplayOrientation:I

    .line 527
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 528
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v8, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 529
    const-string v8, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 530
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v1}, Lcom/android/inputmethod/latin/LatinIME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 531
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-static {p0, v5, v8}, Lcom/android/inputmethod/deprecated/VoiceProxy;->init(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;Lcom/android/inputmethod/latin/LatinIME$UIHandler;)Lcom/android/inputmethod/deprecated/VoiceProxy;

    move-result-object v8

    iput-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    .line 533
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 534
    .local v4, packageFilter:Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 535
    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 536
    const-string v8, "package"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 537
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mDictionaryPackInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v4}, Lcom/android/inputmethod/latin/LatinIME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 539
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 540
    .local v3, newDictFilter:Landroid/content/IntentFilter;
    const-string v8, "com.android.inputmethod.latin.dictionarypack.newdict"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 542
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mDictionaryPackInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v3}, Lcom/android/inputmethod/latin/LatinIME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 543
    return-void
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onCreateInputView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCustomRequest(I)Z
    .locals 3
    .parameter "requestCode"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1262
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingOptionDialog()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1271
    :cond_0
    :goto_0
    return v0

    .line 1263
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1265
    :pswitch_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-static {v2, v1}, Lcom/android/inputmethod/latin/Utils;->hasMultipleEnabledIMEsOrSubtypes(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1266
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {v0}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->showInputMethodPicker()V

    move v0, v1

    .line 1267
    goto :goto_0

    .line 1263
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Suggest;->close()V

    .line 637
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 640
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mDictionaryPackInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 641
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/VoiceProxy;->destroy()V

    .line 642
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->commit()V

    .line 643
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->onDestroy()V

    .line 644
    invoke-super {p0}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->onDestroy()V

    .line 645
    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1006
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinIME;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1007
    sget-object v0, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    const-string v2, "Received completions:"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    if-eqz p1, :cond_0

    move v0, v1

    .line 1009
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 1010
    sget-object v2, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1014
    :cond_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletionOn:Z

    if-eqz v0, :cond_1

    .line 1015
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1016
    if-nez p1, :cond_2

    .line 1017
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->clearSuggestions()V

    .line 1030
    :cond_1
    :goto_1
    return-void

    .line 1021
    :cond_2
    new-instance v0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->setApplicationSpecifiedCompletions([Landroid/view/inputmethod/CompletionInfo;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->setTypedWordValid(Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->setHasMinimalSuggestion(Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v0

    .line 1026
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->build()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;)V

    .line 1027
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    .line 1028
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestionStripShown(Z)V

    goto :goto_1
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 2

    .prologue
    .line 1088
    invoke-super {p0}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->onEvaluateFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onExtractedCursorMovement(II)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 985
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestionsRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    :goto_0
    return-void

    .line 987
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->onExtractedCursorMovement(II)V

    goto :goto_0
.end method

.method public onExtractedTextClicked()V
    .locals 1

    .prologue
    .line 969
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestionsRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 972
    :goto_0
    return-void

    .line 971
    :cond_0
    invoke-super {p0}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->onExtractedTextClicked()V

    goto :goto_0
.end method

.method public onFinishInput()V
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->onFinishInput()V

    .line 715
    return-void
.end method

.method public onFinishInputView(Z)V
    .locals 1
    .parameter "finishingInput"

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->onFinishInputView(Z)V

    .line 710
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1104
    packed-switch p1, :pswitch_data_0

    .line 1117
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    .line 1106
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1107
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/SuggestionsView;->handleBack()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1110
    :cond_2
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 1111
    .local v0, keyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->handleBack()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1104
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1122
    packed-switch p1, :pswitch_data_0

    .line 1141
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 1128
    :pswitch_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1130
    new-instance v0, Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v8

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v9

    const/16 v10, 0x41

    invoke-direct/range {v0 .. v10}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    .line 1134
    .local v0, newEvent:Landroid/view/KeyEvent;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v11

    .line 1135
    .local v11, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v11, :cond_1

    .line 1136
    invoke-interface {v11, v0}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1137
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1122
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPress(IZ)V
    .locals 3
    .parameter "primaryCode"
    .parameter "withSliding"

    .prologue
    .line 2162
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 2163
    .local v1, switcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isVibrateAndSoundFeedbackRequired()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2164
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->vibrate()V

    .line 2165
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->playKeyClick(I)V

    .line 2167
    :cond_0
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->hasDistinctMultitouch()Z

    move-result v0

    .line 2168
    .local v0, distinctMultiTouch:Z
    if-eqz v0, :cond_1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 2169
    invoke-virtual {v1, p2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onPressShift(Z)V

    .line 2175
    :goto_0
    return-void

    .line 2170
    :cond_1
    if-eqz v0, :cond_2

    const/4 v2, -0x2

    if-ne p1, v2, :cond_2

    .line 2171
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onPressSymbol()V

    goto :goto_0

    .line 2173
    :cond_2
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onOtherKeyPressed()V

    goto :goto_0
.end method

.method public onRefreshKeyboard()V
    .locals 3

    .prologue
    .line 2152
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2154
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->loadKeyboard(Landroid/view/inputmethod/EditorInfo;Lcom/android/inputmethod/latin/Settings$Values;)V

    .line 2156
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->initSuggest()V

    .line 2157
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->loadSettings()V

    .line 2158
    return-void
.end method

.method public onRelease(IZ)V
    .locals 3
    .parameter "primaryCode"
    .parameter "withSliding"

    .prologue
    .line 2179
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 2181
    .local v1, switcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->hasDistinctMultitouch()Z

    move-result v0

    .line 2182
    .local v0, distinctMultiTouch:Z
    if-eqz v0, :cond_1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 2183
    invoke-virtual {v1, p2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onReleaseShift(Z)V

    .line 2187
    :cond_0
    :goto_0
    return-void

    .line 2184
    :cond_1
    if-eqz v0, :cond_0

    const/4 v2, -0x2

    if-ne p1, v2, :cond_0

    .line 2185
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onReleaseSymbol()V

    goto :goto_0
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 1
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 700
    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 1
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 705
    return-void
.end method

.method public onTextInput(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 1367
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-virtual {v1}, Lcom/android/inputmethod/deprecated/VoiceProxy;->commitVoiceInput()V

    .line 1368
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1369
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_0

    .line 1380
    :goto_0
    return-void

    .line 1370
    :cond_0
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1371
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 1372
    invoke-direct {p0, v0, p1}, Lcom/android/inputmethod/latin/LatinIME;->maybeRemovePreviousPeriod(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 1373
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1374
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1375
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 1376
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onKey(I)V

    .line 1377
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedMagicSpace:Z

    .line 1378
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    .line 1379
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->startKeyTypedTimer()V

    goto :goto_0
.end method

.method public onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 1
    .parameter "token"
    .parameter "text"

    .prologue
    .line 896
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    .line 897
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/VoiceProxy;->showPunctuationHintIfNecessary()V

    .line 898
    return-void
.end method

.method public onUpdateSelection(IIIIII)V
    .locals 8
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newSelStart"
    .parameter "newSelEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    const/4 v0, 0x1

    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 904
    invoke-super/range {p0 .. p6}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->onUpdateSelection(IIIIII)V

    .line 907
    sget-boolean v4, Lcom/android/inputmethod/latin/LatinIME;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 908
    sget-object v4, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onUpdateSelection: oss="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ose="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lss="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lse="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", nss="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", nse="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ce="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :cond_0
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-virtual {v4, p4, p3}, Lcom/android/inputmethod/deprecated/VoiceProxy;->setCursorAndSelection(II)V

    .line 922
    if-ne p3, p6, :cond_1

    if-eq p4, p6, :cond_8

    :cond_1
    iget v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    if-eq v4, p3, :cond_8

    move v2, v0

    .line 924
    .local v2, selectionChanged:Z
    :goto_0
    if-ne p5, v7, :cond_9

    if-ne p6, v7, :cond_9

    .line 925
    .local v0, candidatesCleared:Z
    :goto_1
    iget-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mExpectingUpdateSelection:Z

    if-nez v4, :cond_7

    .line 926
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    if-nez v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-virtual {v4}, Lcom/android/inputmethod/deprecated/VoiceProxy;->isVoiceInputHighlighted()Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_3
    if-nez v2, :cond_4

    if-eqz v0, :cond_a

    .line 929
    :cond_4
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 930
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    .line 931
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->reset()V

    .line 932
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestions()V

    .line 933
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 934
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_5

    .line 935
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 937
    :cond_5
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStateManager:Lcom/android/inputmethod/latin/ComposingStateManager;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/ComposingStateManager;->onFinishComposingText()V

    .line 938
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-virtual {v4, v3}, Lcom/android/inputmethod/deprecated/VoiceProxy;->setVoiceInputHighlighted(Z)V

    .line 943
    .end local v1           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_6
    :goto_2
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedMagicSpace:Z

    .line 944
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustReplacedDoubleSpace:Z

    .line 946
    :cond_7
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mExpectingUpdateSelection:Z

    .line 947
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateShiftKeyState()V

    .line 950
    iput p3, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    .line 951
    iput p4, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    .line 952
    return-void

    .end local v0           #candidatesCleared:Z
    .end local v2           #selectionChanged:Z
    :cond_8
    move v2, v3

    .line 922
    goto :goto_0

    .restart local v2       #selectionChanged:Z
    :cond_9
    move v0, v3

    .line 924
    goto :goto_1

    .line 939
    .restart local v0       #candidatesCleared:Z
    :cond_a
    iget-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    if-nez v4, :cond_6

    .line 940
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->reset()V

    .line 941
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestions()V

    goto :goto_2
.end method

.method public onWindowHidden()V
    .locals 2

    .prologue
    .line 867
    invoke-super {p0}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->onWindowHidden()V

    .line 868
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 869
    .local v0, inputView:Lcom/android/inputmethod/keyboard/KeyboardView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->closing()V

    .line 870
    :cond_0
    return-void
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x20

    const/4 v7, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1829
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStateManager:Lcom/android/inputmethod/latin/ComposingStateManager;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/ComposingStateManager;->onFinishComposingText()V

    .line 1830
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SuggestionsView;->getSuggestions()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v0

    .line 1831
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-object v4, v4, Lcom/android/inputmethod/latin/Settings$Values;->mWordSeparators:Ljava/lang/String;

    invoke-virtual {v3, p1, p2, v4}, Lcom/android/inputmethod/deprecated/VoiceProxy;->flushAndLogAllTextModificationCounters(ILjava/lang/CharSequence;Ljava/lang/String;)V

    .line 1834
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->isRecorrecting()Z

    move-result v3

    .line 1835
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 1836
    if-eqz v4, :cond_0

    .line 1837
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1839
    :cond_0
    iget-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletionOn:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    if-eqz v5, :cond_4

    if-ltz p1, :cond_4

    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    array-length v5, v5

    if-ge p1, v5, :cond_4

    .line 1841
    if-eqz v4, :cond_1

    .line 1842
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    aget-object v0, v0, p1

    .line 1843
    invoke-interface {v4, v0}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 1845
    :cond_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCommittedLength:I

    .line 1846
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    if-eqz v0, :cond_2

    .line 1847
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SuggestionsView;->clear()V

    .line 1849
    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 1850
    if-eqz v4, :cond_3

    .line 1851
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1950
    :cond_3
    :goto_0
    return-void

    .line 1857
    :cond_4
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v5, v1, :cond_b

    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/latin/Settings$Values;->isWordSeparator(I)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/latin/Settings$Values;->isSuggestedPunctuation(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1861
    :cond_5
    const-string v3, ""

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v0, Lcom/android/inputmethod/latin/SuggestedWords;->mWords:Ljava/util/List;

    invoke-static {v3, v5, p1, v0}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnManualSuggestion(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    .line 1867
    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 1869
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v0

    .line 1870
    if-eqz v0, :cond_8

    iget-boolean v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mIsRtlKeyboard:Z

    if-eqz v0, :cond_8

    move v0, v1

    .line 1871
    :goto_1
    invoke-static {v3, v0}, Lcom/android/inputmethod/keyboard/Key;->getRtlParenthesisCode(IZ)I

    move-result v3

    .line 1873
    if-eqz v4, :cond_9

    invoke-interface {v4, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1874
    :goto_2
    if-eqz v4, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_6
    move v0, v2

    .line 1876
    :goto_3
    iget-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedMagicSpace:Z

    .line 1877
    if-ne v8, v0, :cond_7

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedMagicSpace:Z

    .line 1878
    :cond_7
    new-array v0, v1, [I

    aput v3, v0, v2

    invoke-virtual {p0, v3, v0, v7, v7}, Lcom/android/inputmethod/latin/LatinIME;->onCodeInput(I[III)V

    .line 1881
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedMagicSpace:Z

    .line 1882
    if-eqz v4, :cond_3

    .line 1883
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    :cond_8
    move v0, v2

    .line 1870
    goto :goto_1

    .line 1873
    :cond_9
    const-string v0, ""

    goto :goto_2

    .line 1874
    :cond_a
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_3

    .line 1887
    :cond_b
    iget-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    if-nez v5, :cond_c

    .line 1890
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/WordComposer;->reset()V

    .line 1892
    :cond_c
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mExpectingUpdateSelection:Z

    .line 1893
    invoke-direct {p0, p2}, Lcom/android/inputmethod/latin/LatinIME;->commitBestWord(Ljava/lang/CharSequence;)V

    .line 1895
    if-nez p1, :cond_13

    .line 1896
    const/4 v5, 0x3

    invoke-direct {p0, p2, v5}, Lcom/android/inputmethod/latin/LatinIME;->addToUserUnigramAndBigramDictionaries(Ljava/lang/CharSequence;I)V

    .line 1901
    :goto_4
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v0, Lcom/android/inputmethod/latin/SuggestedWords;->mWords:Ljava/util/List;

    invoke-static {v5, v6, p1, v0}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnManualSuggestion(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    .line 1903
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/inputmethod/latin/TextEntryState;->acceptedSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1905
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mInsertSpaceOnPickSuggestionManually:Z

    if-eqz v0, :cond_d

    if-nez v3, :cond_d

    .line 1906
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->sendMagicSpace()V

    .line 1918
    :cond_d
    if-nez p1, :cond_f

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Suggest;->hasMainDictionary()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Suggest;->getUnigramDictionaries()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p2, v1}, Lcom/android/inputmethod/latin/AutoCorrection;->isValidWord(Ljava/util/Map;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    move v2, v1

    .line 1925
    :cond_f
    if-nez v3, :cond_10

    .line 1929
    invoke-static {v8, v1, v7, v7}, Lcom/android/inputmethod/latin/TextEntryState;->typedCharacter(CZII)V

    .line 1932
    :cond_10
    if-nez v2, :cond_11

    .line 1935
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateBigramPredictions()V

    .line 1940
    :cond_11
    if-eqz v2, :cond_12

    .line 1941
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsUserDictionaryAvaliable:Z

    if-eqz v0, :cond_14

    .line 1942
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    invoke-virtual {v0, p2}, Lcom/android/inputmethod/latin/SuggestionsView;->showAddToDictionaryHint(Ljava/lang/CharSequence;)V

    .line 1947
    :cond_12
    :goto_5
    if-eqz v4, :cond_3

    .line 1948
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 1899
    :cond_13
    invoke-direct {p0, p2, v1}, Lcom/android/inputmethod/latin/LatinIME;->addToOnlyBigramDictionary(Ljava/lang/CharSequence;I)V

    goto :goto_4

    .line 1944
    :cond_14
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestions()V

    goto :goto_5
.end method

.method public preferCapitalization()Z
    .locals 1

    .prologue
    .line 2139
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->isFirstCharCapitalized()Z

    move-result v0

    return v0
.end method

.method resetSuggestMainDict()V
    .locals 4

    .prologue
    .line 627
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInputLocaleStr()Ljava/lang/String;

    move-result-object v1

    .line 628
    .local v1, localeStr:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/inputmethod/latin/LocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 629
    .local v0, keyboardLocale:Ljava/util/Locale;
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    invoke-static {v3}, Lcom/android/inputmethod/latin/Utils;->getMainDictionaryResourceId(Landroid/content/res/Resources;)I

    move-result v2

    .line 630
    .local v2, mainDicResId:I
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v3, p0, v2, v0}, Lcom/android/inputmethod/latin/Suggest;->resetMainDict(Landroid/content/Context;ILjava/util/Locale;)V

    .line 631
    return-void
.end method

.method public setCandidatesView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 694
    return-void
.end method

.method public setInputView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 678
    invoke-super {p0, p1}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->setInputView(Landroid/view/View;)V

    .line 679
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mExtractArea:Landroid/view/View;

    .line 681
    const v0, 0x7f070037

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyPreviewBackingView:Landroid/view/View;

    .line 682
    const v0, 0x7f070038

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsContainer:Landroid/view/View;

    .line 683
    const v0, 0x7f070039

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/SuggestionsView;

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    .line 684
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    invoke-virtual {v0, p0, p1}, Lcom/android/inputmethod/latin/SuggestionsView;->setListener(Lcom/android/inputmethod/latin/SuggestionsView$Listener;Landroid/view/View;)V

    .line 686
    :cond_0
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sVISUALDEBUG:Z

    if-eqz v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyPreviewBackingView:Landroid/view/View;

    const/high16 v1, 0x10ff

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 689
    :cond_1
    return-void
.end method

.method public setPunctuationSuggestions()V
    .locals 1

    .prologue
    .line 1999
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings$Values;->mSuggestPuncList:Lcom/android/inputmethod/latin/SuggestedWords;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;)V

    .line 2000
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestionsStripVisible()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestionStripShown(Z)V

    .line 2001
    return-void
.end method

.method public setSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;)V
    .locals 6
    .parameter

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    if-eqz v0, :cond_0

    .line 1689
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/SuggestionsView;->setSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;)V

    .line 1690
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {p1}, Lcom/android/inputmethod/latin/SuggestedWords;->hasWordAboveAutoCorrectionScoreThreshold()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onAutoCorrectionStateChanged(Z)V

    .line 1695
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1696
    if-eqz v1, :cond_3

    .line 1697
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStateManager:Lcom/android/inputmethod/latin/ComposingStateManager;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/ComposingStateManager;->isAutoCorrectionIndicatorOn()Z

    move-result v0

    .line 1699
    invoke-static {p1}, Lcom/android/inputmethod/latin/Utils;->willAutoCorrect(Lcom/android/inputmethod/latin/SuggestedWords;)Z

    move-result v2

    .line 1700
    if-eq v0, v2, :cond_3

    .line 1701
    sget-boolean v3, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v3, :cond_1

    .line 1702
    sget-object v3, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Flip the indicator. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " -> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    :cond_1
    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {p0, v0}, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->getTextWithAutoCorrectionIndicatorUnderline(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1709
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1710
    const/4 v3, 0x1

    invoke-interface {v1, v0, v3}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1712
    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStateManager:Lcom/android/inputmethod/latin/ComposingStateManager;

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/ComposingStateManager;->setAutoCorrectionIndicatorOn(Z)V

    .line 1715
    :cond_3
    return-void

    .line 1705
    :cond_4
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public showSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "suggestedWords"
    .parameter "typedWord"

    .prologue
    .line 1789
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-static {p1, v1}, Lcom/android/inputmethod/latin/Utils;->shouldBlockAutoCorrectionBySafetyNet(Lcom/android/inputmethod/latin/SuggestedWords;Lcom/android/inputmethod/latin/Suggest;)Z

    move-result v0

    .line 1791
    .local v0, shouldBlockAutoCorrectionBySafetyNet:Z
    if-eqz v0, :cond_0

    .line 1792
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/SuggestedWords;->setShouldBlockAutoCorrection()V

    .line 1794
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;)V

    .line 1795
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1796
    if-eqz v0, :cond_1

    .line 1797
    iput-object p2, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    .line 1806
    :goto_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestionsStripVisible()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestionStripShown(Z)V

    .line 1807
    return-void

    .line 1798
    :cond_1
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/SuggestedWords;->hasAutoCorrectionWord()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1799
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1801
    :cond_2
    iput-object p2, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1804
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public updateBigramPredictions()V
    .locals 4

    .prologue
    .line 1976
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestionsRequested()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1996
    :cond_0
    :goto_0
    return-void

    .line 1979
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/Settings$Values;->mBigramPredictionEnabled:Z

    if-nez v0, :cond_2

    .line 1980
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->setPunctuationSuggestions()V

    goto :goto_0

    .line 1984
    :cond_2
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-object v1, v1, Lcom/android/inputmethod/latin/Settings$Values;->mWordSeparators:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/EditingUtils;->getThisWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1986
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    sget-object v2, Lcom/android/inputmethod/latin/LatinIME;->sEmptyWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getProximityInfo()Lcom/android/inputmethod/keyboard/ProximityInfo;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/inputmethod/latin/Suggest;->getSuggestedWordBuilder(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v0

    .line 1989
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1992
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->build()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->showSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1994
    :cond_3
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingPunctuationList()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->setPunctuationSuggestions()V

    goto :goto_0
.end method

.method public updateFullscreenMode()V
    .locals 2

    .prologue
    .line 1094
    invoke-super {p0}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->updateFullscreenMode()V

    .line 1096
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyPreviewBackingView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1100
    :goto_0
    return-void

    .line 1099
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public updateSuggestions()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1719
    iget-object v10, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestionsRequested()Z

    move-result v10

    if-nez v10, :cond_2

    :cond_0
    iget-object v10, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-virtual {v10}, Lcom/android/inputmethod/deprecated/VoiceProxy;->isVoiceInputHighlighted()Z

    move-result v10

    if-nez v10, :cond_2

    .line 1786
    :cond_1
    :goto_0
    return-void

    .line 1724
    :cond_2
    iget-object v10, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v10}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelUpdateSuggestions()V

    .line 1725
    iget-object v10, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v10}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelUpdateBigramPredictions()V

    .line 1727
    iget-boolean v10, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    if-nez v10, :cond_3

    .line 1728
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->setPunctuationSuggestions()V

    goto :goto_0

    .line 1732
    :cond_3
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    .line 1734
    .local v7, wordComposer:Lcom/android/inputmethod/latin/WordComposer;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 1736
    .local v3, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v3, :cond_8

    .line 1737
    const/4 v4, 0x0

    .line 1742
    .local v4, prevWord:Ljava/lang/CharSequence;
    :goto_1
    iget-object v10, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v11, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v11}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getProximityInfo()Lcom/android/inputmethod/keyboard/ProximityInfo;

    move-result-object v11

    invoke-virtual {v10, v7, v4, v11}, Lcom/android/inputmethod/latin/Suggest;->getSuggestedWordBuilder(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v2

    .line 1745
    .local v2, builder:Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    iget-boolean v10, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputTypeNoAutoCorrect:Z

    if-nez v10, :cond_9

    iget-object v10, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v10}, Lcom/android/inputmethod/latin/Suggest;->hasAutoCorrection()Z

    move-result v10

    if-eqz v10, :cond_9

    move v1, v8

    .line 1746
    .local v1, autoCorrectionAvailable:Z
    :goto_2
    invoke-virtual {v7}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v6

    .line 1753
    .local v6, typedWord:Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v10}, Lcom/android/inputmethod/latin/Suggest;->getUnigramDictionaries()Ljava/util/Map;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->preferCapitalization()Z

    move-result v11

    invoke-static {v10, v6, v11}, Lcom/android/inputmethod/latin/AutoCorrection;->allowsToBeAutoCorrected(Ljava/util/Map;Ljava/lang/CharSequence;Z)Z

    move-result v0

    .line 1755
    .local v0, allowsToBeAutoCorrected:Z
    iget v10, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_4

    iget v10, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_5

    .line 1757
    :cond_4
    if-nez v0, :cond_a

    move v10, v8

    :goto_3
    or-int/2addr v1, v10

    .line 1760
    :cond_5
    invoke-virtual {v7}, Lcom/android/inputmethod/latin/WordComposer;->isMostlyCaps()Z

    move-result v10

    if-nez v10, :cond_b

    move v10, v8

    :goto_4
    and-int/2addr v1, v10

    .line 1761
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->isRecorrecting()Z

    move-result v10

    if-nez v10, :cond_c

    move v10, v8

    :goto_5
    and-int/2addr v1, v10

    .line 1769
    if-eqz v6, :cond_7

    .line 1770
    invoke-virtual {v2}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->size()I

    move-result v10

    if-gt v10, v8, :cond_6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-eq v10, v8, :cond_6

    if-eqz v0, :cond_6

    iget-object v10, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    invoke-virtual {v10}, Lcom/android/inputmethod/latin/SuggestionsView;->isShowingAddToDictionaryHint()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1772
    :cond_6
    if-nez v0, :cond_d

    :goto_6
    invoke-virtual {v2, v8}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->setTypedWordValid(Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->setHasMinimalSuggestion(Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    .line 1785
    :cond_7
    :goto_7
    invoke-virtual {v2}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->build()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v8

    invoke-virtual {p0, v8, v6}, Lcom/android/inputmethod/latin/LatinIME;->showSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1739
    .end local v0           #allowsToBeAutoCorrected:Z
    .end local v1           #autoCorrectionAvailable:Z
    .end local v2           #builder:Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .end local v4           #prevWord:Ljava/lang/CharSequence;
    .end local v6           #typedWord:Ljava/lang/CharSequence;
    :cond_8
    iget-object v10, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-object v10, v10, Lcom/android/inputmethod/latin/Settings$Values;->mWordSeparators:Ljava/lang/String;

    invoke-static {v3, v10}, Lcom/android/inputmethod/latin/EditingUtils;->getPreviousWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4       #prevWord:Ljava/lang/CharSequence;
    goto :goto_1

    .restart local v2       #builder:Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    :cond_9
    move v1, v9

    .line 1745
    goto :goto_2

    .restart local v0       #allowsToBeAutoCorrected:Z
    .restart local v1       #autoCorrectionAvailable:Z
    .restart local v6       #typedWord:Ljava/lang/CharSequence;
    :cond_a
    move v10, v9

    .line 1757
    goto :goto_3

    :cond_b
    move v10, v9

    .line 1760
    goto :goto_4

    :cond_c
    move v10, v9

    .line 1761
    goto :goto_5

    :cond_d
    move v8, v9

    .line 1772
    goto :goto_6

    .line 1775
    :cond_e
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/SuggestionsView;->getSuggestions()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v5

    .line 1776
    .local v5, previousSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-object v8, v8, Lcom/android/inputmethod/latin/Settings$Values;->mSuggestPuncList:Lcom/android/inputmethod/latin/SuggestedWords;

    if-ne v5, v8, :cond_f

    .line 1777
    invoke-virtual {v2}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->size()I

    move-result v8

    if-eqz v8, :cond_1

    .line 1780
    sget-object v5, Lcom/android/inputmethod/latin/SuggestedWords;->EMPTY:Lcom/android/inputmethod/latin/SuggestedWords;

    .line 1782
    :cond_f
    invoke-virtual {v2, v6, v5}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addTypedWordAndPreviousSuggestions(Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/SuggestedWords;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    goto :goto_7
.end method

.method public vibrate()V
    .locals 5

    .prologue
    .line 2250
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v1, v1, Lcom/android/inputmethod/latin/Settings$Values;->mVibrateOn:Z

    if-nez v1, :cond_1

    .line 2264
    :cond_0
    :goto_0
    return-void

    .line 2253
    :cond_1
    iget-wide v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeypressVibrationDuration:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 2255
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 2256
    .local v0, inputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;
    if-eqz v0, :cond_0

    .line 2257
    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->performHapticFeedback(II)Z

    goto :goto_0

    .line 2261
    .end local v0           #inputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;
    :cond_2
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mVibrator:Lcom/android/inputmethod/compat/VibratorCompatWrapper;

    if-eqz v1, :cond_0

    .line 2262
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mVibrator:Lcom/android/inputmethod/compat/VibratorCompatWrapper;

    iget-wide v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeypressVibrationDuration:J

    invoke-virtual {v1, v2, v3}, Lcom/android/inputmethod/compat/VibratorCompatWrapper;->vibrate(J)V

    goto :goto_0
.end method
