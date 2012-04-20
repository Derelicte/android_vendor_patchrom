.class Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ClusteredSuggestionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field private mCorpusGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/quicksearchbox/SuggestionCursor;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;


# direct methods
.method private constructor <init>(Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->this$0:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;-><init>(Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;)V

    return-void
.end method

.method private corpusGroupCount()I
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->mCorpusGroups:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->mCorpusGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method private promotedCount()I
    .locals 2

    .prologue
    .line 204
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->this$0:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;

    invoke-virtual {v1}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;->getCurrentPromotedSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    .line 205
    .local v0, promoted:Lcom/android/quicksearchbox/SuggestionCursor;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v1

    goto :goto_0
.end method

.method private promotedGroupCount()I
    .locals 1

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->promotedCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public buildCorpusGroups()V
    .locals 8

    .prologue
    .line 96
    iget-object v7, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->this$0:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;

    invoke-virtual {v7}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;->getSuggestions()Lcom/android/quicksearchbox/Suggestions;

    move-result-object v6

    .line 97
    .local v6, suggestions:Lcom/android/quicksearchbox/Suggestions;
    iget-object v7, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->this$0:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;

    invoke-virtual {v7}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;->getCurrentPromotedSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v3

    .line 98
    .local v3, promoted:Lcom/android/quicksearchbox/SuggestionCursor;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 99
    .local v4, promotedSuggestions:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v7

    if-lez v7, :cond_1

    .line 100
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 102
    :cond_0
    invoke-static {v3}, Lcom/android/quicksearchbox/SuggestionUtils;->getSuggestionKey(Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-interface {v3}, Lcom/android/quicksearchbox/SuggestionCursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 105
    :cond_1
    if-nez v6, :cond_3

    .line 106
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->mCorpusGroups:Ljava/util/ArrayList;

    .line 130
    :cond_2
    return-void

    .line 108
    :cond_3
    iget-object v7, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->mCorpusGroups:Ljava/util/ArrayList;

    if-nez v7, :cond_6

    .line 109
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->mCorpusGroups:Ljava/util/ArrayList;

    .line 113
    :goto_0
    invoke-virtual {v6}, Lcom/android/quicksearchbox/Suggestions;->getCorpusResults()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/quicksearchbox/CorpusResult;

    .line 114
    .local v5, result:Lcom/android/quicksearchbox/CorpusResult;
    new-instance v0, Lcom/android/quicksearchbox/ListSuggestionCursor;

    invoke-interface {v5}, Lcom/android/quicksearchbox/CorpusResult;->getUserQuery()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/android/quicksearchbox/ListSuggestionCursor;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, corpusSuggestions:Lcom/android/quicksearchbox/ListSuggestionCursor;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-interface {v5}, Lcom/android/quicksearchbox/CorpusResult;->getCount()I

    move-result v7

    if-ge v1, v7, :cond_7

    .line 117
    invoke-interface {v5, v1}, Lcom/android/quicksearchbox/CorpusResult;->moveTo(I)V

    .line 118
    invoke-interface {v5}, Lcom/android/quicksearchbox/CorpusResult;->isWebSearchSuggestion()Z

    move-result v7

    if-nez v7, :cond_5

    .line 119
    invoke-static {v5}, Lcom/android/quicksearchbox/SuggestionUtils;->getSuggestionKey(Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 121
    new-instance v7, Lcom/android/quicksearchbox/SuggestionPosition;

    invoke-direct {v7, v5, v1}, Lcom/android/quicksearchbox/SuggestionPosition;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    invoke-virtual {v0, v7}, Lcom/android/quicksearchbox/ListSuggestionCursor;->add(Lcom/android/quicksearchbox/Suggestion;)Z

    .line 116
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 111
    .end local v0           #corpusSuggestions:Lcom/android/quicksearchbox/ListSuggestionCursor;
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #result:Lcom/android/quicksearchbox/CorpusResult;
    :cond_6
    iget-object v7, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->mCorpusGroups:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 125
    .restart local v0       #corpusSuggestions:Lcom/android/quicksearchbox/ListSuggestionCursor;
    .restart local v1       #i:I
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v5       #result:Lcom/android/quicksearchbox/CorpusResult;
    :cond_7
    invoke-virtual {v0}, Lcom/android/quicksearchbox/ListSuggestionCursor;->getCount()I

    move-result v7

    if-lez v7, :cond_4

    .line 126
    iget-object v7, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->mCorpusGroups:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getChild(II)Lcom/android/quicksearchbox/Suggestion;
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->getGroup(I)Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    .line 155
    .local v0, c:Lcom/android/quicksearchbox/SuggestionCursor;
    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0, p2}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 157
    new-instance v1, Lcom/android/quicksearchbox/SuggestionPosition;

    invoke-direct {v1, v0, p2}, Lcom/android/quicksearchbox/SuggestionPosition;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    .line 159
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->getChild(II)Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    return-object v0
.end method

.method public getChildById(J)Lcom/android/quicksearchbox/SuggestionPosition;
    .locals 4
    .parameter "childId"

    .prologue
    .line 163
    invoke-virtual {p0, p1, p2}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->getGroupPosition(J)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->getGroup(I)Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    .line 164
    .local v0, groupCursor:Lcom/android/quicksearchbox/SuggestionCursor;
    if-eqz v0, :cond_0

    .line 165
    new-instance v1, Lcom/android/quicksearchbox/SuggestionPosition;

    invoke-virtual {p0, p1, p2}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->getChildPosition(J)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/android/quicksearchbox/SuggestionPosition;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    .line 168
    :goto_0
    return-object v1

    .line 167
    :cond_0
    const-string v1, "QSB.ClusteredSuggestionsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid childId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (invalid group)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 174
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildPosition(J)I
    .locals 2
    .parameter "childId"

    .prologue
    .line 145
    const-wide/16 v0, -0x1

    and-long/2addr v0, p1

    long-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getChildType(II)I
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->this$0:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;

    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->getGroup(I)Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;->getSuggestionViewType(Lcom/android/quicksearchbox/SuggestionCursor;I)I

    move-result v0

    return v0
.end method

.method public getChildTypeCount()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->this$0:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;->getSuggestionViewTypeCount()I

    move-result v0

    return v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->getGroup(I)Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v1

    .line 181
    .local v1, cursor:Lcom/android/quicksearchbox/SuggestionCursor;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 182
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->this$0:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;

    int-to-long v2, p1

    int-to-long v4, p2

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->getCombinedChildId(JJ)J

    move-result-wide v3

    move v2, p2

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;->getView(Lcom/android/quicksearchbox/SuggestionCursor;IJLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->getGroup(I)Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    .line 189
    .local v0, group:Lcom/android/quicksearchbox/SuggestionCursor;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v1

    goto :goto_0
.end method

.method public getCombinedChildId(JJ)J
    .locals 6
    .parameter "groupId"
    .parameter "childId"

    .prologue
    .line 136
    const/16 v0, 0x20

    shl-long v0, p1, v0

    const-wide/16 v2, 0x1

    add-long/2addr v2, p3

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public getCombinedGroupId(J)J
    .locals 2
    .parameter "groupId"

    .prologue
    .line 141
    const/16 v0, 0x20

    shl-long v0, p1, v0

    return-wide v0
.end method

.method public getGroup(I)Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->promotedGroupCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->this$0:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;

    invoke-virtual {v1}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;->getCurrentPromotedSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v1

    .line 199
    :goto_0
    return-object v1

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->promotedGroupCount()I

    move-result v1

    sub-int v0, p1, v1

    .line 198
    .local v0, pos:I
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->mCorpusGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 199
    :cond_2
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->mCorpusGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/SuggestionCursor;

    goto :goto_0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->getGroup(I)Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 2

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->promotedGroupCount()I

    move-result v0

    invoke-direct {p0}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->corpusGroupCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 223
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupPosition(J)I
    .locals 4
    .parameter "childId"

    .prologue
    .line 149
    const/16 v0, 0x20

    shr-long v0, p1, v0

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 229
    if-nez p3, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->this$0:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;

    #getter for: Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v0}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;->access$100(Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040009

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 232
    :cond_0
    if-nez p1, :cond_1

    .line 235
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 241
    :goto_0
    invoke-virtual {p3}, Landroid/view/View;->requestLayout()V

    .line 242
    return-object p3

    .line 237
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter$Adapter;->this$0:Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;

    #getter for: Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;->access$200(Lcom/android/quicksearchbox/ui/ClusteredSuggestionsAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 252
    const/4 v0, 0x1

    return v0
.end method
