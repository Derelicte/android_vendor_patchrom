.class public Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;
.super Ljava/lang/Object;
.source "DelayingSuggestionsAdapter.java"

# interfaces
.implements Lcom/android/quicksearchbox/ui/SuggestionsAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter$1;,
        Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter$PendingSuggestionsObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/quicksearchbox/ui/SuggestionsAdapter",
        "<TA;>;"
    }
.end annotation


# instance fields
.field private final mDelayedAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase",
            "<TA;>;"
        }
    .end annotation
.end field

.field private mPendingDataSetObserver:Landroid/database/DataSetObserver;

.field private mPendingSuggestions:Lcom/android/quicksearchbox/Suggestions;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, this:Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;,"Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter<TA;>;"
    .local p1, delayed:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase<TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->mDelayedAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;

    .line 46
    return-void
.end method

.method private setPendingSuggestions(Lcom/android/quicksearchbox/Suggestions;)V
    .locals 2
    .parameter "suggestions"

    .prologue
    .line 91
    .local p0, this:Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;,"Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter<TA;>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->mPendingSuggestions:Lcom/android/quicksearchbox/Suggestions;

    if-ne v0, p1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->mDelayedAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/android/quicksearchbox/Suggestions;->release()V

    goto :goto_0

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->mPendingDataSetObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    .line 101
    new-instance v0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter$PendingSuggestionsObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter$PendingSuggestionsObserver;-><init>(Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter$1;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->mPendingDataSetObserver:Landroid/database/DataSetObserver;

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->mPendingSuggestions:Lcom/android/quicksearchbox/Suggestions;

    if-eqz v0, :cond_4

    .line 104
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->mPendingSuggestions:Lcom/android/quicksearchbox/Suggestions;

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->mPendingDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/Suggestions;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 107
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->mPendingSuggestions:Lcom/android/quicksearchbox/Suggestions;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->getSuggestions()Lcom/android/quicksearchbox/Suggestions;

    move-result-object v1

    if-eq v0, v1, :cond_4

    .line 108
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->mPendingSuggestions:Lcom/android/quicksearchbox/Suggestions;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/Suggestions;->release()V

    .line 111
    :cond_4
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->mPendingSuggestions:Lcom/android/quicksearchbox/Suggestions;

    .line 112
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->mPendingSuggestions:Lcom/android/quicksearchbox/Suggestions;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->mPendingSuggestions:Lcom/android/quicksearchbox/Suggestions;

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->mPendingDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/Suggestions;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method private shouldPublish(Lcom/android/quicksearchbox/Suggestions;)Z
    .locals 6
    .parameter "suggestions"

    .prologue
    .local p0, this:Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;,"Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter<TA;>;"
    const/4 v4, 0x1

    .line 75
    invoke-virtual {p1}, Lcom/android/quicksearchbox/Suggestions;->isDone()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v4

    .line 76
    :cond_1
    iget-object v5, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->mDelayedAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;

    invoke-virtual {v5, p1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->getPromoted(Lcom/android/quicksearchbox/Suggestions;)Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    .line 77
    .local v0, cursor:Lcom/android/quicksearchbox/SuggestionCursor;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v5

    if-gtz v5, :cond_0

    .line 79
    :cond_2
    iget-object v5, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->mDelayedAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;

    invoke-virtual {v5}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->willPublishNonPromotedSuggestions()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 80
    invoke-virtual {p1}, Lcom/android/quicksearchbox/Suggestions;->getCorpusResults()Ljava/lang/Iterable;

    move-result-object v3

    .line 81
    .local v3, results:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/android/quicksearchbox/CorpusResult;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quicksearchbox/CorpusResult;

    .line 82
    .local v2, result:Lcom/android/quicksearchbox/CorpusResult;
    invoke-interface {v2}, Lcom/android/quicksearchbox/CorpusResult;->getCount()I

    move-result v5

    if-lez v5, :cond_3

    goto :goto_0

    .line 87
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #result:Lcom/android/quicksearchbox/CorpusResult;
    .end local v3           #results:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/android/quicksearchbox/CorpusResult;>;"
    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCurrentPromotedSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 1

    .prologue
    .line 142
    .local p0, this:Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;,"Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter<TA;>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->mDelayedAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->getCurrentPromotedSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    return-object v0
.end method

.method public getListAdapter()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, this:Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;,"Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter<TA;>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->mDelayedAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->getListAdapter()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestion(J)Lcom/android/quicksearchbox/SuggestionPosition;
    .locals 1
    .parameter "suggestionId"

    .prologue
    .line 150
    .local p0, this:Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;,"Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter<TA;>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->mDelayedAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->getSuggestion(J)Lcom/android/quicksearchbox/SuggestionPosition;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestions()Lcom/android/quicksearchbox/Suggestions;
    .locals 1

    .prologue
    .line 146
    .local p0, this:Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;,"Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter<TA;>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->mDelayedAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->getSuggestions()Lcom/android/quicksearchbox/Suggestions;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 188
    .local p0, this:Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;,"Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter<TA;>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->mDelayedAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected onPendingSuggestionsChanged()V
    .locals 2

    .prologue
    .line 122
    .local p0, this:Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;,"Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter<TA;>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->mPendingSuggestions:Lcom/android/quicksearchbox/Suggestions;

    invoke-direct {p0, v0}, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->shouldPublish(Lcom/android/quicksearchbox/Suggestions;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->mDelayedAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->mPendingSuggestions:Lcom/android/quicksearchbox/Suggestions;

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->setSuggestions(Lcom/android/quicksearchbox/Suggestions;)V

    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->setPendingSuggestions(Lcom/android/quicksearchbox/Suggestions;)V

    .line 128
    :cond_0
    return-void
.end method

.method public onSuggestionClicked(J)V
    .locals 1
    .parameter "suggestionId"

    .prologue
    .line 154
    .local p0, this:Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;,"Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter<TA;>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->mDelayedAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->onSuggestionClicked(J)V

    .line 155
    return-void
.end method

.method public onSuggestionQueryRefineClicked(J)V
    .locals 1
    .parameter "suggestionId"

    .prologue
    .line 158
    .local p0, this:Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;,"Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter<TA;>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->mDelayedAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->onSuggestionQueryRefineClicked(J)V

    .line 159
    return-void
.end method

.method public onSuggestionQuickContactClicked(J)V
    .locals 1
    .parameter "suggestionId"

    .prologue
    .line 162
    .local p0, this:Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;,"Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter<TA;>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->mDelayedAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->onSuggestionQuickContactClicked(J)V

    .line 163
    return-void
.end method

.method public onSuggestionRemoveFromHistoryClicked(J)V
    .locals 1
    .parameter "suggestionId"

    .prologue
    .line 166
    .local p0, this:Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;,"Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter<TA;>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->mDelayedAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->onSuggestionRemoveFromHistoryClicked(J)V

    .line 167
    return-void
.end method

.method public setMaxPromoted(I)V
    .locals 1
    .parameter "maxPromoted"

    .prologue
    .line 170
    .local p0, this:Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;,"Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter<TA;>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->mDelayedAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->setMaxPromoted(I)V

    .line 171
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 174
    .local p0, this:Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;,"Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter<TA;>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->mDelayedAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 175
    return-void
.end method

.method public setPromoter(Lcom/android/quicksearchbox/Promoter;)V
    .locals 1
    .parameter "promoter"

    .prologue
    .line 179
    .local p0, this:Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;,"Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter<TA;>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->mDelayedAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->setPromoter(Lcom/android/quicksearchbox/Promoter;)V

    .line 180
    return-void
.end method

.method public setSuggestionClickListener(Lcom/android/quicksearchbox/ui/SuggestionClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 183
    .local p0, this:Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;,"Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter<TA;>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->mDelayedAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->setSuggestionClickListener(Lcom/android/quicksearchbox/ui/SuggestionClickListener;)V

    .line 184
    return-void
.end method

.method public setSuggestions(Lcom/android/quicksearchbox/Suggestions;)V
    .locals 2
    .parameter "suggestions"

    .prologue
    .local p0, this:Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;,"Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter<TA;>;"
    const/4 v1, 0x0

    .line 55
    if-nez p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->mDelayedAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->setSuggestions(Lcom/android/quicksearchbox/Suggestions;)V

    .line 57
    invoke-direct {p0, v1}, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->setPendingSuggestions(Lcom/android/quicksearchbox/Suggestions;)V

    .line 69
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->shouldPublish(Lcom/android/quicksearchbox/Suggestions;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->mDelayedAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->setSuggestions(Lcom/android/quicksearchbox/Suggestions;)V

    .line 64
    invoke-direct {p0, v1}, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->setPendingSuggestions(Lcom/android/quicksearchbox/Suggestions;)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/DelayingSuggestionsAdapter;->setPendingSuggestions(Lcom/android/quicksearchbox/Suggestions;)V

    goto :goto_0
.end method
