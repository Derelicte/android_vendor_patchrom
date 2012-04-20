.class Lcom/android/quicksearchbox/ui/CorporaAdapter$CorpusComparator;
.super Ljava/lang/Object;
.source "CorporaAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/CorporaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CorpusComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/quicksearchbox/Corpus;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quicksearchbox/ui/CorporaAdapter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/quicksearchbox/ui/CorporaAdapter$CorpusComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/quicksearchbox/Corpus;Lcom/android/quicksearchbox/Corpus;)I
    .locals 2
    .parameter "corpus1"
    .parameter "corpus2"

    .prologue
    .line 86
    if-ne p1, p2, :cond_0

    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    .line 88
    :cond_0
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->isWebCorpus()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    .line 89
    :cond_1
    invoke-interface {p2}, Lcom/android/quicksearchbox/Corpus;->isWebCorpus()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 91
    :cond_2
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/quicksearchbox/Corpus;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    check-cast p1, Lcom/android/quicksearchbox/Corpus;

    .end local p1
    check-cast p2, Lcom/android/quicksearchbox/Corpus;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/quicksearchbox/ui/CorporaAdapter$CorpusComparator;->compare(Lcom/android/quicksearchbox/Corpus;Lcom/android/quicksearchbox/Corpus;)I

    move-result v0

    return v0
.end method
