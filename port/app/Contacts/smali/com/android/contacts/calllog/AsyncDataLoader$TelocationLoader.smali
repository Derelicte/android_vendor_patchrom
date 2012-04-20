.class Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;
.super Ljava/lang/Object;
.source "AsyncDataLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/calllog/AsyncDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelocationLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$LoaderThread;,
        Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLoaderThread:Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$LoaderThread;

.field private mLoadingRequested:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private final mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/widget/TextView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTelocationCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnknownLocation:Landroid/database/CharArrayBuffer;

.field final synthetic this$0:Lcom/android/contacts/calllog/AsyncDataLoader;


# direct methods
.method public constructor <init>(Lcom/android/contacts/calllog/AsyncDataLoader;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->this$0:Lcom/android/contacts/calllog/AsyncDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mTelocationCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 118
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 124
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mMainThreadHandler:Landroid/os/Handler;

    .line 152
    iput-object p2, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mContext:Landroid/content/Context;

    .line 153
    iget-object v1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mContext:Landroid/content/Context;

    const v2, 0x7f0b01f9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, unkownLocation:Ljava/lang/String;
    new-instance v1, Landroid/database/CharArrayBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/CharArrayBuffer;-><init>([C)V

    iput-object v1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mUnknownLocation:Landroid/database/CharArrayBuffer;

    .line 155
    iget-object v1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mUnknownLocation:Landroid/database/CharArrayBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, v1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 156
    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->obtainTelocationsToLoad(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->cacheTelocation(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private cacheTelocation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "number"
    .parameter "telocation"

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mPaused:Z

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mTelocationCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p2}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->createTelocationHolder(Ljava/lang/String;)Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_0
    return-void
.end method

.method private createTelocationHolder(Ljava/lang/String;)Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;
    .locals 3
    .parameter "telocation"

    .prologue
    .line 320
    new-instance v1, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;-><init>(Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;Lcom/android/contacts/calllog/AsyncDataLoader$1;)V

    .line 321
    .local v1, holder:Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;
    const/4 v2, 0x1

    #setter for: Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;->state:I
    invoke-static {v1, v2}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;->access$002(Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;I)I

    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, buffer:Landroid/database/CharArrayBuffer;
    if-eqz p1, :cond_0

    .line 324
    new-instance v0, Landroid/database/CharArrayBuffer;

    .end local v0           #buffer:Landroid/database/CharArrayBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/database/CharArrayBuffer;-><init>([C)V

    .line 325
    .restart local v0       #buffer:Landroid/database/CharArrayBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 327
    :cond_0
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #setter for: Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;->telocationRef:Ljava/lang/ref/SoftReference;
    invoke-static {v1, v2}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;->access$102(Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;

    .line 328
    return-object v1
.end method

.method private loadCachedTelocation(Landroid/widget/TextView;Ljava/lang/String;)Z
    .locals 5
    .parameter "view"
    .parameter "number"

    .prologue
    const/4 v4, 0x0

    .line 188
    iget-object v2, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mTelocationCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;

    .line 189
    .local v0, holder:Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;
    const/4 v1, 0x0

    .line 190
    .local v1, loaded:Z
    if-nez v0, :cond_2

    .line 210
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 211
    iget-object v2, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mUnknownLocation:Landroid/database/CharArrayBuffer;

    iget-object v2, v2, Landroid/database/CharArrayBuffer;->data:[C

    iget-object v3, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mUnknownLocation:Landroid/database/CharArrayBuffer;

    iget v3, v3, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {p1, v2, v4, v3}, Landroid/widget/TextView;->setText([CII)V

    .line 214
    :cond_1
    return v1

    .line 191
    :cond_2
    #getter for: Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;->state:I
    invoke-static {v0}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;->access$000(Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 198
    #getter for: Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;->telocationRef:Ljava/lang/ref/SoftReference;
    invoke-static {v0}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;->access$100(Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;)Ljava/lang/ref/SoftReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->this$0:Lcom/android/contacts/calllog/AsyncDataLoader;

    #getter for: Lcom/android/contacts/calllog/AsyncDataLoader;->mIsTelocationEnabled:Z
    invoke-static {v2}, Lcom/android/contacts/calllog/AsyncDataLoader;->access$200(Lcom/android/contacts/calllog/AsyncDataLoader;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 199
    #setter for: Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;->state:I
    invoke-static {v0, v4}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;->access$002(Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;I)I

    goto :goto_0

    .line 200
    :cond_3
    #getter for: Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;->telocationRef:Ljava/lang/ref/SoftReference;
    invoke-static {v0}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;->access$100(Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;)Ljava/lang/ref/SoftReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 201
    iget-object v2, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mUnknownLocation:Landroid/database/CharArrayBuffer;

    iget-object v2, v2, Landroid/database/CharArrayBuffer;->data:[C

    iget-object v3, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mUnknownLocation:Landroid/database/CharArrayBuffer;

    iget v3, v3, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {p1, v2, v4, v3}, Landroid/widget/TextView;->setText([CII)V

    .line 202
    const/4 v1, 0x1

    goto :goto_0

    .line 204
    :cond_4
    #getter for: Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;->telocationRef:Ljava/lang/ref/SoftReference;
    invoke-static {v0}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;->access$100(Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;)Ljava/lang/ref/SoftReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/CharArrayBuffer;

    iget-object v3, v2, Landroid/database/CharArrayBuffer;->data:[C

    #getter for: Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;->telocationRef:Ljava/lang/ref/SoftReference;
    invoke-static {v0}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;->access$100(Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;)Ljava/lang/ref/SoftReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/CharArrayBuffer;

    iget v2, v2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {p1, v3, v4, v2}, Landroid/widget/TextView;->setText([CII)V

    .line 206
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private obtainTelocationsToLoad(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 335
    .local p1, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 345
    iget-object v3, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 346
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 347
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 348
    .local v2, number:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mTelocationCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;

    .line 349
    .local v0, holder:Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;
    if-eqz v0, :cond_1

    #getter for: Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;->state:I
    invoke-static {v0}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;->access$000(Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;)I

    move-result v3

    if-nez v3, :cond_0

    .line 351
    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 354
    .end local v0           #holder:Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$TelocationHolder;
    .end local v2           #number:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private processLoadedTelocations()V
    .locals 5

    .prologue
    .line 295
    iget-object v4, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 296
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/widget/TextView;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 297
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 298
    .local v3, view:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 299
    .local v2, number:Ljava/lang/String;
    invoke-direct {p0, v3, v2}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->loadCachedTelocation(Landroid/widget/TextView;Ljava/lang/String;)Z

    move-result v1

    .line 300
    .local v1, loaded:Z
    if-eqz v1, :cond_0

    .line 301
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 305
    .end local v1           #loaded:Z
    .end local v2           #number:Ljava/lang/String;
    .end local v3           #view:Landroid/widget/TextView;
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 306
    invoke-direct {p0}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->requestLoading()V

    .line 308
    :cond_2
    return-void
.end method

.method private requestLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 256
    iget-boolean v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mLoadingRequested:Z

    if-nez v0, :cond_0

    .line 257
    iput-boolean v1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mLoadingRequested:Z

    .line 258
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 260
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelRequest(Landroid/widget/TextView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 232
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mTelocationCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 233
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 266
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 287
    :cond_0
    :goto_0
    return v0

    .line 268
    :pswitch_0
    iput-boolean v1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mLoadingRequested:Z

    .line 269
    iget-boolean v1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mPaused:Z

    if-nez v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mLoaderThread:Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$LoaderThread;

    if-nez v1, :cond_1

    .line 271
    new-instance v1, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$LoaderThread;

    invoke-direct {v1, p0}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$LoaderThread;-><init>(Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;)V

    iput-object v1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mLoaderThread:Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$LoaderThread;

    .line 272
    iget-object v1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mLoaderThread:Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$LoaderThread;

    invoke-virtual {v1}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$LoaderThread;->start()V

    .line 275
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mLoaderThread:Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$LoaderThread;

    invoke-virtual {v1}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$LoaderThread;->requestLoading()V

    goto :goto_0

    .line 281
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mPaused:Z

    if-nez v1, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->processLoadedTelocations()V

    goto :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadTelocation(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "number"

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->loadCachedTelocation(Landroid/widget/TextView;Ljava/lang/String;)Z

    move-result v0

    .line 165
    .local v0, loaded:Z
    if-eqz v0, :cond_1

    .line 166
    iget-object v1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-boolean v1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mPaused:Z

    if-nez v1, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->requestLoading()V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mPaused:Z

    .line 240
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mPaused:Z

    .line 247
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->requestLoading()V

    .line 250
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->pause()V

    .line 223
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mLoaderThread:Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$LoaderThread;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mLoaderThread:Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$LoaderThread;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$LoaderThread;->quit()Z

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->mLoaderThread:Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader$LoaderThread;

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/calllog/AsyncDataLoader$TelocationLoader;->clear()V

    .line 228
    return-void
.end method
