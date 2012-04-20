.class public Lcom/android/quicksearchbox/SuggestionPosition;
.super Lcom/android/quicksearchbox/AbstractSuggestionWrapper;
.source "SuggestionPosition.java"


# instance fields
.field private final mCursor:Lcom/android/quicksearchbox/SuggestionCursor;

.field private final mPosition:I


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/SuggestionCursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 31
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getPosition()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/quicksearchbox/SuggestionPosition;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/android/quicksearchbox/SuggestionCursor;I)V
    .locals 0
    .parameter "cursor"
    .parameter "suggestionPos"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/quicksearchbox/AbstractSuggestionWrapper;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/quicksearchbox/SuggestionPosition;->mCursor:Lcom/android/quicksearchbox/SuggestionCursor;

    .line 36
    iput p2, p0, Lcom/android/quicksearchbox/SuggestionPosition;->mPosition:I

    .line 37
    return-void
.end method


# virtual methods
.method protected current()Lcom/android/quicksearchbox/Suggestion;
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionPosition;->mCursor:Lcom/android/quicksearchbox/SuggestionCursor;

    iget v1, p0, Lcom/android/quicksearchbox/SuggestionPosition;->mPosition:I

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 49
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionPosition;->mCursor:Lcom/android/quicksearchbox/SuggestionCursor;

    return-object v0
.end method

.method public getCursor()Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionPosition;->mCursor:Lcom/android/quicksearchbox/SuggestionCursor;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/android/quicksearchbox/SuggestionPosition;->mPosition:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/quicksearchbox/SuggestionPosition;->mCursor:Lcom/android/quicksearchbox/SuggestionCursor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/quicksearchbox/SuggestionPosition;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
