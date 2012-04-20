.class public Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;
.super Landroid/preference/PreferenceActivity;
.source "InputLanguageSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;
    }
.end annotation


# instance fields
.field private mLocaleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/preference/CheckBoxPreference;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSelectedLanguages:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->mLocaleMap:Ljava/util/HashMap;

    .line 56
    return-void
.end method

.method private get5Code(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .parameter "locale"

    .prologue
    .line 183
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, country:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
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

.method private hasDictionaryOrLayout(Ljava/util/Locale;)Landroid/util/Pair;
    .locals 13
    .parameter "locale"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    if-nez p1, :cond_0

    new-instance v10, Landroid/util/Pair;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 179
    :goto_0
    return-object v10

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 159
    .local v7, res:Landroid/content/res/Resources;
    invoke-static {v7, p1}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v9

    .line 160
    .local v9, saveLocale:Ljava/util/Locale;
    invoke-static {p0, p1}, Lcom/android/inputmethod/latin/DictionaryFactory;->getDictionaryId(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/Long;

    move-result-object v1

    .line 161
    .local v1, dictionaryId:Ljava/lang/Long;
    const/4 v2, 0x0

    .line 164
    .local v2, hasLayout:Z
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    .line 165
    .local v6, localeStr:Ljava/lang/String;
    const v10, 0x7f050009

    invoke-static {p0, v10}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyboardLocale(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ","

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, layoutCountryCodes:[Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    array-length v10, v4

    if-lez v10, :cond_1

    .line 168
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v8, v0, v3

    .line 169
    .local v8, s:Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_2

    .line 170
    const/4 v2, 0x1

    .line 178
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #layoutCountryCodes:[Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #localeStr:Ljava/lang/String;
    .end local v8           #s:Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-static {v7, v9}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    .line 179
    new-instance v10, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v10, v1, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 168
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #layoutCountryCodes:[Ljava/lang/String;
    .restart local v5       #len$:I
    .restart local v6       #localeStr:Ljava/lang/String;
    .restart local v8       #s:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 176
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #layoutCountryCodes:[Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #localeStr:Ljava/lang/String;
    .end local v8           #s:Ljava/lang/String;
    :catch_0
    move-exception v10

    goto :goto_2

    .line 175
    :catch_1
    move-exception v10

    goto :goto_2
.end method

.method private isLocaleIn(Ljava/util/Locale;[Ljava/lang/String;)Z
    .locals 3
    .parameter "locale"
    .parameter "list"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->get5Code(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, lang:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 151
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 153
    :goto_1
    return v2

    .line 150
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getUniqueLocales()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v8

    .line 214
    .local v8, locales:[Ljava/lang/String;
    invoke-static {v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 215
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v12, uniqueLocales:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;>;"
    array-length v9, v8

    .line 218
    .local v9, origSize:I
    new-array v10, v9, [Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;

    .line 219
    .local v10, preprocess:[Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;
    const/4 v2, 0x0

    .line 220
    .local v2, finalSize:I
    const/4 v4, 0x0

    .local v4, i:I
    move v3, v2

    .end local v2           #finalSize:I
    .local v3, finalSize:I
    :goto_0
    if-ge v4, v9, :cond_5

    .line 221
    aget-object v11, v8, v4

    .line 222
    .local v11, s:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    .line 223
    .local v7, len:I
    const-string v6, ""

    .line 224
    .local v6, language:Ljava/lang/String;
    const-string v0, ""

    .line 225
    .local v0, country:Ljava/lang/String;
    const/4 v13, 0x5

    if-ne v7, v13, :cond_1

    .line 226
    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 227
    const/4 v13, 0x3

    const/4 v14, 0x5

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 231
    :cond_0
    :goto_1
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v6, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .local v5, l:Ljava/util/Locale;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    move v2, v3

    .line 220
    .end local v3           #finalSize:I
    .restart local v2       #finalSize:I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2           #finalSize:I
    .restart local v3       #finalSize:I
    goto :goto_0

    .line 228
    .end local v5           #l:Ljava/util/Locale;
    :cond_1
    const/4 v13, 0x5

    if-ge v7, v13, :cond_0

    .line 229
    move-object v6, v11

    goto :goto_1

    .line 238
    .restart local v5       #l:Ljava/util/Locale;
    :cond_2
    if-nez v3, :cond_3

    .line 239
    add-int/lit8 v2, v3, 0x1

    .end local v3           #finalSize:I
    .restart local v2       #finalSize:I
    new-instance v13, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;

    const/4 v14, 0x0

    invoke-static {v5, v14}, Lcom/android/inputmethod/latin/Utils;->getFullDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v5}, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v13, v10, v3

    goto :goto_2

    .line 242
    .end local v2           #finalSize:I
    .restart local v3       #finalSize:I
    :cond_3
    const-string v13, "zz_ZZ"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    move v2, v3

    .end local v3           #finalSize:I
    .restart local v2       #finalSize:I
    goto :goto_2

    .line 245
    .end local v2           #finalSize:I
    .restart local v3       #finalSize:I
    :cond_4
    const/4 v13, 0x0

    invoke-static {v5, v13}, Lcom/android/inputmethod/latin/Utils;->getFullDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, displayName:Ljava/lang/String;
    add-int/lit8 v2, v3, 0x1

    .end local v3           #finalSize:I
    .restart local v2       #finalSize:I
    new-instance v13, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;

    invoke-direct {v13, v1, v5}, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v13, v10, v3

    goto :goto_2

    .line 250
    .end local v0           #country:Ljava/lang/String;
    .end local v1           #displayName:Ljava/lang/String;
    .end local v2           #finalSize:I
    .end local v5           #l:Ljava/util/Locale;
    .end local v6           #language:Ljava/lang/String;
    .end local v7           #len:I
    .end local v11           #s:Ljava/lang/String;
    .restart local v3       #finalSize:I
    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_6

    .line 251
    aget-object v13, v10, v4

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 253
    :cond_6
    return-object v12
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 24
    .parameter "icicle"

    .prologue
    .line 80
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v21, 0x7f050028

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->addPreferencesFromResource(I)V

    .line 83
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->mPrefs:Landroid/content/SharedPreferences;

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    const-string v22, "selected_languages"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->mSelectedLanguages:Ljava/lang/String;

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->mSelectedLanguages:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 86
    .local v12, languageList:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->getUniqueLocales()Ljava/util/ArrayList;

    move-result-object v2

    .line 87
    .local v2, availableLanguages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    .line 88
    .local v19, parent:Landroid/preference/PreferenceGroup;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v5, dictionaryIdLocaleMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;>;"
    new-instance v16, Ljava/util/TreeMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/TreeMap;-><init>()V

    .line 91
    .local v16, localeHasDictionaryMap:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;Ljava/lang/Boolean;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v10, v0, :cond_5

    .line 92
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;

    .line 93
    .local v13, loc:Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;
    iget-object v14, v13, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;->mLocale:Ljava/util/Locale;

    .line 94
    .local v14, locale:Ljava/util/Locale;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->hasDictionaryOrLayout(Ljava/util/Locale;)Landroid/util/Pair;

    move-result-object v8

    .line 95
    .local v8, hasDictionaryOrLayout:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    iget-object v4, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    .line 96
    .local v4, dictionaryId:Ljava/lang/Long;
    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 97
    .local v9, hasLayout:Z
    if-eqz v4, :cond_1

    const/4 v7, 0x1

    .line 102
    .local v7, hasDictionary:Z
    :goto_1
    if-nez v9, :cond_2

    if-nez v7, :cond_2

    .line 91
    :cond_0
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 97
    .end local v7           #hasDictionary:Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 105
    .restart local v7       #hasDictionary:Z
    :cond_2
    if-eqz v9, :cond_3

    .line 106
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v13, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_3
    if-eqz v7, :cond_0

    .line 111
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 112
    invoke-virtual {v14}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v17

    .line 113
    .local v17, newLocale:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;->mLocale:Ljava/util/Locale;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v18

    .line 116
    .local v18, oldLocale:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v21

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_4

    if-eqz v9, :cond_0

    .line 123
    .end local v17           #newLocale:Ljava/lang/String;
    .end local v18           #oldLocale:Ljava/lang/String;
    :cond_4
    invoke-virtual {v5, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 126
    .end local v4           #dictionaryId:Ljava/lang/Long;
    .end local v7           #hasDictionary:Z
    .end local v8           #hasDictionaryOrLayout:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .end local v9           #hasLayout:Z
    .end local v13           #loc:Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;
    .end local v14           #locale:Ljava/util/Locale;
    :cond_5
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;

    .line 127
    .local v15, localeEntry:Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_6

    .line 128
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v15, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 132
    .end local v15           #localeEntry:Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;
    :cond_7
    invoke-virtual/range {v16 .. v16}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 133
    .local v6, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;Ljava/lang/Boolean;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;

    .line 134
    .restart local v15       #localeEntry:Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;
    iget-object v14, v15, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;->mLocale:Ljava/util/Locale;

    .line 135
    .restart local v14       #locale:Ljava/util/Locale;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    .line 136
    .local v7, hasDictionary:Ljava/lang/Boolean;
    new-instance v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 137
    .local v20, pref:Landroid/preference/CheckBoxPreference;
    #getter for: Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;->mLabel:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;->access$000(Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 138
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12}, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->isLocaleIn(Ljava/util/Locale;[Ljava/lang/String;)Z

    move-result v3

    .line 139
    .local v3, checked:Z
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 140
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 141
    const v21, 0x7f0b00ed

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 143
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->mLocaleMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 146
    .end local v3           #checked:Z
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;Ljava/lang/Boolean;>;"
    .end local v7           #hasDictionary:Ljava/lang/Boolean;
    .end local v14           #locale:Ljava/util/Locale;
    .end local v15           #localeEntry:Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;
    .end local v20           #pref:Landroid/preference/CheckBoxPreference;
    :cond_9
    return-void
.end method

.method protected onPause()V
    .locals 8

    .prologue
    .line 195
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 197
    const-string v0, ""

    .line 198
    .local v0, checkedLanguages:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 199
    .local v4, parent:Landroid/preference/PreferenceGroup;
    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 200
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 201
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 202
    .local v5, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 203
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->mLocaleMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Locale;

    invoke-direct {p0, v6}, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->get5Code(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 206
    .end local v5           #pref:Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_2

    const/4 v0, 0x0

    .line 207
    :cond_2
    iget-object v6, p0, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 208
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "selected_languages"

    invoke-interface {v2, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 209
    invoke-static {v2}, Lcom/android/inputmethod/compat/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 210
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 190
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 191
    return-void
.end method
