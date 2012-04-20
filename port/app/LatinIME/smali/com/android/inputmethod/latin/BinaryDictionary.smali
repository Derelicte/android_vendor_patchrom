.class public Lcom/android/inputmethod/latin/BinaryDictionary;
.super Lcom/android/inputmethod/latin/Dictionary;
.source "BinaryDictionary.java"


# static fields
.field public static final ALL_CONFIG_FLAGS:[Lcom/android/inputmethod/latin/Flag;

.field public static final FLAG_REQUIRES_GERMAN_UMLAUT_PROCESSING:Lcom/android/inputmethod/latin/Flag;

.field public static final FLAG_USE_FULL_EDIT_DISTANCE:Lcom/android/inputmethod/latin/Flag;


# instance fields
.field private final mBigramScores:[I

.field private mDicTypeId:I

.field private mFlags:I

.field private final mInputCodes:[I

.field private mNativeDict:I

.field private final mOutputChars:[C

.field private final mOutputChars_bigrams:[C

.field private final mScores:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 56
    new-instance v0, Lcom/android/inputmethod/latin/Flag;

    const v1, 0x7f080011

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/latin/Flag;-><init>(II)V

    sput-object v0, Lcom/android/inputmethod/latin/BinaryDictionary;->FLAG_REQUIRES_GERMAN_UMLAUT_PROCESSING:Lcom/android/inputmethod/latin/Flag;

    .line 62
    new-instance v0, Lcom/android/inputmethod/latin/Flag;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/Flag;-><init>(I)V

    sput-object v0, Lcom/android/inputmethod/latin/BinaryDictionary;->FLAG_USE_FULL_EDIT_DISTANCE:Lcom/android/inputmethod/latin/Flag;

    .line 71
    new-array v0, v2, [Lcom/android/inputmethod/latin/Flag;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/inputmethod/latin/BinaryDictionary;->FLAG_REQUIRES_GERMAN_UMLAUT_PROCESSING:Lcom/android/inputmethod/latin/Flag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/inputmethod/latin/BinaryDictionary;->ALL_CONFIG_FLAGS:[Lcom/android/inputmethod/latin/Flag;

    .line 107
    invoke-static {}, Lcom/android/inputmethod/latin/Utils;->loadNativeLibrary()V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JJ[Lcom/android/inputmethod/latin/Flag;)V
    .locals 6
    .parameter "context"
    .parameter "filename"
    .parameter "offset"
    .parameter "length"
    .parameter "flagArray"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Dictionary;-><init>()V

    .line 50
    const/16 v0, 0x300

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    .line 51
    const/16 v0, 0x360

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    .line 52
    const/16 v0, 0xb40

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars_bigrams:[C

    .line 53
    const/16 v0, 0x12

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mScores:[I

    .line 54
    const/16 v0, 0x3c

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mBigramScores:[I

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFlags:I

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mDicTypeId:I

    .line 101
    if-nez p7, :cond_0

    sget-object p7, Lcom/android/inputmethod/latin/BinaryDictionary;->ALL_CONFIG_FLAGS:[Lcom/android/inputmethod/latin/Flag;

    .end local p7
    :cond_0
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v0

    invoke-static {p7, p1, v0}, Lcom/android/inputmethod/latin/Flag;->initFlags([Lcom/android/inputmethod/latin/Flag;Landroid/content/Context;Lcom/android/inputmethod/latin/SubtypeSwitcher;)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFlags:I

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    .line 103
    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/BinaryDictionary;->loadDictionary(Ljava/lang/String;JJ)V

    .line 104
    return-void
.end method

.method private closeInternal()V
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    if-eqz v0, :cond_0

    .line 228
    iget v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/BinaryDictionary;->closeNative(I)V

    .line 229
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    .line 231
    :cond_0
    return-void
.end method

.method private native closeNative(I)V
.end method

.method private native getBigramsNative(I[CI[II[C[IIII)I
.end method

.method private native getSuggestionsNative(II[I[I[III[C[I)I
.end method

.method private native isValidWordNative(I[CI)Z
.end method

.method private final loadDictionary(Ljava/lang/String;JJ)V
    .locals 11
    .parameter "path"
    .parameter "startOffset"
    .parameter "length"

    .prologue
    .line 123
    const/4 v6, 0x2

    const/4 v7, 0x2

    const/16 v8, 0x30

    const/16 v9, 0x12

    const/16 v10, 0x10

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v10}, Lcom/android/inputmethod/latin/BinaryDictionary;->openNative(Ljava/lang/String;JJIIIII)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    .line 126
    return-void
.end method

.method private native openNative(Ljava/lang/String;JJIIIII)I
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/BinaryDictionary;->closeInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 236
    :try_start_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/BinaryDictionary;->closeInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 240
    return-void

    .line 238
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getBigrams(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V
    .locals 17
    .parameter "codes"
    .parameter "previousWord"
    .parameter "callback"

    .prologue
    .line 131
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    if-nez v1, :cond_1

    .line 164
    :cond_0
    return-void

    .line 133
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 134
    .local v3, chars:[C
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars_bigrams:[C

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 135
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mBigramScores:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 137
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v6

    .line 138
    .local v6, codesSize:I
    if-lez v6, :cond_0

    .line 143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 144
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/WordComposer;->getCodesAt(I)[I

    move-result-object v14

    .line 145
    .local v14, alternatives:[I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    const/4 v4, 0x0

    array-length v5, v14

    const/16 v7, 0x10

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v14, v1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    array-length v4, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars_bigrams:[C

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mBigramScores:[I

    const/16 v9, 0x30

    const/16 v10, 0x3c

    const/16 v11, 0x10

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/android/inputmethod/latin/BinaryDictionary;->getBigramsNative(I[CI[II[C[IIII)I

    move-result v15

    .line 152
    .local v15, count:I
    const/16 v16, 0x0

    .local v16, j:I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v15, :cond_0

    .line 153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mBigramScores:[I

    aget v1, v1, v16

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 154
    mul-int/lit8 v9, v16, 0x30

    .line 155
    .local v9, start:I
    const/4 v10, 0x0

    .line 156
    .local v10, len:I
    :goto_1
    const/16 v1, 0x30

    if-ge v10, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars_bigrams:[C

    add-int v2, v9, v10

    aget-char v1, v1, v2

    if-eqz v1, :cond_2

    .line 157
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 159
    :cond_2
    if-lez v10, :cond_3

    .line 160
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars_bigrams:[C

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mBigramScores:[I

    aget v11, v1, v16

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mDicTypeId:I

    sget-object v13, Lcom/android/inputmethod/latin/Dictionary$DataType;->BIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    move-object/from16 v7, p3

    invoke-interface/range {v7 .. v13}, Lcom/android/inputmethod/latin/Dictionary$WordCallback;->addWord([CIIIILcom/android/inputmethod/latin/Dictionary$DataType;)Z

    .line 152
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_0
.end method

.method getSuggestions(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/keyboard/ProximityInfo;[C[I)I
    .locals 13
    .parameter "codes"
    .parameter "proximityInfo"
    .parameter "outputChars"
    .parameter "scores"

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/BinaryDictionary;->isValidDictionary()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    .line 208
    :goto_0
    return v1

    .line 195
    :cond_0
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v7

    .line 197
    .local v7, codesSize:I
    const/16 v1, 0x2f

    if-le v7, v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 200
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v7, :cond_2

    .line 201
    invoke-virtual {p1, v12}, Lcom/android/inputmethod/latin/WordComposer;->getCodesAt(I)[I

    move-result-object v11

    .line 202
    .local v11, alternatives:[I
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    mul-int/lit8 v3, v12, 0x10

    array-length v4, v11

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v11, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 205
    .end local v11           #alternatives:[I
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 206
    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 208
    iget v2, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/ProximityInfo;->getNativeProximityInfo()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/inputmethod/latin/WordComposer;->getXCoordinates()[I

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/inputmethod/latin/WordComposer;->getYCoordinates()[I

    move-result-object v5

    iget-object v6, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    iget v8, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFlags:I

    move-object v1, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v1 .. v10}, Lcom/android/inputmethod/latin/BinaryDictionary;->getSuggestionsNative(II[I[I[III[C[I)I

    move-result v1

    goto :goto_0
.end method

.method public getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;Lcom/android/inputmethod/keyboard/ProximityInfo;)V
    .locals 9
    .parameter "codes"
    .parameter "callback"
    .parameter "proximityInfo"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    iget-object v1, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mScores:[I

    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/android/inputmethod/latin/BinaryDictionary;->getSuggestions(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/keyboard/ProximityInfo;[C[I)I

    move-result v7

    .line 172
    .local v7, count:I
    const/4 v8, 0x0

    .local v8, j:I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mScores:[I

    aget v0, v0, v8

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 184
    :cond_0
    return-void

    .line 174
    :cond_1
    mul-int/lit8 v2, v8, 0x30

    .line 175
    .local v2, start:I
    const/4 v3, 0x0

    .line 176
    .local v3, len:I
    :goto_1
    const/16 v0, 0x30

    if-ge v3, v0, :cond_2

    iget-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    add-int v1, v2, v3

    aget-char v0, v0, v1

    if-eqz v0, :cond_2

    .line 177
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 179
    :cond_2
    if-lez v3, :cond_3

    .line 180
    iget-object v1, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    iget-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mScores:[I

    aget v4, v0, v8

    iget v5, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mDicTypeId:I

    sget-object v6, Lcom/android/inputmethod/latin/Dictionary$DataType;->UNIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/inputmethod/latin/Dictionary$WordCallback;->addWord([CIIIILcom/android/inputmethod/latin/Dictionary$DataType;)Z

    .line 172
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method isValidDictionary()Z
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidWord(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "word"

    .prologue
    .line 216
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 218
    :goto_0
    return v1

    .line 217
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 218
    .local v0, chars:[C
    iget v1, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    array-length v2, v0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/inputmethod/latin/BinaryDictionary;->isValidWordNative(I[CI)Z

    move-result v1

    goto :goto_0
.end method
