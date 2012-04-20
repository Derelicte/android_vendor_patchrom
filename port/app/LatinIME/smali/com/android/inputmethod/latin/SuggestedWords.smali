.class public Lcom/android/inputmethod/latin/SuggestedWords;
.super Ljava/lang/Object;
.source "SuggestedWords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/SuggestedWords$1;,
        Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;,
        Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/android/inputmethod/latin/SuggestedWords;


# instance fields
.field public final mHasAutoCorrectionCandidate:Z

.field public final mIsPunctuationSuggestions:Z

.field private mShouldBlockAutoCorrection:Z

.field private final mSuggestedWordInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mTypedWordValid:Z

.field public final mWords:Ljava/util/List;
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
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/android/inputmethod/latin/SuggestedWords;

    move v3, v2

    move v4, v2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/SuggestedWords;-><init>(Ljava/util/List;ZZZLjava/util/List;)V

    sput-object v0, Lcom/android/inputmethod/latin/SuggestedWords;->EMPTY:Lcom/android/inputmethod/latin/SuggestedWords;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;ZZZLjava/util/List;)V
    .locals 1
    .parameter
    .parameter "typedWordValid"
    .parameter "hasAutoCorrectionCandidate"
    .parameter "isPunctuationSuggestions"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;ZZZ",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, words:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .local p5, suggestedWordInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-eqz p1, :cond_0

    .line 41
    iput-object p1, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mWords:Ljava/util/List;

    .line 45
    :goto_0
    iput-boolean p2, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mTypedWordValid:Z

    .line 46
    iput-boolean p3, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mHasAutoCorrectionCandidate:Z

    .line 47
    iput-boolean p4, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mIsPunctuationSuggestions:Z

    .line 48
    iput-object p5, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mSuggestedWordInfoList:Ljava/util/List;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mShouldBlockAutoCorrection:Z

    .line 50
    return-void

    .line 43
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mWords:Ljava/util/List;

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/util/List;ZZZLjava/util/List;Lcom/android/inputmethod/latin/SuggestedWords$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p5}, Lcom/android/inputmethod/latin/SuggestedWords;-><init>(Ljava/util/List;ZZZLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getInfo(I)Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    .locals 1
    .parameter "pos"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mSuggestedWordInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mSuggestedWordInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWord(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "pos"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mWords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasAutoCorrectionWord()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 65
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mHasAutoCorrectionCandidate:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mTypedWordValid:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWordAboveAutoCorrectionScoreThreshold()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 69
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mHasAutoCorrectionCandidate:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mTypedWordValid:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mTypedWordValid:Z

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPunctuationSuggestions()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mIsPunctuationSuggestions:Z

    return v0
.end method

.method public setShouldBlockAutoCorrection()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mShouldBlockAutoCorrection:Z

    .line 78
    return-void
.end method

.method public shouldBlockAutoCorrection()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mShouldBlockAutoCorrection:Z

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mWords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
