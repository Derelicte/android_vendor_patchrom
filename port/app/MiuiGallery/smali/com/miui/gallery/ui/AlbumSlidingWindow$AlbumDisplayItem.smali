.class public Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;
.super Lcom/miui/gallery/ui/AbstractDisplayItem;
.source "AlbumSlidingWindow.java"

# interfaces
.implements Lcom/miui/gallery/util/FutureListener;
.implements Lcom/miui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AlbumSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlbumDisplayItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/ui/AbstractDisplayItem;",
        "Lcom/miui/gallery/util/FutureListener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lcom/miui/gallery/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mContent:Lcom/miui/gallery/ui/Texture;

.field private mFuture:Lcom/miui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPanorama:Z

.field private final mMediaType:I

.field private mShowDetails:Z

.field private final mSlotIndex:I

.field private mTextureTitle:Lcom/miui/gallery/ui/StringTexture;

.field private mWaitLoadingDisplayed:Z

.field final synthetic this$0:Lcom/miui/gallery/ui/AlbumSlidingWindow;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/AlbumSlidingWindow;ILcom/miui/gallery/data/MediaItem;I)V
    .locals 5
    .parameter
    .parameter "slotIndex"
    .parameter "item"
    .parameter "sortBy"

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    .line 315
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    .line 316
    invoke-direct {p0, p3}, Lcom/miui/gallery/ui/AbstractDisplayItem;-><init>(Lcom/miui/gallery/data/MediaItem;)V

    .line 317
    if-nez p3, :cond_2

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mMediaType:I

    .line 320
    iput p2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mSlotIndex:I

    .line 321
    invoke-static {p3}, Lcom/miui/gallery/util/GalleryUtils;->isPanorama(Lcom/miui/gallery/data/MediaItem;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mIsPanorama:Z

    .line 322
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mTextureTitle:Lcom/miui/gallery/ui/StringTexture;

    .line 324
    #getter for: Lcom/miui/gallery/ui/AlbumSlidingWindow;->mWaitLoadingTexture:Lcom/miui/gallery/ui/ColorTexture;
    invoke-static {p1}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->access$200(Lcom/miui/gallery/ui/AlbumSlidingWindow;)Lcom/miui/gallery/ui/ColorTexture;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->updateContent(Lcom/miui/gallery/ui/Texture;)V

    .line 326
    if-eq p4, v2, :cond_0

    if-eq p4, v4, :cond_0

    const/4 v1, 0x2

    if-eq p4, v1, :cond_0

    const/4 v1, -0x2

    if-ne p4, v1, :cond_1

    .line 330
    :cond_0
    iput-boolean v2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mShowDetails:Z

    .line 331
    invoke-direct {p0, p3, p4}, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->getShowTitle(Lcom/miui/gallery/data/MediaItem;I)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, title:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 333
    iget-object v1, p1, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mConfig:Lcom/miui/gallery/app/Config$AlbumPageConfig;

    iget v1, v1, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotDetailFontSize:I

    int-to-float v1, v1

    iget-object v2, p1, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mConfig:Lcom/miui/gallery/app/Config$AlbumPageConfig;

    iget-object v2, v2, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v2, v2, Lcom/miui/gallery/ui/SlotView$Spec;->slotWidth:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/miui/gallery/ui/StringTexture;->newInstance(Ljava/lang/String;FIFZ)Lcom/miui/gallery/ui/StringTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mTextureTitle:Lcom/miui/gallery/ui/StringTexture;

    .line 338
    .end local v0           #title:Ljava/lang/String;
    :cond_1
    return-void

    .line 317
    :cond_2
    invoke-virtual {p3}, Lcom/miui/gallery/data/MediaItem;->getMediaType()I

    move-result v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->onLoadBitmapDone()V

    return-void
.end method

.method private getShowTitle(Lcom/miui/gallery/data/MediaItem;I)Ljava/lang/String;
    .locals 10
    .parameter "item"
    .parameter "sortBy"

    .prologue
    .line 342
    if-nez p1, :cond_0

    .line 343
    const-string v5, ""

    .line 373
    :goto_0
    return-object v5

    .line 347
    :cond_0
    const/high16 v1, 0x10

    .line 348
    .local v1, oneM:I
    const/16 v0, 0x400

    .line 349
    .local v0, oneK:I
    const/4 v2, 0x0

    .line 351
    .local v2, showFloat:F
    packed-switch p2, :pswitch_data_0

    .line 369
    :pswitch_0
    const-string v5, ""

    .local v5, title:Ljava/lang/String;
    goto :goto_0

    .line 354
    .end local v5           #title:Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v5

    .line 355
    .restart local v5       #title:Ljava/lang/String;
    goto :goto_0

    .line 358
    .end local v5           #title:Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getSize()J

    move-result-wide v3

    .line 359
    .local v3, size:J
    int-to-long v6, v1

    div-long v6, v3, v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 360
    long-to-float v6, v3

    int-to-float v7, v1

    div-float v2, v6, v7

    .line 361
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/AlbumSlidingWindow;->mDecimalFormater:Ljava/text/DecimalFormat;
    invoke-static {v7}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->access$300(Lcom/miui/gallery/ui/AlbumSlidingWindow;)Ljava/text/DecimalFormat;

    move-result-object v7

    float-to-double v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "M"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #title:Ljava/lang/String;
    goto :goto_0

    .line 363
    .end local v5           #title:Ljava/lang/String;
    :cond_1
    long-to-float v6, v3

    int-to-float v7, v0

    div-float v2, v6, v7

    .line 364
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/AlbumSlidingWindow;->mDecimalFormater:Ljava/text/DecimalFormat;
    invoke-static {v7}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->access$300(Lcom/miui/gallery/ui/AlbumSlidingWindow;)Ljava/text/DecimalFormat;

    move-result-object v7

    float-to-double v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "K"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 367
    .restart local v5       #title:Ljava/lang/String;
    goto :goto_0

    .line 351
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onLoadBitmapDone()V
    .locals 5

    .prologue
    .line 485
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mFuture:Lcom/miui/gallery/util/Future;

    .line 486
    .local v1, future:Lcom/miui/gallery/util/Future;,"Lcom/miui/gallery/util/Future<Landroid/graphics/Bitmap;>;"
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mFuture:Lcom/miui/gallery/util/Future;

    .line 487
    invoke-interface {v1}, Lcom/miui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 488
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-interface {v1}, Lcom/miui/gallery/util/Future;->isCancelled()Z

    move-result v2

    .line 489
    .local v2, isCancelled:Z
    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/AlbumSlidingWindow;->mCacheThumbSize:I
    invoke-static {v4}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->access$900(Lcom/miui/gallery/ui/AlbumSlidingWindow;)I

    move-result v4

    if-lez v4, :cond_1

    if-nez v0, :cond_0

    if-nez v2, :cond_1

    .line 490
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v4}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v3

    .line 491
    .local v3, path:Lcom/miui/gallery/data/Path;
    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/AlbumSlidingWindow;->mImageCache:Lcom/miui/gallery/common/LruCache;
    invoke-static {v4}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->access$1000(Lcom/miui/gallery/ui/AlbumSlidingWindow;)Lcom/miui/gallery/common/LruCache;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/miui/gallery/common/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    .end local v3           #path:Lcom/miui/gallery/data/Path;
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->updateImage(Landroid/graphics/Bitmap;Z)V

    .line 494
    return-void
