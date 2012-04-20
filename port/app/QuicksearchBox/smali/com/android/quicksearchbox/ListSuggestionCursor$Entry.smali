.class Lcom/android/quicksearchbox/ListSuggestionCursor$Entry;
.super Ljava/lang/Object;
.source "ListSuggestionCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ListSuggestionCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field private mExtras:Lcom/android/quicksearchbox/SuggestionExtras;

.field private final mSuggestion:Lcom/android/quicksearchbox/Suggestion;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/Suggestion;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/android/quicksearchbox/ListSuggestionCursor$Entry;->mSuggestion:Lcom/android/quicksearchbox/Suggestion;

    .line 168
    return-void
.end method


# virtual methods
.method public get()Lcom/android/quicksearchbox/Suggestion;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/quicksearchbox/ListSuggestionCursor$Entry;->mSuggestion:Lcom/android/quicksearchbox/Suggestion;

    return-object v0
.end method

.method public getExtras()Lcom/android/quicksearchbox/SuggestionExtras;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/quicksearchbox/ListSuggestionCursor$Entry;->mExtras:Lcom/android/quicksearchbox/SuggestionExtras;

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/quicksearchbox/ListSuggestionCursor$Entry;->mSuggestion:Lcom/android/quicksearchbox/Suggestion;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getExtras()Lcom/android/quicksearchbox/SuggestionExtras;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/ListSuggestionCursor$Entry;->mExtras:Lcom/android/quicksearchbox/SuggestionExtras;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ListSuggestionCursor$Entry;->mExtras:Lcom/android/quicksearchbox/SuggestionExtras;

    return-object v0
.end method
