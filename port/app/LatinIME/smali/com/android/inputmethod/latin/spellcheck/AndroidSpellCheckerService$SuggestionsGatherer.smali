.class Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;
.super Ljava/lang/Object;
.source "AndroidSpellCheckerService.java"

# interfaces
.implements Lcom/android/inputmethod/latin/Dictionary$WordCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuggestionsGatherer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;
    }
.end annotation


# instance fields
.field private mBestScore:I

.field private mBestSuggestion:Ljava/lang/String;

.field private mLength:I

.field private final mLikelyThreshold:D

.field private final mMaxLength:I

.field private final mOriginalText:Ljava/lang/String;

.field private final mScores:[I

.field private final mSuggestionThreshold:D

.field private final mSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;DDI)V
    .locals 2
    .parameter "originalText"
    .parameter "suggestionThreshold"
    .parameter "likelyThreshold"
    .parameter "maxLength"

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mBestSuggestion:Ljava/lang/String;

    .line 131
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mBestScore:I

    .line 135
    iput-object p1, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mOriginalText:Ljava/lang/String;

    .line 136
    iput-wide p2, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestionThreshold:D

    .line 137
    iput-wide p4, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLikelyThreshold:D

    .line 138
    iput p6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mMaxLength:I

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    add-int/lit8 v1, p6, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    .line 140
    iget v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mMaxLength:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mScores:[I

    .line 141
    return-void
.end method


# virtual methods
.method public declared-synchronized addWord([CIIIILcom/android/inputmethod/latin/Dictionary$DataType;)Z
    .locals 10
    .parameter "word"
    .parameter "wordOffset"
    .parameter "wordLength"
    .parameter "score"
    .parameter "dicTypeId"
    .parameter "dataType"

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mScores:[I

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    invoke-static {v6, v7, v8, p4}, Lcom/android/inputmethod/compat/ArraysCompatUtils;->binarySearch([IIII)I

    move-result v4

    .line 149
    .local v4, positionIndex:I
    if-ltz v4, :cond_0

    move v1, v4

    .line 151
    .local v1, insertIndex:I
    :goto_0
    if-nez v1, :cond_1

    iget v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    iget v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mMaxLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v6, v7, :cond_1

    .line 166
    const/4 v6, 0x1

    .line 196
    :goto_1
    monitor-exit p0

    return v6

    .line 149
    .end local v1           #insertIndex:I
    :cond_0
    neg-int v6, v4

    add-int/lit8 v1, v6, -0x1

    goto :goto_0

    .line 168
    .restart local v1       #insertIndex:I
    :cond_1
    :try_start_1
    iget v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mMaxLength:I

    if-lt v1, v6, :cond_2

    .line 171
    const/4 v6, 0x1

    goto :goto_1

    .line 176
    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 177
    .local v5, wordString:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mOriginalText:Ljava/lang/String;

    invoke-static {v6, v5, p4}, Lcom/android/inputmethod/latin/Utils;->calcNormalizedScore(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)D

    move-result-wide v2

    .line 179
    .local v2, normalizedScore:D
    iget-wide v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestionThreshold:D

    cmpg-double v6, v2, v6

    if-gez v6, :cond_3

    .line 181
    const/4 v6, 0x1

    goto :goto_1

    .line 184
    :cond_3
    iget v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    iget v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mMaxLength:I

    if-ge v6, v7, :cond_4

    .line 185
    iget v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    sub-int v0, v6, v1

    .line 186
    .local v0, copyLen:I
    iget v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    .line 187
    iget-object v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mScores:[I

    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mScores:[I

    add-int/lit8 v8, v1, 0x1

    invoke-static {v6, v1, v7, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    iget-object v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v6, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 194
    .end local v0           #copyLen:I
    :goto_2
    iget-object v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mScores:[I

    aput p4, v6, v1

    .line 196
    const/4 v6, 0x1

    goto :goto_1

    .line 190
    :cond_4
    iget-object v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mScores:[I

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mScores:[I

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    iget-object v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v6, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 192
    iget-object v6, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 146
    .end local v1           #insertIndex:I
    .end local v2           #normalizedScore:D
    .end local v4           #positionIndex:I
    .end local v5           #wordString:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public getResults(ILjava/util/Locale;)Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;
    .locals 11
    .parameter "capitalizeType"
    .parameter "locale"

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 202
    iget v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    if-nez v7, :cond_2

    .line 206
    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mBestSuggestion:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 207
    const/4 v2, 0x0

    .line 208
    .local v2, gatheredSuggestions:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 255
    .local v3, hasLikelySuggestions:Z
    :goto_0
    new-instance v7, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;

    invoke-direct {v7, v2, v3}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;-><init>([Ljava/lang/String;Z)V

    return-object v7

    .line 210
    .end local v2           #gatheredSuggestions:[Ljava/lang/String;
    .end local v3           #hasLikelySuggestions:Z
    :cond_0
    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$000()[Ljava/lang/String;

    move-result-object v2

    .line 211
    .restart local v2       #gatheredSuggestions:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mOriginalText:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mBestSuggestion:Ljava/lang/String;

    iget v10, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mBestScore:I

    invoke-static {v7, v9, v10}, Lcom/android/inputmethod/latin/Utils;->calcNormalizedScore(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)D

    move-result-wide v5

    .line 213
    .local v5, normalizedScore:D
    iget-wide v9, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLikelyThreshold:D

    cmpl-double v7, v5, v9

    if-lez v7, :cond_1

    .line 214
    .restart local v3       #hasLikelySuggestions:Z
    :goto_1
    goto :goto_0

    .end local v3           #hasLikelySuggestions:Z
    :cond_1
    move v3, v8

    .line 213
    goto :goto_1

    .line 224
    .end local v2           #gatheredSuggestions:[Ljava/lang/String;
    .end local v5           #normalizedScore:D
    :cond_2
    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 225
    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/android/inputmethod/latin/Utils;->removeDupes(Ljava/util/ArrayList;)V

    .line 226
    const/4 v7, 0x2

    if-ne v7, p1, :cond_3

    .line 227
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 230
    iget-object v9, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v4, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 227
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 232
    .end local v4           #i:I
    :cond_3
    if-ne v3, p1, :cond_4

    .line 233
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_3
    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 235
    iget-object v9, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p2}, Lcom/android/inputmethod/latin/Utils;->toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v4, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 233
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 241
    .end local v4           #i:I
    :cond_4
    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService;->access$000()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 243
    .restart local v2       #gatheredSuggestions:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mScores:[I

    iget v9, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLength:I

    add-int/lit8 v9, v9, -0x1

    aget v0, v7, v9

    .line 244
    .local v0, bestScore:I
    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 245
    .local v1, bestSuggestion:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mOriginalText:Ljava/lang/String;

    invoke-static {v7, v1, v0}, Lcom/android/inputmethod/latin/Utils;->calcNormalizedScore(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)D

    move-result-wide v5

    .line 247
    .restart local v5       #normalizedScore:D
    iget-wide v9, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;->mLikelyThreshold:D

    cmpl-double v7, v5, v9

    if-lez v7, :cond_5

    .restart local v3       #hasLikelySuggestions:Z
    :goto_4
    goto/16 :goto_0

    .end local v3           #hasLikelySuggestions:Z
    :cond_5
    move v3, v8

    goto :goto_4
.end method
