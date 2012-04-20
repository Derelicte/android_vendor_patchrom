.class public Lcom/miui/player/model/AsyncDrawableProvider;
.super Ljava/lang/Object;
.source "AsyncDrawableProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/model/AsyncDrawableProvider$AsyncDrawableWorker;,
        Lcom/miui/player/model/AsyncDrawableProvider$DrawableClean;,
        Lcom/miui/player/model/AsyncDrawableProvider$AlbumComputer;,
        Lcom/miui/player/model/AsyncDrawableProvider$AsyncHandler;,
        Lcom/miui/player/model/AsyncDrawableProvider$RequestHolder;,
        Lcom/miui/player/model/AsyncDrawableProvider$ResponseHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mAsyncHandler:Lcom/miui/player/model/AsyncDrawableProvider$AsyncHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/player/model/AsyncDrawableProvider",
            "<TT;>.AsyncHandler;"
        }
    .end annotation
.end field

.field private mAsyncWorker:Lcom/miui/player/util/AsyncWorker;

.field mCacheBackup:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/miui/player/util/LRUCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field mDrawableCache:Lcom/miui/player/util/LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/player/util/LRUCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field final mHandler:Landroid/os/Handler;

.field mWaiterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/player/model/AsyncDrawableProvider",
            "<TT;>.RequestHolder;>;>;"
        }
    .end annotation
.end field

.field mWorker:Lcom/miui/player/model/AsyncDrawableProvider$AsyncDrawableWorker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/player/model/AsyncDrawableProvider$AsyncDrawableWorker",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/player/model/AsyncDrawableProvider$AsyncDrawableWorker;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter
    .parameter "defaultDrawable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/model/AsyncDrawableProvider$AsyncDrawableWorker",
            "<TT;>;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, this:Lcom/miui/player/model/AsyncDrawableProvider;,"Lcom/miui/player/model/AsyncDrawableProvider<TT;>;"
    .local p1, worker:Lcom/miui/player/model/AsyncDrawableProvider$AsyncDrawableWorker;,"Lcom/miui/player/model/AsyncDrawableProvider$AsyncDrawableWorker<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mEnabled:Z

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 181
    new-instance v0, Lcom/miui/player/model/AsyncDrawableProvider$1;

    invoke-direct {v0, p0}, Lcom/miui/player/model/AsyncDrawableProvider$1;-><init>(Lcom/miui/player/model/AsyncDrawableProvider;)V

    iput-object v0, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mHandler:Landroid/os/Handler;

    .line 51
    iput-object p1, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mWorker:Lcom/miui/player/model/AsyncDrawableProvider$AsyncDrawableWorker;

    .line 52
    iput-object p2, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mWaiterMap:Ljava/util/HashMap;

    .line 54
    return-void
.end method


