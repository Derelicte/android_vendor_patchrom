.class Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$Adapter;
.super Landroid/widget/BaseAdapter;
.source "SuggestionsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$Adapter;->this$0:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$Adapter;->this$0:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;->getPromotedCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$Adapter;->this$0:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;->getPromotedSuggestion(I)Lcom/android/quicksearchbox/SuggestionPosition;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 83
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$Adapter;->this$0:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$Adapter;->this$0:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;

    invoke-virtual {v1}, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;->getCurrentPromotedSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;->getSuggestionViewType(Lcom/android/quicksearchbox/SuggestionCursor;I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$Adapter;->this$0:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$Adapter;->this$0:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;

    invoke-virtual {v1}, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;->getCurrentPromotedSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v1

    int-to-long v3, p1

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;->getView(Lcom/android/quicksearchbox/SuggestionCursor;IJLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$Adapter;->this$0:Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;->getSuggestionViewTypeCount()I

    move-result v0

    return v0
.end method
