.class public interface abstract Lcom/android/quicksearchbox/ui/SuggestionsAdapter;
.super Ljava/lang/Object;
.source "SuggestionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getCurrentPromotedSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;
.end method

.method public abstract getListAdapter()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation
.end method

.method public abstract getSuggestion(J)Lcom/android/quicksearchbox/SuggestionPosition;
.end method

.method public abstract getSuggestions()Lcom/android/quicksearchbox/Suggestions;
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract onSuggestionClicked(J)V
.end method

.method public abstract onSuggestionQueryRefineClicked(J)V
.end method

.method public abstract onSuggestionQuickContactClicked(J)V
.end method

.method public abstract onSuggestionRemoveFromHistoryClicked(J)V
.end method

.method public abstract setMaxPromoted(I)V
.end method

.method public abstract setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
.end method

.method public abstract setPromoter(Lcom/android/quicksearchbox/Promoter;)V
.end method

.method public abstract setSuggestionClickListener(Lcom/android/quicksearchbox/ui/SuggestionClickListener;)V
.end method

.method public abstract setSuggestions(Lcom/android/quicksearchbox/Suggestions;)V
.end method
