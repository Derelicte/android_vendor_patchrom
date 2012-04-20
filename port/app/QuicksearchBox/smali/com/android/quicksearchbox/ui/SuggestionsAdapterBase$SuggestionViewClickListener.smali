.class Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase$SuggestionViewClickListener;
.super Ljava/lang/Object;
.source "SuggestionsAdapterBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionViewClickListener"
.end annotation


# instance fields
.field private final mSuggestionId:J

.field final synthetic this$0:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;J)V
    .locals 0
    .parameter
    .parameter "suggestionId"

    .prologue
    .line 278
    .local p0, this:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase$SuggestionViewClickListener;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase<TA;>.SuggestionViewClickListener;"
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase$SuggestionViewClickListener;->this$0:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-wide p2, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase$SuggestionViewClickListener;->mSuggestionId:J

    .line 280
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 282
    .local p0, this:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase$SuggestionViewClickListener;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase<TA;>.SuggestionViewClickListener;"
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase$SuggestionViewClickListener;->this$0:Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;

    iget-wide v1, p0, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase$SuggestionViewClickListener;->mSuggestionId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/quicksearchbox/ui/SuggestionsAdapterBase;->onSuggestionClicked(J)V

    .line 283
    return-void
.end method
