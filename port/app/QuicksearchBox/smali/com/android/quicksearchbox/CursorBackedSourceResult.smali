.class public Lcom/android/quicksearchbox/CursorBackedSourceResult;
.super Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;
.source "CursorBackedSourceResult.java"

# interfaces
.implements Lcom/android/quicksearchbox/SourceResult;


# instance fields
.field private final mSource:Lcom/android/quicksearchbox/Source;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)V
    .locals 1
    .parameter "source"
    .parameter "userQuery"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/quicksearchbox/CursorBackedSourceResult;-><init>(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Landroid/database/Cursor;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 0
    .parameter "source"
    .parameter "userQuery"
    .parameter "cursor"

    .prologue
    .line 33
    invoke-direct {p0, p2, p3}, Lcom/android/quicksearchbox/CursorBackedSuggestionCursor;-><init>(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 34
    iput-object p1, p0, Lcom/android/quicksearchbox/CursorBackedSourceResult;->mSource:Lcom/android/quicksearchbox/Source;

    .line 35
    return-void
.end method


# virtual methods
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
    .line 71
    iget-object v0, p0, Lcom/android/quicksearchbox/CursorBackedSourceResult;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/CursorBackedSourceResult;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/quicksearchbox/CursorBackedSuggestionExtras;->getExtraColumns(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getExtras()Lcom/android/quicksearchbox/SuggestionExtras;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/quicksearchbox/CursorBackedSourceResult;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/CursorBackedSourceResult;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/CursorBackedSourceResult;->getPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/quicksearchbox/CursorBackedSuggestionExtras;->createExtrasIfNecessary(Landroid/database/Cursor;I)Lcom/android/quicksearchbox/CursorBackedSuggestionExtras;

    move-result-object v0

    goto :goto_0
.end method

.method public getSource()Lcom/android/quicksearchbox/Source;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/quicksearchbox/CursorBackedSourceResult;->mSource:Lcom/android/quicksearchbox/Source;

    return-object v0
.end method

.method public getSuggestionIntentComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/quicksearchbox/CursorBackedSourceResult;->mSource:Lcom/android/quicksearchbox/Source;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Source;->getIntentComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionSource()Lcom/android/quicksearchbox/Source;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/quicksearchbox/CursorBackedSourceResult;->mSource:Lcom/android/quicksearchbox/Source;

    return-object v0
.end method

.method public isHistorySuggestion()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public isSuggestionShortcut()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/quicksearchbox/CursorBackedSourceResult;->mSource:Lcom/android/quicksearchbox/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quicksearchbox/CursorBackedSourceResult;->getUserQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