.end method

.method private updateContent(Lcom/miui/gallery/ui/Texture;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 398
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mContent:Lcom/miui/gallery/ui/Texture;

    .line 399
    return-void
.end method


# virtual methods
.method public cancelLoadBitmap()V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mFuture:Lcom/miui/gallery/util/Future;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mFuture:Lcom/miui/gallery/util/Future;

    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 477
    :cond_0
    return-void
.end method

.method protected onBitmapAvailable(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"

    .prologue
    const/4 v4, 0x1

    .line 378
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    iget v3, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mSlotIndex:I

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    .line 379
    .local v0, isActiveSlot:Z
    if-eqz v0, :cond_0

    .line 380
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    invoke-static {v2}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->access$406(Lcom/miui/gallery/ui/AlbumSlidingWindow;)I

    .line 381
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/AlbumSlidingWindow;->mActiveRequestCount:I
    invoke-static {v2}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->access$400(Lcom/miui/gallery/ui/AlbumSlidingWindow;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    #calls: Lcom/miui/gallery/ui/AlbumSlidingWindow;->requestNonactiveImages()V
    invoke-static {v2}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->access$500(Lcom/miui/gallery/ui/AlbumSlidingWindow;)V

    .line 383
    :cond_0
    if-eqz p1, :cond_1

    .line 384
    new-instance v1, Lcom/miui/gallery/ui/BitmapTexture;

    invoke-direct {v1, p1, v4}, Lcom/miui/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 385
    .local v1, texture:Lcom/miui/gallery/ui/BitmapTexture;
    invoke-virtual {v1, v4}, Lcom/miui/gallery/ui/BitmapTexture;->setThrottled(Z)V

    .line 386
    iget-boolean v2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mWaitLoadingDisplayed:Z

    if-eqz v2, :cond_2

    .line 387
    new-instance v2, Lcom/miui/gallery/ui/FadeInTexture;

    const v3, -0xddddde

    invoke-direct {v2, v3, v1}, Lcom/miui/gallery/ui/FadeInTexture;-><init>(ILcom/miui/gallery/ui/BasicTexture;)V

    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->updateContent(Lcom/miui/gallery/ui/Texture;)V

    .line 391
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/AlbumSlidingWindow;->mListener:Lcom/miui/gallery/ui/AlbumSlidingWindow$Listener;
    invoke-static {v2}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->access$600(Lcom/miui/gallery/ui/AlbumSlidingWindow;)Lcom/miui/gallery/ui/AlbumSlidingWindow$Listener;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 392
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/AlbumSlidingWindow;->mListener:Lcom/miui/gallery/ui/AlbumSlidingWindow$Listener;
    invoke-static {v2}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->access$600(Lcom/miui/gallery/ui/AlbumSlidingWindow;)Lcom/miui/gallery/ui/AlbumSlidingWindow$Listener;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/gallery/ui/AlbumSlidingWindow$Listener;->onContentInvalidated()V

    .line 395
    .end local v1           #texture:Lcom/miui/gallery/ui/BitmapTexture;
    :cond_1
    return-void

    .line 389
    .restart local v1       #texture:Lcom/miui/gallery/ui/BitmapTexture;
    :cond_2
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->updateContent(Lcom/miui/gallery/ui/Texture;)V

    goto :goto_0
.end method

.method public onFutureDone(Lcom/miui/gallery/util/Future;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 481
    .local p1, bitmap:Lcom/miui/gallery/util/Future;,"Lcom/miui/gallery/util/Future<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/AlbumSlidingWindow;->mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;
    invoke-static {v0}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->access$1200(Lcom/miui/gallery/ui/AlbumSlidingWindow;)Lcom/miui/gallery/ui/SynchronizedHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/AlbumSlidingWindow;->mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;
    invoke-static {v1}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->access$1200(Lcom/miui/gallery/ui/AlbumSlidingWindow;)Lcom/miui/gallery/ui/SynchronizedHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lcom/miui/gallery/ui/SynchronizedHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/SynchronizedHandler;->sendMessage(Landroid/os/Message;)Z

    .line 482
    return-void
.end method

.method public render(Lcom/miui/gallery/ui/GLCanvas;I)I
    .locals 18
    .parameter "canvas"
    .parameter "pass"

    .prologue
    .line 404
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mContent:Lcom/miui/gallery/ui/Texture;

    invoke-interface {v1}, Lcom/miui/gallery/ui/Texture;->getWidth()I

    move-result v4

    .line 405
    .local v4, width:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mContent:Lcom/miui/gallery/ui/Texture;

    invoke-interface {v1}, Lcom/miui/gallery/ui/Texture;->getHeight()I

    move-result v5

    .line 407
    .local v5, height:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mBoxWidth:I

    int-to-float v1, v1

    int-to-float v2, v4

    div-float v16, v1, v2

    .line 408
    .local v16, scalex:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mBoxHeight:I

    int-to-float v1, v1

    int-to-float v2, v5

    div-float v17, v1, v2

    .line 409
    .local v17, scaley:F
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 411
    .local v15, scale:F
    int-to-float v1, v4

    mul-float/2addr v1, v15

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v4, v1

    .line 412
    int-to-float v1, v5

    mul-float/2addr v1, v15

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v5, v1

    .line 415
    if-nez p2, :cond_4

    .line 416
    const/4 v7, 0x0

    .line 417
    .local v7, path:Lcom/miui/gallery/data/Path;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v7

    .line 419
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/AlbumSlidingWindow;->mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;
    invoke-static {v1}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->access$700(Lcom/miui/gallery/ui/AlbumSlidingWindow;)Lcom/miui/gallery/ui/SelectionDrawer;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mContent:Lcom/miui/gallery/ui/Texture;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->getRotation()I

    move-result v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mMediaType:I

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mIsPanorama:Z

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v9}, Lcom/miui/gallery/ui/SelectionDrawer;->draw(Lcom/miui/gallery/ui/GLCanvas;Lcom/miui/gallery/ui/Texture;IIILcom/miui/gallery/data/Path;IZ)V

    .line 421
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mContent:Lcom/miui/gallery/ui/Texture;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/AlbumSlidingWindow;->mWaitLoadingTexture:Lcom/miui/gallery/ui/ColorTexture;
    invoke-static {v2}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->access$200(Lcom/miui/gallery/ui/AlbumSlidingWindow;)Lcom/miui/gallery/ui/ColorTexture;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 422
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mWaitLoadingDisplayed:Z

    .line 424
    :cond_1
    const/4 v14, 0x0

    .line 425
    .local v14, result:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mContent:Lcom/miui/gallery/ui/Texture;

    instance-of v1, v1, Lcom/miui/gallery/ui/FadeInTexture;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mContent:Lcom/miui/gallery/ui/Texture;

    check-cast v1, Lcom/miui/gallery/ui/FadeInTexture;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/FadeInTexture;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 427
    or-int/lit8 v14, v14, 0x2

    .line 430
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mShowDetails:Z

    if-eqz v1, :cond_3

    .line 431
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/AlbumSlidingWindow;->mUpCoverBlur:Lcom/miui/gallery/ui/ResourceTexture;
    invoke-static {v1}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->access$800(Lcom/miui/gallery/ui/AlbumSlidingWindow;)Lcom/miui/gallery/ui/ResourceTexture;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    iget-object v1, v1, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mConfig:Lcom/miui/gallery/app/Config$AlbumPageConfig;

    iget-object v1, v1, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v1, v1, Lcom/miui/gallery/ui/SlotView$Spec;->slotWidth:I

    neg-int v1, v1

    div-int/lit8 v10, v1, 0x2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mBoxHeight:I

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    iget-object v2, v2, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mConfig:Lcom/miui/gallery/app/Config$AlbumPageConfig;

    iget v2, v2, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotUpCoverBlurHeight:I

    sub-int v11, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    iget-object v1, v1, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mConfig:Lcom/miui/gallery/app/Config$AlbumPageConfig;

    iget-object v1, v1, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v12, v1, Lcom/miui/gallery/ui/SlotView$Spec;->slotWidth:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    iget-object v1, v1, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mConfig:Lcom/miui/gallery/app/Config$AlbumPageConfig;

    iget v13, v1, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotUpCoverBlurHeight:I

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/miui/gallery/ui/ResourceTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;IIII)V

    .line 433
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mTextureTitle:Lcom/miui/gallery/ui/StringTexture;

    if-eqz v1, :cond_3

    .line 434
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mTextureTitle:Lcom/miui/gallery/ui/StringTexture;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    iget-object v2, v2, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mConfig:Lcom/miui/gallery/app/Config$AlbumPageConfig;

    iget-object v2, v2, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v2, v2, Lcom/miui/gallery/ui/SlotView$Spec;->slotWidth:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    iget-object v3, v3, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mConfig:Lcom/miui/gallery/app/Config$AlbumPageConfig;

    iget-object v3, v3, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v3, v3, Lcom/miui/gallery/ui/SlotView$Spec;->slotHeight:I

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    iget-object v6, v6, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mConfig:Lcom/miui/gallery/app/Config$AlbumPageConfig;

    iget v6, v6, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotDetailFontSize:I

    sub-int/2addr v3, v6

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/gallery/ui/StringTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;II)V

    .line 441
    .end local v7           #path:Lcom/miui/gallery/data/Path;
    .end local v14           #result:I
    :cond_3
    :goto_0
    return v14

    .line 438
    :cond_4
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_5

    .line 439
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/AlbumSlidingWindow;->mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;
    invoke-static {v1}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->access$700(Lcom/miui/gallery/ui/AlbumSlidingWindow;)Lcom/miui/gallery/ui/SelectionDrawer;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v4, v5}, Lcom/miui/gallery/ui/SelectionDrawer;->drawFocus(Lcom/miui/gallery/ui/GLCanvas;II)V

    .line 441
    :cond_5
    const/4 v14, 0x0

    goto :goto_0
