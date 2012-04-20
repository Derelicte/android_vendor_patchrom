.class public Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;
.super Ljava/lang/Object;
.source "AndroidSpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public final mHasLikelySuggestions:Z

.field public final mSuggestions:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 0
    .parameter "gatheredSuggestions"
    .parameter "hasLikelySuggestions"

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;->mSuggestions:[Ljava/lang/String;

    .line 116
    iput-boolean p2, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;->mHasLikelySuggestions:Z

    .line 117
    return-void
.end method
