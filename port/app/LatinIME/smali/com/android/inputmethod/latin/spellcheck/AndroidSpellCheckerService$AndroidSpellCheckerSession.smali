.class Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;
.super Landroid/service/textservice/SpellCheckerService$Session;
.source "AndroidSpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidSpellCheckerSession"
.end annotation


# instance fields
.field private mDictionaryPool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

.field private mLocale:Ljava/util/Locale;

.field private final mService:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 352
    invoke-direct {p0}, Landroid/service/textservice/SpellCheckerService$Session;-><init>()V

    .line 353
    iput-object p1, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mService:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;

    .line 354
    return-void
.end method

.method private shouldFilterOut(Ljava/lang/String;)Z
    .locals 9
    .parameter "text"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 372
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v5, :cond_1

    .line 396
    :cond_0
    :goto_0
    return v5

    .line 377
    :cond_1
    invoke-virtual {p1, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 379
    .local v1, firstCodePoint:I
    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v7

    if-nez v7, :cond_2

    const/16 v7, 0x27

    if-ne v7, v1, :cond_0

    .line 383
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 384
    .local v3, length:I
    const/4 v4, 0x0

    .line 385
    .local v4, letterCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 386
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 390
    .local v0, codePoint:I
    const/16 v7, 0x40

    if-eq v7, v0, :cond_0

    const/16 v7, 0x2f

    if-eq v7, v0, :cond_0

    .line 392
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v4, v4, 0x1

    .line 385
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 396
    .end local v0           #codePoint:I
    :cond_4
    mul-int/lit8 v7, v4, 0x4

    mul-int/lit8 v8, v3, 0x3

    if-lt v7, v8, :cond_0

    move v5, v6

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->getLocale()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, localeString:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mService:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;

    #calls: Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->getDictionaryPool(Ljava/lang/String;)Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;
    invoke-static {v1, v0}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$100(Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;Ljava/lang/String;)Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mDictionaryPool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    .line 360
    invoke-static {v0}, Lcom/android/inputmethod/latin/LocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mLocale:Ljava/util/Locale;

    .line 361
    return-void
.end method

.method public onGetSuggestions(Landroid/view/textservice/TextInfo;I)Landroid/view/textservice/SuggestionsInfo;
    .locals 20
    .parameter "textInfo"
    .parameter "suggestionsLimit"

    .prologue
    .line 409
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/TextInfo;->getText()Ljava/lang/String;

    move-result-object v2

    .line 411
    .local v2, text:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->shouldFilterOut(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    .line 412
    const/4 v11, 0x0

    .line 414
    .local v11, dictInfo:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mDictionaryPool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->takeOrGetNull()Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;

    move-result-object v11

    .line 415
    if-nez v11, :cond_1

    #calls: Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->getNotInDictEmptySuggestions()Landroid/view/textservice/SuggestionsInfo;
    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$200()Landroid/view/textservice/SuggestionsInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 419
    if-eqz v11, :cond_0

    .line 420
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mDictionaryPool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    invoke-virtual {v4, v11}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->offer(Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 421
    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$400()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Can\'t re-insert a dictionary into its pool"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 497
    .end local v2           #text:Ljava/lang/String;
    .end local v11           #dictInfo:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    :cond_0
    :goto_0
    return-object v3

    .line 416
    .restart local v2       #text:Ljava/lang/String;
    .restart local v11       #dictInfo:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    :cond_1
    :try_start_3
    iget-object v3, v11, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;->mDictionary:Lcom/android/inputmethod/latin/Dictionary;

    invoke-virtual {v3, v2}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    #calls: Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->getInDictEmptySuggestions()Landroid/view/textservice/SuggestionsInfo;
    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$300()Landroid/view/textservice/SuggestionsInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .line 419
    :goto_1
    if-eqz v11, :cond_0

    .line 420
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mDictionaryPool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    invoke-virtual {v4, v11}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->offer(Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 421
    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$400()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Can\'t re-insert a dictionary into its pool"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 491
    .end local v2           #text:Ljava/lang/String;
    .end local v11           #dictInfo:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    :catch_0
    move-exception v12

    .line 496
    .local v12, e:Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while spellcheking: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    #calls: Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->getNotInDictEmptySuggestions()Landroid/view/textservice/SuggestionsInfo;
    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$200()Landroid/view/textservice/SuggestionsInfo;

    move-result-object v3

    goto :goto_0

    .line 416
    .end local v12           #e:Ljava/lang/RuntimeException;
    .restart local v2       #text:Ljava/lang/String;
    .restart local v11       #dictInfo:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    :cond_2
    :try_start_5
    #calls: Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->getNotInDictEmptySuggestions()Landroid/view/textservice/SuggestionsInfo;
    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$200()Landroid/view/textservice/SuggestionsInfo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v3

    goto :goto_1

    .line 419
    :catchall_0
    move-exception v3

    if-eqz v11, :cond_3

    .line 420
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mDictionaryPool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    invoke-virtual {v4, v11}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->offer(Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 421
    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$400()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Can\'t re-insert a dictionary into its pool"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    throw v3

    .line 428
    .end local v11           #dictInfo:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    :cond_4
    new-instance v1, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mService:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;

    #getter for: Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mSuggestionThreshold:D
    invoke-static {v3}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$500(Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;)D

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mService:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;

    #getter for: Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->mLikelyThreshold:D
    invoke-static {v5}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$600(Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;)D

    move-result-wide v5

    move/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;-><init>(Ljava/lang/String;DDI)V

    .line 430
    .local v1, suggestionsGatherer:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;
    new-instance v10, Lcom/android/inputmethod/latin/WordComposer;

    invoke-direct {v10}, Lcom/android/inputmethod/latin/WordComposer;-><init>()V

    .line 431
    .local v10, composer:Lcom/android/inputmethod/latin/WordComposer;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v16

    .line 432
    .local v16, length:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    move/from16 v0, v16

    if-ge v14, v0, :cond_6

    .line 433
    invoke-virtual {v2, v14}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    .line 434
    .local v9, character:I
    invoke-static {v9}, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerProximityInfo;->getIndexOf(I)I

    move-result v18

    .line 436
    .local v18, proximityIndex:I
    const/4 v3, -0x1

    move/from16 v0, v18

    if-ne v3, v0, :cond_5

    .line 437
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v17, v0

    const/4 v3, 0x0

    aput v9, v17, v3

    .line 443
    .local v17, proximities:[I
    :goto_3
    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v10, v9, v0, v3, v4}, Lcom/android/inputmethod/latin/WordComposer;->add(I[III)V

    .line 432
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 439
    .end local v17           #proximities:[I
    :cond_5
    sget-object v3, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerProximityInfo;->PROXIMITY:[I

    add-int/lit8 v4, v18, 0x10

    move/from16 v0, v18

    invoke-static {v3, v0, v4}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v17

    .restart local v17       #proximities:[I
    goto :goto_3

    .line 447
    .end local v9           #character:I
    .end local v17           #proximities:[I
    .end local v18           #proximityIndex:I
    :cond_6
    #calls: Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->getCapitalizationType(Ljava/lang/String;)I
    invoke-static {v2}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$700(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    move-result v8

    .line 448
    .local v8, capitalizeType:I
    const/4 v15, 0x1

    .line 449
    .local v15, isInDict:Z
    const/4 v11, 0x0

    .line 451
    .restart local v11       #dictInfo:Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mDictionaryPool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->takeOrGetNull()Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;

    move-result-object v11

    .line 452
    if-nez v11, :cond_7

    #calls: Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->getNotInDictEmptySuggestions()Landroid/view/textservice/SuggestionsInfo;
    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$200()Landroid/view/textservice/SuggestionsInfo;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v3

    .line 463
    if-eqz v11, :cond_0

    .line 464
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mDictionaryPool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    invoke-virtual {v4, v11}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->offer(Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 465
    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$400()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Can\'t re-insert a dictionary into its pool"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 453
    :cond_7
    :try_start_9
    iget-object v3, v11, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;->mDictionary:Lcom/android/inputmethod/latin/Dictionary;

    iget-object v4, v11, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;->mProximityInfo:Lcom/android/inputmethod/keyboard/ProximityInfo;

    invoke-virtual {v3, v10, v1, v4}, Lcom/android/inputmethod/latin/Dictionary;->getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;Lcom/android/inputmethod/keyboard/ProximityInfo;)V

    .line 455
    iget-object v3, v11, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;->mDictionary:Lcom/android/inputmethod/latin/Dictionary;

    invoke-virtual {v3, v2}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v15

    .line 456
    if-nez v15, :cond_8

    if-eqz v8, :cond_8

    .line 460
    iget-object v3, v11, Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;->mDictionary:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result v15

    .line 463
    :cond_8
    if-eqz v11, :cond_9

    .line 464
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mDictionaryPool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    invoke-virtual {v3, v11}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->offer(Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 465
    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$400()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Can\'t re-insert a dictionary into its pool"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v8, v3}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->getResults(ILjava/util/Locale;)Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;

    move-result-object v19

    .line 487
    .local v19, result:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;
    if-eqz v15, :cond_b

    const/4 v13, 0x1

    .line 490
    .local v13, flags:I
    :goto_4
    new-instance v3, Landroid/view/textservice/SuggestionsInfo;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;->mSuggestions:[Ljava/lang/String;

    invoke-direct {v3, v13, v4}, Landroid/view/textservice/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 463
    .end local v13           #flags:I
    .end local v19           #result:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;
    :catchall_1
    move-exception v3

    if-eqz v11, :cond_a

    .line 464
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$AndroidSpellCheckerSession;->mDictionaryPool:Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;

    invoke-virtual {v4, v11}, Lcom/android/inputmethod/latin/spellcheck/DictionaryPool;->offer(Lcom/android/inputmethod/latin/spellcheck/DictAndProximity;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 465
    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$400()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Can\'t re-insert a dictionary into its pool"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    throw v3
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    .line 487
    .restart local v19       #result:Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;
    :cond_b
    const/4 v13, 0x2

    goto :goto_4
.end method
