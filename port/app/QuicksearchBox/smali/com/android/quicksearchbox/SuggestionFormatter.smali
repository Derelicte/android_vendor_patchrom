.class public abstract Lcom/android/quicksearchbox/SuggestionFormatter;
.super Ljava/lang/Object;
.source "SuggestionFormatter.java"


# instance fields
.field private final mSpanFactory:Lcom/android/quicksearchbox/TextAppearanceFactory;


# direct methods
.method protected constructor <init>(Lcom/android/quicksearchbox/TextAppearanceFactory;)V
    .locals 0
    .parameter "spanFactory"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/quicksearchbox/SuggestionFormatter;->mSpanFactory:Lcom/android/quicksearchbox/TextAppearanceFactory;

    .line 31
    return-void
.end method

.method private setSpans(Landroid/text/Spannable;II[Ljava/lang/Object;)V
    .locals 5
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "spans"

    .prologue
    .line 53
    move-object v0, p4

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 54
    .local v3, span:Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-interface {p1, v3, p2, p3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    .end local v3           #span:Ljava/lang/Object;
    :cond_0
    return-void
.end method


# virtual methods
.method protected applyQueryTextStyle(Landroid/text/Spannable;II)V
    .locals 1
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 43
    if-ne p2, p3, :cond_0

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionFormatter;->mSpanFactory:Lcom/android/quicksearchbox/TextAppearanceFactory;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/TextAppearanceFactory;->createSuggestionQueryTextAppearance()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/quicksearchbox/SuggestionFormatter;->setSpans(Landroid/text/Spannable;II[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected applySuggestedTextStyle(Landroid/text/Spannable;II)V
    .locals 1
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 48
    if-ne p2, p3, :cond_0

    .line 50
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionFormatter;->mSpanFactory:Lcom/android/quicksearchbox/TextAppearanceFactory;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/TextAppearanceFactory;->createSuggestionSuggestedTextAppearance()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/quicksearchbox/SuggestionFormatter;->setSpans(Landroid/text/Spannable;II[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public abstract formatSuggestion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
.end method
