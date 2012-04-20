.class Lcom/android/quicksearchbox/ui/SearchActivityView$1;
.super Ljava/lang/Object;
.source "SearchActivityView.java"

# interfaces
.implements Lcom/android/quicksearchbox/ui/QueryTextView$CommitCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/ui/SearchActivityView;->setSuggestionClickListener(Lcom/android/quicksearchbox/ui/SuggestionClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$1;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommitCompletion(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$1;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;

    iget-object v0, v0, Lcom/android/quicksearchbox/ui/SearchActivityView;->mSuggestionsAdapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->onSuggestionClicked(J)V

    .line 264
    return-void
.end method
