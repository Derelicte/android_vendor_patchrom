.class public Lcom/android/inputmethod/latin/Settings$Values;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Values"
.end annotation


# instance fields
.field public final mAutoCap:Z

.field public final mAutoCorrectEnabled:Z

.field public final mAutoCorrectionThreshold:D

.field public final mBigramPredictionEnabled:Z

.field public final mBigramSuggestionEnabled:Z

.field public final mDelayUpdateOldSuggestions:I

.field public final mEnableSuggestionSpanInsertion:Z

.field public final mKeyPreviewPopupDismissDelay:I

.field public final mKeyPreviewPopupOn:Z

.field public final mMagicSpaceStrippers:Ljava/lang/String;

.field public final mMagicSpaceSwappers:Ljava/lang/String;

.field private final mShowSettingsKey:Z

.field public final mSoundOn:Z

.field public final mSuggestPuncList:Lcom/android/inputmethod/latin/SuggestedWords;

.field public final mSuggestPuncs:Ljava/lang/String;

.field private final mSymbolsExcludedFromWordSeparators:Ljava/lang/String;

.field public final mUseContactsDict:Z

.field public final mVibrateOn:Z

.field private final mVoiceKeyEnabled:Z

.field private final mVoiceKeyOnMain:Z

.field public final mWordSeparators:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Landroid/content/Context;Ljava/lang/String;)V
    .locals 13
    .parameter "prefs"
    .parameter "context"
    .parameter "localeStr"

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 136
    .local v4, res:Landroid/content/res/Resources;
    if-eqz p3, :cond_0

    .line 137
    invoke-static/range {p3 .. p3}, Lcom/android/inputmethod/latin/LocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    .line 138
    .local v3, keyboardLocale:Ljava/util/Locale;
    invoke-static {v4, v3}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v5

    .line 144
    .end local v3           #keyboardLocale:Ljava/util/Locale;
    .local v5, savedLocale:Ljava/util/Locale;
    :goto_0
    const v11, 0x7f090002

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    iput v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mDelayUpdateOldSuggestions:I

    .line 146
    const v11, 0x7f0b0055

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mMagicSpaceStrippers:Ljava/lang/String;

    .line 147
    const v11, 0x7f0b0054

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mMagicSpaceSwappers:Ljava/lang/String;

    .line 148
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/inputmethod/latin/Settings$Values;->mMagicSpaceStrippers:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/inputmethod/latin/Settings$Values;->mMagicSpaceSwappers:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x7f0b0056

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 150
    .local v10, wordSeparators:Ljava/lang/String;
    const v11, 0x7f0b0057

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 152
    .local v6, symbolsExcludedFromWordSeparators:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_1

    .line 153
    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v6, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 152
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 140
    .end local v2           #i:I
    .end local v5           #savedLocale:Ljava/util/Locale;
    .end local v6           #symbolsExcludedFromWordSeparators:Ljava/lang/String;
    .end local v10           #wordSeparators:Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    .restart local v5       #savedLocale:Ljava/util/Locale;
    goto :goto_0

    .line 156
    .restart local v2       #i:I
    .restart local v6       #symbolsExcludedFromWordSeparators:Ljava/lang/String;
    .restart local v10       #wordSeparators:Ljava/lang/String;
    :cond_1
    iput-object v6, p0, Lcom/android/inputmethod/latin/Settings$Values;->mSymbolsExcludedFromWordSeparators:Ljava/lang/String;

    .line 157
    iput-object v10, p0, Lcom/android/inputmethod/latin/Settings$Values;->mWordSeparators:Ljava/lang/String;

    .line 158
    const v11, 0x7f0b0053

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mSuggestPuncs:Ljava/lang/String;

    .line 160
    iget-object v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mSuggestPuncs:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/inputmethod/latin/Settings$Values;->createSuggestPuncList(Ljava/lang/String;)Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v11

    iput-object v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mSuggestPuncList:Lcom/android/inputmethod/latin/SuggestedWords;

    .line 163
    invoke-static {p2}, Lcom/android/inputmethod/compat/VibratorCompatWrapper;->getInstance(Landroid/content/Context;)Lcom/android/inputmethod/compat/VibratorCompatWrapper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/inputmethod/compat/VibratorCompatWrapper;->hasVibrator()Z

    move-result v1

    .line 164
    .local v1, hasVibrator:Z
    if-eqz v1, :cond_3

    const-string v11, "vibrate_on"

    const v12, 0x7f08000e

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    :goto_2
    iput-boolean v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mVibrateOn:Z

    .line 166
    const-string v11, "sound_on"

    const v12, 0x7f08000d

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mSoundOn:Z

    .line 168
    invoke-static {p1, v4}, Lcom/android/inputmethod/latin/Settings$Values;->isKeyPreviewPopupEnabled(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mKeyPreviewPopupOn:Z

    .line 169
    invoke-static {p1, v4}, Lcom/android/inputmethod/latin/Settings$Values;->getKeyPreviewPopupDismissDelay(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v11

    iput v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mKeyPreviewPopupDismissDelay:I

    .line 170
    const-string v11, "auto_cap"

    const/4 v12, 0x1

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mAutoCap:Z

    .line 171
    invoke-static {p1, v4}, Lcom/android/inputmethod/latin/Settings$Values;->isAutoCorrectEnabled(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mAutoCorrectEnabled:Z

    .line 172
    iget-boolean v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mAutoCorrectEnabled:Z

    if-eqz v11, :cond_4

    iget-boolean v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mAutoCorrectEnabled:Z

    invoke-static {p1, v4, v11}, Lcom/android/inputmethod/latin/Settings$Values;->isBigramSuggestionEnabled(Landroid/content/SharedPreferences;Landroid/content/res/Resources;Z)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    :goto_3
    iput-boolean v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mBigramSuggestionEnabled:Z

    .line 174
    iget-boolean v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mBigramSuggestionEnabled:Z

    if-eqz v11, :cond_5

    invoke-static {p1, v4}, Lcom/android/inputmethod/latin/Settings$Values;->isBigramPredictionEnabled(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    :goto_4
    iput-boolean v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mBigramPredictionEnabled:Z

    .line 176
    invoke-static {p1, v4}, Lcom/android/inputmethod/latin/Settings$Values;->getAutoCorrectionThreshold(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)D

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mAutoCorrectionThreshold:D

    .line 177
    const-string v11, "pref_key_use_contacts_dict"

    const/4 v12, 0x1

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mUseContactsDict:Z

    .line 178
    const-string v11, "enable_span_insert"

    const/4 v12, 0x1

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mEnableSuggestionSpanInsertion:Z

    .line 180
    const v11, 0x7f080003

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 182
    .local v0, defaultShowSettingsKey:Z
    invoke-static {v4}, Lcom/android/inputmethod/latin/Settings$Values;->isShowSettingsKeyOption(Landroid/content/res/Resources;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "show_settings_key"

    invoke-interface {p1, v11, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .end local v0           #defaultShowSettingsKey:Z
    :cond_2
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/Settings$Values;->mShowSettingsKey:Z

    .line 185
    const v11, 0x7f0b0066

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 186
    .local v8, voiceModeMain:Ljava/lang/String;
    const v11, 0x7f0b0068

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 187
    .local v9, voiceModeOff:Ljava/lang/String;
    const-string v11, "voice_mode"

    invoke-interface {p1, v11, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 188
    .local v7, voiceMode:Ljava/lang/String;
    if-eqz v7, :cond_6

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    const/4 v11, 0x1

    :goto_5
    iput-boolean v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mVoiceKeyEnabled:Z

    .line 189
    if-eqz v7, :cond_7

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x1

    :goto_6
    iput-boolean v11, p0, Lcom/android/inputmethod/latin/Settings$Values;->mVoiceKeyOnMain:Z

    .line 191
    invoke-static {v4, v5}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    .line 192
    return-void

    .line 164
    .end local v7           #voiceMode:Ljava/lang/String;
    .end local v8           #voiceModeMain:Ljava/lang/String;
    .end local v9           #voiceModeOff:Ljava/lang/String;
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 172
    :cond_4
    const/4 v11, 0x0

    goto :goto_3

    .line 174
    :cond_5
    const/4 v11, 0x0

    goto :goto_4

    .line 188
    .restart local v7       #voiceMode:Ljava/lang/String;
    .restart local v8       #voiceModeMain:Ljava/lang/String;
    .restart local v9       #voiceModeOff:Ljava/lang/String;
    :cond_6
    const/4 v11, 0x0

    goto :goto_5

    .line 189
    :cond_7
    const/4 v11, 0x0

    goto :goto_6
.end method

.method private static createSuggestPuncList(Ljava/lang/String;)Lcom/android/inputmethod/latin/SuggestedWords;
    .locals 3
    .parameter "puncs"

    .prologue
    .line 284
    new-instance v0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;-><init>()V

    .line 285
    .local v0, builder:Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    if-eqz p0, :cond_0

    .line 286
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 287
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addWord(Ljava/lang/CharSequence;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    .end local v1           #i:I
    :cond_0
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->setIsPunctuationSuggestions()Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->build()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v2

    return-object v2
.end method

.method private static getAutoCorrectionThreshold(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)D
    .locals 9
    .parameter "sp"
    .parameter "resources"

    .prologue
    .line 259
    const-string v6, "auto_correction_threshold"

    const v7, 0x7f0b0063

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 262
    .local v4, currentAutoCorrectionSetting:Ljava/lang/String;
    const/high16 v6, 0x7f0c

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, autoCorrectionThresholdValues:[Ljava/lang/String;
    const-wide v1, 0x7fefffffffffffffL

    .line 267
    .local v1, autoCorrectionThreshold:D
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 268
    .local v0, arrayIndex:I
    if-ltz v0, :cond_0

    array-length v6, v3

    if-ge v0, v6, :cond_0

    .line 269
    aget-object v6, v3, v0

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 280
    .end local v0           #arrayIndex:I
    :cond_0
    :goto_0
    return-wide v1

    .line 272
    :catch_0
    move-exception v5

    .line 274
    .local v5, e:Ljava/lang/NumberFormatException;
    const-wide v1, 0x7fefffffffffffffL

    .line 275
    invoke-static {}, Lcom/android/inputmethod/latin/Settings;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot load auto correction threshold setting. currentAutoCorrectionSetting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", autoCorrectionThresholdValues: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getKeyPreviewPopupDismissDelay(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I
    .locals 2
    .parameter "sp"
    .parameter "resources"

    .prologue
    .line 236
    const-string v0, "pref_key_preview_popup_dismiss_delay"

    const v1, 0x7f090007

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static isAutoCorrectEnabled(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z
    .locals 4
    .parameter "sp"
    .parameter "resources"

    .prologue
    .line 215
    const-string v2, "auto_correction_threshold"

    const v3, 0x7f0b0063

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, currentAutoCorrectionSetting:Ljava/lang/String;
    const v2, 0x7f0b0062

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, autoCorrectionOff:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isBigramPredictionEnabled(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z
    .locals 2
    .parameter "sp"
    .parameter "resources"

    .prologue
    .line 253
    const-string v0, "bigram_prediction"

    const v1, 0x7f08000c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isBigramSuggestionEnabled(Landroid/content/SharedPreferences;Landroid/content/res/Resources;Z)Z
    .locals 3
    .parameter "sp"
    .parameter "resources"
    .parameter "autoCorrectEnabled"

    .prologue
    .line 242
    const v1, 0x7f080006

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 244
    .local v0, showBigramSuggestionsOption:Z
    if-nez v0, :cond_0

    .line 247
    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_0
    const-string v1, "bigram_suggestion"

    const v2, 0x7f08000b

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0
.end method

.method public static isKeyPreviewPopupEnabled(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)Z
    .locals 3
    .parameter "sp"
    .parameter "resources"

    .prologue
    const v2, 0x7f08000a

    .line 226
    const v1, 0x7f080005

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 228
    .local v0, showPopupOption:Z
    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 229
    :goto_0
    return v1

    :cond_0
    const-string v1, "popup_on"

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public static isShowSettingsKeyOption(Landroid/content/res/Resources;)Z
    .locals 1
    .parameter "resources"

    .prologue
    .line 294
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public isMagicSpaceStripper(I)Z
    .locals 2
    .parameter "code"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings$Values;->mMagicSpaceStrippers:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isMagicSpaceSwapper(I)Z
    .locals 2
    .parameter "code"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings$Values;->mMagicSpaceSwappers:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isSettingsKeyEnabled()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Settings$Values;->mShowSettingsKey:Z

    return v0
.end method

.method public isSuggestedPunctuation(I)Z
    .locals 2
    .parameter "code"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings$Values;->mSuggestPuncs:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isSymbolExcludedFromWordSeparators(I)Z
    .locals 2
    .parameter "code"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings$Values;->mSymbolsExcludedFromWordSeparators:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isVoiceKeyEnabled(Landroid/view/inputmethod/EditorInfo;)Z
    .locals 4
    .parameter "attribute"

    .prologue
    const/4 v2, 0x0

    .line 303
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isShortcutImeEnabled()Z

    move-result v1

    .line 304
    .local v1, shortcutImeEnabled:Z
    if-eqz p1, :cond_1

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 305
    .local v0, inputType:I
    :goto_0
    if-eqz v1, :cond_0

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/Settings$Values;->mVoiceKeyEnabled:Z

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isPasswordInputType(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .end local v0           #inputType:I
    :cond_1
    move v0, v2

    .line 304
    goto :goto_0
.end method

.method public isVoiceKeyOnMain()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Settings$Values;->mVoiceKeyOnMain:Z

    return v0
.end method

.method public isWordSeparator(I)Z
    .locals 2
    .parameter "code"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings$Values;->mWordSeparators:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
