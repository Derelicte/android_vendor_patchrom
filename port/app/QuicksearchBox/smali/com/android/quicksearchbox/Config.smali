.class public Lcom/android/quicksearchbox/Config;
.super Ljava/lang/Object;
.source "Config.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultCorpora:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultCorporaSuggestUris:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHiddenCorpora:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/android/quicksearchbox/Config;->mContext:Landroid/content/Context;

    .line 87
    return-void
.end method

.method private loadResourceStringSet(I)Ljava/util/HashSet;
    .locals 7
    .parameter "res"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 103
    .local v3, defaultCorpora:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/quicksearchbox/Config;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, corpora:[Ljava/lang/String;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 106
    .local v2, corpus:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 108
    .end local v2           #corpus:Ljava/lang/String;
    :cond_0
    return-object v3
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public getHelpUrl(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "activity"

    .prologue
    .line 334
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHttpConnectTimeout()I
    .locals 1

    .prologue
    .line 338
    const/16 v0, 0xfa0

    return v0
.end method

.method public getLatencyLogFrequency()I
    .locals 1

    .prologue
    .line 246
    const/16 v0, 0x3e8

    return v0
.end method

.method public getMaxPromotedResults()I
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/quicksearchbox/Config;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMaxPromotedSuggestions()I
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/quicksearchbox/Config;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMaxResultsPerSource()I
    .locals 1

    .prologue
    .line 181
    const/16 v0, 0x32

    return v0
.end method

.method public getMaxShortcuts(Ljava/lang/String;)I
    .locals 1
    .parameter "sourceName"

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/quicksearchbox/Config;->getMaxShortcutsPerNonWebSource()I

    move-result v0

    return v0
.end method

.method public getMaxShortcutsPerNonWebSource()I
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/quicksearchbox/Config;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMaxShortcutsPerWebSource()I
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/quicksearchbox/Config;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMaxStatAgeMillis()J
    .locals 2

    .prologue
    .line 225
    const-wide v0, 0x9a7ec800L

    return-wide v0
.end method

.method public getMinClicksForSourceRanking()I
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x3

    return v0
.end method

.method public getNumPromotedSources()I
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x3

    return v0
.end method

.method public getNumSuggestionsAboveKeyboard()I
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/quicksearchbox/Config;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getNumWebCorpusThreads()I
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x2

    return v0
.end method

.method public getPublishResultDelayMillis()J
    .locals 2

    .prologue
    .line 262
    const-wide/16 v0, 0xc8

    return-wide v0
.end method

.method public getQueryThreadPriority()I
    .locals 1

    .prologue
    .line 218
    const/16 v0, 0x9

    return v0
.end method

.method public getTypingUpdateSuggestionsDelayMillis()J
    .locals 2

    .prologue
    .line 254
    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    const-string v0, "Android/1.0"

    return-object v0
.end method

.method public declared-synchronized isCorpusEnabledByDefault(Lcom/android/quicksearchbox/Corpus;)Z
    .locals 6
    .parameter "corpus"

    .prologue
    const/4 v3, 0x1

    .line 116
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/quicksearchbox/Config;->mDefaultCorpora:Ljava/util/HashSet;

    if-nez v4, :cond_0

    .line 117
    const/high16 v4, 0x7f08

    invoke-direct {p0, v4}, Lcom/android/quicksearchbox/Config;->loadResourceStringSet(I)Ljava/util/HashSet;

    move-result-object v4

    iput-object v4, p0, Lcom/android/quicksearchbox/Config;->mDefaultCorpora:Ljava/util/HashSet;

    .line 119
    :cond_0
    iget-object v4, p0, Lcom/android/quicksearchbox/Config;->mDefaultCorpora:Ljava/util/HashSet;

    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 138
    :goto_0
    monitor-exit p0

    return v3

    .line 124
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/quicksearchbox/Config;->mDefaultCorporaSuggestUris:Ljava/util/HashSet;

    if-nez v4, :cond_2

    .line 125
    const v4, 0x7f080001

    invoke-direct {p0, v4}, Lcom/android/quicksearchbox/Config;->loadResourceStringSet(I)Ljava/util/HashSet;

    move-result-object v4

    iput-object v4, p0, Lcom/android/quicksearchbox/Config;->mDefaultCorporaSuggestUris:Ljava/util/HashSet;

    .line 129
    :cond_2
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->getSources()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/Source;

    .line 130
    .local v1, s:Lcom/android/quicksearchbox/Source;
    invoke-interface {v1}, Lcom/android/quicksearchbox/Source;->getSuggestUri()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, uri:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/quicksearchbox/Config;->mDefaultCorporaSuggestUris:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 138
    .end local v1           #s:Lcom/android/quicksearchbox/Source;
    .end local v2           #uri:Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 116
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized isCorpusHidden(Ljava/lang/String;)Z
    .locals 1
    .parameter "corpusName"

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/quicksearchbox/Config;->mHiddenCorpora:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 146
    const v0, 0x7f080002

    invoke-direct {p0, v0}, Lcom/android/quicksearchbox/Config;->loadResourceStringSet(I)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/Config;->mHiddenCorpora:Ljava/util/HashSet;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/Config;->mHiddenCorpora:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public showScrollingResults()Z
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/quicksearchbox/Config;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public showScrollingSuggestions()Z
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/quicksearchbox/Config;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public showShortcutsForZeroQuery()Z
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/quicksearchbox/Config;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public showSuggestionsForZeroQuery()Z
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/quicksearchbox/Config;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
