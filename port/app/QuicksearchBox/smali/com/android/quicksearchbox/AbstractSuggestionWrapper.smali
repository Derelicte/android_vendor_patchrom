.class public abstract Lcom/android/quicksearchbox/AbstractSuggestionWrapper;
.super Ljava/lang/Object;
.source "AbstractSuggestionWrapper.java"

# interfaces
.implements Lcom/android/quicksearchbox/Suggestion;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract current()Lcom/android/quicksearchbox/Suggestion;
.end method

.method public getExtras()Lcom/android/quicksearchbox/SuggestionExtras;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSuggestionWrapper;->current()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getExtras()Lcom/android/quicksearchbox/SuggestionExtras;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSuggestionWrapper;->current()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSuggestionWrapper;->current()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionIcon1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSuggestionWrapper;->current()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIcon1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionIcon2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSuggestionWrapper;->current()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIcon2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSuggestionWrapper;->current()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionIntentComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSuggestionWrapper;->current()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionIntentDataString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSuggestionWrapper;->current()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionIntentExtraData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSuggestionWrapper;->current()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentExtraData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionLogType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSuggestionWrapper;->current()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionLogType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSuggestionWrapper;->current()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionSource()Lcom/android/quicksearchbox/Source;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSuggestionWrapper;->current()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionText1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSuggestionWrapper;->current()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionText2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSuggestionWrapper;->current()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionText2Url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSuggestionWrapper;->current()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText2Url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isHistorySuggestion()Z
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSuggestionWrapper;->current()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->isHistorySuggestion()Z

    move-result v0

    return v0
.end method

.method public isSpinnerWhileRefreshing()Z
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSuggestionWrapper;->current()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->isSpinnerWhileRefreshing()Z

    move-result v0

    return v0
.end method

.method public isSuggestionShortcut()Z
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSuggestionWrapper;->current()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->isSuggestionShortcut()Z

    move-result v0

    return v0
.end method

.method public isWebSearchSuggestion()Z
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/quicksearchbox/AbstractSuggestionWrapper;->current()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->isWebSearchSuggestion()Z

    move-result v0

    return v0
.end method
