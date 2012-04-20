.class public Lcom/android/quicksearchbox/ui/SuggestionsView;
.super Landroid/widget/ListView;
.source "SuggestionsView.java"

# interfaces
.implements Lcom/android/quicksearchbox/ui/SuggestionsListView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ListView;",
        "Lcom/android/quicksearchbox/ui/SuggestionsListView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mLimitSuggestionsToViewHeight:Z

.field private mSuggestionsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter",
            "<",
            "Landroid/widget/ListAdapter;",
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
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method private setMaxPromotedByHeight()V
    .locals 6

    .prologue
    .line 96
    iget-object v3, p0, Lcom/android/quicksearchbox/ui/SuggestionsView;->mSuggestionsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    if-eqz v3, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SuggestionsView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SuggestionsView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v0, v3

    .line 108
    .local v0, maxHeight:F
    :goto_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SuggestionsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 110
    .local v1, suggestionHeight:F
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_0

    .line 111
    const/4 v3, 0x1

    div-float v4, v0, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 116
    .local v2, suggestions:I
    iget-object v3, p0, Lcom/android/quicksearchbox/ui/SuggestionsView;->mSuggestionsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v3, v2}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->setMaxPromoted(I)V

    .line 119
    .end local v0           #maxHeight:F
    .end local v1           #suggestionHeight:F
    .end local v2           #suggestions:I
    :cond_0
    return-void

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SuggestionsView;->getHeight()I

    move-result v3

    int-to-float v0, v3

    .restart local v0       #maxHeight:F
    goto :goto_0
.end method


# virtual methods
.method public getSuggestionsAdapter()Lcom/android/quicksearchbox/ui/SuggestionsAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter",
            "<",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsView;->mSuggestionsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Landroid/widget/ListView;->onFinishInflate()V

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/SuggestionsView;->setItemsCanFocus(Z)V

    .line 61
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsView;->mLimitSuggestionsToViewHeight:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/android/quicksearchbox/ui/SuggestionsView;->setMaxPromotedByHeight()V

    .line 93
    :cond_0
    return-void
.end method

.method public setLimitSuggestionsToViewHeight(Z)V
    .locals 1
    .parameter "limit"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/quicksearchbox/ui/SuggestionsView;->mLimitSuggestionsToViewHeight:Z

    .line 83
    iget-boolean v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsView;->mLimitSuggestionsToViewHeight:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/android/quicksearchbox/ui/SuggestionsView;->setMaxPromotedByHeight()V

    .line 86
    :cond_0
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
            "Landroid/widget/ListAdapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, adapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapter<Landroid/widget/ListAdapter;>;"
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SuggestionsView;->mSuggestionsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    .line 48
    iget-boolean v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsView;->mLimitSuggestionsToViewHeight:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/android/quicksearchbox/ui/SuggestionsView;->setMaxPromotedByHeight()V

    .line 51
    :cond_0
    return-void

    .line 46
    :cond_1
    invoke-interface {p1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->getListAdapter()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    goto :goto_0
.end method
