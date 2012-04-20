.class Lcom/android/quicksearchbox/DefaultCorpusRanker$RankedCorporaCache;
.super Lcom/android/quicksearchbox/util/CachedLater;
.source "DefaultCorpusRanker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/DefaultCorpusRanker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RankedCorporaCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/quicksearchbox/util/CachedLater",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/quicksearchbox/Corpus;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/DefaultCorpusRanker;


# direct methods
.method private constructor <init>(Lcom/android/quicksearchbox/DefaultCorpusRanker;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/quicksearchbox/DefaultCorpusRanker$RankedCorporaCache;->this$0:Lcom/android/quicksearchbox/DefaultCorpusRanker;

    invoke-direct {p0}, Lcom/android/quicksearchbox/util/CachedLater;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quicksearchbox/DefaultCorpusRanker;Lcom/android/quicksearchbox/DefaultCorpusRanker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/DefaultCorpusRanker$RankedCorporaCache;-><init>(Lcom/android/quicksearchbox/DefaultCorpusRanker;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/quicksearchbox/DefaultCorpusRanker$RankedCorporaCache;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/DefaultCorpusRanker$RankedCorporaCache;->store(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected create()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/quicksearchbox/DefaultCorpusRanker$RankedCorporaCache;->this$0:Lcom/android/quicksearchbox/DefaultCorpusRanker;

    #getter for: Lcom/android/quicksearchbox/DefaultCorpusRanker;->mShortcuts:Lcom/android/quicksearchbox/ShortcutRepository;
    invoke-static {v0}, Lcom/android/quicksearchbox/DefaultCorpusRanker;->access$400(Lcom/android/quicksearchbox/DefaultCorpusRanker;)Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object v0

    new-instance v1, Lcom/android/quicksearchbox/DefaultCorpusRanker$RankedCorporaCache$1;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/DefaultCorpusRanker$RankedCorporaCache$1;-><init>(Lcom/android/quicksearchbox/DefaultCorpusRanker$RankedCorporaCache;)V

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/ShortcutRepository;->getCorpusScores(Lcom/android/quicksearchbox/util/Consumer;)V

    .line 94
    return-void
.end method
