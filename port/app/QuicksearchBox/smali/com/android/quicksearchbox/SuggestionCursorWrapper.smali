.class public Lcom/android/quicksearchbox/SuggestionCursorWrapper;
.super Lcom/android/quicksearchbox/AbstractSuggestionCursorWrapper;
.source "SuggestionCursorWrapper.java"


# instance fields
.field private final mCursor:Lcom/android/quicksearchbox/SuggestionCursor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;)V
    .locals 0
    .parameter "userQuery"
    .parameter "cursor"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/AbstractSuggestionCursorWrapper;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object p2, p0, Lcom/android/quicksearchbox/SuggestionCursorWrapper;->mCursor:Lcom/android/quicksearchbox/SuggestionCursor;

    .line 33
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionCursorWrapper;->mCursor:Lcom/android/quicksearchbox/SuggestionCursor;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionCursorWrapper;->mCursor:Lcom/android/quicksearchbox/SuggestionCursor;

    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursor;->close()V

    .line 39
    :cond_0
    return-void
.end method

.method protected bridge synthetic current()Lcom/android/quicksearchbox/Suggestion;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SuggestionCursorWrapper;->current()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    return-object v0
.end method

.method protected current()Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionCursorWrapper;->mCursor:Lcom/android/quicksearchbox/SuggestionCursor;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionCursorWrapper;->mCursor:Lcom/android/quicksearchbox/SuggestionCursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionCursorWrapper;->mCursor:Lcom/android/quicksearchbox/SuggestionCursor;

    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getExtraColumns()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionCursorWrapper;->mCursor:Lcom/android/quicksearchbox/SuggestionCursor;

    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursor;->getExtraColumns()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionCursorWrapper;->mCursor:Lcom/android/quicksearchbox/SuggestionCursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionCursorWrapper;->mCursor:Lcom/android/quicksearchbox/SuggestionCursor;

    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursor;->getPosition()I

    move-result v0

    goto :goto_0
.end method

.method public moveTo(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionCursorWrapper;->mCursor:Lcom/android/quicksearchbox/SuggestionCursor;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionCursorWrapper;->mCursor:Lcom/android/quicksearchbox/SuggestionCursor;

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 53
    :cond_0
    return-void
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionCursorWrapper;->mCursor:Lcom/android/quicksearchbox/SuggestionCursor;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionCursorWrapper;->mCursor:Lcom/android/quicksearchbox/SuggestionCursor;

    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursor;->moveToNext()Z

    move-result v0

    .line 59
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
