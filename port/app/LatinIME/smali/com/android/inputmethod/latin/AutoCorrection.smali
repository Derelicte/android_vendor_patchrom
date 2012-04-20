.class public Lcom/android/inputmethod/latin/AutoCorrection;
.super Ljava/lang/Object;
.source "AutoCorrection.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAutoCorrectionWord:Ljava/lang/CharSequence;

.field private mHasAutoCorrection:Z

.field private mNormalizedScore:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/latin/AutoCorrection;->DBG:Z

    .line 27
    const-class v0, Lcom/android/inputmethod/latin/AutoCorrection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/AutoCorrection;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowsToBeAutoCorrected(Ljava/util/Map;Ljava/lang/CharSequence;Z)Z
    .locals 3
    .parameter
    .parameter "word"
    .parameter "ignoreCase"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/latin/Dictionary;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .local p0, dictionaries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;>;"
    const/4 v1, 0x1

    .line 87
    const-string v2, "whitelist"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/WhitelistDictionary;

    .line 90
    .local v0, whitelistDictionary:Lcom/android/inputmethod/latin/WhitelistDictionary;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/WhitelistDictionary;->shouldForciblyAutoCorrectFrom(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/inputmethod/latin/AutoCorrection;->isValidWord(Ljava/util/Map;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasAutoCorrectionForBinaryDictionary(Lcom/android/inputmethod/latin/WordComposer;Ljava/util/ArrayList;I[ILjava/lang/CharSequence;D)Z
    .locals 8
    .parameter "wordComposer"
    .parameter
    .parameter "correctionMode"
    .parameter "sortedScores"
    .parameter "typedWord"
    .parameter "autoCorrectionThreshold"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/inputmethod/latin/WordComposer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I[I",
            "Ljava/lang/CharSequence;",
            "D)Z"
        }
    .end annotation

    .prologue
    .local p2, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 114
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v4

    if-le v4, v2, :cond_3

    const/4 v4, 0x2

    if-eq p3, v4, :cond_0

    const/4 v4, 0x3

    if-ne p3, v4, :cond_3

    :cond_0
    if-eqz p5, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    array-length v4, p4

    if-lez v4, :cond_3

    .line 117
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 118
    .local v0, autoCorrectionSuggestion:Ljava/lang/CharSequence;
    aget v1, p4, v3

    .line 121
    .local v1, autoCorrectionSuggestionScore:I
    invoke-static {p5, v0, v1}, Lcom/android/inputmethod/latin/Utils;->calcNormalizedScore(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/inputmethod/latin/AutoCorrection;->mNormalizedScore:D

    .line 123
    sget-boolean v4, Lcom/android/inputmethod/latin/AutoCorrection;->DBG:Z

    if-eqz v4, :cond_1

    .line 124
    sget-object v4, Lcom/android/inputmethod/latin/AutoCorrection;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Normalized "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/inputmethod/latin/AutoCorrection;->mNormalizedScore:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p6, p7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_1
    iget-wide v4, p0, Lcom/android/inputmethod/latin/AutoCorrection;->mNormalizedScore:D

    cmpl-double v4, v4, p6

    if-ltz v4, :cond_3

    .line 129
    sget-boolean v3, Lcom/android/inputmethod/latin/AutoCorrection;->DBG:Z

    if-eqz v3, :cond_2

    .line 130
    sget-object v3, Lcom/android/inputmethod/latin/AutoCorrection;->TAG:Ljava/lang/String;

    const-string v4, "Auto corrected by S-threshold."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .end local v0           #autoCorrectionSuggestion:Ljava/lang/CharSequence;
    .end local v1           #autoCorrectionSuggestionScore:I
    :cond_2
    :goto_0
    return v2

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method private hasAutoCorrectionForTypedWord(Ljava/util/Map;Lcom/android/inputmethod/latin/WordComposer;Ljava/util/ArrayList;Ljava/lang/CharSequence;I)Z
    .locals 4
    .parameter
    .parameter "wordComposer"
    .parameter
    .parameter "typedWord"
    .parameter "correctionMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/latin/Dictionary;",
            ">;",
            "Lcom/android/inputmethod/latin/WordComposer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p1, dictionaries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;>;"
    .local p3, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 104
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    :goto_0
    return v2

    .line 105
    :cond_0
    invoke-static {p1, p4, v2}, Lcom/android/inputmethod/latin/AutoCorrection;->allowsToBeAutoCorrected(Ljava/util/Map;Ljava/lang/CharSequence;Z)Z

    move-result v0

    .line 106
    .local v0, allowsAutoCorrect:Z
    invoke-virtual {p2}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v3

    if-le v3, v1, :cond_2

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    if-nez v0, :cond_2

    const/4 v3, 0x2

    if-eq p5, v3, :cond_1

    const/4 v3, 0x3

    if-ne p5, v3, :cond_2

    :cond_1
    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private static hasAutoCorrectionForWhitelistedWord(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "whiteListedWord"

    .prologue
    .line 98
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidWord(Ljava/util/Map;Ljava/lang/CharSequence;Z)Z
    .locals 6
    .parameter
    .parameter "word"
    .parameter "ignoreCase"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/latin/Dictionary;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .local p0, dictionaries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;>;"
    const/4 v4, 0x0

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v4

    .line 73
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, lowerCasedWord:Ljava/lang/CharSequence;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 75
    .local v2, key:Ljava/lang/String;
    const-string v5, "whitelist"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 76
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/Dictionary;

    .line 77
    .local v0, dictionary:Lcom/android/inputmethod/latin/Dictionary;
    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {v0, v3}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 79
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAutoCorrectionWord()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/inputmethod/latin/AutoCorrection;->mAutoCorrectionWord:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNormalizedScore()D
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/android/inputmethod/latin/AutoCorrection;->mNormalizedScore:D

    return-wide v0
.end method

.method public hasAutoCorrection()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/AutoCorrection;->mHasAutoCorrection:Z

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/AutoCorrection;->mHasAutoCorrection:Z

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/AutoCorrection;->mAutoCorrectionWord:Ljava/lang/CharSequence;

    .line 35
    const-wide/high16 v0, -0x3e20

    iput-wide v0, p0, Lcom/android/inputmethod/latin/AutoCorrection;->mNormalizedScore:D

    .line 36
    return-void
.end method

.method public updateAutoCorrectionStatus(Ljava/util/Map;Lcom/android/inputmethod/latin/WordComposer;Ljava/util/ArrayList;[ILjava/lang/CharSequence;DILjava/lang/CharSequence;)V
    .locals 9
    .parameter
    .parameter "wordComposer"
    .parameter
    .parameter "sortedScores"
    .parameter "typedWord"
    .parameter "autoCorrectionThreshold"
    .parameter "correctionMode"
    .parameter "whitelistedWord"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/latin/Dictionary;",
            ">;",
            "Lcom/android/inputmethod/latin/WordComposer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;[I",
            "Ljava/lang/CharSequence;",
            "DI",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, dictionaries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;>;"
    .local p3, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-static/range {p9 .. p9}, Lcom/android/inputmethod/latin/AutoCorrection;->hasAutoCorrectionForWhitelistedWord(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/AutoCorrection;->mHasAutoCorrection:Z

    .line 56
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/inputmethod/latin/AutoCorrection;->mAutoCorrectionWord:Ljava/lang/CharSequence;

    .line 66
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move/from16 v6, p8

    .line 57
    invoke-direct/range {v1 .. v6}, Lcom/android/inputmethod/latin/AutoCorrection;->hasAutoCorrectionForTypedWord(Ljava/util/Map;Lcom/android/inputmethod/latin/WordComposer;Ljava/util/ArrayList;Ljava/lang/CharSequence;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/AutoCorrection;->mHasAutoCorrection:Z

    .line 60
    iput-object p5, p0, Lcom/android/inputmethod/latin/AutoCorrection;->mAutoCorrectionWord:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p8

    move-object v5, p4

    move-object v6, p5

    move-wide v7, p6

    .line 61
    invoke-direct/range {v1 .. v8}, Lcom/android/inputmethod/latin/AutoCorrection;->hasAutoCorrectionForBinaryDictionary(Lcom/android/inputmethod/latin/WordComposer;Ljava/util/ArrayList;I[ILjava/lang/CharSequence;D)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/AutoCorrection;->mHasAutoCorrection:Z

    .line 64
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/inputmethod/latin/AutoCorrection;->mAutoCorrectionWord:Ljava/lang/CharSequence;

    goto :goto_0
.end method
