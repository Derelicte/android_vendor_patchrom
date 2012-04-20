.class public Lcom/android/quicksearchbox/ListSuggestionCursorNoDuplicates;
.super Lcom/android/quicksearchbox/ListSuggestionCursor;
.source "ListSuggestionCursorNoDuplicates.java"


# instance fields
.field private final mSuggestionKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "userQuery"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ListSuggestionCursor;-><init>(Ljava/lang/String;)V

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/quicksearchbox/ListSuggestionCursorNoDuplicates;->mSuggestionKeys:Ljava/util/HashSet;

    .line 37
    return-void
.end method


# virtual methods
.method public add(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 2
    .parameter "suggestion"

    .prologue
    .line 41
    invoke-static {p1}, Lcom/android/quicksearchbox/SuggestionUtils;->getSuggestionKey(Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/quicksearchbox/ListSuggestionCursorNoDuplicates;->mSuggestionKeys:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-super {p0, p1}, Lcom/android/quicksearchbox/ListSuggestionCursor;->add(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result v1

    .line 46
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
