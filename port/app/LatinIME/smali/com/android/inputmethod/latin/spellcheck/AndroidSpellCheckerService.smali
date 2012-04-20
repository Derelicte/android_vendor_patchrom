.class public Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;
.super Landroid/service/textservice/SpellCheckerService;
.source "AndroidSpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;,
        Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final USE_FULL_EDIT_DISTANCE_FLAG_ARRAY:[Lcom/android/inputmethod/latin/Flag;


# instance fields
.field private mContactsDictionary:Lcom/android/inputmethod/latin/SynchronouslyLoadedContactsDictionary;

.field private mDictionaryPools:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;",
            ">;"
        }
    .end annotation
.end field

.field private mLikelyThreshold:D

.field private mSuggestionThreshold:D

.field private mUserDictionaries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/latin/Dictionary;",
            ">;"
        }
    .end annotation
.end field

.field private mWhitelistDictionaries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/latin/Dictionary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const-class v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->TAG:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/android/inputmethod/latin/BinaryDictionary;->ALL_CONFIG_FLAGS:[Lcom/android/inputmethod/latin/Flag;

    sget-object v1, Lcom/android/inputmethod/latin/BinaryDictionary;->ALL_CONFIG_FLAGS:[Lcom/android/inputmethod/latin/Flag;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/inputmethod/latin/Flag;

    sput-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->USE_FULL_EDIT_DISTANCE_FLAG_ARRAY:[Lcom/android/inputmethod/latin/Flag;

    .line 72
    sget-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->USE_FULL_EDIT_DISTANCE_FLAG_ARRAY:[Lcom/android/inputmethod/latin/Flag;

    sget-object v1, Lcom/android/inputmethod/latin/BinaryDictionary;->ALL_CONFIG_FLAGS:[Lcom/android/inputmethod/latin/Flag;

    array-length v1, v1

    sget-object v2, Lcom/android/inputmethod/latin/BinaryDictionary;->FLAG_USE_FULL_EDIT_DISTANCE:Lcom/android/inputmethod/latin/Flag;

    aput-object v2, v0, v1

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/service/textservice/SpellCheckerService;-><init>()V

    .line 75
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mDictionaryPools:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mUserDictionaries:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mWhitelistDictionaries:Ljava/util/Map;

    .line 344
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;Ljava/lang/String;)Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->getDictionaryPool(Ljava/lang/String;)Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Landroid/view/textservice/SuggestionsInfo;
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->getNotInDictEmptySuggestions()Landroid/view/textservice/SuggestionsInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Landroid/view/textservice/SuggestionsInfo;
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->getInDictEmptySuggestions()Landroid/view/textservice/SuggestionsInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mSuggestionThreshold:D

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mLikelyThreshold:D

    return-wide v0
.end method

.method static synthetic access$700(Ljava/lang/String;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-static {p0}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->getCapitalizationType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getCapitalizationType(Ljava/lang/String;)I
    .locals 6
    .parameter "text"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 329
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 341
    :cond_0
    :goto_0
    return v3

    .line 330
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->codePointCount(II)I

    move-result v2

    .line 331
    .local v2, len:I
    const/4 v0, 0x1

    .line 332
    .local v0, capsCount:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 333
    if-eq v4, v0, :cond_3

    if-eq v1, v0, :cond_3

    .line 340
    :cond_2
    if-ne v4, v0, :cond_5

    move v3, v4

    goto :goto_0

    .line 334
    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 332
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 341
    :cond_5
    if-ne v2, v0, :cond_0

    const/4 v3, 0x2

    goto :goto_0
.end method

.method private getDictionaryPool(Ljava/lang/String;)Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;
    .locals 3
    .parameter "locale"

    .prologue
    .line 288
    iget-object v2, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mDictionaryPools:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    .line 289
    .local v1, pool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;
    if-nez v1, :cond_0

    .line 290
    invoke-static {p1}, Lcom/android/inputmethod/latin/LocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 291
    .local v0, localeObject:Ljava/util/Locale;
    new-instance v1, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    .end local v1           #pool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;
    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, v0}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;-><init>(ILcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;Ljava/util/Locale;)V

    .line 292
    .restart local v1       #pool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;
    iget-object v2, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mDictionaryPools:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .end local v0           #localeObject:Ljava/util/Locale;
    :cond_0
    return-object v1
.end method

.method private static getInDictEmptySuggestions()Landroid/view/textservice/SuggestionsInfo;
    .locals 3

    .prologue
    .line 106
    new-instance v0, Landroid/view/textservice/SuggestionsInfo;

    const/4 v1, 0x1

    sget-object v2, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/view/textservice/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V

    return-object v0
.end method

.method private static getNotInDictEmptySuggestions()Landroid/view/textservice/SuggestionsInfo;
    .locals 3

    .prologue
    .line 102
    new-instance v0, Landroid/view/textservice/SuggestionsInfo;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/view/textservice/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public createDictAndProximity(Ljava/util/Locale;)Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    .locals 8
    .parameter "locale"

    .prologue
    .line 298
    invoke-static {}, Lcom/android/inputmethod/keyboard/ProximityInfo;->createSpellCheckerProximityInfo()Lcom/android/inputmethod/keyboard/ProximityInfo;

    move-result-object v3

    .line 299
    .local v3, proximityInfo:Lcom/android/inputmethod/keyboard/ProximityInfo;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 300
    .local v4, resources:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/android/inputmethod/latin/Utils;->getMainDictionaryResourceId(Landroid/content/res/Resources;)I

    move-result v1

    .line 301
    .local v1, fallbackResourceId:I
    sget-object v7, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->USE_FULL_EDIT_DISTANCE_FLAG_ARRAY:[Lcom/android/inputmethod/latin/Flag;

    invoke-static {p0, p1, v1, v7}, Lcom/android/inputmethod/latin/DictionaryFactory;->createDictionaryFromManager(Landroid/content/Context;Ljava/util/Locale;I[Lcom/android/inputmethod/latin/Flag;)Lcom/android/inputmethod/latin/DictionaryCollection;

    move-result-object v0

    .line 304
    .local v0, dictionaryCollection:Lcom/android/inputmethod/latin/DictionaryCollection;
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, localeStr:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mUserDictionaries:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/inputmethod/latin/Dictionary;

    .line 306
    .local v5, userDictionary:Lcom/android/inputmethod/latin/Dictionary;
    if-nez v5, :cond_0

    .line 307
    new-instance v5, Lcom/android/inputmethod/latin/SynchronouslyLoadedUserDictionary;

    .end local v5           #userDictionary:Lcom/android/inputmethod/latin/Dictionary;
    const/4 v7, 0x1

    invoke-direct {v5, p0, v2, v7}, Lcom/android/inputmethod/latin/SynchronouslyLoadedUserDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 308
    .restart local v5       #userDictionary:Lcom/android/inputmethod/latin/Dictionary;
    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mUserDictionaries:Ljava/util/Map;

    invoke-interface {v7, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :cond_0
    invoke-virtual {v0, v5}, Lcom/android/inputmethod/latin/DictionaryCollection;->addDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    .line 311
    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mWhitelistDictionaries:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/inputmethod/latin/Dictionary;

    .line 312
    .local v6, whitelistDictionary:Lcom/android/inputmethod/latin/Dictionary;
    if-nez v6, :cond_1

    .line 313
    new-instance v6, Lcom/android/inputmethod/latin/WhitelistDictionary;

    .end local v6           #whitelistDictionary:Lcom/android/inputmethod/latin/Dictionary;
    invoke-direct {v6, p0, p1}, Lcom/android/inputmethod/latin/WhitelistDictionary;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 314
    .restart local v6       #whitelistDictionary:Lcom/android/inputmethod/latin/Dictionary;
    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mWhitelistDictionaries:Ljava/util/Map;

    invoke-interface {v7, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_1
    invoke-virtual {v0, v6}, Lcom/android/inputmethod/latin/DictionaryCollection;->addDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    .line 317
    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mContactsDictionary:Lcom/android/inputmethod/latin/SynchronouslyLoadedContactsDictionary;

    if-nez v7, :cond_2

    .line 318
    new-instance v7, Lcom/android/inputmethod/latin/SynchronouslyLoadedContactsDictionary;

    invoke-direct {v7, p0}, Lcom/android/inputmethod/latin/SynchronouslyLoadedContactsDictionary;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mContactsDictionary:Lcom/android/inputmethod/latin/SynchronouslyLoadedContactsDictionary;

    .line 321
    :cond_2
    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mContactsDictionary:Lcom/android/inputmethod/latin/SynchronouslyLoadedContactsDictionary;

    invoke-virtual {v0, v7}, Lcom/android/inputmethod/latin/DictionaryCollection;->addDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    .line 322
    new-instance v7, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;

    invoke-direct {v7, v0, v3}, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;-><init>(Lcom/android/inputmethod/latin/Dictionary;Lcom/android/inputmethod/keyboard/ProximityInfo;)V

    return-object v7
.end method

.method public createSession()Landroid/service/textservice/SpellCheckerService$Session;
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;-><init>(Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/service/textservice/SpellCheckerService;->onCreate()V

    .line 90
    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mSuggestionThreshold:D

    .line 92
    const v0, 0x7f0b0002

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mLikelyThreshold:D

    .line 94
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 8
    .parameter "intent"

    .prologue
    .line 261
    iget-object v3, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mDictionaryPools:Ljava/util/Map;

    .line 262
    .local v3, oldPools:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;>;"
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v7}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    iput-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mDictionaryPools:Ljava/util/Map;

    .line 263
    iget-object v4, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mUserDictionaries:Ljava/util/Map;

    .line 264
    .local v4, oldUserDictionaries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;>;"
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v7}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    iput-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mUserDictionaries:Ljava/util/Map;

    .line 265
    iget-object v5, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mWhitelistDictionaries:Ljava/util/Map;

    .line 266
    .local v5, oldWhitelistDictionaries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;>;"
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v7}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    iput-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mWhitelistDictionaries:Ljava/util/Map;

    .line 267
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    .line 268
    .local v6, pool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;
    invoke-virtual {v6}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->close()V

    goto :goto_0

    .line 270
    .end local v6           #pool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;
    :cond_0
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/Dictionary;

    .line 271
    .local v0, dict:Lcom/android/inputmethod/latin/Dictionary;
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Dictionary;->close()V

    goto :goto_1

    .line 273
    .end local v0           #dict:Lcom/android/inputmethod/latin/Dictionary;
    :cond_1
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/Dictionary;

    .line 274
    .restart local v0       #dict:Lcom/android/inputmethod/latin/Dictionary;
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Dictionary;->close()V

    goto :goto_2

    .line 276
    .end local v0           #dict:Lcom/android/inputmethod/latin/Dictionary;
    :cond_2
    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mContactsDictionary:Lcom/android/inputmethod/latin/SynchronouslyLoadedContactsDictionary;

    if-eqz v7, :cond_3

    .line 280
    iget-object v1, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mContactsDictionary:Lcom/android/inputmethod/latin/SynchronouslyLoadedContactsDictionary;

    .line 281
    .local v1, dictToClose:Lcom/android/inputmethod/latin/SynchronouslyLoadedContactsDictionary;
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mContactsDictionary:Lcom/android/inputmethod/latin/SynchronouslyLoadedContactsDictionary;

    .line 282
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/SynchronouslyLoadedContactsDictionary;->close()V

    .line 284
    .end local v1           #dictToClose:Lcom/android/inputmethod/latin/SynchronouslyLoadedContactsDictionary;
    :cond_3
    const/4 v7, 0x0

    return v7
.end method
