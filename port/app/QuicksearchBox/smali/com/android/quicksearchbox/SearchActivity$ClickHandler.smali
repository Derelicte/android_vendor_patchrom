.class Lcom/android/quicksearchbox/SearchActivity$ClickHandler;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/android/quicksearchbox/ui/SuggestionClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/SearchActivity;


# direct methods
.method private constructor <init>(Lcom/android/quicksearchbox/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 686
    iput-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$ClickHandler;->this$0:Lcom/android/quicksearchbox/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quicksearchbox/SearchActivity;Lcom/android/quicksearchbox/SearchActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 686
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/SearchActivity$ClickHandler;-><init>(Lcom/android/quicksearchbox/SearchActivity;)V

    return-void
.end method


# virtual methods
.method public onSuggestionClicked(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 1
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter",
            "<*>;J)V"
        }
    .end annotation

    .prologue
    .line 693
    .local p1, adapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapter<*>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity$ClickHandler;->this$0:Lcom/android/quicksearchbox/SearchActivity;

    #calls: Lcom/android/quicksearchbox/SearchActivity;->launchSuggestion(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Z
    invoke-static {v0, p1, p2, p3}, Lcom/android/quicksearchbox/SearchActivity;->access$500(Lcom/android/quicksearchbox/SearchActivity;Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Z

    .line 694
    return-void
.end method

.method public onSuggestionQueryRefineClicked(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 1
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter",
            "<*>;J)V"
        }
    .end annotation

    .prologue
    .line 701
    .local p1, adapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapter<*>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity$ClickHandler;->this$0:Lcom/android/quicksearchbox/SearchActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/quicksearchbox/SearchActivity;->refineSuggestion(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    .line 702
    return-void
.end method

.method public onSuggestionQuickContactClicked(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 1
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter",
            "<*>;J)V"
        }
    .end annotation

    .prologue
    .line 689
    .local p1, adapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapter<*>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity$ClickHandler;->this$0:Lcom/android/quicksearchbox/SearchActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/quicksearchbox/SearchActivity;->clickedQuickContact(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    .line 690
    return-void
.end method

.method public onSuggestionRemoveFromHistoryClicked(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 1
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter",
            "<*>;J)V"
        }
    .end annotation

    .prologue
    .line 697
    .local p1, adapter:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;,"Lcom/android/quicksearchbox/ui/SuggestionsAdapter<*>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity$ClickHandler;->this$0:Lcom/android/quicksearchbox/SearchActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/quicksearchbox/SearchActivity;->removeFromHistoryClicked(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    .line 698
    return-void
.end method