.end method

.method public run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "jc"

    .prologue
    .line 462
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/miui/gallery/data/MediaItem;->requestImage(I)Lcom/miui/gallery/util/ThreadPool$Job;

    move-result-object v1

    .line 464
    .local v1, job:Lcom/miui/gallery/util/ThreadPool$Job;,"Lcom/miui/gallery/util/ThreadPool$Job<Landroid/graphics/Bitmap;>;"
    invoke-interface {v1, p1}, Lcom/miui/gallery/util/ThreadPool$Job;->run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 465
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 466
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/AlbumSlidingWindow;->mCacheThumbSize:I
    invoke-static {v2}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->access$900(Lcom/miui/gallery/ui/AlbumSlidingWindow;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 469
    :cond_0
    return-object v0
.end method

.method public bridge synthetic run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public startLoadBitmap()V
    .locals 5

    .prologue
    .line 446
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/AlbumSlidingWindow;->mCacheThumbSize:I
    invoke-static {v2}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->access$900(Lcom/miui/gallery/ui/AlbumSlidingWindow;)I

    move-result v2

    if-lez v2, :cond_1

    .line 447
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v1

    .line 448
    .local v1, path:Lcom/miui/gallery/data/Path;
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/AlbumSlidingWindow;->mImageCache:Lcom/miui/gallery/common/LruCache;
    invoke-static {v2}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->access$1000(Lcom/miui/gallery/ui/AlbumSlidingWindow;)Lcom/miui/gallery/common/LruCache;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/gallery/common/LruCache;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/AlbumSlidingWindow;->mImageCache:Lcom/miui/gallery/common/LruCache;
    invoke-static {v2}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->access$1000(Lcom/miui/gallery/ui/AlbumSlidingWindow;)Lcom/miui/gallery/common/LruCache;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/gallery/common/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 450
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->updateImage(Landroid/graphics/Bitmap;Z)V

    .line 458
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #path:Lcom/miui/gallery/data/Path;
    :goto_0
    return-void

    .line 453
    .restart local v1       #path:Lcom/miui/gallery/data/Path;
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/AlbumSlidingWindow;->mThreadPool:Lcom/miui/gallery/util/JobLimiter;
    invoke-static {v2}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->access$1100(Lcom/miui/gallery/ui/AlbumSlidingWindow;)Lcom/miui/gallery/util/JobLimiter;

    move-result-object v2

    invoke-virtual {v2, p0, p0}, Lcom/miui/gallery/util/JobLimiter;->submit(Lcom/miui/gallery/util/ThreadPool$Job;Lcom/miui/gallery/util/FutureListener;)Lcom/miui/gallery/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mFuture:Lcom/miui/gallery/util/Future;

    goto :goto_0

    .line 455
    .end local v1           #path:Lcom/miui/gallery/data/Path;
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/AlbumSlidingWindow;->mThreadPool:Lcom/miui/gallery/util/JobLimiter;
    invoke-static {v2}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->access$1100(Lcom/miui/gallery/ui/AlbumSlidingWindow;)Lcom/miui/gallery/util/JobLimiter;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/miui/gallery/data/MediaItem;->requestImage(I)Lcom/miui/gallery/util/ThreadPool$Job;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/miui/gallery/util/JobLimiter;->submit(Lcom/miui/gallery/util/ThreadPool$Job;Lcom/miui/gallery/util/FutureListener;)Lcom/miui/gallery/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mFuture:Lcom/miui/gallery/util/Future;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 498
    const-string v0, "AlbumDisplayItem[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->mSlotIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
