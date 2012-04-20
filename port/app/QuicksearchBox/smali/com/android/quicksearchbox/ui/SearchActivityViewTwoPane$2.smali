.class Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$2;
.super Landroid/database/DataSetObserver;
.source "SearchActivityViewTwoPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$2;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane$2;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;

    #getter for: Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->mResultsView:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;
    invoke-static {v0}, Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;->access$100(Lcom/android/quicksearchbox/ui/SearchActivityViewTwoPane;)Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsView;->expandAll()V

    .line 93
    return-void
.end method
