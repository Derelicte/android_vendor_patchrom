.class public Lcom/android/inputmethod/latin/SuggestedWords$Builder;
.super Ljava/lang/Object;
.source "SuggestedWords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/SuggestedWords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mHasMinimalSuggestion:Z

.field private mIsPunctuationSuggestions:Z

.field private mSuggestedWordInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTypedWordValid:Z

.field private mWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mWords:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mSuggestedWordInfoList:Ljava/util/List;

    .line 94
    return-void
.end method

.method private addWord(Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .locals 1
    .parameter "word"
    .parameter "suggestedWordInfo"

    .prologue
    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mWords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mSuggestedWordInfoList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_0
    return-object p0
.end method


# virtual methods
.method public addTypedWordAndPreviousSuggestions(Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/SuggestedWords;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .locals 7
    .parameter "typedWord"
    .parameter "previousSuggestions"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 157
    iget-object v4, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mWords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 158
    iget-object v4, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mSuggestedWordInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 159
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 160
    .local v0, alreadySeen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, v6, v5}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addWord(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    .line 161
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-virtual {p2}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v3

    .line 163
    .local v3, previousSize:I
    const/4 v1, 0x1

    .local v1, pos:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 164
    invoke-virtual {p2, v1}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, prevWord:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 167
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v6, v4}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addWord(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    .line 168
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v2           #prevWord:Ljava/lang/String;
    :cond_1
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mTypedWordValid:Z

    .line 172
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mHasMinimalSuggestion:Z

    .line 173
    return-object p0
.end method

.method public addWord(Ljava/lang/CharSequence;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .locals 2
    .parameter "word"

    .prologue
    .line 113
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addWord(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addWord(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .locals 2
    .parameter "word"
    .parameter "debugString"
    .parameter "isPreviousSuggestedWord"

    .prologue
    .line 118
    new-instance v0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    invoke-direct {v0, p2, p3}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;Z)V

    .line 119
    .local v0, info:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addWord(Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v1

    return-object v1
.end method

.method public addWords(Ljava/util/List;Ljava/util/List;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;)",
            "Lcom/android/inputmethod/latin/SuggestedWords$Builder;"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, words:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .local p2, suggestedWordInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 99
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 100
    const/4 v2, 0x0

    .line 101
    .local v2, suggestedWordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    if-eqz p2, :cond_0

    .line 102
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #suggestedWordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    check-cast v2, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    .line 104
    .restart local v2       #suggestedWordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    :cond_0
    if-nez v2, :cond_1

    .line 105
    new-instance v2, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    .end local v2           #suggestedWordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    invoke-direct {v2}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;-><init>()V

    .line 107
    .restart local v2       #suggestedWordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-direct {p0, v3, v2}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addWord(Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .end local v2           #suggestedWordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    :cond_2
    return-object p0
.end method

.method public build()Lcom/android/inputmethod/latin/SuggestedWords;
    .locals 7

    .prologue
    .line 177
    new-instance v0, Lcom/android/inputmethod/latin/SuggestedWords;

    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mWords:Ljava/util/List;

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mTypedWordValid:Z

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mHasMinimalSuggestion:Z

    iget-boolean v4, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mIsPunctuationSuggestions:Z

    iget-object v5, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mSuggestedWordInfoList:Ljava/util/List;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/inputmethod/latin/SuggestedWords;-><init>(Ljava/util/List;ZZZLjava/util/List;Lcom/android/inputmethod/latin/SuggestedWords$1;)V

    return-object v0
.end method

.method public setApplicationSpecifiedCompletions([Landroid/view/inputmethod/CompletionInfo;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .locals 5
    .parameter "infos"

    .prologue
    .line 132
    move-object v0, p1

    .local v0, arr$:[Landroid/view/inputmethod/CompletionInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 133
    .local v2, info:Landroid/view/inputmethod/CompletionInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addWord(Ljava/lang/CharSequence;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    .line 132
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v2           #info:Landroid/view/inputmethod/CompletionInfo;
    :cond_1
    return-object p0
.end method

.method public setHasMinimalSuggestion(Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .locals 0
    .parameter "hasMinimalSuggestion"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mHasMinimalSuggestion:Z

    .line 145
    return-object p0
.end method

.method public setIsPunctuationSuggestions()Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mIsPunctuationSuggestions:Z

    .line 150
    return-object p0
.end method

.method public setTypedWordValid(Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .locals 0
    .parameter "typedWordValid"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mTypedWordValid:Z

    .line 140
    return-object p0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mWords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StringBuilder: mTypedWordValid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mTypedWordValid:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ; mHasMinimalSuggestion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mHasMinimalSuggestion:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ; mIsPunctuationSuggestions = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mIsPunctuationSuggestions:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mWords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 197
    .local v1, s:Ljava/lang/CharSequence;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 198
    const-string v3, " ; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 200
    .end local v1           #s:Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
