.class public Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;
.super Ljava/lang/Object;
.source "LanguageSwitcher.java"


# static fields
.field private static final EMPTY_STIRNG_ARRAY:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentIndex:I

.field private mDefaultInputLanguage:Ljava/lang/String;

.field private mDefaultInputLocale:Ljava/util/Locale;

.field private final mIme:Lcom/android/inputmethod/latin/LatinIME;

.field private final mLocales:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedLanguageArray:[Ljava/lang/String;

.field private mSelectedLanguages:Ljava/lang/String;

.field private mSystemLocale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->EMPTY_STIRNG_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 1
    .parameter "ime"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mLocales:Ljava/util/ArrayList;

    .line 47
    sget-object v0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->EMPTY_STIRNG_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mCurrentIndex:I

    .line 55
    iput-object p1, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mIme:Lcom/android/inputmethod/latin/LatinIME;

    .line 56
    return-void
.end method

.method private constructLocales()V
    .locals 6

    .prologue
    .line 127
    iget-object v5, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 128
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 129
    .local v2, lang:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/inputmethod/latin/LocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    .line 130
    .local v4, locale:Ljava/util/Locale;
    iget-object v5, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v2           #lang:Ljava/lang/String;
    .end local v4           #locale:Ljava/util/Locale;
    :cond_0
    return-void
.end method

.method private getSystemLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mSystemLocale:Ljava/util/Locale;

    return-object v0
.end method

.method private loadDefaults()V
    .locals 4

    .prologue
    .line 117
    sget-boolean v1, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v1, :cond_0

    .line 118
    sget-object v1, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->TAG:Ljava/lang/String;

    const-string v2, "load default locales:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mIme:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    .line 121
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, country:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mDefaultInputLanguage:Ljava/lang/String;

    .line 124
    return-void

    .line 122
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setSystemLocale(Ljava/util/Locale;)V
    .locals 0
    .parameter "locale"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mSystemLocale:Ljava/util/Locale;

    .line 189
    return-void
.end method


# virtual methods
.method public getEnabledLanguages(Z)[Ljava/lang/String;
    .locals 3
    .parameter "allowImplicitlySelectedLanguages"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 149
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mDefaultInputLanguage:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 151
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getInputLocale()Ljava/util/Locale;
    .locals 2

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->getLocaleCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    .line 161
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mLocales:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    goto :goto_0
.end method

.method public getLocaleCount()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public loadLocales(Landroid/content/SharedPreferences;Ljava/util/Locale;)Z
    .locals 8
    .parameter "sp"
    .parameter "systemLocale"

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 77
    sget-boolean v5, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v5, :cond_0

    .line 78
    sget-object v5, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->TAG:Ljava/lang/String;

    const-string v6, "load locales"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    if-eqz p2, :cond_1

    .line 81
    invoke-direct {p0, p2}, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->setSystemLocale(Ljava/util/Locale;)V

    .line 83
    :cond_1
    const-string v5, "selected_languages"

    invoke-interface {p1, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, selectedLanguages:Ljava/lang/String;
    const-string v5, "input_language"

    invoke-interface {p1, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, currentLanguage:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 86
    sget-object v5, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->EMPTY_STIRNG_ARRAY:[Ljava/lang/String;

    iput-object v5, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    .line 87
    iput-object v7, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mSelectedLanguages:Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->loadDefaults()V

    .line 89
    iget-object v5, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 113
    :cond_2
    :goto_0
    return v3

    .line 92
    :cond_3
    iget-object v3, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move v3, v4

    .line 93
    goto :goto_0

    .line 95
    :cond_4
    iget-object v5, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mSelectedLanguages:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 98
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    .line 99
    iput-object v2, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mSelectedLanguages:Ljava/lang/String;

    .line 100
    invoke-direct {p0}, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->constructLocales()V

    .line 101
    iput v3, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mCurrentIndex:I

    .line 102
    if-eqz v0, :cond_5

    .line 104
    iput v3, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mCurrentIndex:I

    .line 105
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 106
    iget-object v3, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 107
    iput v1, p0, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->mCurrentIndex:I

    .end local v1           #i:I
    :cond_5
    move v3, v4

    .line 113
    goto :goto_0

    .line 105
    .restart local v1       #i:I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "conf"
    .parameter "prefs"

    .prologue
    .line 63
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 64
    .local v0, newLocale:Ljava/util/Locale;
    invoke-direct {p0}, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->getSystemLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    invoke-virtual {p0, p2, v0}, Lcom/android/inputmethod/deprecated/languageswitcher/LanguageSwitcher;->loadLocales(Landroid/content/SharedPreferences;Ljava/util/Locale;)Z

    .line 67
    :cond_0
    return-void
.end method
