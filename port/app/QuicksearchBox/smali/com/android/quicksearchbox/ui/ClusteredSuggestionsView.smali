.class public Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;
.super Landroid/widget/ExpandableListView;
.source "ClusteredSuggestionsView.java"

# interfaces
.implements Lcom/android/quicksearchbox/ui/SuggestionsListView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ExpandableListView;",
        "Lcom/android/quicksearchbox/ui/SuggestionsListView",
        "<",
        "Landroid/widget/ExpandableListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field mSuggestionsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter",
            "<",
            "Landroid/widget/ExpandableListAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method


# virtual methods
.method public expandAll()V
    .locals 3

    .prologue
    .line 62
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;->mSuggestionsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    if-eqz v2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;->mSuggestionsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v2}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->getListAdapter()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListAdapter;

    .line 64
    .local v0, adapter:Landroid/widget/ExpandableListAdapter;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 65
    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;->expandGroup(I)Z

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v0           #adapter:Landroid/widget/ExpandableListAdapter;
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method public getSuggestionsAdapter()Lcom/android/quicksearchbox/ui/SuggestionsAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter",
            "<",
            "Landroid/widget/ExpandableListAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;->mSuggestionsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/widget/ExpandableListView;->onFinishInflate()V

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;->setItemsCanFocus(Z)V

    .line 53
    new-instance v0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView$1;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView$1;-><init>(Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;)V

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 59
    return-void
.end method

.method public setLimitSuggestionsToViewHeight(Z)V
    .locals 0
    .parameter "limit"

    .prologue
    .line 47
    return-void
.end method

.method public setSuggestionsAdapter(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter",
            "<",
            "Landroid/widget/ExpandableListAdapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, adapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapter<Landroid/widget/ExpandableListAdapter;>;"
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;->mSuggestionsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    .line 38
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 39
    return-void

    .line 38
    :cond_0
    invoke-interface {p1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->getListAdapter()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListAdapter;

    goto :goto_0
.end method
