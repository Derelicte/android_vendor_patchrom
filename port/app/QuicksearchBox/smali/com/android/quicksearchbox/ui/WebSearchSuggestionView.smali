.class public Lcom/android/quicksearchbox/ui/WebSearchSuggestionView;
.super Lcom/android/quicksearchbox/ui/BaseSuggestionView;
.source "WebSearchSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/ui/WebSearchSuggestionView$Factory;,
        Lcom/android/quicksearchbox/ui/WebSearchSuggestionView$KeyListener;
    }
.end annotation


# instance fields
.field private final mSuggestionFormatter:Lcom/android/quicksearchbox/SuggestionFormatter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-static {p1}, Lcom/android/quicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/QsbApplication;->getSuggestionFormatter()Lcom/android/quicksearchbox/SuggestionFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/WebSearchSuggestionView;->mSuggestionFormatter:Lcom/android/quicksearchbox/SuggestionFormatter;

    .line 41
    return-void
.end method

.method private setIsHistorySuggestion(Z)V
    .locals 2
    .parameter "isHistory"

    .prologue
    .line 68
    if-eqz p1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/WebSearchSuggestionView;->mIcon1:Landroid/widget/ImageView;

    const v1, 0x7f020033

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/WebSearchSuggestionView;->mIcon1:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/WebSearchSuggestionView;->mIcon1:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V
    .locals 3
    .parameter "suggestion"
    .parameter "userQuery"

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/WebSearchSuggestionView;->mSuggestionFormatter:Lcom/android/quicksearchbox/SuggestionFormatter;

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/android/quicksearchbox/SuggestionFormatter;->formatSuggestion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 63
    .local v0, text1:Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/WebSearchSuggestionView;->setText1(Ljava/lang/CharSequence;)V

    .line 64
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->isHistorySuggestion()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/quicksearchbox/ui/WebSearchSuggestionView;->setIsHistorySuggestion(Z)V

    .line 65
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 45
    invoke-super {p0}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->onFinishInflate()V

    .line 46
    new-instance v0, Lcom/android/quicksearchbox/ui/WebSearchSuggestionView$KeyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/quicksearchbox/ui/WebSearchSuggestionView$KeyListener;-><init>(Lcom/android/quicksearchbox/ui/WebSearchSuggestionView;Lcom/android/quicksearchbox/ui/WebSearchSuggestionView$1;)V

    .line 47
    .local v0, keyListener:Lcom/android/quicksearchbox/ui/WebSearchSuggestionView$KeyListener;
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/WebSearchSuggestionView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 48
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/WebSearchSuggestionView;->mIcon2:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 49
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/WebSearchSuggestionView;->mIcon2:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/quicksearchbox/ui/WebSearchSuggestionView$1;

    invoke-direct {v2, p0}, Lcom/android/quicksearchbox/ui/WebSearchSuggestionView$1;-><init>(Lcom/android/quicksearchbox/ui/WebSearchSuggestionView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/WebSearchSuggestionView;->mIcon2:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 55
    return-void
.end method
