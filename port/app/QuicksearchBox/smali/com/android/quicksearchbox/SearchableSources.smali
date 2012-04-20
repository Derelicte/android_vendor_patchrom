.class public Lcom/android/quicksearchbox/SearchableSources;
.super Ljava/lang/Object;
.source "SearchableSources.java"

# interfaces
.implements Lcom/android/quicksearchbox/Sources;


# instance fields
.field private final mConfig:Lcom/android/quicksearchbox/Config;

.field private final mContext:Landroid/content/Context;

.field private final mIconLoaderExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

.field private final mSearchManager:Landroid/app/SearchManager;

.field private mSources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/quicksearchbox/Source;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiThread:Landroid/os/Handler;

.field private mWebSearchSource:Lcom/android/quicksearchbox/Source;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/quicksearchbox/util/NamedTaskExecutor;Lcom/android/quicksearchbox/Config;)V
    .locals 1
    .parameter "context"
    .parameter "uiThread"
    .parameter "iconLoader"
    .parameter "config"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/quicksearchbox/SearchableSources;->mContext:Landroid/content/Context;

    .line 62
    const-string v0, "search"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/quicksearchbox/SearchableSources;->mSearchManager:Landroid/app/SearchManager;

    .line 63
    iput-object p2, p0, Lcom/android/quicksearchbox/SearchableSources;->mUiThread:Landroid/os/Handler;

    .line 64
    iput-object p3, p0, Lcom/android/quicksearchbox/SearchableSources;->mIconLoaderExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    .line 65
    iput-object p4, p0, Lcom/android/quicksearchbox/SearchableSources;->mConfig:Lcom/android/quicksearchbox/Config;

    .line 66
    return-void
.end method

.method private addSearchableSources()V
    .locals 6

    .prologue
    .line 121
    iget-object v4, p0, Lcom/android/quicksearchbox/SearchableSources;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {v4}, Landroid/app/SearchManager;->getSearchablesInGlobalSearch()Ljava/util/List;

    move-result-object v2

    .line 122
    .local v2, searchables:Ljava/util/List;,"Ljava/util/List<Landroid/app/SearchableInfo;>;"
    if-nez v2, :cond_1

    .line 123
    const-string v4, "QSB.SearchableSources"

    const-string v5, "getSearchablesInGlobalSearch() returned null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    return-void

    .line 126
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchableInfo;

    .line 127
    .local v1, searchable:Landroid/app/SearchableInfo;
    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/SearchableSources;->createSearchableSource(Landroid/app/SearchableInfo;)Lcom/android/quicksearchbox/SearchableSource;

    move-result-object v3

    .line 128
    .local v3, source:Lcom/android/quicksearchbox/SearchableSource;
    if-eqz v3, :cond_2

    .line 130
    invoke-virtual {p0, v3}, Lcom/android/quicksearchbox/SearchableSources;->addSource(Lcom/android/quicksearchbox/Source;)V

    goto :goto_0
.end method


# virtual methods
.method protected addInternalSources()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method protected addSource(Lcom/android/quicksearchbox/Source;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableSources;->mSources:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/quicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-void
.end method

.method protected createSearchableSource(Landroid/app/SearchableInfo;)Lcom/android/quicksearchbox/SearchableSource;
    .locals 6
    .parameter "searchable"

    .prologue
    const/4 v1, 0x0

    .line 144
    if-nez p1, :cond_0

    .line 150
    :goto_0
    return-object v1

    .line 146
    :cond_0
    :try_start_0
    new-instance v2, Lcom/android/quicksearchbox/SearchableSource;

    iget-object v3, p0, Lcom/android/quicksearchbox/SearchableSources;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchableSources;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchableSources;->getIconLoaderExecutor()Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    move-result-object v5

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/android/quicksearchbox/SearchableSource;-><init>(Landroid/content/Context;Landroid/app/SearchableInfo;Landroid/os/Handler;Lcom/android/quicksearchbox/util/NamedTaskExecutor;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "QSB.SearchableSources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Source not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected createWebSearchSource()Lcom/android/quicksearchbox/Source;
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchableSources;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/quicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/QsbApplication;->getGoogleSource()Lcom/android/quicksearchbox/google/GoogleSource;

    move-result-object v0

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableSources;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getIconLoaderExecutor()Lcom/android/quicksearchbox/util/NamedTaskExecutor;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableSources;->mIconLoaderExecutor:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    return-object v0
.end method

.method public getSource(Ljava/lang/String;)Lcom/android/quicksearchbox/Source;
    .locals 1
    .parameter "name"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableSources;->mSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/Source;

    return-object v0
.end method

.method public getSources()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/quicksearchbox/Source;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableSources;->mSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected getUiThreadHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableSources;->mUiThread:Landroid/os/Handler;

    return-object v0
.end method

.method public getWebSearchSource()Lcom/android/quicksearchbox/Source;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableSources;->mWebSearchSource:Lcom/android/quicksearchbox/Source;

    return-object v0
.end method

.method public update()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/quicksearchbox/SearchableSources;->mSources:Ljava/util/HashMap;

    .line 107
    invoke-direct {p0}, Lcom/android/quicksearchbox/SearchableSources;->addSearchableSources()V

    .line 109
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchableSources;->addInternalSources()V

    .line 111
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchableSources;->createWebSearchSource()Lcom/android/quicksearchbox/Source;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/SearchableSources;->mWebSearchSource:Lcom/android/quicksearchbox/Source;

    .line 112
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableSources;->mWebSearchSource:Lcom/android/quicksearchbox/Source;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchableSources;->mWebSearchSource:Lcom/android/quicksearchbox/Source;

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/SearchableSources;->addSource(Lcom/android/quicksearchbox/Source;)V

    .line 115
    :cond_0
    return-void
.end method
