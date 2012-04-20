.class Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;
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
    name = "SPPhotoLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;,
        Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$BitmapHolder;
    }
.end annotation


# instance fields
.field private final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private final SP_COLUMNS:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultResourceId:I

.field private mLoaderThread:Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;

.field private mLoadingRequested:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private final mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSPBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$BitmapHolder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/contacts/calllog/AsyncDataLoader;


# direct methods
.method public constructor <init>(Lcom/android/contacts/calllog/AsyncDataLoader;Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "defaultResourceId"

    .prologue
    const/4 v2, 0x0

    .line 490
    iput-object p1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->this$0:Lcom/android/contacts/calllog/AsyncDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 429
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "addr"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "photo"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->SP_COLUMNS:[Ljava/lang/String;

    .line 450
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mSPBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 457
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 463
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mMainThreadHandler:Landroid/os/Handler;

    .line 491
    iput p3, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mDefaultResourceId:I

    .line 492
    iput-object p2, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mContext:Landroid/content/Context;

    .line 493
    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->SP_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;Ljava/lang/String;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 411
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->cacheBitmap(Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 411
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->obtainPhotoIdsToLoad(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private cacheBitmap(Ljava/lang/String;[B)V
    .locals 2
    .parameter "number"
    .parameter "bytes"

    .prologue
    .line 656
    iget-boolean v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mPaused:Z

    if-nez v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mSPBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p2}, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->createBitmapHolderFromBytes([B)Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$BitmapHolder;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    :cond_0
    return-void
.end method

.method private createBitmapHolderFromBytes([B)Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$BitmapHolder;
    .locals 5
    .parameter "bytes"

    .prologue
    const/4 v2, 0x0

    .line 662
    new-instance v1, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$BitmapHolder;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$BitmapHolder;-><init>(Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;Lcom/android/contacts/calllog/AsyncDataLoader$1;)V

    .line 663
    .local v1, holder:Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$BitmapHolder;
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$BitmapHolder;->state:I

    .line 664
    if-eqz p1, :cond_0

    .line 666
    const/4 v2, 0x0

    :try_start_0
    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 667
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$BitmapHolder;->bitmapRef:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v1

    .line 668
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private loadCachedPhoto(Landroid/widget/ImageView;Ljava/lang/String;)Z
    .locals 5
    .parameter "view"
    .parameter "number"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 526
    iget-object v4, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mSPBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$BitmapHolder;

    .line 528
    .local v1, holder:Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$BitmapHolder;
    if-nez v1, :cond_1

    .line 551
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mDefaultResourceId:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    move v2, v3

    .line 552
    :goto_1
    return v2

    .line 529
    :cond_1
    iget v4, v1, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$BitmapHolder;->state:I

    if-ne v4, v2, :cond_0

    .line 532
    iget-object v4, v1, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$BitmapHolder;->bitmapRef:Ljava/lang/ref/SoftReference;

    if-nez v4, :cond_2

    .line 533
    iget v3, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mDefaultResourceId:I

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 537
    :cond_2
    iget-object v4, v1, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$BitmapHolder;->bitmapRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 538
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 539
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 545
    :cond_3
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$BitmapHolder;->bitmapRef:Ljava/lang/ref/SoftReference;

    .line 546
    iput v3, v1, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$BitmapHolder;->state:I

    goto :goto_0
.end method

.method private obtainPhotoIdsToLoad(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 679
    .local p1, photoIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 680
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 690
    iget-object v3, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 691
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 692
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 693
    .local v2, number:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mSPBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$BitmapHolder;

    .line 694
    .local v0, holder:Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$BitmapHolder;
    if-eqz v0, :cond_1

    iget v3, v0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$BitmapHolder;->state:I

    if-nez v3, :cond_0

    .line 695
    :cond_1
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 698
    .end local v0           #holder:Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$BitmapHolder;
    .end local v2           #number:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private processLoadedImages()V
    .locals 5

    .prologue
    .line 637
    iget-object v4, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 638
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/widget/ImageView;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 639
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 640
    .local v3, view:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 641
    .local v2, number:Ljava/lang/String;
    invoke-direct {p0, v3, v2}, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->loadCachedPhoto(Landroid/widget/ImageView;Ljava/lang/String;)Z

    move-result v1

    .line 642
    .local v1, loaded:Z
    if-eqz v1, :cond_0

    .line 643
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 647
    .end local v1           #loaded:Z
    .end local v2           #number:Ljava/lang/String;
    .end local v3           #view:Landroid/widget/ImageView;
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 648
    invoke-direct {p0}, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->requestLoading()V

    .line 650
    :cond_2
    return-void
.end method

.method private requestLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 598
    iget-boolean v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mLoadingRequested:Z

    if-nez v0, :cond_0

    .line 599
    iput-boolean v1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mLoadingRequested:Z

    .line 600
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 602
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelRequest(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 514
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 515
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 571
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mSPBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 572
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 608
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 629
    :cond_0
    :goto_0
    return v0

    .line 610
    :pswitch_0
    iput-boolean v1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mLoadingRequested:Z

    .line 611
    iget-boolean v1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mPaused:Z

    if-nez v1, :cond_0

    .line 612
    iget-object v1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mLoaderThread:Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;

    if-nez v1, :cond_1

    .line 613
    new-instance v1, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;

    iget-object v2, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;-><init>(Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mLoaderThread:Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;

    .line 614
    iget-object v1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mLoaderThread:Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;

    invoke-virtual {v1}, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;->start()V

    .line 617
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mLoaderThread:Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;

    invoke-virtual {v1}, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;->requestLoading()V

    goto :goto_0

    .line 623
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mPaused:Z

    if-nez v1, :cond_0

    .line 624
    invoke-direct {p0}, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->processLoadedImages()V

    goto :goto_0

    .line 608
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "number"

    .prologue
    .line 501
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->loadCachedPhoto(Landroid/widget/ImageView;Ljava/lang/String;)Z

    move-result v0

    .line 502
    .local v0, loaded:Z
    if-eqz v0, :cond_1

    .line 503
    iget-object v1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    iget-boolean v1, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mPaused:Z

    if-nez v1, :cond_0

    .line 508
    invoke-direct {p0}, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->requestLoading()V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 578
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mPaused:Z

    .line 579
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 585
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mPaused:Z

    .line 586
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    invoke-direct {p0}, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->requestLoading()V

    .line 589
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->pause()V

    .line 561
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mLoaderThread:Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mLoaderThread:Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;->quit()Z

    .line 563
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->mLoaderThread:Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader$LoaderThread;

    .line 566
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/calllog/AsyncDataLoader$SPPhotoLoader;->clear()V

    .line 567
    return-void
.end method
