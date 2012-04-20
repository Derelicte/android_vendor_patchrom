.class public Lcom/android/quicksearchbox/CachingIconLoader;
.super Ljava/lang/Object;
.source "CachingIconLoader.java"

# interfaces
.implements Lcom/android/quicksearchbox/IconLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/CachingIconLoader$Entry;
    }
.end annotation


# instance fields
.field private final mIconCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/quicksearchbox/CachingIconLoader$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mWrapped:Lcom/android/quicksearchbox/IconLoader;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/IconLoader;)V
    .locals 1
    .parameter "wrapped"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/quicksearchbox/CachingIconLoader;->mWrapped:Lcom/android/quicksearchbox/IconLoader;

    .line 52
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/quicksearchbox/CachingIconLoader;->mIconCache:Ljava/util/WeakHashMap;

    .line 53
    return-void
.end method

.method private declared-synchronized queryCache(Ljava/lang/String;)Lcom/android/quicksearchbox/util/NowOrLater;
    .locals 2
    .parameter "drawableId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/quicksearchbox/util/NowOrLater",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/quicksearchbox/CachingIconLoader;->mIconCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/util/NowOrLater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .local v0, cached:Lcom/android/quicksearchbox/util/NowOrLater;,"Lcom/android/quicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    monitor-exit p0

    return-object v0

    .line 87
    .end local v0           #cached:Lcom/android/quicksearchbox/util/NowOrLater;,"Lcom/android/quicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized storeInIconCache(Ljava/lang/String;Lcom/android/quicksearchbox/CachingIconLoader$Entry;)V
    .locals 1
    .parameter "resourceUri"
    .parameter "drawable"

    .prologue
    .line 95
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/android/quicksearchbox/CachingIconLoader;->mIconCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_0
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getIcon(Ljava/lang/String;)Lcom/android/quicksearchbox/util/NowOrLater;
    .locals 5
    .parameter "drawableId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/quicksearchbox/util/NowOrLater",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "0"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 58
    :cond_0
    new-instance v0, Lcom/android/quicksearchbox/util/Now;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/android/quicksearchbox/util/Now;-><init>(Ljava/lang/Object;)V

    .line 79
    :goto_0
    return-object v0

    .line 60
    :cond_1
    const/4 v2, 0x0

    .line 62
    .local v2, newEntry:Lcom/android/quicksearchbox/CachingIconLoader$Entry;
    monitor-enter p0

    .line 63
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/CachingIconLoader;->queryCache(Ljava/lang/String;)Lcom/android/quicksearchbox/util/NowOrLater;

    move-result-object v1

    .line 64
    .local v1, drawableState:Lcom/android/quicksearchbox/util/NowOrLater;,"Lcom/android/quicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-nez v1, :cond_2

    .line 65
    new-instance v3, Lcom/android/quicksearchbox/CachingIconLoader$Entry;

    invoke-direct {v3}, Lcom/android/quicksearchbox/CachingIconLoader$Entry;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .end local v2           #newEntry:Lcom/android/quicksearchbox/CachingIconLoader$Entry;
    .local v3, newEntry:Lcom/android/quicksearchbox/CachingIconLoader$Entry;
    :try_start_1
    invoke-direct {p0, p1, v3}, Lcom/android/quicksearchbox/CachingIconLoader;->storeInIconCache(Ljava/lang/String;Lcom/android/quicksearchbox/CachingIconLoader$Entry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 68
    .end local v3           #newEntry:Lcom/android/quicksearchbox/CachingIconLoader$Entry;
    .restart local v2       #newEntry:Lcom/android/quicksearchbox/CachingIconLoader$Entry;
    :cond_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    if-eqz v1, :cond_3

    .line 70
    new-instance v0, Lcom/android/quicksearchbox/CachingIconLoader$1;

    invoke-direct {v0, p0, v1}, Lcom/android/quicksearchbox/CachingIconLoader$1;-><init>(Lcom/android/quicksearchbox/CachingIconLoader;Lcom/android/quicksearchbox/util/NowOrLater;)V

    goto :goto_0

    .line 68
    .end local v1           #drawableState:Lcom/android/quicksearchbox/util/NowOrLater;,"Lcom/android/quicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :catchall_0
    move-exception v4

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 76
    .restart local v1       #drawableState:Lcom/android/quicksearchbox/util/NowOrLater;,"Lcom/android/quicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :cond_3
    iget-object v4, p0, Lcom/android/quicksearchbox/CachingIconLoader;->mWrapped:Lcom/android/quicksearchbox/IconLoader;

    invoke-interface {v4, p1}, Lcom/android/quicksearchbox/IconLoader;->getIcon(Ljava/lang/String;)Lcom/android/quicksearchbox/util/NowOrLater;

    move-result-object v0

    .line 77
    .local v0, drawable:Lcom/android/quicksearchbox/util/NowOrLater;,"Lcom/android/quicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {v2, v0}, Lcom/android/quicksearchbox/CachingIconLoader$Entry;->set(Lcom/android/quicksearchbox/util/NowOrLater;)V

    .line 78
    invoke-direct {p0, p1, v2}, Lcom/android/quicksearchbox/CachingIconLoader;->storeInIconCache(Ljava/lang/String;Lcom/android/quicksearchbox/CachingIconLoader$Entry;)V

    goto :goto_0

    .line 68
    .end local v0           #drawable:Lcom/android/quicksearchbox/util/NowOrLater;,"Lcom/android/quicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable;>;"
    .end local v2           #newEntry:Lcom/android/quicksearchbox/CachingIconLoader$Entry;
    .restart local v3       #newEntry:Lcom/android/quicksearchbox/CachingIconLoader$Entry;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #newEntry:Lcom/android/quicksearchbox/CachingIconLoader$Entry;
    .restart local v2       #newEntry:Lcom/android/quicksearchbox/CachingIconLoader$Entry;
    goto :goto_1
.end method

.method public getIconUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "drawableId"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/quicksearchbox/CachingIconLoader;->mWrapped:Lcom/android/quicksearchbox/IconLoader;

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/IconLoader;->getIconUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
