.class public Lcom/android/quicksearchbox/ui/SuggestionViewInflater;
.super Ljava/lang/Object;
.source "SuggestionViewInflater.java"

# interfaces
.implements Lcom/android/quicksearchbox/ui/SuggestionViewFactory;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLayoutId:I

.field private final mViewClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final mViewType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;ILandroid/content/Context;)V
    .locals 0
    .parameter "viewType"
    .parameter
    .parameter "layoutId"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/quicksearchbox/ui/SuggestionView;",
            ">;I",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, viewClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/quicksearchbox/ui/SuggestionView;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SuggestionViewInflater;->mViewType:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/android/quicksearchbox/ui/SuggestionViewInflater;->mViewClass:Ljava/lang/Class;

    .line 50
    iput p3, p0, Lcom/android/quicksearchbox/ui/SuggestionViewInflater;->mLayoutId:I

    .line 51
    iput-object p4, p0, Lcom/android/quicksearchbox/ui/SuggestionViewInflater;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method


# virtual methods
.method public canCreateView(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 1
    .parameter "suggestion"

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method protected getInflater()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionViewInflater;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getSuggestionViewTypes()Ljava/util/Collection;
    .locals 1
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
    .line 59
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionViewInflater;->mViewType:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getView(Lcom/android/quicksearchbox/SuggestionCursor;Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "suggestion"
    .parameter "userQuery"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 64
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quicksearchbox/ui/SuggestionViewInflater;->mViewClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    :cond_0
    iget v0, p0, Lcom/android/quicksearchbox/ui/SuggestionViewInflater;->mLayoutId:I

    .line 66
    .local v0, layoutId:I
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SuggestionViewInflater;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 68
    .end local v0           #layoutId:I
    :cond_1
    instance-of v1, p3, Lcom/android/quicksearchbox/ui/SuggestionView;

    if-nez v1, :cond_2

    .line 69
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a SuggestionView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object v1, p3

    .line 71
    check-cast v1, Lcom/android/quicksearchbox/ui/SuggestionView;

    invoke-interface {v1, p1, p2}, Lcom/android/quicksearchbox/ui/SuggestionView;->bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V

    .line 72
    return-object p3
.end method

.method public getViewType(Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/String;
    .locals 1
    .parameter "suggestion"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SuggestionViewInflater;->mViewType:Ljava/lang/String;

    return-object v0
.end method
