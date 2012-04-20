.class public Lcom/miui/supermarket/util/PackageIconLoader;
.super Ljava/lang/Object;
.source "PackageIconLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/supermarket/util/PackageIconLoader$LoaderThread;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLoaderThread:Lcom/miui/supermarket/util/PackageIconLoader$LoaderThread;

.field private mLoadingRequested:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mManager:Lcom/miui/supermarket/util/PackageIconItemManager;

.field private mPaused:Z

.field private final mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Lcom/miui/supermarket/util/PackageIconItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/supermarket/util/PackageIconItemManager;)V
    .locals 1
    .parameter "context"
    .parameter "manager"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/supermarket/util/PackageIconLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/miui/supermarket/util/PackageIconLoader;->mMainThreadHandler:Landroid/os/Handler;

    .line 98
    iput-object p1, p0, Lcom/miui/supermarket/util/PackageIconLoader;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/miui/supermarket/util/PackageIconLoader;->mManager:Lcom/miui/supermarket/util/PackageIconItemManager;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/miui/supermarket/util/PackageIconLoader;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/supermarket/util/PackageIconLoader;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/supermarket/util/PackageIconLoader;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/miui/supermarket/util/PackageIconLoader;->obtainPhotoIdsToLoad(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/supermarket/util/PackageIconLoader;)Lcom/miui/supermarket/util/PackageIconItemManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/supermarket/util/PackageIconLoader;->mManager:Lcom/miui/supermarket/util/PackageIconItemManager;

    return-object v0
.end method

.method private obtainPhotoIdsToLoad(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/supermarket/util/PackageIconItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, photoItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/supermarket/util/PackageIconItem;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 224
    iget-object v2, p0, Lcom/miui/supermarket/util/PackageIconLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 225
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/widget/ImageView;Lcom/miui/supermarket/util/PackageIconItem;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 227
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/widget/ImageView;Lcom/miui/supermarket/util/PackageIconItem;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/widget/ImageView;Lcom/miui/supermarket/util/PackageIconItem;>;"
    :cond_0
    return-void
.end method

.method private processLoadedImages()V
    .locals 4

    .prologue
    .line 196
    iget-object v3, p0, Lcom/miui/supermarket/util/PackageIconLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 197
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/widget/ImageView;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 198
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 199
    .local v2, view:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/miui/supermarket/util/PackageIconLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/supermarket/util/PackageIconItem;

    .line 201
    .local v0, item:Lcom/miui/supermarket/util/PackageIconItem;
    invoke-virtual {v0}, Lcom/miui/supermarket/util/PackageIconItem;->hasLocalCache()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/miui/supermarket/util/PackageIconItem;->downloadFailed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 202
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 205
    :cond_2
    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 206
    invoke-virtual {v0}, Lcom/miui/supermarket/util/PackageIconItem;->getCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/miui/supermarket/util/PackageIconItem;->getCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 212
    .end local v0           #item:Lcom/miui/supermarket/util/PackageIconItem;
    .end local v2           #view:Landroid/widget/ImageView;
    :cond_3
    iget-object v3, p0, Lcom/miui/supermarket/util/PackageIconLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 213
    invoke-direct {p0}, Lcom/miui/supermarket/util/PackageIconLoader;->requestLoading()V

    .line 215
    :cond_4
    return-void
.end method

.method private requestLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 157
    iget-boolean v0, p0, Lcom/miui/supermarket/util/PackageIconLoader;->mLoadingRequested:Z

    if-nez v0, :cond_0

    .line 158
    iput-boolean v1, p0, Lcom/miui/supermarket/util/PackageIconLoader;->mLoadingRequested:Z

    .line 159
    iget-object v0, p0, Lcom/miui/supermarket/util/PackageIconLoader;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 161
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 167
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 188
    :cond_0
    :goto_0
    return v0

    .line 169
    :pswitch_0
    iput-boolean v1, p0, Lcom/miui/supermarket/util/PackageIconLoader;->mLoadingRequested:Z

    .line 170
    iget-boolean v1, p0, Lcom/miui/supermarket/util/PackageIconLoader;->mPaused:Z

    if-nez v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/miui/supermarket/util/PackageIconLoader;->mLoaderThread:Lcom/miui/supermarket/util/PackageIconLoader$LoaderThread;

    if-nez v1, :cond_1

    .line 172
    new-instance v1, Lcom/miui/supermarket/util/PackageIconLoader$LoaderThread;

    iget-object v2, p0, Lcom/miui/supermarket/util/PackageIconLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/miui/supermarket/util/PackageIconLoader$LoaderThread;-><init>(Lcom/miui/supermarket/util/PackageIconLoader;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/miui/supermarket/util/PackageIconLoader;->mLoaderThread:Lcom/miui/supermarket/util/PackageIconLoader$LoaderThread;

    .line 173
    iget-object v1, p0, Lcom/miui/supermarket/util/PackageIconLoader;->mLoaderThread:Lcom/miui/supermarket/util/PackageIconLoader$LoaderThread;

    invoke-virtual {v1}, Lcom/miui/supermarket/util/PackageIconLoader$LoaderThread;->start()V

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/miui/supermarket/util/PackageIconLoader;->mLoaderThread:Lcom/miui/supermarket/util/PackageIconLoader$LoaderThread;

    invoke-virtual {v1}, Lcom/miui/supermarket/util/PackageIconLoader$LoaderThread;->requestLoading()V

    goto :goto_0

    .line 182
    :pswitch_1
    iget-boolean v1, p0, Lcom/miui/supermarket/util/PackageIconLoader;->mPaused:Z

    if-nez v1, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/miui/supermarket/util/PackageIconLoader;->processLoadedImages()V

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadPhoto(Landroid/widget/ImageView;Lcom/miui/supermarket/util/PackageIconItem;)V
    .locals 1
    .parameter "view"
    .parameter "item"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/supermarket/util/PackageIconLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-boolean v0, p0, Lcom/miui/supermarket/util/PackageIconLoader;->mPaused:Z

    if-nez v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/miui/supermarket/util/PackageIconLoader;->requestLoading()V

    .line 113
    :cond_0
    return-void
.end method
