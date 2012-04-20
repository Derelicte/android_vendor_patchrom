.class Lcom/android/quicksearchbox/ui/SearchActivityView$SearchTextWatcher;
.super Ljava/lang/Object;
.source "SearchActivityView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/SearchActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;


# direct methods
.method private constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V
    .locals 0
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$SearchTextWatcher;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityView;Lcom/android/quicksearchbox/ui/SearchActivityView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 494
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView$SearchTextWatcher;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 496
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 497
    .local v0, empty:Z
    :goto_0
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$SearchTextWatcher;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;

    iget-boolean v1, v1, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryWasEmpty:Z

    if-eq v0, v1, :cond_0

    .line 498
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$SearchTextWatcher;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;

    iput-boolean v0, v1, Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryWasEmpty:Z

    .line 499
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$SearchTextWatcher;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v1, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->updateUi(Z)V

    .line 501
    :cond_0
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$SearchTextWatcher;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;

    #getter for: Lcom/android/quicksearchbox/ui/SearchActivityView;->mUpdateSuggestions:Z
    invoke-static {v1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->access$800(Lcom/android/quicksearchbox/ui/SearchActivityView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 502
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$SearchTextWatcher;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;

    #getter for: Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryListener:Lcom/android/quicksearchbox/ui/SearchActivityView$QueryListener;
    invoke-static {v1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->access$900(Lcom/android/quicksearchbox/ui/SearchActivityView;)Lcom/android/quicksearchbox/ui/SearchActivityView$QueryListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 503
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$SearchTextWatcher;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;

    #getter for: Lcom/android/quicksearchbox/ui/SearchActivityView;->mQueryListener:Lcom/android/quicksearchbox/ui/SearchActivityView$QueryListener;
    invoke-static {v1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->access$900(Lcom/android/quicksearchbox/ui/SearchActivityView;)Lcom/android/quicksearchbox/ui/SearchActivityView$QueryListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/quicksearchbox/ui/SearchActivityView$QueryListener;->onQueryChanged()V

    .line 506
    :cond_1
    return-void

    .line 496
    .end local v0           #empty:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 509
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 512
    return-void
.end method
