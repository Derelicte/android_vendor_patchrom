.class Lcom/miui/player/util/LRUCache$1;
.super Ljava/util/LinkedHashMap;
.source "LRUCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/util/LRUCache;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/miui/player/util/LRUCache;


# direct methods
.method constructor <init>(Lcom/miui/player/util/LRUCache;IFZ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    .local p0, this:Lcom/miui/player/util/LRUCache$1;,"Lcom/miui/player/util/LRUCache.1;"
    iput-object p1, p0, Lcom/miui/player/util/LRUCache$1;->this$0:Lcom/miui/player/util/LRUCache;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, this:Lcom/miui/player/util/LRUCache$1;,"Lcom/miui/player/util/LRUCache.1;"
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/miui/player/util/LRUCache$1;->size()I

    move-result v0

    iget-object v1, p0, Lcom/miui/player/util/LRUCache$1;->this$0:Lcom/miui/player/util/LRUCache;

    iget v1, v1, Lcom/miui/player/util/LRUCache;->mCacheSize:I

    iget-object v2, p0, Lcom/miui/player/util/LRUCache$1;->this$0:Lcom/miui/player/util/LRUCache;

    iget v2, v2, Lcom/miui/player/util/LRUCache;->mIgnoreCount:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
