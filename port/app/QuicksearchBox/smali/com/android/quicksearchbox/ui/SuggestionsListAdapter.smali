.class public Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;
.super Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;
.source "SuggestionsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$Adapter;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ui/SuggestionViewFactory;)V
    .locals 1
    .parameter "viewFactory"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;-><init>(Lcom/android/quicksearchbox/ui/SuggestionViewFactory;)V

    .line 36
    new-instance v0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$Adapter;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$Adapter;-><init>(Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;->mAdapter:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$Adapter;

    .line 37
    return-void
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;->mAdapter:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$Adapter;

    return-object v0
.end method

.method public bridge synthetic getListAdapter()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;->getListAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestion(J)Lcom/android/quicksearchbox/SuggestionPosition;
    .locals 3
    .parameter "suggestionId"

    .prologue
    .line 51
    new-instance v0, Lcom/android/quicksearchbox/SuggestionPosition;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;->getCurrentPromotedSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v1

    long-to-int v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/quicksearchbox/SuggestionPosition;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;->mAdapter:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$Adapter;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;->mAdapter:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$Adapter;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$Adapter;->notifyDataSetChanged()V

    .line 62
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;->mAdapter:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$Adapter;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$Adapter;->notifyDataSetInvalidated()V

    .line 67
    return-void
.end method

.method public willPublishNonPromotedSuggestions()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method
