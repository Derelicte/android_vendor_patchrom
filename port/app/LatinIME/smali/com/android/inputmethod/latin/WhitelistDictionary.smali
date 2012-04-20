.class public Lcom/android/inputmethod/latin/WhitelistDictionary;
.super Lcom/android/inputmethod/latin/ExpandableDictionary;
.source "WhitelistDictionary.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mWhitelistWords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/latin/WhitelistDictionary;->DBG:Z

    .line 31
    const-class v0, Lcom/android/inputmethod/latin/WhitelistDictionary;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/WhitelistDictionary;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 3
    .parameter "context"
    .parameter "locale"

    .prologue
    .line 38
    const/4 v2, 0x6

    invoke-direct {p0, p1, v2}, Lcom/android/inputmethod/latin/ExpandableDictionary;-><init>(Landroid/content/Context;I)V

    .line 33
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/inputmethod/latin/WhitelistDictionary;->mWhitelistWords:Ljava/util/HashMap;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 40
    .local v1, res:Landroid/content/res/Resources;
    invoke-static {v1, p2}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    .line 41
    .local v0, previousLocale:Ljava/util/Locale;
    const v2, 0x7f0c0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/WhitelistDictionary;->initWordlist([Ljava/lang/String;)V

    .line 42
    invoke-static {v1, v0}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    .line 43
    return-void
.end method

.method private initWordlist([Ljava/lang/String;)V
    .locals 10
    .parameter "wordlist"

    .prologue
    .line 46
    iget-object v6, p0, Lcom/android/inputmethod/latin/WhitelistDictionary;->mWhitelistWords:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 47
    array-length v0, p1

    .line 48
    .local v0, N:I
    rem-int/lit8 v6, v0, 0x3

    if-eqz v6, :cond_1

    .line 49
    sget-boolean v6, Lcom/android/inputmethod/latin/WhitelistDictionary;->DBG:Z

    if-eqz v6, :cond_0

    .line 50
    sget-object v6, Lcom/android/inputmethod/latin/WhitelistDictionary;->TAG:Ljava/lang/String;

    const-string v7, "The number of the whitelist is invalid."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v0, :cond_0

    .line 56
    :try_start_0
    aget-object v6, p1, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 57
    .local v5, score:I
    add-int/lit8 v6, v4, 0x1

    aget-object v2, p1, v6

    .line 58
    .local v2, before:Ljava/lang/String;
    add-int/lit8 v6, v4, 0x2

    aget-object v1, p1, v6

    .line 59
    .local v1, after:Ljava/lang/String;
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 60
    iget-object v6, p0, Lcom/android/inputmethod/latin/WhitelistDictionary;->mWhitelistWords:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {p0, v1, v5}, Lcom/android/inputmethod/latin/WhitelistDictionary;->addWord(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_2
    add-int/lit8 v4, v4, 0x3

    goto :goto_1

    .line 65
    .end local v1           #after:Ljava/lang/String;
    .end local v2           #before:Ljava/lang/String;
    .end local v5           #score:I
    :catch_0
    move-exception v3

    .line 66
    .local v3, e:Ljava/lang/NumberFormatException;
    sget-boolean v6, Lcom/android/inputmethod/latin/WhitelistDictionary;->DBG:Z

    if-eqz v6, :cond_0

    .line 67
    sget-object v6, Lcom/android/inputmethod/latin/WhitelistDictionary;->TAG:Ljava/lang/String;

    const-string v7, "The score of the word is invalid."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getWhitelistedWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "before"

    .prologue
    const/4 v1, 0x0

    .line 73
    if-nez p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-object v1

    .line 74
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, lowerCaseBefore:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/inputmethod/latin/WhitelistDictionary;->mWhitelistWords:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    sget-boolean v1, Lcom/android/inputmethod/latin/WhitelistDictionary;->DBG:Z

    if-eqz v1, :cond_2

    .line 77
    sget-object v1, Lcom/android/inputmethod/latin/WhitelistDictionary;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- found whitelistedWord: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_2
    iget-object v1, p0, Lcom/android/inputmethod/latin/WhitelistDictionary;->mWhitelistWords:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public shouldForciblyAutoCorrectFrom(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "word"

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v1

    .line 95
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/WhitelistDictionary;->getWhitelistedWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, correction:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
