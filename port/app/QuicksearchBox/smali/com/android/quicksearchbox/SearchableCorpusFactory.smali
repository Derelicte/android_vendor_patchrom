.class public Lcom/android/quicksearchbox/SearchableCorpusFactory;
.super Ljava/lang/Object;
.source "SearchableCorpusFactory.java"

# interfaces
.implements Lcom/android/quicksearchbox/CorpusFactory;


# instance fields
.field private final mConfig:Lcom/android/quicksearchbox/Config;

.field private final mContext:Landroid/content/Context;

.field private final mSettings:Lcom/android/quicksearchbox/SearchSettings;

.field private final mWebCorpusExecutorFactory:Lcom/android/quicksearchbox/util/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quicksearchbox/util/Factory",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quicksearchbox/Config;Lcom/android/quicksearchbox/SearchSettings;Lcom/android/quicksearchbox/util/Factory;)V
    .locals 0
    .parameter "context"
    .parameter "config"
    .parameter "settings"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/quicksearchbox/Config;",
            "Lcom/android/quicksearchbox/SearchSettings;",
            "Lcom/android/quicksearchbox/util/Factory",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p4, webCorpusExecutorFactory:Lcom/android/quicksearchbox/util/Factory;,"Lcom/android/quicksearchbox/util/Factory<Ljava/util/concurrent/Executor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/quicksearchbox/SearchableCorpusFactory;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/android/quicksearchbox/SearchableCorpusFactory;->mConfig:Lcom/android/quicksearchbox/Config;

    .line 48
    iput-object p3, p0, Lcom/android/quicksearchbox/SearchableCorpusFactory;->mSettings:Lcom/android/quicksearchbox/SearchSettings;

    .line 49
    iput-object p4, p0, Lcom/android/quicksearchbox/SearchableCorpusFactory;->mWebCorpusExecutorFactory:Lcom/android/quicksearchbox/util/Factory;

    .line 50
    return-void
.end method

.method private addCorpus(Ljava/util/ArrayList;Lcom/android/quicksearchbox/Corpus;)V
    .locals 0
    .parameter
    .parameter "corpus"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;",
            "Lcom/android/quicksearchbox/Corpus;",
            ")V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, corpora:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/quicksearchbox/Corpus;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_0
    return-void
.end method


# virtual methods
.method protected addSingleSourceCorpora(Ljava/util/ArrayList;Lcom/android/quicksearchbox/Sources;)V
    .locals 5
    .parameter
    .parameter "sources"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;",
            "Lcom/android/quicksearchbox/Sources;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, corpora:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/quicksearchbox/Corpus;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 92
    .local v0, claimedSources:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/quicksearchbox/Source;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quicksearchbox/Corpus;

    .line 93
    .local v3, specialCorpus:Lcom/android/quicksearchbox/Corpus;
    invoke-interface {v3}, Lcom/android/quicksearchbox/Corpus;->getSources()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 97
    .end local v3           #specialCorpus:Lcom/android/quicksearchbox/Corpus;
    :cond_0
    invoke-interface {p2}, Lcom/android/quicksearchbox/Sources;->getSources()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quicksearchbox/Source;

    .line 98
    .local v2, source:Lcom/android/quicksearchbox/Source;
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 99
    invoke-virtual {p0, v2}, Lcom/android/quicksearchbox/SearchableCorpusFactory;->createSingleSourceCorpus(Lcom/android/quicksearchbox/Source;)Lcom/android/quicksearchbox/Corpus;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/quicksearchbox/SearchableCorpusFactory;->addCorpus(Ljava/util/ArrayList;Lcom/android/quicksearchbox/Corpus;)V

    goto :goto_1

    .line 102
    .end local v2           #source:Lcom/android/quicksearchbox/Source;
    :cond_2
    return-void
.end method

.method protected addSpecialCorpora(Ljava/util/ArrayList;Lcom/android/quicksearchbox/Sources;)V
    .locals 1
    .parameter
    .parameter "sources"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;",
            "Lcom/android/quicksearchbox/Sources;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, corpora:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/quicksearchbox/Corpus;>;"
    invoke-virtual {p0, p2}, Lcom/android/quicksearchbox/SearchableCorpusFactory;->createWebCorpus(Lcom/android/quicksearchbox/Sources;)Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/quicksearchbox/SearchableCorpusFactory;->addCorpus(Ljava/util/ArrayList;Lcom/android/quicksearchbox/Corpus;)V

    .line 79
    invoke-virtual {p0, p2}, Lcom/android/quicksearchbox/SearchableCorpusFactory;->createAppsCorpus(Lcom/android/quicksearchbox/Sources;)Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/quicksearchbox/SearchableCorpusFactory;->addCorpus(Ljava/util/ArrayList;Lcom/android/quicksearchbox/Corpus;)V

    .line 80
    return-void
.end method

.method protected createAppsCorpus(Lcom/android/quicksearchbox/Sources;)Lcom/android/quicksearchbox/Corpus;
    .locals 4
    .parameter "sources"

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/SearchableCorpusFactory;->getAppsSource(Lcom/android/quicksearchbox/Sources;)Lcom/android/quicksearchbox/Source;

    move-result-object v0

    .line 125
    .local v0, appsSource:Lcom/android/quicksearchbox/Source;
    new-instance v1, Lcom/android/quicksearchbox/AppsCorpus;

    iget-object v2, p0, Lcom/android/quicksearchbox/SearchableCorpusFactory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/quicksearchbox/SearchableCorpusFactory;->mConfig:Lcom/android/quicksearchbox/Config;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/quicksearchbox/AppsCorpus;-><init>(Landroid/content/Context;Lcom/android/quicksearchbox/Config;Lcom/android/quicksearchbox/Source;)V

    return-object v1
