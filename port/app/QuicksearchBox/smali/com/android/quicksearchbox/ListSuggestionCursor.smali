.class public Lcom/android/quicksearchbox/ListSuggestionCursor;
.super Lcom/android/quicksearchbox/AbstractSuggestionCursorWrapper;
.source "ListSuggestionCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/ListSuggestionCursor$Entry;
    }
.end annotation


# instance fields
.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field private mExtraColumns:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPos:I

.field private final mSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/quicksearchbox/ListSuggestionCursor$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "userQuery"

    .prologue
    .line 44
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/android/quicksearchbox/ListSuggestionCursor;-><init>(Ljava/lang/String;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "userQuery"
    .parameter "capacity"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/AbstractSuggestionCursorWrapper;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/android/quicksearchbox/ListSuggestionCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quicksearchbox/ListSuggestionCursor;->mPos:I

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/quicksearchbox/ListSuggestionCursor;->mSuggestions:Ljava/util/ArrayList;

    .line 58
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lcom/android/quicksearchbox/Suggestion;)V
    .locals 5
    .parameter "userQuery"
    .parameter "suggestions"

    .prologue
    .line 49
    array-length v4, p2

    invoke-direct {p0, p1, v4}, Lcom/android/quicksearchbox/ListSuggestionCursor;-><init>(Ljava/lang/String;I)V

    .line 50
    move-object v0, p2

    .local v0, arr$:[Lcom/android/quicksearchbox/Suggestion;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 51
    .local v3, suggestion:Lcom/android/quicksearchbox/Suggestion;
    invoke-virtual {p0, v3}, Lcom/android/quicksearchbox/ListSuggestionCursor;->add(Lcom/android/quicksearchbox/Suggestion;)Z

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v3           #suggestion:Lcom/android/quicksearchbox/Suggestion;
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 2
    .parameter "suggestion"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/quicksearchbox/ListSuggestionCursor;->mSuggestions:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/quicksearchbox/ListSuggestionCursor$Entry;

    invoke-direct {v1, p1}, Lcom/android/quicksearchbox/ListSuggestionCursor$Entry;-><init>(Lcom/android/quicksearchbox/Suggestion;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/quicksearchbox/ListSuggestionCursor;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 72
    return-void
.end method

.method protected current()Lcom/android/quicksearchbox/Suggestion;
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/quicksearchbox/ListSuggestionCursor;->mSuggestions:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/quicksearchbox/ListSuggestionCursor;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/ListSuggestionCursor$Entry;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ListSuggestionCursor$Entry;->get()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/quicksearchbox/ListSuggestionCursor;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getExtraColumns()Ljava/util/Collection;
    .locals 8
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
    const/4 v6, 0x0

    .line 144
    iget-object v7, p0, Lcom/android/quicksearchbox/ListSuggestionCursor;->mExtraColumns:Ljava/util/HashSet;

    if-nez v7, :cond_2

    .line 145
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lcom/android/quicksearchbox/ListSuggestionCursor;->mExtraColumns:Ljava/util/HashSet;

    .line 146
    iget-object v7, p0, Lcom/android/quicksearchbox/ListSuggestionCursor;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/ListSuggestionCursor$Entry;

    .line 147
    .local v1, e:Lcom/android/quicksearchbox/ListSuggestionCursor$Entry;
    invoke-virtual {v1}, Lcom/android/quicksearchbox/ListSuggestionCursor$Entry;->getExtras()Lcom/android/quicksearchbox/SuggestionExtras;

    move-result-object v3

    .line 148
    .local v3, extras:Lcom/android/quicksearchbox/SuggestionExtras;
    if-nez v3, :cond_1

    move-object v2, v6

    .line 150
    .local v2, extraColumns:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_0
    if-eqz v2, :cond_0

    .line 151
    invoke-interface {v3}, Lcom/android/quicksearchbox/SuggestionExtras;->getExtraColumnNames()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 152
    .local v0, column:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/quicksearchbox/ListSuggestionCursor;->mExtraColumns:Ljava/util/HashSet;

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 148
    .end local v0           #column:Ljava/lang/String;
    .end local v2           #extraColumns:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Lcom/android/quicksearchbox/SuggestionExtras;->getExtraColumnNames()Ljava/util/Collection;

    move-result-object v2

    goto :goto_0

    .line 157
    .end local v1           #e:Lcom/android/quicksearchbox/ListSuggestionCursor$Entry;
    .end local v3           #extras:Lcom/android/quicksearchbox/SuggestionExtras;
    :cond_2
    iget-object v7, p0, Lcom/android/quicksearchbox/ListSuggestionCursor;->mExtraColumns:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_2
    return-object v6

    :cond_3
    iget-object v6, p0, Lcom/android/quicksearchbox/ListSuggestionCursor;->mExtraColumns:Ljava/util/HashSet;

    goto :goto_2
.end method

.method public getExtras()Lcom/android/quicksearchbox/SuggestionExtras;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/quicksearchbox/ListSuggestionCursor;->mSuggestions:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/quicksearchbox/ListSuggestionCursor;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/ListSuggestionCursor$Entry;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ListSuggestionCursor$Entry;->getExtras()Lcom/android/quicksearchbox/SuggestionExtras;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/android/quicksearchbox/ListSuggestionCursor;->mPos:I

    return v0
.end method

.method public moveTo(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/quicksearchbox/ListSuggestionCursor;->mPos:I

    .line 80
    return-void
.end method

.method public moveToNext()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-object v2, p0, Lcom/android/quicksearchbox/ListSuggestionCursor;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 84
    .local v0, size:I
    iget v2, p0, Lcom/android/quicksearchbox/ListSuggestionCursor;->mPos:I

    if-lt v2, v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v1

    .line 88
    :cond_1
    iget v2, p0, Lcom/android/quicksearchbox/ListSuggestionCursor;->mPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/quicksearchbox/ListSuggestionCursor;->mPos:I

    .line 89
    iget v2, p0, Lcom/android/quicksearchbox/ListSuggestionCursor;->mPos:I

    if-ge v2, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/quicksearchbox/ListSuggestionCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 135
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/quicksearchbox/ListSuggestionCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public removeRow()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/quicksearchbox/ListSuggestionCursor;->mSuggestions:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/quicksearchbox/ListSuggestionCursor;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public replaceRow(Lcom/android/quicksearchbox/Suggestion;)V
    .locals 3
    .parameter "suggestion"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/quicksearchbox/ListSuggestionCursor;->mSuggestions:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/quicksearchbox/ListSuggestionCursor;->mPos:I

    new-instance v2, Lcom/android/quicksearchbox/ListSuggestionCursor$Entry;

    invoke-direct {v2, p1}, Lcom/android/quicksearchbox/ListSuggestionCursor$Entry;-><init>(Lcom/android/quicksearchbox/Suggestion;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quicksearchbox/ListSuggestionCursor;->getUserQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quicksearchbox/ListSuggestionCursor;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
