.class public abstract Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;
.super Ljava/lang/Object;
.source "SuggestionsAdapterBase.java"

# interfaces
.implements Lcom/android/quicksearchbox/ui/SuggestionsAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase$1;,
        Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase$SuggestionViewClickListener;,
        Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase$MySuggestionsObserver;
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
.field private mClosed:Z

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mMaxPromoted:I

.field private mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mPromotedSuggestions:Lcom/android/quicksearchbox/SuggestionCursor;

.field private mPromoter:Lcom/android/quicksearchbox/Promoter;

.field private mSuggestionClickListener:Lcom/android/quicksearchbox/ui/SuggestionClickListener;

.field private mSuggestions:Lcom/android/quicksearchbox/Suggestions;

.field private final mViewFactory:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

.field private final mViewTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/android/quicksearchbox/ui/SuggestionViewFactory;)V
    .locals 4
    .parameter "viewFactory"

    .prologue
    .line 57
    .local p0, this:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase<TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mClosed:Z

    .line 58
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mViewFactory:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    .line 59
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mViewTypeMap:Ljava/util/HashMap;

    .line 60
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mViewFactory:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    invoke-interface {v2}, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;->getSuggestionViewTypes()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 61
    .local v1, viewType:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mViewTypeMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mViewTypeMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mViewTypeMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 65
    .end local v1           #viewType:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private changePromoted(Lcom/android/quicksearchbox/SuggestionCursor;)V
    .locals 1
    .parameter "newCursor"

    .prologue
    .line 216
    .local p0, this:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase<TA;>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mPromotedSuggestions:Lcom/android/quicksearchbox/SuggestionCursor;

    if-ne p1, v0, :cond_1

    .line 217
    if-eqz p1, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->notifyDataSetChanged()V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mPromotedSuggestions:Lcom/android/quicksearchbox/SuggestionCursor;

    .line 224
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mPromotedSuggestions:Lcom/android/quicksearchbox/SuggestionCursor;

    if-eqz v0, :cond_2

    .line 225
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->notifyDataSetChanged()V

    goto :goto_0

    .line 227
    :cond_2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method private suggestionViewType(Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/String;
    .locals 4
    .parameter "suggestion"

    .prologue
    .line 147
    .local p0, this:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase<TA;>;"
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mViewFactory:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    invoke-interface {v1, p1}, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;->getViewType(Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, viewType:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mViewTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown viewType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getCurrentPromotedSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 1

    .prologue
    .line 194
    .local p0, this:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase<TA;>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mPromotedSuggestions:Lcom/android/quicksearchbox/SuggestionCursor;

    return-object v0
.end method

.method public abstract getListAdapter()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation
.end method

.method protected getPromoted(Lcom/android/quicksearchbox/Suggestions;)Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 2
    .parameter "suggestions"

    .prologue
    .line 201
    .local p0, this:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase<TA;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 202
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mPromoter:Lcom/android/quicksearchbox/Promoter;

    iget v1, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mMaxPromoted:I

    invoke-virtual {p1, v0, v1}, Lcom/android/quicksearchbox/Suggestions;->getPromoted(Lcom/android/quicksearchbox/Promoter;I)Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    goto :goto_0
.end method

.method protected getPromotedCount()I
    .locals 1

    .prologue
    .line 134
    .local p0, this:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase<TA;>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mPromotedSuggestions:Lcom/android/quicksearchbox/SuggestionCursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mPromotedSuggestions:Lcom/android/quicksearchbox/SuggestionCursor;

    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method protected getPromotedSuggestion(I)Lcom/android/quicksearchbox/SuggestionPosition;
    .locals 2
    .parameter "position"

    .prologue
    .line 138
    .local p0, this:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase<TA;>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mPromotedSuggestions:Lcom/android/quicksearchbox/SuggestionCursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/quicksearchbox/SuggestionPosition;

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mPromotedSuggestions:Lcom/android/quicksearchbox/SuggestionCursor;

    invoke-direct {v0, v1, p1}, Lcom/android/quicksearchbox/SuggestionPosition;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    goto :goto_0
.end method

.method public abstract getSuggestion(J)Lcom/android/quicksearchbox/SuggestionPosition;
.end method

.method protected getSuggestionViewType(Lcom/android/quicksearchbox/SuggestionCursor;I)I
    .locals 2
    .parameter "cursor"
    .parameter "position"

    .prologue
    .line 155
    .local p0, this:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase<TA;>;"
    if-nez p1, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0

    .line 158
    :cond_0
    invoke-interface {p1, p2}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 159
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mViewTypeMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->suggestionViewType(Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method protected getSuggestionViewTypeCount()I
    .locals 1

    .prologue
    .line 163
    .local p0, this:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase<TA;>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mViewTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getSuggestions()Lcom/android/quicksearchbox/Suggestions;
    .locals 1

    .prologue
    .line 128
    .local p0, this:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase<TA;>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mSuggestions:Lcom/android/quicksearchbox/Suggestions;

    return-object v0
.end method

.method protected getView(Lcom/android/quicksearchbox/SuggestionCursor;IJLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "suggestions"
    .parameter "position"
    .parameter "suggestionId"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 168
    .local p0, this:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase<TA;>;"
    invoke-interface {p1, p2}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 169
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mViewFactory:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getUserQuery()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3, p5, p6}, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;->getView(Lcom/android/quicksearchbox/SuggestionCursor;Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 170
    .local v1, v:Landroid/view/View;
    instance-of v2, v1, Lcom/android/quicksearchbox/ui/SuggestionView;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 171
    check-cast v2, Lcom/android/quicksearchbox/ui/SuggestionView;

    invoke-interface {v2, p0, p3, p4}, Lcom/android/quicksearchbox/ui/SuggestionView;->bindAdapter(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    .line 177
    :goto_0
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 180
    :cond_0
    return-object v1

    .line 173
    :cond_1
    new-instance v0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase$SuggestionViewClickListener;

    invoke-direct {v0, p0, p3, p4}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase$SuggestionViewClickListener;-><init>(Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;J)V

    .line 174
    .local v0, l:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase$SuggestionViewClickListener;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase<TA;>.SuggestionViewClickListener;"
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 81
    .local p0, this:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase<TA;>;"
    iget-boolean v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mClosed:Z

    return v0
.end method

.method public abstract isEmpty()Z
.end method

.method protected abstract notifyDataSetChanged()V
.end method

.method protected abstract notifyDataSetInvalidated()V
.end method

.method public onSuggestionClicked(J)V
    .locals 2
    .parameter "suggestionId"

    .prologue
    .line 232
    .local p0, this:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase<TA;>;"
    iget-boolean v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mClosed:Z

    if-eqz v0, :cond_1

    .line 233
    const-string v0, "QSB.SuggestionsAdapter"

    const-string v1, "onSuggestionClicked after close"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mSuggestionClickListener:Lcom/android/quicksearchbox/ui/SuggestionClickListener;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mSuggestionClickListener:Lcom/android/quicksearchbox/ui/SuggestionClickListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/quicksearchbox/ui/SuggestionClickListener;->onSuggestionClicked(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    goto :goto_0
.end method

.method public onSuggestionQueryRefineClicked(J)V
    .locals 2
    .parameter "suggestionId"

    .prologue
    .line 256
    .local p0, this:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase<TA;>;"
    iget-boolean v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mClosed:Z

    if-eqz v0, :cond_1

    .line 257
    const-string v0, "QSB.SuggestionsAdapter"

    const-string v1, "onSuggestionQueryRefineClicked after close"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mSuggestionClickListener:Lcom/android/quicksearchbox/ui/SuggestionClickListener;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mSuggestionClickListener:Lcom/android/quicksearchbox/ui/SuggestionClickListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/quicksearchbox/ui/SuggestionClickListener;->onSuggestionQueryRefineClicked(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    goto :goto_0
.end method

.method public onSuggestionQuickContactClicked(J)V
    .locals 2
    .parameter "suggestionId"

    .prologue
    .line 240
    .local p0, this:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase<TA;>;"
    iget-boolean v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mClosed:Z

    if-eqz v0, :cond_1

    .line 241
    const-string v0, "QSB.SuggestionsAdapter"

    const-string v1, "onSuggestionQuickContactClicked after close"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mSuggestionClickListener:Lcom/android/quicksearchbox/ui/SuggestionClickListener;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mSuggestionClickListener:Lcom/android/quicksearchbox/ui/SuggestionClickListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/quicksearchbox/ui/SuggestionClickListener;->onSuggestionQuickContactClicked(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    goto :goto_0
.end method

.method public onSuggestionRemoveFromHistoryClicked(J)V
    .locals 2
    .parameter "suggestionId"

    .prologue
    .line 248
    .local p0, this:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase<TA;>;"
    iget-boolean v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mClosed:Z

    if-eqz v0, :cond_1

    .line 249
    const-string v0, "QSB.SuggestionsAdapter"

    const-string v1, "onSuggestionRemoveFromHistoryClicked after close"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mSuggestionClickListener:Lcom/android/quicksearchbox/ui/SuggestionClickListener;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mSuggestionClickListener:Lcom/android/quicksearchbox/ui/SuggestionClickListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/quicksearchbox/ui/SuggestionClickListener;->onSuggestionRemoveFromHistoryClicked(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    goto :goto_0
.end method

.method protected onSuggestionsChanged()V
    .locals 2

    .prologue
    .line 185
    .local p0, this:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase<TA;>;"
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mSuggestions:Lcom/android/quicksearchbox/Suggestions;

    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->getPromoted(Lcom/android/quicksearchbox/Suggestions;)Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    .line 186
    .local v0, cursor:Lcom/android/quicksearchbox/SuggestionCursor;
    invoke-direct {p0, v0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->changePromoted(Lcom/android/quicksearchbox/SuggestionCursor;)V

    .line 187
    return-void
.end method

.method public setMaxPromoted(I)V
    .locals 0
    .parameter "maxPromoted"

    .prologue
    .line 76
    .local p0, this:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase<TA;>;"
    iput p1, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mMaxPromoted:I

    .line 77
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->onSuggestionsChanged()V

    .line 78
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 99
    .local p0, this:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase<TA;>;"
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 100
    return-void
.end method

.method public setPromoter(Lcom/android/quicksearchbox/Promoter;)V
    .locals 0
    .parameter "promoter"

    .prologue
    .line 90
    .local p0, this:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase<TA;>;"
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mPromoter:Lcom/android/quicksearchbox/Promoter;

    .line 91
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->onSuggestionsChanged()V

    .line 92
    return-void
.end method

.method public setSuggestionClickListener(Lcom/android/quicksearchbox/ui/SuggestionClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 95
    .local p0, this:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase<TA;>;"
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mSuggestionClickListener:Lcom/android/quicksearchbox/ui/SuggestionClickListener;

    .line 96
    return-void
.end method

.method public setSuggestions(Lcom/android/quicksearchbox/Suggestions;)V
    .locals 2
    .parameter "suggestions"

    .prologue
    .line 103
    .local p0, this:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase<TA;>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mSuggestions:Lcom/android/quicksearchbox/Suggestions;

    if-ne v0, p1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mClosed:Z

    if-eqz v0, :cond_2

    .line 107
    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p1}, Lcom/android/quicksearchbox/Suggestions;->release()V

    goto :goto_0

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    .line 113
    new-instance v0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase$MySuggestionsObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase$MySuggestionsObserver;-><init>(Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase$1;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mSuggestions:Lcom/android/quicksearchbox/Suggestions;

    if-eqz v0, :cond_4

    .line 117
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mSuggestions:Lcom/android/quicksearchbox/Suggestions;

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/Suggestions;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 118
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mSuggestions:Lcom/android/quicksearchbox/Suggestions;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/Suggestions;->release()V

    .line 120
    :cond_4
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mSuggestions:Lcom/android/quicksearchbox/Suggestions;

    .line 121
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mSuggestions:Lcom/android/quicksearchbox/Suggestions;

    if-eqz v0, :cond_5

    .line 122
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mSuggestions:Lcom/android/quicksearchbox/Suggestions;

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/Suggestions;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 124
    :cond_5
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->onSuggestionsChanged()V

    goto :goto_0
.end method

.method public abstract willPublishNonPromotedSuggestions()Z
.end method
