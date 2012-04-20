.class public Lcom/android/inputmethod/latin/Suggest;
.super Ljava/lang/Object;
.source "Suggest.java"

# interfaces
.implements Lcom/android/inputmethod/latin/Dictionary$WordCallback;


# static fields
.field private static final DBG:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAutoCorrection:Lcom/android/inputmethod/latin/AutoCorrection;

.field private mAutoCorrectionThreshold:D

.field private final mBigramDictionaries:Ljava/util/Map;
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

.field private mBigramScores:[I

.field mBigramSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mContactsDict:Lcom/android/inputmethod/latin/ContactsDictionary;

.field private mCorrectionMode:I

.field private mIsAllUpperCase:Z

.field private mIsFirstCharCapitalized:Z

.field private mMainDict:Lcom/android/inputmethod/latin/Dictionary;

.field private mPrefMaxSuggestions:I

.field private mScores:[I

.field private mSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mTypedWord:Ljava/lang/CharSequence;

.field private final mUnigramDictionaries:Ljava/util/Map;
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

.field private mWhiteListDictionary:Lcom/android/inputmethod/latin/WhitelistDictionary;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/Suggest;->TAG:Ljava/lang/String;

    .line 84
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/latin/Suggest;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/Locale;)V
    .locals 1
    .parameter "context"
    .parameter "dictionaryResId"
    .parameter "locale"

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramDictionaries:Ljava/util/Map;

    .line 94
    const/16 v0, 0x12

    iput v0, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    .line 99
    iget v0, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mScores:[I

    .line 100
    const/16 v0, 0x3c

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramScores:[I

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    .line 110
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/Suggest;->initAsynchronously(Landroid/content/Context;ILjava/util/Locale;)V

    .line 114
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/io/File;JJ[Lcom/android/inputmethod/latin/Flag;Ljava/util/Locale;)V
    .locals 2
    .parameter "context"
    .parameter "dictionary"
    .parameter "startOffset"
    .parameter "length"
    .parameter "flagArray"
    .parameter "locale"

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramDictionaries:Ljava/util/Map;

    .line 94
    const/16 v0, 0x12

    iput v0, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    .line 99
    iget v0, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mScores:[I

    .line 100
    const/16 v0, 0x3c

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramScores:[I

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    .line 110
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    .line 119
    const/4 v0, 0x0

    invoke-static/range {p1 .. p7}, Lcom/android/inputmethod/latin/DictionaryFactory;->createDictionaryForTest(Landroid/content/Context;Ljava/io/File;JJ[Lcom/android/inputmethod/latin/Flag;)Lcom/android/inputmethod/latin/Dictionary;

    move-result-object v1

    invoke-direct {p0, v0, v1, p8}, Lcom/android/inputmethod/latin/Suggest;->initSynchronously(Landroid/content/Context;Lcom/android/inputmethod/latin/Dictionary;Ljava/util/Locale;)V

    .line 121
    return-void
.end method

.method static synthetic access$002(Lcom/android/inputmethod/latin/Suggest;Lcom/android/inputmethod/latin/Dictionary;)Lcom/android/inputmethod/latin/Dictionary;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/Dictionary;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/inputmethod/latin/Suggest;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/inputmethod/latin/Suggest;Ljava/util/Map;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/Suggest;->addOrReplaceDictionary(Ljava/util/Map;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/inputmethod/latin/Suggest;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramDictionaries:Ljava/util/Map;

    return-object v0
.end method

.method private addOrReplaceDictionary(Ljava/util/Map;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V
    .locals 2
    .parameter
    .parameter "key"
    .parameter "dict"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/latin/Dictionary;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/latin/Dictionary;",
            ")V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, dictionaries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;>;"
    if-nez p3, :cond_1

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/Dictionary;

    move-object v0, v1

    .line 152
    .local v0, oldDict:Lcom/android/inputmethod/latin/Dictionary;
    :goto_0
    if-eqz v0, :cond_0

    if-eq p3, v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Dictionary;->close()V

    .line 155
    :cond_0
    return-void

    .line 149
    .end local v0           #oldDict:Lcom/android/inputmethod/latin/Dictionary;
    :cond_1
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/Dictionary;

    move-object v0, v1

    goto :goto_0
.end method

.method private capitalizeWord(ZZLjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "all"
    .parameter "first"
    .parameter "word"

    .prologue
    const/4 v3, 0x1

    .line 264
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    :cond_0
    move-object v0, p3

    .line 276
    :cond_1
    :goto_0
    return-object v0

    .line 265
    :cond_2
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 266
    .local v1, wordLength:I
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Suggest;->getApproxMaxWordLength()I

    move-result v2

    invoke-static {v2}, Lcom/android/inputmethod/latin/StringBuilderPool;->getStringBuilder(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 268
    .local v0, sb:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_3

    .line 269
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 270
    :cond_3
    if-eqz p2, :cond_1

    .line 271
    const/4 v2, 0x0

    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    if-le v1, v3, :cond_1

    .line 273
    invoke-interface {p3, v3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private collectGarbage(Ljava/util/ArrayList;I)V
    .locals 6
    .parameter
    .parameter "prefMaxSuggestions"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 522
    .local p1, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-static {}, Lcom/android/inputmethod/latin/StringBuilderPool;->getSize()I

    move-result v2

    .line 523
    .local v2, poolSize:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 524
    .local v1, garbageSize:I
    :goto_0
    if-ge v2, p2, :cond_1

    if-lez v1, :cond_1

    .line 525
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 526
    .local v0, garbage:Ljava/lang/CharSequence;
    instance-of v3, v0, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_0

    .line 527
    check-cast v0, Ljava/lang/StringBuilder;

    .end local v0           #garbage:Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/inputmethod/latin/StringBuilderPool;->recycle(Ljava/lang/StringBuilder;)V

    .line 528
    add-int/lit8 v2, v2, 0x1

    .line 530
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 531
    goto :goto_0

    .line 532
    :cond_1
    add-int/lit8 v3, p2, 0x1

    if-ne v2, v3, :cond_2

    .line 533
    const-string v3, "Suggest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "String pool got too big: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 536
    return-void
.end method

.method private initAsynchronously(Landroid/content/Context;ILjava/util/Locale;)V
    .locals 0
    .parameter "context"
    .parameter "dictionaryResId"
    .parameter "locale"

    .prologue
    .line 132
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/Suggest;->resetMainDict(Landroid/content/Context;ILjava/util/Locale;)V

    .line 136
    invoke-direct {p0, p1, p3}, Lcom/android/inputmethod/latin/Suggest;->initWhitelistAndAutocorrectAndPool(Landroid/content/Context;Ljava/util/Locale;)V

    .line 137
    return-void
.end method

.method private initSynchronously(Landroid/content/Context;Lcom/android/inputmethod/latin/Dictionary;Ljava/util/Locale;)V
    .locals 2
    .parameter "context"
    .parameter "mainDict"
    .parameter "locale"

    .prologue
    .line 141
    iput-object p2, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/Dictionary;

    .line 142
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    const-string v1, "main"

    invoke-direct {p0, v0, v1, p2}, Lcom/android/inputmethod/latin/Suggest;->addOrReplaceDictionary(Ljava/util/Map;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V

    .line 143
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramDictionaries:Ljava/util/Map;

    const-string v1, "main"

    invoke-direct {p0, v0, v1, p2}, Lcom/android/inputmethod/latin/Suggest;->addOrReplaceDictionary(Ljava/util/Map;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V

    .line 144
    invoke-direct {p0, p1, p3}, Lcom/android/inputmethod/latin/Suggest;->initWhitelistAndAutocorrectAndPool(Landroid/content/Context;Ljava/util/Locale;)V

    .line 145
    return-void
.end method

.method private initWhitelistAndAutocorrectAndPool(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 3
    .parameter "context"
    .parameter "locale"

    .prologue
    .line 124
    new-instance v0, Lcom/android/inputmethod/latin/WhitelistDictionary;

    invoke-direct {v0, p1, p2}, Lcom/android/inputmethod/latin/WhitelistDictionary;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mWhiteListDictionary:Lcom/android/inputmethod/latin/WhitelistDictionary;

    .line 125
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    const-string v1, "whitelist"

    iget-object v2, p0, Lcom/android/inputmethod/latin/Suggest;->mWhiteListDictionary:Lcom/android/inputmethod/latin/WhitelistDictionary;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/Suggest;->addOrReplaceDictionary(Ljava/util/Map;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V

    .line 126
    new-instance v0, Lcom/android/inputmethod/latin/AutoCorrection;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/AutoCorrection;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mAutoCorrection:Lcom/android/inputmethod/latin/AutoCorrection;

    .line 127
    iget v0, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Suggest;->getApproxMaxWordLength()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/StringBuilderPool;->ensureCapacity(II)V

    .line 128
    return-void
.end method

.method private searchBigramSuggestion([CII)I
    .locals 6
    .parameter "word"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 504
    iget-object v4, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 505
    .local v0, bigramSuggestSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 506
    iget-object v4, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, p3, :cond_2

    .line 507
    const/4 v1, 0x1

    .line 508
    .local v1, chk:Z
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, p3, :cond_0

    .line 509
    iget-object v4, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int v5, p2, v3

    aget-char v5, p1, v5

    if-eq v4, v5, :cond_1

    .line 510
    const/4 v1, 0x0

    .line 514
    :cond_0
    if-eqz v1, :cond_2

    .line 518
    .end local v1           #chk:Z
    .end local v2           #i:I
    .end local v3           #j:I
    :goto_2
    return v2

    .line 508
    .restart local v1       #chk:Z
    .restart local v2       #i:I
    .restart local v3       #j:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 505
    .end local v1           #chk:Z
    .end local v3           #j:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 518
    :cond_3
    const/4 v2, -0x1

    goto :goto_2
.end method


# virtual methods
.method protected addBigramToSuggestions(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "bigram"

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Suggest;->getApproxMaxWordLength()I

    move-result v1

    invoke-static {v1}, Lcom/android/inputmethod/latin/StringBuilderPool;->getStringBuilder(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 286
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 287
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    return-void
.end method

.method public addWord([CIIIILcom/android/inputmethod/latin/Dictionary$DataType;)Z
    .locals 18
    .parameter "word"
    .parameter "offset"
    .parameter "length"
    .parameter "score"
    .parameter "dicTypeId"
    .parameter "dataType"

    .prologue
    .line 410
    move-object/from16 v5, p6

    .line 414
    .local v5, dataTypeForLog:Lcom/android/inputmethod/latin/Dictionary$DataType;
    sget-object v14, Lcom/android/inputmethod/latin/Dictionary$DataType;->BIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    move-object/from16 v0, p6

    if-ne v0, v14, :cond_1

    .line 415
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    .line 416
    .local v13, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramScores:[I

    .line 417
    .local v12, sortedScores:[I
    const/16 v10, 0x3c

    .line 424
    .local v10, prefMaxSuggestions:I
    :goto_0
    const/4 v9, 0x0

    .line 427
    .local v9, pos:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/inputmethod/latin/Suggest;->mTypedWord:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v14, v0, v1, v2}, Lcom/android/inputmethod/latin/Utils;->equalsIgnoreCase(Ljava/lang/CharSequence;[CII)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 430
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_0

    .line 431
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 436
    .local v4, currentHighestWord:Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v4, v0, v1, v2}, Lcom/android/inputmethod/latin/Utils;->equalsIgnoreCase(Ljava/lang/CharSequence;[CII)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x0

    aget v14, v12, v14

    move/from16 v0, p4

    if-gt v0, v14, :cond_0

    .line 438
    const/4 v9, 0x1

    .line 471
    .end local v4           #currentHighestWord:Ljava/lang/String;
    :cond_0
    :goto_1
    if-lt v9, v10, :cond_6

    .line 472
    const/4 v14, 0x1

    .line 498
    :goto_2
    return v14

    .line 419
    .end local v9           #pos:I
    .end local v10           #prefMaxSuggestions:I
    .end local v12           #sortedScores:[I
    .end local v13           #suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    .line 420
    .restart local v13       #suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/inputmethod/latin/Suggest;->mScores:[I

    .line 421
    .restart local v12       #sortedScores:[I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    .restart local v10       #prefMaxSuggestions:I
    goto :goto_0

    .line 442
    .restart local v9       #pos:I
    :cond_2
    sget-object v14, Lcom/android/inputmethod/latin/Dictionary$DataType;->UNIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    move-object/from16 v0, p6

    if-ne v0, v14, :cond_3

    .line 444
    invoke-direct/range {p0 .. p3}, Lcom/android/inputmethod/latin/Suggest;->searchBigramSuggestion([CII)I

    move-result v3

    .line 445
    .local v3, bigramSuggestion:I
    if-ltz v3, :cond_3

    .line 446
    sget-object v5, Lcom/android/inputmethod/latin/Dictionary$DataType;->BIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    .line 448
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramScores:[I

    aget v14, v14, v3

    int-to-double v14, v14

    const-wide v16, 0x405fc00000000000L

    div-double v14, v14, v16

    const-wide v16, 0x3fd3333333333334L

    mul-double v14, v14, v16

    const-wide v16, 0x3ff3333333333333L

    add-double v7, v14, v16

    .line 457
    .local v7, multiplier:D
    move/from16 v0, p4

    int-to-double v14, v0

    mul-double/2addr v14, v7

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v0, v14

    move/from16 p4, v0

    .line 462
    .end local v3           #bigramSuggestion:I
    .end local v7           #multiplier:D
    :cond_3
    add-int/lit8 v14, v10, -0x1

    aget v14, v12, v14

    move/from16 v0, p4

    if-lt v14, v0, :cond_5

    const/4 v14, 0x1

    goto :goto_2

    .line 468
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 463
    :cond_5
    if-ge v9, v10, :cond_0

    .line 464
    aget v14, v12, v9

    move/from16 v0, p4

    if-lt v14, v0, :cond_0

    aget v14, v12, v9

    move/from16 v0, p4

    if-ne v14, v0, :cond_4

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v14

    move/from16 v0, p3

    if-ge v0, v14, :cond_4

    goto :goto_1

    .line 475
    :cond_6
    add-int/lit8 v14, v9, 0x1

    sub-int v15, v10, v9

    add-int/lit8 v15, v15, -0x1

    invoke-static {v12, v9, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    aput p4, v12, v9

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/Suggest;->getApproxMaxWordLength()I

    move-result v14

    invoke-static {v14}, Lcom/android/inputmethod/latin/StringBuilderPool;->getStringBuilder(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 479
    .local v11, sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/inputmethod/latin/Suggest;->mIsAllUpperCase:Z

    if-eqz v14, :cond_9

    .line 480
    new-instance v14, Ljava/lang/String;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v14, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    :cond_7
    :goto_3
    invoke-virtual {v13, v9, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 490
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-le v14, v10, :cond_b

    .line 491
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 492
    .local v6, garbage:Ljava/lang/CharSequence;
    instance-of v14, v6, Ljava/lang/StringBuilder;

    if-eqz v14, :cond_8

    .line 493
    check-cast v6, Ljava/lang/StringBuilder;

    .end local v6           #garbage:Ljava/lang/CharSequence;
    invoke-static {v6}, Lcom/android/inputmethod/latin/StringBuilderPool;->recycle(Ljava/lang/StringBuilder;)V

    .line 498
    :cond_8
    :goto_4
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 481
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/inputmethod/latin/Suggest;->mIsFirstCharCapitalized:Z

    if-eqz v14, :cond_a

    .line 482
    aget-char v14, p1, p2

    invoke-static {v14}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 483
    const/4 v14, 0x1

    move/from16 v0, p3

    if-le v0, v14, :cond_7

    .line 484
    add-int/lit8 v14, p2, 0x1

    add-int/lit8 v15, p3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v14, v15}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 487
    :cond_a
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v11, v0, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 496
    :cond_b
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move/from16 v0, p5

    invoke-static {v14, v0, v5}, Lcom/android/inputmethod/latin/LatinImeLogger;->onAddSuggestedWord(Ljava/lang/String;ILcom/android/inputmethod/latin/Dictionary$DataType;)V

    goto :goto_4
.end method

.method public close()V
    .locals 4

    .prologue
    .line 539
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 540
    .local v0, dictionaries:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/inputmethod/latin/Dictionary;>;"
    iget-object v3, p0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 541
    iget-object v3, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramDictionaries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 542
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/Dictionary;

    .line 543
    .local v1, dictionary:Lcom/android/inputmethod/latin/Dictionary;
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/Dictionary;->close()V

    goto :goto_0

    .line 545
    .end local v1           #dictionary:Lcom/android/inputmethod/latin/Dictionary;
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/Dictionary;

    .line 546
    return-void
.end method

.method public getApproxMaxWordLength()I
    .locals 1

    .prologue
    .line 195
    const/16 v0, 0x20

    return v0
.end method

.method public getContactsDictionary()Lcom/android/inputmethod/latin/ContactsDictionary;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mContactsDict:Lcom/android/inputmethod/latin/ContactsDictionary;

    return-object v0
.end method

.method public getSuggestedWordBuilder(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .locals 32
    .parameter "wordComposer"
    .parameter "prevWordForBigram"
    .parameter "proximityInfo"

    .prologue
    .line 294
    invoke-static/range {p2 .. p2}, Lcom/android/inputmethod/latin/LatinImeLogger;->onStartSuggestion(Ljava/lang/CharSequence;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mAutoCorrection:Lcom/android/inputmethod/latin/AutoCorrection;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/AutoCorrection;->init()V

    .line 296
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->isFirstCharCapitalized()Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/inputmethod/latin/Suggest;->mIsFirstCharCapitalized:Z

    .line 297
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->isAllUpperCase()Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/inputmethod/latin/Suggest;->mIsAllUpperCase:Z

    .line 298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/inputmethod/latin/Suggest;->collectGarbage(Ljava/util/ArrayList;I)V

    .line 299
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mScores:[I

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V

    .line 302
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v9

    .line 303
    .local v9, typedWord:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 305
    const/4 v4, 0x0

    sget-object v5, Lcom/android/inputmethod/latin/Dictionary$DataType;->UNIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    invoke-static {v9, v4, v5}, Lcom/android/inputmethod/latin/LatinImeLogger;->onAddSuggestedWord(Ljava/lang/String;ILcom/android/inputmethod/latin/Dictionary$DataType;)V

    .line 308
    :cond_0
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/inputmethod/latin/Suggest;->mTypedWord:Ljava/lang/CharSequence;

    .line 310
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    .line 313
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramScores:[I

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V

    .line 314
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    const/16 v5, 0x3c

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/inputmethod/latin/Suggest;->collectGarbage(Ljava/util/ArrayList;I)V

    .line 316
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 317
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    .line 318
    .local v25, lowerPrevWord:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/Dictionary;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 319
    move-object/from16 p2, v25

    .line 321
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramDictionaries:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/inputmethod/latin/Dictionary;

    .line 322
    .local v20, dictionary:Lcom/android/inputmethod/latin/Dictionary;
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/inputmethod/latin/Dictionary;->getBigrams(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V

    goto :goto_0

    .line 324
    .end local v20           #dictionary:Lcom/android/inputmethod/latin/Dictionary;
    :cond_3
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 326
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v23

    .line 327
    .local v23, insertCount:I
    const/16 v21, 0x0

    .local v21, i:I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_6

    .line 328
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/inputmethod/latin/Suggest;->addBigramToSuggestions(Ljava/lang/CharSequence;)V

    .line 327
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 333
    .end local v21           #i:I
    .end local v23           #insertCount:I
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v18

    .line 335
    .local v18, currentChar:C
    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v19

    .line 336
    .local v19, currentCharUpper:C
    const/16 v17, 0x0

    .line 337
    .local v17, count:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 338
    .local v16, bigramSuggestionSize:I
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v16

    if-ge v0, v1, :cond_6

    .line 339
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    .line 340
    .local v14, bigramSuggestion:Ljava/lang/CharSequence;
    const/4 v4, 0x0

    invoke-interface {v14, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    .line 341
    .local v15, bigramSuggestionFirstChar:C
    move/from16 v0, v18

    if-eq v15, v0, :cond_5

    move/from16 v0, v19

    if-ne v15, v0, :cond_9

    .line 343
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/inputmethod/latin/Suggest;->addBigramToSuggestions(Ljava/lang/CharSequence;)V

    .line 344
    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    move/from16 v0, v17

    if-le v0, v4, :cond_9

    .line 360
    .end local v14           #bigramSuggestion:Ljava/lang/CharSequence;
    .end local v15           #bigramSuggestionFirstChar:C
    .end local v16           #bigramSuggestionSize:I
    .end local v17           #count:I
    .end local v18           #currentChar:C
    .end local v19           #currentCharUpper:C
    .end local v21           #i:I
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v25           #lowerPrevWord:Ljava/lang/CharSequence;
    :cond_6
    if-nez v9, :cond_c

    const/16 v31, 0x0

    .line 362
    .local v31, typedWordString:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/inputmethod/latin/Suggest;->mIsAllUpperCase:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/inputmethod/latin/Suggest;->mIsFirstCharCapitalized:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/inputmethod/latin/Suggest;->mWhiteListDictionary:Lcom/android/inputmethod/latin/WhitelistDictionary;

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Lcom/android/inputmethod/latin/WhitelistDictionary;->getWhitelistedWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/inputmethod/latin/Suggest;->capitalizeWord(ZZLjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 365
    .local v13, whitelistedWord:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mAutoCorrection:Lcom/android/inputmethod/latin/AutoCorrection;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/inputmethod/latin/Suggest;->mScores:[I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/inputmethod/latin/Suggest;->mAutoCorrectionThreshold:D

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    move-object/from16 v6, p1

    invoke-virtual/range {v4 .. v13}, Lcom/android/inputmethod/latin/AutoCorrection;->updateAutoCorrectionStatus(Ljava/util/Map;Lcom/android/inputmethod/latin/WordComposer;Ljava/util/ArrayList;[ILjava/lang/CharSequence;DILjava/lang/CharSequence;)V

    .line 369
    if-eqz v13, :cond_7

    .line 370
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 373
    :cond_7
    if-eqz v9, :cond_8

    .line 374
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v4, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 376
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/inputmethod/latin/Utils;->removeDupes(Ljava/util/ArrayList;)V

    .line 378
    sget-boolean v4, Lcom/android/inputmethod/latin/Suggest;->DBG:Z

    if-eqz v4, :cond_10

    .line 379
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mAutoCorrection:Lcom/android/inputmethod/latin/AutoCorrection;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/AutoCorrection;->getNormalizedScore()D

    move-result-wide v26

    .line 380
    .local v26, normalizedScore:D
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .local v29, scoreInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    new-instance v4, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    const-string v5, "+"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;Z)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mScores:[I

    array-length v4, v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_e

    .line 384
    const-wide/16 v4, 0x0

    cmpl-double v4, v26, v4

    if-lez v4, :cond_d

    .line 385
    const-string v4, "%d (%4.2f)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/latin/Suggest;->mScores:[I

    aget v7, v7, v21

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    .line 387
    .local v30, scoreThreshold:Ljava/lang/String;
    new-instance v4, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    const/4 v5, 0x0

    move-object/from16 v0, v30

    invoke-direct {v4, v0, v5}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;Z)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    const-wide/16 v26, 0x0

    .line 383
    .end local v30           #scoreThreshold:Ljava/lang/String;
    :goto_5
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 338
    .end local v13           #whitelistedWord:Ljava/lang/CharSequence;
    .end local v26           #normalizedScore:D
    .end local v29           #scoreInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    .end local v31           #typedWordString:Ljava/lang/String;
    .restart local v14       #bigramSuggestion:Ljava/lang/CharSequence;
    .restart local v15       #bigramSuggestionFirstChar:C
    .restart local v16       #bigramSuggestionSize:I
    .restart local v17       #count:I
    .restart local v18       #currentChar:C
    .restart local v19       #currentCharUpper:C
    .restart local v22       #i$:Ljava/util/Iterator;
    .restart local v25       #lowerPrevWord:Ljava/lang/CharSequence;
    :cond_9
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_2

    .line 350
    .end local v14           #bigramSuggestion:Ljava/lang/CharSequence;
    .end local v15           #bigramSuggestionFirstChar:C
    .end local v16           #bigramSuggestionSize:I
    .end local v17           #count:I
    .end local v18           #currentChar:C
    .end local v19           #currentCharUpper:C
    .end local v21           #i:I
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v25           #lowerPrevWord:Ljava/lang/CharSequence;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_6

    .line 352
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .restart local v22       #i$:Ljava/util/Iterator;
    :cond_b
    :goto_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 354
    .local v24, key:Ljava/lang/String;
    const-string v4, "user_unigram"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "whitelist"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 356
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    move-object/from16 v0, v24

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/inputmethod/latin/Dictionary;

    .line 357
    .restart local v20       #dictionary:Lcom/android/inputmethod/latin/Dictionary;
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/inputmethod/latin/Dictionary;->getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;Lcom/android/inputmethod/keyboard/ProximityInfo;)V

    goto :goto_6

    .line 360
    .end local v20           #dictionary:Lcom/android/inputmethod/latin/Dictionary;
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v24           #key:Ljava/lang/String;
    :cond_c
    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_3

    .line 391
    .restart local v13       #whitelistedWord:Ljava/lang/CharSequence;
    .restart local v21       #i:I
    .restart local v26       #normalizedScore:D
    .restart local v29       #scoreInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    .restart local v31       #typedWordString:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mScores:[I

    aget v4, v4, v21

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    .line 392
    .local v28, score:Ljava/lang/String;
    new-instance v4, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-direct {v4, v0, v5}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;Z)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 395
    .end local v28           #score:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mScores:[I

    array-length v0, v4

    move/from16 v21, v0

    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_f

    .line 396
    new-instance v4, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    const-string v5, "--"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;Z)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 398
    :cond_f
    new-instance v4, Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    invoke-direct {v4}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v4, v5, v0}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addWords(Ljava/util/List;Ljava/util/List;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v4

    .line 400
    .end local v21           #i:I
    .end local v26           #normalizedScore:D
    .end local v29           #scoreInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    :goto_8
    return-object v4

    :cond_10
    new-instance v4, Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    invoke-direct {v4}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addWords(Ljava/util/List;Ljava/util/List;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v4

    goto :goto_8
.end method

.method public getSuggestions(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;)Lcom/android/inputmethod/latin/SuggestedWords;
    .locals 1
    .parameter "wordComposer"
    .parameter "prevWordForBigram"
    .parameter "proximityInfo"

    .prologue
    .line 259
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/Suggest;->getSuggestedWordBuilder(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->build()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v0

    return-object v0
.end method

.method public getUnigramDictionaries()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/latin/Dictionary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    return-object v0
.end method

.method public hasAutoCorrection()Z
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mAutoCorrection:Lcom/android/inputmethod/latin/AutoCorrection;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/AutoCorrection;->hasAutoCorrection()Z

    move-result v0

    return v0
.end method

.method public hasMainDictionary()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/Dictionary;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAggressiveAutoCorrectionMode()Z
    .locals 4

    .prologue
    .line 230
    iget-wide v0, p0, Lcom/android/inputmethod/latin/Suggest;->mAutoCorrectionThreshold:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetMainDict(Landroid/content/Context;ILjava/util/Locale;)V
    .locals 6
    .parameter "context"
    .parameter "dictionaryResId"
    .parameter "locale"

    .prologue
    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/Dictionary;

    .line 160
    new-instance v0, Lcom/android/inputmethod/latin/Suggest$1;

    const-string v2, "InitializeBinaryDictionary"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/Suggest$1;-><init>(Lcom/android/inputmethod/latin/Suggest;Ljava/lang/String;Landroid/content/Context;Ljava/util/Locale;I)V

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Suggest$1;->start()V

    .line 170
    return-void
.end method

.method public setAutoCorrectionThreshold(D)V
    .locals 0
    .parameter "threshold"

    .prologue
    .line 226
    iput-wide p1, p0, Lcom/android/inputmethod/latin/Suggest;->mAutoCorrectionThreshold:D

    .line 227
    return-void
.end method

.method public setContactsDictionary(Lcom/android/inputmethod/latin/ContactsDictionary;)V
    .locals 2
    .parameter "contactsDictionary"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/inputmethod/latin/Suggest;->mContactsDict:Lcom/android/inputmethod/latin/ContactsDictionary;

    .line 213
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    const-string v1, "contacts"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/inputmethod/latin/Suggest;->addOrReplaceDictionary(Ljava/util/Map;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V

    .line 214
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramDictionaries:Ljava/util/Map;

    const-string v1, "contacts"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/inputmethod/latin/Suggest;->addOrReplaceDictionary(Ljava/util/Map;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V

    .line 215
    return-void
.end method

.method public setCorrectionMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 177
    iput p1, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    .line 178
    return-void
.end method

.method public setUserBigramDictionary(Lcom/android/inputmethod/latin/Dictionary;)V
    .locals 2
    .parameter "userBigramDictionary"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramDictionaries:Ljava/util/Map;

    const-string v1, "user_bigram"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/inputmethod/latin/Suggest;->addOrReplaceDictionary(Ljava/util/Map;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V

    .line 223
    return-void
.end method

.method public setUserDictionary(Lcom/android/inputmethod/latin/Dictionary;)V
    .locals 2
    .parameter "userDictionary"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    const-string v1, "user"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/inputmethod/latin/Suggest;->addOrReplaceDictionary(Ljava/util/Map;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V

    .line 204
    return-void
.end method

.method public setUserUnigramDictionary(Lcom/android/inputmethod/latin/Dictionary;)V
    .locals 2
    .parameter "userUnigramDictionary"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    const-string v1, "user_unigram"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/inputmethod/latin/Suggest;->addOrReplaceDictionary(Ljava/util/Map;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V

    .line 219
    return-void
.end method
