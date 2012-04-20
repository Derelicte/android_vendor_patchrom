.class public Lcom/android/quicksearchbox/ui/DefaultSuggestionViewFactory;
.super Ljava/lang/Object;
.source "DefaultSuggestionViewFactory.java"

# interfaces
.implements Lcom/android/quicksearchbox/ui/SuggestionViewFactory;


# instance fields
.field private final mDefaultFactory:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

.field private final mFactories:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/quicksearchbox/ui/SuggestionViewFactory;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionViewFactory;->mFactories:Ljava/util/LinkedList;

    .line 40
    new-instance v0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$Factory;

    invoke-direct {v0, p1}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$Factory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionViewFactory;->mDefaultFactory:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    .line 41
    new-instance v0, Lcom/android/quicksearchbox/ui/WebSearchSuggestionView$Factory;

    invoke-direct {v0, p1}, Lcom/android/quicksearchbox/ui/WebSearchSuggestionView$Factory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/DefaultSuggestionViewFactory;->addFactory(Lcom/android/quicksearchbox/ui/SuggestionViewFactory;)V

    .line 42
    new-instance v0, Lcom/android/quicksearchbox/ui/ContactSuggestionView$Factory;

    invoke-direct {v0, p1}, Lcom/android/quicksearchbox/ui/ContactSuggestionView$Factory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/DefaultSuggestionViewFactory;->addFactory(Lcom/android/quicksearchbox/ui/SuggestionViewFactory;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected final addFactory(Lcom/android/quicksearchbox/ui/SuggestionViewFactory;)V
    .locals 1
    .parameter "factory"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionViewFactory;->mFactories:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public canCreateView(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 1
    .parameter "suggestion"

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public getSuggestionViewTypes()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionViewFactory;->mViewTypes:Ljava/util/HashSet;

    if-nez v2, :cond_0

    .line 54
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionViewFactory;->mViewTypes:Ljava/util/HashSet;

    .line 55
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionViewFactory;->mViewTypes:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionViewFactory;->mDefaultFactory:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    invoke-interface {v3}, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;->getSuggestionViewTypes()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 56
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionViewFactory;->mFactories:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    .line 57
    .local v0, factory:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionViewFactory;->mViewTypes:Ljava/util/HashSet;

    invoke-interface {v0}, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;->getSuggestionViewTypes()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 60
    .end local v0           #factory:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionViewFactory;->mViewTypes:Ljava/util/HashSet;

    return-object v2
.end method

.method public getView(Lcom/android/quicksearchbox/SuggestionCursor;Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "suggestion"
    .parameter "userQuery"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 65
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionViewFactory;->mFactories:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    .line 66
    .local v0, factory:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;
    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;->canCreateView(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;->getView(Lcom/android/quicksearchbox/SuggestionCursor;Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 70
    .end local v0           #factory:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;
    :goto_0
    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionViewFactory;->mDefaultFactory:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;->getView(Lcom/android/quicksearchbox/SuggestionCursor;Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public getViewType(Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/String;
    .locals 3
    .parameter "suggestion"

    .prologue
    .line 74
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionViewFactory;->mFactories:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    .line 75
    .local v0, factory:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;
    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;->canCreateView(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;->getViewType(Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .end local v0           #factory:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;
    :goto_0
    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionViewFactory;->mDefaultFactory:Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    invoke-interface {v2, p1}, Lcom/android/quicksearchbox/ui/SuggestionViewFactory;->getViewType(Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
