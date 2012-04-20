.class Lcom/android/inputmethod/latin/SuggestionsView$2;
.super Lcom/android/inputmethod/keyboard/KeyboardActionListener$Adapter;
.source "SuggestionsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/SuggestionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/SuggestionsView;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/SuggestionsView;)V
    .locals 0
    .parameter

    .prologue
    .line 709
    iput-object p1, p0, Lcom/android/inputmethod/latin/SuggestionsView$2;->this$0:Lcom/android/inputmethod/latin/SuggestionsView;

    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardActionListener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelInput()V
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView$2;->this$0:Lcom/android/inputmethod/latin/SuggestionsView;

    #calls: Lcom/android/inputmethod/latin/SuggestionsView;->dismissMoreSuggestions()Z
    invoke-static {v0}, Lcom/android/inputmethod/latin/SuggestionsView;->access$1000(Lcom/android/inputmethod/latin/SuggestionsView;)Z

    .line 722
    return-void
.end method

.method public onCustomRequest(I)Z
    .locals 3
    .parameter "requestCode"

    .prologue
    .line 712
    move v0, p1

    .line 713
    .local v0, index:I
    iget-object v2, p0, Lcom/android/inputmethod/latin/SuggestionsView$2;->this$0:Lcom/android/inputmethod/latin/SuggestionsView;

    #getter for: Lcom/android/inputmethod/latin/SuggestionsView;->mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;
    invoke-static {v2}, Lcom/android/inputmethod/latin/SuggestionsView;->access$800(Lcom/android/inputmethod/latin/SuggestionsView;)Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 714
    .local v1, word:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/inputmethod/latin/SuggestionsView$2;->this$0:Lcom/android/inputmethod/latin/SuggestionsView;

    #getter for: Lcom/android/inputmethod/latin/SuggestionsView;->mListener:Lcom/android/inputmethod/latin/SuggestionsView$Listener;
    invoke-static {v2}, Lcom/android/inputmethod/latin/SuggestionsView;->access$900(Lcom/android/inputmethod/latin/SuggestionsView;)Lcom/android/inputmethod/latin/SuggestionsView$Listener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/android/inputmethod/latin/SuggestionsView$Listener;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    .line 715
    iget-object v2, p0, Lcom/android/inputmethod/latin/SuggestionsView$2;->this$0:Lcom/android/inputmethod/latin/SuggestionsView;

    #calls: Lcom/android/inputmethod/latin/SuggestionsView;->dismissMoreSuggestions()Z
    invoke-static {v2}, Lcom/android/inputmethod/latin/SuggestionsView;->access$1000(Lcom/android/inputmethod/latin/SuggestionsView;)Z

    .line 716
    const/4 v2, 0x1

    return v2
.end method
