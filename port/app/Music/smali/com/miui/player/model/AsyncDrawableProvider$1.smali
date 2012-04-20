.class Lcom/miui/player/model/AsyncDrawableProvider$1;
.super Landroid/os/Handler;
.source "AsyncDrawableProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/AsyncDrawableProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/model/AsyncDrawableProvider;


# direct methods
.method constructor <init>(Lcom/miui/player/model/AsyncDrawableProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    .local p0, this:Lcom/miui/player/model/AsyncDrawableProvider$1;,"Lcom/miui/player/model/AsyncDrawableProvider.1;"
    iput-object p1, p0, Lcom/miui/player/model/AsyncDrawableProvider$1;->this$0:Lcom/miui/player/model/AsyncDrawableProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    .line 184
    .local p0, this:Lcom/miui/player/model/AsyncDrawableProvider$1;,"Lcom/miui/player/model/AsyncDrawableProvider.1;"
    iget v10, p1, Landroid/os/Message;->what:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 185
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/miui/player/model/AsyncDrawableProvider$ResponseHolder;

    .line 186
    .local v4, ih:Lcom/miui/player/model/AsyncDrawableProvider$ResponseHolder;,"Lcom/miui/player/model/AsyncDrawableProvider<TT;>.ResponseHolder;"
    iget-object v2, v4, Lcom/miui/player/model/AsyncDrawableProvider$ResponseHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 187
    .local v2, dr:Landroid/graphics/drawable/Drawable;
    iget-object v6, v4, Lcom/miui/player/model/AsyncDrawableProvider$ResponseHolder;->mKey:Ljava/lang/String;

    .line 188
    .local v6, key:Ljava/lang/String;
    iget-boolean v9, v4, Lcom/miui/player/model/AsyncDrawableProvider$ResponseHolder;->mStatus:Z

    .line 190
    .local v9, status:Z
    iget-object v10, p0, Lcom/miui/player/model/AsyncDrawableProvider$1;->this$0:Lcom/miui/player/model/AsyncDrawableProvider;

    iget-object v1, v10, Lcom/miui/player/model/AsyncDrawableProvider;->mDrawableCache:Lcom/miui/player/util/LRUCache;

    .line 191
    .local v1, cache:Lcom/miui/player/util/LRUCache;,"Lcom/miui/player/util/LRUCache<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    iget-object v10, p0, Lcom/miui/player/model/AsyncDrawableProvider$1;->this$0:Lcom/miui/player/model/AsyncDrawableProvider;

    iget-object v10, v10, Lcom/miui/player/model/AsyncDrawableProvider;->mCacheBackup:Ljava/lang/ref/SoftReference;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/miui/player/model/AsyncDrawableProvider$1;->this$0:Lcom/miui/player/model/AsyncDrawableProvider;

    iget-object v10, v10, Lcom/miui/player/model/AsyncDrawableProvider;->mCacheBackup:Ljava/lang/ref/SoftReference;

    invoke-virtual {v10}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/player/util/LRUCache;

    move-object v0, v10

    .line 193
    .local v0, backup:Lcom/miui/player/util/LRUCache;,"Lcom/miui/player/util/LRUCache<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    :goto_0
    if-eqz v2, :cond_5

    .line 194
    if-eqz v1, :cond_2

    .line 197
    invoke-virtual {v1, v6, v2}, Lcom/miui/player/util/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 198
    iget-object v10, p0, Lcom/miui/player/model/AsyncDrawableProvider$1;->this$0:Lcom/miui/player/model/AsyncDrawableProvider;

    iget-object v10, v10, Lcom/miui/player/model/AsyncDrawableProvider;->mWaiterMap:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/LinkedList;

    .line 199
    .local v7, queue:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/miui/player/model/AsyncDrawableProvider<TT;>.RequestHolder;>;"
    if-eqz v7, :cond_3

    .line 200
    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/player/model/AsyncDrawableProvider$RequestHolder;

    .line 201
    .local v8, rh:Lcom/miui/player/model/AsyncDrawableProvider$RequestHolder;,"Lcom/miui/player/model/AsyncDrawableProvider<TT;>.RequestHolder;"
    iget-object v10, v8, Lcom/miui/player/model/AsyncDrawableProvider$RequestHolder;->mImageViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 202
    .local v5, iv:Landroid/widget/ImageView;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 203
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 191
    .end local v0           #backup:Lcom/miui/player/util/LRUCache;,"Lcom/miui/player/util/LRUCache<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #iv:Landroid/widget/ImageView;
    .end local v7           #queue:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/miui/player/model/AsyncDrawableProvider<TT;>.RequestHolder;>;"
    .end local v8           #rh:Lcom/miui/player/model/AsyncDrawableProvider$RequestHolder;,"Lcom/miui/player/model/AsyncDrawableProvider<TT;>.RequestHolder;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 207
    .restart local v0       #backup:Lcom/miui/player/util/LRUCache;,"Lcom/miui/player/util/LRUCache<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    :cond_2
    if-eqz v0, :cond_3

    .line 210
    invoke-virtual {v0, v6, v2}, Lcom/miui/player/util/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 222
    :cond_3
    :goto_2
    iget-object v10, p0, Lcom/miui/player/model/AsyncDrawableProvider$1;->this$0:Lcom/miui/player/model/AsyncDrawableProvider;

    iget-object v10, v10, Lcom/miui/player/model/AsyncDrawableProvider;->mWaiterMap:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .end local v0           #backup:Lcom/miui/player/util/LRUCache;,"Lcom/miui/player/util/LRUCache<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    .end local v1           #cache:Lcom/miui/player/util/LRUCache;,"Lcom/miui/player/util/LRUCache<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    .end local v2           #dr:Landroid/graphics/drawable/Drawable;
    .end local v4           #ih:Lcom/miui/player/model/AsyncDrawableProvider$ResponseHolder;,"Lcom/miui/player/model/AsyncDrawableProvider<TT;>.ResponseHolder;"
    .end local v6           #key:Ljava/lang/String;
    .end local v9           #status:Z
    :cond_4
    return-void

    .line 212
    .restart local v0       #backup:Lcom/miui/player/util/LRUCache;,"Lcom/miui/player/util/LRUCache<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    .restart local v1       #cache:Lcom/miui/player/util/LRUCache;,"Lcom/miui/player/util/LRUCache<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    .restart local v2       #dr:Landroid/graphics/drawable/Drawable;
    .restart local v4       #ih:Lcom/miui/player/model/AsyncDrawableProvider$ResponseHolder;,"Lcom/miui/player/model/AsyncDrawableProvider<TT;>.ResponseHolder;"
    .restart local v6       #key:Ljava/lang/String;
    .restart local v9       #status:Z
    :cond_5
    if-nez v9, :cond_3

    .line 215
    if-eqz v1, :cond_6

    .line 216
    invoke-virtual {v1, v6}, Lcom/miui/player/util/LRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 217
    :cond_6
    if-eqz v0, :cond_3

    .line 218
    invoke-virtual {v0, v6}, Lcom/miui/player/util/LRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method
