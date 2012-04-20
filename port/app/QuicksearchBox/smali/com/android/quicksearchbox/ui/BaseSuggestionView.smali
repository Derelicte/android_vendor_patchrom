.class public abstract Lcom/android/quicksearchbox/ui/BaseSuggestionView;
.super Landroid/widget/RelativeLayout;
.source "BaseSuggestionView.java"

# interfaces
.implements Lcom/android/quicksearchbox/ui/SuggestionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/ui/BaseSuggestionView$1;,
        Lcom/android/quicksearchbox/ui/BaseSuggestionView$LongClickListener;,
        Lcom/android/quicksearchbox/ui/BaseSuggestionView$ClickListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter",
            "<*>;"
        }
    .end annotation
.end field

.field protected mIcon1:Landroid/widget/ImageView;

.field protected mIcon2:Landroid/widget/ImageView;

.field private mSuggestionId:J

.field protected mText1:Landroid/widget/TextView;

.field protected mText2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method


# virtual methods
.method public bindAdapter(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 0
    .parameter
    .parameter "suggestionId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter",
            "<*>;J)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, adapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapter<*>;"
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->mAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    .line 76
    iput-wide p2, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->mSuggestionId:J

    .line 77
    return-void
.end method

.method public bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V
    .locals 2
    .parameter "suggestion"
    .parameter "userQuery"

    .prologue
    const/4 v1, 0x0

    .line 64
    new-instance v0, Lcom/android/quicksearchbox/ui/BaseSuggestionView$ClickListener;

    invoke-direct {v0, p0, v1}, Lcom/android/quicksearchbox/ui/BaseSuggestionView$ClickListener;-><init>(Lcom/android/quicksearchbox/ui/BaseSuggestionView;Lcom/android/quicksearchbox/ui/BaseSuggestionView$1;)V

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->isFromHistory(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->setLongClickable(Z)V

    .line 67
    new-instance v0, Lcom/android/quicksearchbox/ui/BaseSuggestionView$LongClickListener;

    invoke-direct {v0, p0, v1}, Lcom/android/quicksearchbox/ui/BaseSuggestionView$LongClickListener;-><init>(Lcom/android/quicksearchbox/ui/BaseSuggestionView;Lcom/android/quicksearchbox/ui/BaseSuggestionView$1;)V

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->setLongClickable(Z)V

    .line 70
    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method

.method protected isFromHistory(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 1
    .parameter "suggestion"

    .prologue
    .line 80
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->isSuggestionShortcut()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->isHistorySuggestion()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 57
    const v0, 0x7f0f0004

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->mText1:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f0f0003

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->mText2:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0f0001

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->mIcon1:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f0f0002

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->mIcon2:Landroid/widget/ImageView;

    .line 61
    return-void
.end method

.method protected onRemoveFromHistoryClicked()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->mAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->mAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    iget-wide v1, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->mSuggestionId:J

    invoke-interface {v0, v1, v2}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->onSuggestionRemoveFromHistoryClicked(J)V

    .line 118
    :cond_0
    return-void
.end method

.method protected onSuggestionClicked()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->mAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->mAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    iget-wide v1, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->mSuggestionId:J

    invoke-interface {v0, v1, v2}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->onSuggestionClicked(J)V

    .line 106
    :cond_0
    return-void
.end method

.method protected onSuggestionQueryRefineClicked()V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->mAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->mAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    iget-wide v1, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->mSuggestionId:J

    invoke-interface {v0, v1, v2}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->onSuggestionQueryRefineClicked(J)V

    .line 124
    :cond_0
    return-void
.end method

.method protected onSuggestionQuickContactClicked()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->mAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->mAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    iget-wide v1, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->mSuggestionId:J

    invoke-interface {v0, v1, v2}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->onSuggestionQuickContactClicked(J)V

    .line 112
    :cond_0
    return-void
.end method

.method protected setText1(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->mText1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method

.method protected setText2(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->mText2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->mText2:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->mText2:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
