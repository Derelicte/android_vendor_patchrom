.class Lcom/android/quicksearchbox/DefaultCorpusRanker$CorporaObserver;
.super Landroid/database/DataSetObserver;
.source "DefaultCorpusRanker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/DefaultCorpusRanker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CorporaObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/DefaultCorpusRanker;


# direct methods
.method private constructor <init>(Lcom/android/quicksearchbox/DefaultCorpusRanker;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/quicksearchbox/DefaultCorpusRanker$CorporaObserver;->this$0:Lcom/android/quicksearchbox/DefaultCorpusRanker;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quicksearchbox/DefaultCorpusRanker;Lcom/android/quicksearchbox/DefaultCorpusRanker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/DefaultCorpusRanker$CorporaObserver;-><init>(Lcom/android/quicksearchbox/DefaultCorpusRanker;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/quicksearchbox/DefaultCorpusRanker$CorporaObserver;->this$0:Lcom/android/quicksearchbox/DefaultCorpusRanker;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/DefaultCorpusRanker;->clear()V

    .line 73
    return-void
.end method
