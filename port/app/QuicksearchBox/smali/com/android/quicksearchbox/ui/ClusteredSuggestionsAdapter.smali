.class public Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;
.super Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;
.source "ClusteredSuggestionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$1;,
        Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase",
        "<",
        "Landroid/widget/ExpandableListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ui/SuggestionViewFactory;Landroid/content/Context;)V
    .locals 2
    .parameter "viewFactory"
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;-><init>(Lcom/android/quicksearchbox/ui/SuggestionViewFactory;)V

    .line 54
    new-instance v0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;-><init>(Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$1;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;->mAdapter:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;

    .line 55
    iput-object p2, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;->mContext:Landroid/content/Context;

    .line 56
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 57
    return-void
.end method

.method static synthetic access$100(Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;->mAdapter:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;

    return-object v0
.end method

.method public bridge synthetic getListAdapter()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;->getListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestion(J)Lcom/android/quicksearchbox/SuggestionPosition;
    .locals 1
    .parameter "suggestionId"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;->mAdapter:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->getChildById(J)Lcom/android/quicksearchbox/SuggestionPosition;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;->mAdapter:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->getGroupCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;->mAdapter:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->buildCorpusGroups()V

    .line 82
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;->mAdapter:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->notifyDataSetChanged()V

    .line 83
    return-void
.end method

.method protected notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;->mAdapter:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->buildCorpusGroups()V

    .line 88
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;->mAdapter:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->notifyDataSetInvalidated()V

    .line 89
    return-void
.end method

.method public willPublishNonPromotedSuggestions()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method
