.class public Lcom/android/quicksearchbox/SearchableCorpora;
.super Ljava/lang/Object;
.source "SearchableCorpora.java"

# interfaces
.implements Lcom/android/quicksearchbox/Corpora;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCorporaByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;"
        }
    .end annotation
.end field

.field private mCorporaBySource:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/quicksearchbox/Source;",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;"
        }
    .end annotation
.end field

.field private final mCorpusFactory:Lcom/android/quicksearchbox/CorpusFactory;

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field private mEnabledCorpora:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettings:Lcom/android/quicksearchbox/SearchSettings;

.field private mSources:Lcom/android/quicksearchbox/Sources;

.field private mWebCorpus:Lcom/android/quicksearchbox/Corpus;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quicksearchbox/SearchSettings;Lcom/android/quicksearchbox/Sources;Lcom/android/quicksearchbox/CorpusFactory;)V
    .locals 1
    .parameter "context"
    .parameter "settings"
    .parameter "sources"
    .parameter "corpusFactory"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/android/quicksearchbox/SearchableCorpora;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 62
    iput-object p1, p0, Lcom/android/quicksearchbox/SearchableCorpora;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/android/quicksearchbox/SearchableCorpora;->mSettings:Lcom/android/quicksearchbox/SearchSettings;

    .line 64
    iput-object p4, p0, Lcom/android/quicksearchbox/SearchableCorpora;->mCorpusFactory:Lcom/android/quicksearchbox/CorpusFactory;

    .line 65
    iput-object p3, p0, Lcom/android/quicksearchbox/SearchableCorpora;->mSources:Lcom/android/quicksearchbox/Sources;

    .line 66
    return-void
.end method


# virtual methods
.method public getAllCorpora()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableCorpora;->mCorporaByName:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getCorporaInAll()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/quicksearchbox/SearchableCorpora;->mEnabledCorpora:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    .local v0, corpora:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/quicksearchbox/Corpus;>;"
    iget-object v3, p0, Lcom/android/quicksearchbox/SearchableCorpora;->mEnabledCorpora:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/Corpus;

    .line 83
    .local v1, corpus:Lcom/android/quicksearchbox/Corpus;
    invoke-interface {v1}, Lcom/android/quicksearchbox/Corpus;->includeInAll()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    .end local v1           #corpus:Lcom/android/quicksearchbox/Corpus;
    :cond_1
    return-object v0
.end method

.method public getCorpus(Ljava/lang/String;)Lcom/android/quicksearchbox/Corpus;
    .locals 1
    .parameter "name"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableCorpora;->mCorporaByName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/Corpus;

    return-object v0
.end method

.method public getCorpusForSource(Lcom/android/quicksearchbox/Source;)Lcom/android/quicksearchbox/Corpus;
    .locals 1
    .parameter "source"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableCorpora;->mCorporaBySource:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/Corpus;

    return-object v0
.end method

.method public getEnabledCorpora()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableCorpora;->mEnabledCorpora:Ljava/util/List;

    return-object v0
.end method

.method public getSource(Ljava/lang/String;)Lcom/android/quicksearchbox/Source;
    .locals 2
    .parameter "name"

    .prologue
    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const-string v0, "QSB.DefaultCorpora"

    const-string v1, "Empty source name"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v0, 0x0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableCorpora;->mSources:Lcom/android/quicksearchbox/Sources;

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/Sources;->getSource(Ljava/lang/String;)Lcom/android/quicksearchbox/Source;

    move-result-object v0

    goto :goto_0
.end method

.method public getWebCorpus()Lcom/android/quicksearchbox/Corpus;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableCorpora;->mWebCorpus:Lcom/android/quicksearchbox/Corpus;

    return-object v0
.end method

.method protected notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableCorpora;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 153
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableCorpora;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableCorpora;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 149
    return-void
.end method

.method public update()V
    .locals 8

    .prologue
    .line 111
    iget-object v5, p0, Lcom/android/quicksearchbox/SearchableCorpora;->mSources:Lcom/android/quicksearchbox/Sources;

    invoke-interface {v5}, Lcom/android/quicksearchbox/Sources;->update()V

    .line 113
    iget-object v5, p0, Lcom/android/quicksearchbox/SearchableCorpora;->mCorpusFactory:Lcom/android/quicksearchbox/CorpusFactory;

    iget-object v6, p0, Lcom/android/quicksearchbox/SearchableCorpora;->mSources:Lcom/android/quicksearchbox/Sources;

    invoke-interface {v5, v6}, Lcom/android/quicksearchbox/CorpusFactory;->createCorpora(Lcom/android/quicksearchbox/Sources;)Ljava/util/Collection;

    move-result-object v0

    .line 115
    .local v0, corpora:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/quicksearchbox/Corpus;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, p0, Lcom/android/quicksearchbox/SearchableCorpora;->mCorporaByName:Ljava/util/HashMap;

    .line 116
    new-instance v5, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, p0, Lcom/android/quicksearchbox/SearchableCorpora;->mCorporaBySource:Ljava/util/HashMap;

    .line 117
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/android/quicksearchbox/SearchableCorpora;->mEnabledCorpora:Ljava/util/List;

    .line 118
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/quicksearchbox/SearchableCorpora;->mWebCorpus:Lcom/android/quicksearchbox/Corpus;

    .line 120
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/Corpus;

    .line 121
    .local v1, corpus:Lcom/android/quicksearchbox/Corpus;
    iget-object v5, p0, Lcom/android/quicksearchbox/SearchableCorpora;->mCorporaByName:Ljava/util/HashMap;

    invoke-interface {v1}, Lcom/android/quicksearchbox/Corpus;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-interface {v1}, Lcom/android/quicksearchbox/Corpus;->getSources()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/quicksearchbox/Source;

    .line 123
    .local v4, source:Lcom/android/quicksearchbox/Source;
    iget-object v5, p0, Lcom/android/quicksearchbox/SearchableCorpora;->mCorporaBySource:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 125
    .end local v4           #source:Lcom/android/quicksearchbox/Source;
    :cond_1
    iget-object v5, p0, Lcom/android/quicksearchbox/SearchableCorpora;->mSettings:Lcom/android/quicksearchbox/SearchSettings;

    invoke-interface {v5, v1}, Lcom/android/quicksearchbox/SearchSettings;->isCorpusEnabled(Lcom/android/quicksearchbox/Corpus;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 126
    iget-object v5, p0, Lcom/android/quicksearchbox/SearchableCorpora;->mEnabledCorpora:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_2
    invoke-interface {v1}, Lcom/android/quicksearchbox/Corpus;->isWebCorpus()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 129
    iget-object v5, p0, Lcom/android/quicksearchbox/SearchableCorpora;->mWebCorpus:Lcom/android/quicksearchbox/Corpus;

    if-eqz v5, :cond_3

    .line 130
    const-string v5, "QSB.DefaultCorpora"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Multiple web corpora: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/quicksearchbox/SearchableCorpora;->mWebCorpus:Lcom/android/quicksearchbox/Corpus;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_3
    iput-object v1, p0, Lcom/android/quicksearchbox/SearchableCorpora;->mWebCorpus:Lcom/android/quicksearchbox/Corpus;

    goto :goto_0

    .line 138
    .end local v1           #corpus:Lcom/android/quicksearchbox/Corpus;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v5, p0, Lcom/android/quicksearchbox/SearchableCorpora;->mEnabledCorpora:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/android/quicksearchbox/SearchableCorpora;->mEnabledCorpora:Ljava/util/List;

    .line 140
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchableCorpora;->notifyDataSetChanged()V

    .line 141
    return-void
.end method