.end method

.method public createCorpora(Lcom/android/quicksearchbox/Sources;)Ljava/util/Collection;
    .locals 1
    .parameter "sources"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/Sources;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v0, corpora:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/quicksearchbox/Corpus;>;"
    invoke-virtual {p0, v0, p1}, Lcom/android/quicksearchbox/SearchableCorpusFactory;->addSpecialCorpora(Ljava/util/ArrayList;Lcom/android/quicksearchbox/Sources;)V

    .line 55
    invoke-virtual {p0, v0, p1}, Lcom/android/quicksearchbox/SearchableCorpusFactory;->addSingleSourceCorpora(Ljava/util/ArrayList;Lcom/android/quicksearchbox/Sources;)V

    .line 56
    return-object v0
.end method

.method protected createSingleSourceCorpus(Lcom/android/quicksearchbox/Source;)Lcom/android/quicksearchbox/Corpus;
    .locals 3
    .parameter "source"

    .prologue
    .line 129
    invoke-interface {p1}, Lcom/android/quicksearchbox/Source;->canRead()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/quicksearchbox/SingleSourceCorpus;

    iget-object v1, p0, Lcom/android/quicksearchbox/SearchableCorpusFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/quicksearchbox/SearchableCorpusFactory;->mConfig:Lcom/android/quicksearchbox/Config;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/quicksearchbox/SingleSourceCorpus;-><init>(Landroid/content/Context;Lcom/android/quicksearchbox/Config;Lcom/android/quicksearchbox/Source;)V

    goto :goto_0
.end method

.method protected createWebCorpus(Lcom/android/quicksearchbox/Sources;)Lcom/android/quicksearchbox/Corpus;
    .locals 7
    .parameter "sources"

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/SearchableCorpusFactory;->getWebSource(Lcom/android/quicksearchbox/Sources;)Lcom/android/quicksearchbox/Source;

    move-result-object v5

    .line 110
    .local v5, webSource:Lcom/android/quicksearchbox/Source;
    if-eqz v5, :cond_0

    invoke-interface {v5}, Lcom/android/quicksearchbox/Source;->canRead()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    const-string v0, "QSB.SearchableCorpusFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t read web source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v5}, Lcom/android/quicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v5, 0x0

    .line 114
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/SearchableCorpusFactory;->getBrowserSource(Lcom/android/quicksearchbox/Sources;)Lcom/android/quicksearchbox/Source;

    move-result-object v6

    .line 115
    .local v6, browserSource:Lcom/android/quicksearchbox/Source;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Lcom/android/quicksearchbox/Source;->canRead()Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    const-string v0, "QSB.SearchableCorpusFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t read browser source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Lcom/android/quicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v6, 0x0

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchableCorpusFactory;->createWebCorpusExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 120
    .local v4, executor:Ljava/util/concurrent/Executor;
    new-instance v0, Lcom/android/quicksearchbox/WebCorpus;

    iget-object v1, p0, Lcom/android/quicksearchbox/SearchableCorpusFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/quicksearchbox/SearchableCorpusFactory;->mConfig:Lcom/android/quicksearchbox/Config;

    iget-object v3, p0, Lcom/android/quicksearchbox/SearchableCorpusFactory;->mSettings:Lcom/android/quicksearchbox/SearchSettings;

    invoke-direct/range {v0 .. v6}, Lcom/android/quicksearchbox/WebCorpus;-><init>(Landroid/content/Context;Lcom/android/quicksearchbox/Config;Lcom/android/quicksearchbox/SearchSettings;Ljava/util/concurrent/Executor;Lcom/android/quicksearchbox/Source;Lcom/android/quicksearchbox/Source;)V

    return-object v0
.end method

.method protected createWebCorpusExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableCorpusFactory;->mWebCorpusExecutorFactory:Lcom/android/quicksearchbox/util/Factory;

    invoke-interface {v0}, Lcom/android/quicksearchbox/util/Factory;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method protected getAppsSource(Lcom/android/quicksearchbox/Sources;)Lcom/android/quicksearchbox/Source;
    .locals 3
    .parameter "sources"

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchableCorpusFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f09

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, name:Ljava/lang/String;
    invoke-interface {p1, v0}, Lcom/android/quicksearchbox/Sources;->getSource(Ljava/lang/String;)Lcom/android/quicksearchbox/Source;

    move-result-object v1

    return-object v1
.end method

.method protected getBrowserSource(Lcom/android/quicksearchbox/Sources;)Lcom/android/quicksearchbox/Source;
    .locals 3
    .parameter "sources"

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchableCorpusFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, name:Ljava/lang/String;
    invoke-interface {p1, v0}, Lcom/android/quicksearchbox/Sources;->getSource(Ljava/lang/String;)Lcom/android/quicksearchbox/Source;

    move-result-object v1

    return-object v1
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableCorpusFactory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getWebSource(Lcom/android/quicksearchbox/Sources;)Lcom/android/quicksearchbox/Source;
    .locals 1
    .parameter "sources"

    .prologue
    .line 134
    invoke-interface {p1}, Lcom/android/quicksearchbox/Sources;->getWebSearchSource()Lcom/android/quicksearchbox/Source;

    move-result-object v0

    return-object v0
.end method
