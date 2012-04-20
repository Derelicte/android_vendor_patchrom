.class public Lcom/miui/player/util/LRUCache;
.super Ljava/lang/Object;
.source "LRUCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/util/LRUCache$EntryVisitor;,
        Lcom/miui/player/util/LRUCache$ValueComputer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mCacheSize:I

.field private mComputer:Lcom/miui/player/util/LRUCache$ValueComputer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/player/util/LRUCache$ValueComputer",
            "<TV;>;"
        }
    .end annotation
.end field

.field mIgnoreCount:I

.field private mMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .parameter "cacheSize"

    .prologue
    .local p0, this:Lcom/miui/player/util/LRUCache;,"Lcom/miui/player/util/LRUCache<TK;TV;>;"
    const/high16 v3, 0x3f40

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/player/util/LRUCache;->mIgnoreCount:I

    .line 33
    iput p1, p0, Lcom/miui/player/util/LRUCache;->mCacheSize:I

    .line 34
    int-to-float v1, p1

    div-float/2addr v1, v3

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v0, v1, 0x1

    .line 35
    .local v0, hashTableCapacity:I
    new-instance v1, Lcom/miui/player/util/LRUCache$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v3, v2}, Lcom/miui/player/util/LRUCache$1;-><init>(Lcom/miui/player/util/LRUCache;IFZ)V

    iput-object v1, p0, Lcom/miui/player/util/LRUCache;->mMap:Ljava/util/LinkedHashMap;

    .line 44
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 99
    .local p0, this:Lcom/miui/player/util/LRUCache;,"Lcom/miui/player/util/LRUCache<TK;TV;>;"
    iget-object v0, p0, Lcom/miui/player/util/LRUCache;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/util/LRUCache;->mIgnoreCount:I

    .line 101
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, this:Lcom/miui/player/util/LRUCache;,"Lcom/miui/player/util/LRUCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v0, p0, Lcom/miui/player/util/LRUCache;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, this:Lcom/miui/player/util/LRUCache;,"Lcom/miui/player/util/LRUCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lcom/miui/player/util/LRUCache;->mComputer:Lcom/miui/player/util/LRUCache$ValueComputer;

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/miui/player/util/LRUCache;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 75
    .local v0, v:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lcom/miui/player/util/LRUCache;->mComputer:Lcom/miui/player/util/LRUCache$ValueComputer;

    invoke-interface {v1, v0}, Lcom/miui/player/util/LRUCache$ValueComputer;->ignoreCount(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget v1, p0, Lcom/miui/player/util/LRUCache;->mIgnoreCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/player/util/LRUCache;->mIgnoreCount:I

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/miui/player/util/LRUCache;->mComputer:Lcom/miui/player/util/LRUCache$ValueComputer;

    invoke-interface {v1, p2}, Lcom/miui/player/util/LRUCache$ValueComputer;->ignoreCount(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    iget v1, p0, Lcom/miui/player/util/LRUCache;->mIgnoreCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/player/util/LRUCache;->mIgnoreCount:I

    .line 84
    .end local v0           #v:Ljava/lang/Object;,"TV;"
    :cond_1
    iget-object v1, p0, Lcom/miui/player/util/LRUCache;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, this:Lcom/miui/player/util/LRUCache;,"Lcom/miui/player/util/LRUCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v1, p0, Lcom/miui/player/util/LRUCache;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 89
    .local v0, value:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lcom/miui/player/util/LRUCache;->mComputer:Lcom/miui/player/util/LRUCache$ValueComputer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/player/util/LRUCache;->mComputer:Lcom/miui/player/util/LRUCache$ValueComputer;

    invoke-interface {v1, v0}, Lcom/miui/player/util/LRUCache$ValueComputer;->ignoreCount(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    iget v1, p0, Lcom/miui/player/util/LRUCache;->mIgnoreCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/player/util/LRUCache;->mIgnoreCount:I

    .line 92
    :cond_0
    return-object v0
.end method

.method public setComputer(Lcom/miui/player/util/LRUCache$ValueComputer;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/util/LRUCache$ValueComputer",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, this:Lcom/miui/player/util/LRUCache;,"Lcom/miui/player/util/LRUCache<TK;TV;>;"
    .local p1, computer:Lcom/miui/player/util/LRUCache$ValueComputer;,"Lcom/miui/player/util/LRUCache$ValueComputer<TV;>;"
    iput-object p1, p0, Lcom/miui/player/util/LRUCache;->mComputer:Lcom/miui/player/util/LRUCache$ValueComputer;

    .line 137
    return-void
.end method

.method public traverse(Lcom/miui/player/util/LRUCache$EntryVisitor;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/util/LRUCache$EntryVisitor",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, this:Lcom/miui/player/util/LRUCache;,"Lcom/miui/player/util/LRUCache<TK;TV;>;"
    .local p1, visitor:Lcom/miui/player/util/LRUCache$EntryVisitor;,"Lcom/miui/player/util/LRUCache$EntryVisitor<TK;TV;>;"
    iget-object v2, p0, Lcom/miui/player/util/LRUCache;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 124
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 126
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/miui/player/util/LRUCache$EntryVisitor;->visit(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 128
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    return-void
.end method