# virtual methods
.method isDefauleDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "drawable"

    .prologue
    .line 133
    .local p0, this:Lcom/miui/player/model/AsyncDrawableProvider;,"Lcom/miui/player/model/AsyncDrawableProvider<TT;>;"
    iget-object v0, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public quit()V
    .locals 5

    .prologue
    .local p0, this:Lcom/miui/player/model/AsyncDrawableProvider;,"Lcom/miui/player/model/AsyncDrawableProvider<TT;>;"
    const/4 v4, 0x0

    .line 80
    iget-boolean v2, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mEnabled:Z

    if-nez v2, :cond_0

    .line 102
    :goto_0
    return-void

    .line 84
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mEnabled:Z

    .line 85
    iput-object v4, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mAsyncHandler:Lcom/miui/player/model/AsyncDrawableProvider$AsyncHandler;

    .line 86
    iget-object v2, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mAsyncWorker:Lcom/miui/player/util/AsyncWorker;

    invoke-virtual {v2}, Lcom/miui/player/util/AsyncWorker;->quit()V

    .line 87
    iput-object v4, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mAsyncWorker:Lcom/miui/player/util/AsyncWorker;

    .line 89
    iget-object v2, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mWaiterMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 90
    .local v1, waiters:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    .local v0, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mDrawableCache:Lcom/miui/player/util/LRUCache;

    invoke-virtual {v2, v0}, Lcom/miui/player/util/LRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 95
    .end local v0           #key:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mDrawableCache:Lcom/miui/player/util/LRUCache;

    new-instance v3, Lcom/miui/player/model/AsyncDrawableProvider$DrawableClean;

    invoke-direct {v3, p0}, Lcom/miui/player/model/AsyncDrawableProvider$DrawableClean;-><init>(Lcom/miui/player/model/AsyncDrawableProvider;)V

    invoke-virtual {v2, v3}, Lcom/miui/player/util/LRUCache;->traverse(Lcom/miui/player/util/LRUCache$EntryVisitor;)V

    .line 96
    iget-object v2, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 97
    new-instance v2, Ljava/lang/ref/SoftReference;

    iget-object v3, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mDrawableCache:Lcom/miui/player/util/LRUCache;

    invoke-direct {v2, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mCacheBackup:Ljava/lang/ref/SoftReference;

    .line 98
    iput-object v4, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mDrawableCache:Lcom/miui/player/util/LRUCache;

    .line 100
    iget-object v2, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mWaiterMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 101
    iput-object v4, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mContextRef:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/miui/player/model/AsyncDrawableProvider;,"Lcom/miui/player/model/AsyncDrawableProvider<TT;>;"
    .local p1, info:Ljava/lang/Object;,"TT;"
    const/4 v2, 0x0

    .line 118
    iget-object v3, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mWorker:Lcom/miui/player/model/AsyncDrawableProvider$AsyncDrawableWorker;

    invoke-interface {v3, p1}, Lcom/miui/player/model/AsyncDrawableProvider$AsyncDrawableWorker;->asKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, key:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 120
    iget-object v3, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mDrawableCache:Lcom/miui/player/util/LRUCache;

    if-eqz v3, :cond_1

    .line 121
    iget-object v3, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mDrawableCache:Lcom/miui/player/util/LRUCache;

    invoke-virtual {v3, v0}, Lcom/miui/player/util/LRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 129
    :cond_0
    :goto_0
    return v2

    .line 122
    :cond_1
    iget-object v3, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mCacheBackup:Ljava/lang/ref/SoftReference;

    if-eqz v3, :cond_0

    .line 123
    iget-object v3, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mCacheBackup:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/player/util/LRUCache;

    .line 124
    .local v1, tmp:Lcom/miui/player/util/LRUCache;,"Lcom/miui/player/util/LRUCache<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v1, v0}, Lcom/miui/player/util/LRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeAll()V
    .locals 2

    .prologue
    .line 105
    .local p0, this:Lcom/miui/player/model/AsyncDrawableProvider;,"Lcom/miui/player/model/AsyncDrawableProvider<TT;>;"
    iget-object v1, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mDrawableCache:Lcom/miui/player/util/LRUCache;

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mDrawableCache:Lcom/miui/player/util/LRUCache;

    invoke-virtual {v1}, Lcom/miui/player/util/LRUCache;->clear()V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mCacheBackup:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mCacheBackup:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/util/LRUCache;

    .line 109
    .local v0, tmp:Lcom/miui/player/util/LRUCache;,"Lcom/miui/player/util/LRUCache<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/miui/player/util/LRUCache;->clear()V

    goto :goto_0
.end method

.method public requestDrawable(Ljava/lang/Object;Landroid/widget/ImageView;)Z
    .locals 8
    .parameter
    .parameter "imageView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/widget/ImageView;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, this:Lcom/miui/player/model/AsyncDrawableProvider;,"Lcom/miui/player/model/AsyncDrawableProvider<TT;>;"
    .local p1, info:Ljava/lang/Object;,"TT;"
    const/4 v1, 0x0

    .line 146
    .local v1, isCached:Z
    iget-object v6, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mWorker:Lcom/miui/player/model/AsyncDrawableProvider$AsyncDrawableWorker;

    invoke-interface {v6, p1}, Lcom/miui/player/model/AsyncDrawableProvider$AsyncDrawableWorker;->asKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 148
    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mDrawableCache:Lcom/miui/player/util/LRUCache;

    if-nez v6, :cond_2

    .line 149
    :cond_0
    iget-object v6, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    :cond_1
    :goto_0
    return v1

    .line 151
    :cond_2
    const/4 v4, 0x0

    .line 152
    .local v4, queue:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/miui/player/model/AsyncDrawableProvider<TT;>.RequestHolder;>;"
    iget-object v6, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mDrawableCache:Lcom/miui/player/util/LRUCache;

    invoke-virtual {v6, v2}, Lcom/miui/player/util/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 154
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 155
    const/4 v1, 0x1

    .line 156
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    invoke-virtual {p0, v0}, Lcom/miui/player/model/AsyncDrawableProvider;->isDefauleDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 158
    iget-object v6, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mWaiterMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #queue:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/miui/player/model/AsyncDrawableProvider<TT;>.RequestHolder;>;"
    check-cast v4, Ljava/util/LinkedList;

    .line 173
    .restart local v4       #queue:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/miui/player/model/AsyncDrawableProvider<TT;>.RequestHolder;>;"
    :cond_3
    :goto_1
    if-eqz v4, :cond_1

    .line 174
    new-instance v5, Lcom/miui/player/model/AsyncDrawableProvider$RequestHolder;

    invoke-direct {v5, p0, v2, p1, p2}, Lcom/miui/player/model/AsyncDrawableProvider$RequestHolder;-><init>(Lcom/miui/player/model/AsyncDrawableProvider;Ljava/lang/String;Ljava/lang/Object;Landroid/widget/ImageView;)V

    .line 175
    .local v5, rh:Lcom/miui/player/model/AsyncDrawableProvider$RequestHolder;,"Lcom/miui/player/model/AsyncDrawableProvider<TT;>.RequestHolder;"
    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    .end local v5           #rh:Lcom/miui/player/model/AsyncDrawableProvider$RequestHolder;,"Lcom/miui/player/model/AsyncDrawableProvider<TT;>.RequestHolder;"
    :cond_4
    iget-object v0, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 162
    iget-object v6, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mDrawableCache:Lcom/miui/player/util/LRUCache;

    invoke-virtual {v6, v2, v0}, Lcom/miui/player/util/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    new-instance v4, Ljava/util/LinkedList;

    .end local v4           #queue:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/miui/player/model/AsyncDrawableProvider<TT;>.RequestHolder;>;"
    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 166
    .restart local v4       #queue:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/miui/player/model/AsyncDrawableProvider<TT;>.RequestHolder;>;"
    iget-object v6, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mWaiterMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v6, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mAsyncHandler:Lcom/miui/player/model/AsyncDrawableProvider$AsyncHandler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/miui/player/model/AsyncDrawableProvider$AsyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 169
    .local v3, msg:Landroid/os/Message;
    new-instance v6, Lcom/miui/player/model/AsyncDrawableProvider$RequestHolder;

    invoke-direct {v6, p0, v2, p1, p2}, Lcom/miui/player/model/AsyncDrawableProvider$RequestHolder;-><init>(Lcom/miui/player/model/AsyncDrawableProvider;Ljava/lang/String;Ljava/lang/Object;Landroid/widget/ImageView;)V

    iput-object v6, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 170
    iget-object v6, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mAsyncHandler:Lcom/miui/player/model/AsyncDrawableProvider$AsyncHandler;

    invoke-virtual {v6, v3}, Lcom/miui/player/model/AsyncDrawableProvider$AsyncHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method public start(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 60
    .local p0, this:Lcom/miui/player/model/AsyncDrawableProvider;,"Lcom/miui/player/model/AsyncDrawableProvider<TT;>;"
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 61
    iget-object v0, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mCacheBackup:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mCacheBackup:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/util/LRUCache;

    iput-object v0, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mDrawableCache:Lcom/miui/player/util/LRUCache;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mDrawableCache:Lcom/miui/player/util/LRUCache;

    if-nez v0, :cond_1

    .line 65
    new-instance v0, Lcom/miui/player/util/LRUCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/miui/player/util/LRUCache;-><init>(I)V

    iput-object v0, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mDrawableCache:Lcom/miui/player/util/LRUCache;

    .line 66
    iget-object v0, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mDrawableCache:Lcom/miui/player/util/LRUCache;

    new-instance v1, Lcom/miui/player/model/AsyncDrawableProvider$AlbumComputer;

    invoke-direct {v1, p0}, Lcom/miui/player/model/AsyncDrawableProvider$AlbumComputer;-><init>(Lcom/miui/player/model/AsyncDrawableProvider;)V

    invoke-virtual {v0, v1}, Lcom/miui/player/util/LRUCache;->setComputer(Lcom/miui/player/util/LRUCache$ValueComputer;)V

    .line 69
    :cond_1
    new-instance v0, Lcom/miui/player/util/AsyncWorker;

    const-string v1, "AsyncDrawableProvider"

    invoke-direct {v0, v1}, Lcom/miui/player/util/AsyncWorker;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mAsyncWorker:Lcom/miui/player/util/AsyncWorker;

    .line 70
    new-instance v0, Lcom/miui/player/model/AsyncDrawableProvider$AsyncHandler;

    iget-object v1, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mAsyncWorker:Lcom/miui/player/util/AsyncWorker;

    invoke-virtual {v1}, Lcom/miui/player/util/AsyncWorker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/player/model/AsyncDrawableProvider$AsyncHandler;-><init>(Lcom/miui/player/model/AsyncDrawableProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mAsyncHandler:Lcom/miui/player/model/AsyncDrawableProvider$AsyncHandler;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/model/AsyncDrawableProvider;->mEnabled:Z

    .line 72
    return-void
.end method
