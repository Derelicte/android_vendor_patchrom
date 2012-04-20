.class public Lcom/android/quicksearchbox/DefaultCorpusRanker;
.super Ljava/lang/Object;
.source "DefaultCorpusRanker.java"

# interfaces
.implements Lcom/android/quicksearchbox/CorpusRanker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/DefaultCorpusRanker$1;,
        Lcom/android/quicksearchbox/DefaultCorpusRanker$CorpusComparator;,
        Lcom/android/quicksearchbox/DefaultCorpusRanker$RankedCorporaCache;,
        Lcom/android/quicksearchbox/DefaultCorpusRanker$CorporaObserver;
    }
.end annotation


# instance fields
.field private final mCorpora:Lcom/android/quicksearchbox/Corpora;

.field private final mRankedCorpora:Lcom/android/quicksearchbox/DefaultCorpusRanker$RankedCorporaCache;

.field private final mShortcuts:Lcom/android/quicksearchbox/ShortcutRepository;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/Corpora;Lcom/android/quicksearchbox/ShortcutRepository;)V
    .locals 3
    .parameter "corpora"
    .parameter "shortcuts"

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/quicksearchbox/DefaultCorpusRanker;->mCorpora:Lcom/android/quicksearchbox/Corpora;

    .line 56
    iget-object v0, p0, Lcom/android/quicksearchbox/DefaultCorpusRanker;->mCorpora:Lcom/android/quicksearchbox/Corpora;

    new-instance v1, Lcom/android/quicksearchbox/DefaultCorpusRanker$CorporaObserver;

    invoke-direct {v1, p0, v2}, Lcom/android/quicksearchbox/DefaultCorpusRanker$CorporaObserver;-><init>(Lcom/android/quicksearchbox/DefaultCorpusRanker;Lcom/android/quicksearchbox/DefaultCorpusRanker$1;)V

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/Corpora;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 57
    iput-object p2, p0, Lcom/android/quicksearchbox/DefaultCorpusRanker;->mShortcuts:Lcom/android/quicksearchbox/ShortcutRepository;

    .line 58
    new-instance v0, Lcom/android/quicksearchbox/DefaultCorpusRanker$RankedCorporaCache;

    invoke-direct {v0, p0, v2}, Lcom/android/quicksearchbox/DefaultCorpusRanker$RankedCorporaCache;-><init>(Lcom/android/quicksearchbox/DefaultCorpusRanker;Lcom/android/quicksearchbox/DefaultCorpusRanker$1;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/DefaultCorpusRanker;->mRankedCorpora:Lcom/android/quicksearchbox/DefaultCorpusRanker$RankedCorporaCache;

    .line 59
    return-void
.end method

.method static synthetic access$200(Lcom/android/quicksearchbox/DefaultCorpusRanker;)Lcom/android/quicksearchbox/Corpora;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/quicksearchbox/DefaultCorpusRanker;->mCorpora:Lcom/android/quicksearchbox/Corpora;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/quicksearchbox/DefaultCorpusRanker;)Lcom/android/quicksearchbox/ShortcutRepository;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/quicksearchbox/DefaultCorpusRanker;->mShortcuts:Lcom/android/quicksearchbox/ShortcutRepository;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/quicksearchbox/DefaultCorpusRanker;->mRankedCorpora:Lcom/android/quicksearchbox/DefaultCorpusRanker$RankedCorporaCache;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/DefaultCorpusRanker$RankedCorporaCache;->clear()V

    .line 67
    return-void
.end method

.method public getCorporaInAll(Lcom/android/quicksearchbox/util/Consumer;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/util/Consumer",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, consumer:Lcom/android/quicksearchbox/util/Consumer;,"Lcom/android/quicksearchbox/util/Consumer<Ljava/util/List<Lcom/android/quicksearchbox/Corpus;>;>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/DefaultCorpusRanker;->mRankedCorpora:Lcom/android/quicksearchbox/DefaultCorpusRanker$RankedCorporaCache;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/DefaultCorpusRanker$RankedCorporaCache;->getLater(Lcom/android/quicksearchbox/util/Consumer;)V

    .line 63
    return-void
.end method
