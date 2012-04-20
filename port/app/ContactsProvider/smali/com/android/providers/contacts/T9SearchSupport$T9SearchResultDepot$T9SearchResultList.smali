.class Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;
.super Ljava/lang/Object;
.source "T9SearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "T9SearchResultList"
.end annotation


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private mOrdered:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1009
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;->mOrdered:Z

    .line 1010
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/T9SearchSupport$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1008
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 1013
    monitor-enter p0

    .line 1014
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1015
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;->mOrdered:Z

    .line 1016
    monitor-exit p0

    .line 1017
    return-void

    .line 1016
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 1020
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;->mOrdered:Z

    .line 1021
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1022
    return-void
.end method

.method public getResults()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSortedResults()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1038
    invoke-virtual {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;->sort()V

    .line 1039
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setDisorder()V
    .locals 1

    .prologue
    .line 1025
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;->mOrdered:Z

    .line 1026
    return-void
.end method

.method public sort()V
    .locals 2

    .prologue
    .line 1029
    iget-boolean v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;->mOrdered:Z

    if-nez v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;->mList:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot;->T9QUERY_COMPARATOR:Lcom/android/providers/contacts/T9SearchSupport$T9QueryComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1032
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResultDepot$T9SearchResultList;->mOrdered:Z

    .line 1035
    :cond_0
    return-void
.end method
