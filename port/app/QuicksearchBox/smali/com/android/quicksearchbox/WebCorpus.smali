.class public Lcom/android/quicksearchbox/WebCorpus;
.super Lcom/android/quicksearchbox/MultiSourceCorpus;
.source "WebCorpus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/WebCorpus$WebResult;
    }
.end annotation


# instance fields
.field private final mBrowserSource:Lcom/android/quicksearchbox/Source;

.field private final mSettings:Lcom/android/quicksearchbox/SearchSettings;

.field private mWebSearchSource:Lcom/android/quicksearchbox/Source;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quicksearchbox/Config;Lcom/android/quicksearchbox/SearchSettings;Ljava/util/concurrent/Executor;Lcom/android/quicksearchbox/Source;Lcom/android/quicksearchbox/Source;)V
    .locals 2
    .parameter "context"
    .parameter "config"
    .parameter "settings"
    .parameter "executor"
    .parameter "webSearchSource"
    .parameter "browserSource"

    .prologue
    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/quicksearchbox/Source;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    const/4 v1, 0x1

    aput-object p6, v0, v1

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/android/quicksearchbox/MultiSourceCorpus;-><init>(Landroid/content/Context;Lcom/android/quicksearchbox/Config;Ljava/util/concurrent/Executor;[Lcom/android/quicksearchbox/Source;)V

    .line 56
    iput-object p3, p0, Lcom/android/quicksearchbox/WebCorpus;->mSettings:Lcom/android/quicksearchbox/SearchSettings;

    .line 57
    iput-object p5, p0, Lcom/android/quicksearchbox/WebCorpus;->mWebSearchSource:Lcom/android/quicksearchbox/Source;

    .line 58
    iput-object p6, p0, Lcom/android/quicksearchbox/WebCorpus;->mBrowserSource:Lcom/android/quicksearchbox/Source;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/quicksearchbox/WebCorpus;)Lcom/android/quicksearchbox/Source;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/quicksearchbox/WebCorpus;->mWebSearchSource:Lcom/android/quicksearchbox/Source;

    return-object v0
.end method

.method private createBrowseIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "query"

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 98
    invoke-static {p1}, Landroid/webkit/URLUtil;->guessUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, url:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 100
    return-object v0
.end method

.method private getCorpusIconResource()I
    .locals 1

    .prologue
    .line 114
    const v0, 0x7f020017

    return v0
.end method

.method private isUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 80
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected createResult(Ljava/lang/String;Ljava/util/ArrayList;I)Lcom/android/quicksearchbox/MultiSourceCorpus$Result;
    .locals 1
    .parameter "query"
    .parameter
    .parameter "latency"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/quicksearchbox/SourceResult;",
            ">;I)",
            "Lcom/android/quicksearchbox/MultiSourceCorpus$Result;"
        }
    .end annotation

    .prologue
    .line 165
    .local p2, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/quicksearchbox/SourceResult;>;"
    new-instance v0, Lcom/android/quicksearchbox/WebCorpus$WebResult;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/quicksearchbox/WebCorpus$WebResult;-><init>(Lcom/android/quicksearchbox/WebCorpus;Ljava/lang/String;Ljava/util/ArrayList;I)V

    return-object v0
.end method

.method public createSearchIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1
    .parameter "query"
    .parameter "appData"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/WebCorpus;->isUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/WebCorpus;->createBrowseIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/WebCorpus;->mWebSearchSource:Lcom/android/quicksearchbox/Source;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/android/quicksearchbox/WebCorpus;->mWebSearchSource:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0, p1, p2}, Lcom/android/quicksearchbox/Source;->createSearchIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createVoiceSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1
    .parameter "appData"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/quicksearchbox/WebCorpus;->mWebSearchSource:Lcom/android/quicksearchbox/Source;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/quicksearchbox/WebCorpus;->mWebSearchSource:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/Source;->createVoiceSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCorpusIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/quicksearchbox/WebCorpus;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/quicksearchbox/WebCorpus;->getCorpusIconResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/quicksearchbox/WebCorpus;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const-string v0, "web"

    return-object v0
.end method

.method public getQueryThreshold()I
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public getSettingsDescription()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/quicksearchbox/WebCorpus;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09000e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getSourcesToQuery(Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .parameter "query"
    .parameter "onlyCorpus"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/quicksearchbox/Source;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    .local v0, sourcesToQuery:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/quicksearchbox/Source;>;"
    iget-object v1, p0, Lcom/android/quicksearchbox/WebCorpus;->mWebSearchSource:Lcom/android/quicksearchbox/Source;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/quicksearchbox/WebCorpus;->mWebSearchSource:Lcom/android/quicksearchbox/Source;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/android/quicksearchbox/WebCorpus;->mBrowserSource:Lcom/android/quicksearchbox/Source;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/android/quicksearchbox/WebCorpus;->mBrowserSource:Lcom/android/quicksearchbox/Source;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_1
    return-object v0
.end method

.method public isWebCorpus()Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method public queryAfterZeroResults()Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public voiceSearchEnabled()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    return v0
.end method
