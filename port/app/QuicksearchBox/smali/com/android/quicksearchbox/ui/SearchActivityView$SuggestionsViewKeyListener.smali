.class public Lcom/android/quicksearchbox/ui/SearchActivityView$SuggestionsViewKeyListener;
.super Ljava/lang/Object;
.source "SearchActivityView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/SearchActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SuggestionsViewKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;


# direct methods
.method protected constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V
    .locals 0
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$SuggestionsViewKeyListener;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 520
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/android/quicksearchbox/ui/SuggestionsListView;

    if-eqz v0, :cond_0

    move-object v6, p1

    .line 522
    check-cast v6, Lcom/android/quicksearchbox/ui/SuggestionsListView;

    .line 523
    .local v6, listView:Lcom/android/quicksearchbox/ui/SuggestionsListView;,"Lcom/android/quicksearchbox/ui/SuggestionsListView<*>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$SuggestionsViewKeyListener;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-interface {v6}, Lcom/android/quicksearchbox/ui/SuggestionsListView;->getSuggestionsAdapter()Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    move-result-object v1

    invoke-interface {v6}, Lcom/android/quicksearchbox/ui/SuggestionsListView;->getSelectedItemId()J

    move-result-wide v2

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/quicksearchbox/ui/SearchActivityView;->onSuggestionKeyDown(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;JILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    const/4 v0, 0x1

    .line 528
    .end local v6           #listView:Lcom/android/quicksearchbox/ui/SuggestionsListView;,"Lcom/android/quicksearchbox/ui/SuggestionsListView<*>;"
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$SuggestionsViewKeyListener;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;

    #calls: Lcom/android/quicksearchbox/ui/SearchActivityView;->forwardKeyToQueryTextView(ILandroid/view/KeyEvent;)Z
    invoke-static {v0, p2, p3}, Lcom/android/quicksearchbox/ui/SearchActivityView;->access$1000(Lcom/android/quicksearchbox/ui/SearchActivityView;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
