.class Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;
.super Lcom/miui/gallery/ui/AbstractDisplayItem;
.source "AlbumSetSlidingWindow.java"

# interfaces
.implements Lcom/miui/gallery/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AlbumSetSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GalleryDisplayItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/ui/AbstractDisplayItem;",
        "Lcom/miui/gallery/util/FutureListener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mContent:Lcom/miui/gallery/ui/Texture;

.field private final mCoverIndex:I

.field private final mDataVersion:J

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

.field private final mIsPanorama:Z

.field private final mMediaType:I

.field private final mSlotIndex:I

.field private mWaitLoadingDisplayed:Z

.field final synthetic this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/AlbumSetSlidingWindow;IILcom/miui/gallery/data/MediaItem;)V
    .locals 2
    .parameter
    .parameter "slotIndex"
    .parameter "coverIndex"
    .parameter "item"

    .prologue
    .line 366
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    .line 367
    invoke-direct {p0, p4}, Lcom/miui/gallery/ui/AbstractDisplayItem;-><init>(Lcom/miui/gallery/data/MediaItem;)V

    .line 368
    iput p2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mSlotIndex:I

    .line 369
    iput p3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mCoverIndex:I

    .line 370
    invoke-virtual {p4}, Lcom/miui/gallery/data/MediaItem;->getMediaType()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mMediaType:I

    .line 371
    invoke-virtual {p4}, Lcom/miui/gallery/data/MediaItem;->getDataVersion()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mDataVersion:J

    .line 372
    invoke-static {p4}, Lcom/miui/gallery/util/GalleryUtils;->isPanorama(Lcom/miui/gallery/data/MediaItem;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mIsPanorama:Z

    .line 373
    #getter for: Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mWaitLoadingTexture:Lcom/miui/gallery/ui/ColorTexture;
    invoke-static {p1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->access$300(Lcom/miui/gallery/ui/AlbumSetSlidingWindow;)Lcom/miui/gallery/ui/ColorTexture;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->updateContent(Lcom/miui/gallery/ui/Texture;)V

    .line 374
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->onLoadBitmapDone()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 355
    iget-wide v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mDataVersion:J

    return-wide v0
.end method

.method private onLoadBitmapDone()V
    .locals 3

    .prologue
    .line 490
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mFuture:Lcom/miui/gallery/util/Future;

    .line 491
    .local v0, future:Lcom/miui/gallery/util/Future;,"Lcom/miui/gallery/util/Future<Landroid/graphics/Bitmap;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mFuture:Lcom/miui/gallery/util/Future;

    .line 492
    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->isCancelled()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->updateImage(Landroid/graphics/Bitmap;Z)V

    .line 493
    return-void
.end method

.method private updateContent(Lcom/miui/gallery/ui/Texture;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 422
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mContent:Lcom/miui/gallery/ui/Texture;

    .line 423
    return-void
.end method


# virtual methods
.method public cancelLoadBitmap()V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mFuture:Lcom/miui/gallery/util/Future;

    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 482
    return-void
.end method

.method protected onBitmapAvailable(Landroid/graphics/Bitmap;)V
    .locals 10
    .parameter "bitmap"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const v7, -0xddddde

    const/4 v6, 0x1

    .line 378
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    iget v4, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mSlotIndex:I

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 379
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v3}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->access$406(Lcom/miui/gallery/ui/AlbumSetSlidingWindow;)I

    .line 380
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I
    invoke-static {v3}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->access$400(Lcom/miui/gallery/ui/AlbumSetSlidingWindow;)I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    #calls: Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->requestNonactiveImages()V
    invoke-static {v3}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->access$500(Lcom/miui/gallery/ui/AlbumSetSlidingWindow;)V

    .line 383
    :cond_0
    if-eqz p1, :cond_4

    .line 384
    new-instance v1, Lcom/miui/gallery/ui/BitmapTexture;

    invoke-direct {v1, p1, v6}, Lcom/miui/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 385
    .local v1, texture:Lcom/miui/gallery/ui/BitmapTexture;
    invoke-virtual {v1, v6}, Lcom/miui/gallery/ui/BitmapTexture;->setThrottled(Z)V

    .line 386
    const/4 v0, 0x0

    .line 387
    .local v0, blurBitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 389
    .local v2, toBitmapTexture:Lcom/miui/gallery/ui/BitmapTexture;
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mFrameManager:Lcom/miui/gallery/ui/FrameBitmapManager;

    if-nez v3, :cond_1

    .line 390
    new-instance v3, Lcom/miui/gallery/ui/FrameBitmapManager;

    invoke-direct {v3}, Lcom/miui/gallery/ui/FrameBitmapManager;-><init>()V

    iput-object v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mFrameManager:Lcom/miui/gallery/ui/FrameBitmapManager;

    .line 391
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mFrameManager:Lcom/miui/gallery/ui/FrameBitmapManager;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/ui/FrameBitmapManager;->createFrame(II)V

    .line 394
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->isNeedFadeInFrame()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 396
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->selfChildIndex()I

    move-result v3

    if-ne v6, v3, :cond_5

    .line 397
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mFrameManager:Lcom/miui/gallery/ui/FrameBitmapManager;

    invoke-virtual {v3, v6, p1, v8}, Lcom/miui/gallery/ui/FrameBitmapManager;->createBitmapWithFrame(ILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 402
    :cond_2
    :goto_0
    new-instance v2, Lcom/miui/gallery/ui/BitmapTexture;

    .end local v2           #toBitmapTexture:Lcom/miui/gallery/ui/BitmapTexture;
    invoke-direct {v2, v0, v6}, Lcom/miui/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 403
    .restart local v2       #toBitmapTexture:Lcom/miui/gallery/ui/BitmapTexture;
    invoke-virtual {v2, v6}, Lcom/miui/gallery/ui/BitmapTexture;->setThrottled(Z)V

    .line 405
    :cond_3
    iget-boolean v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mWaitLoadingDisplayed:Z

    if-eqz v3, :cond_7

    .line 406
    if-nez v2, :cond_6

    .line 407
    new-instance v3, Lcom/miui/gallery/ui/FadeInTexture;

    invoke-direct {v3, v7, v1}, Lcom/miui/gallery/ui/FadeInTexture;-><init>(ILcom/miui/gallery/ui/BasicTexture;)V

    invoke-direct {p0, v3}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->updateContent(Lcom/miui/gallery/ui/Texture;)V

    .line 416
    :goto_1
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mListener:Lcom/miui/gallery/ui/AlbumSetSlidingWindow$Listener;
    invoke-static {v3}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->access$600(Lcom/miui/gallery/ui/AlbumSetSlidingWindow;)Lcom/miui/gallery/ui/AlbumSetSlidingWindow$Listener;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 417
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mListener:Lcom/miui/gallery/ui/AlbumSetSlidingWindow$Listener;
    invoke-static {v3}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->access$600(Lcom/miui/gallery/ui/AlbumSetSlidingWindow;)Lcom/miui/gallery/ui/AlbumSetSlidingWindow$Listener;

    move-result-object v3

    invoke-interface {v3}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$Listener;->onContentInvalidated()V

    .line 419
    .end local v0           #blurBitmap:Landroid/graphics/Bitmap;
    .end local v1           #texture:Lcom/miui/gallery/ui/BitmapTexture;
    .end local v2           #toBitmapTexture:Lcom/miui/gallery/ui/BitmapTexture;
    :cond_4
    return-void

    .line 398
    .restart local v0       #blurBitmap:Landroid/graphics/Bitmap;
    .restart local v1       #texture:Lcom/miui/gallery/ui/BitmapTexture;
    .restart local v2       #toBitmapTexture:Lcom/miui/gallery/ui/BitmapTexture;
    :cond_5
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->selfChildIndex()I

    move-result v3

    if-ne v9, v3, :cond_2

    .line 399
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mFrameManager:Lcom/miui/gallery/ui/FrameBitmapManager;

    invoke-virtual {v3, v9, p1, v8}, Lcom/miui/gallery/ui/FrameBitmapManager;->createBitmapWithFrame(ILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 410
    :cond_6
    new-instance v3, Lcom/miui/gallery/ui/FadeInTexture;

    invoke-direct {v3, v7, v2}, Lcom/miui/gallery/ui/FadeInTexture;-><init>(ILcom/miui/gallery/ui/BasicTexture;)V

    invoke-direct {p0, v3}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->updateContent(Lcom/miui/gallery/ui/Texture;)V

    goto :goto_1

    .line 414
    :cond_7
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->updateContent(Lcom/miui/gallery/ui/Texture;)V

    goto :goto_1
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
    .line 486
    .local p1, future:Lcom/miui/gallery/util/Future;,"Lcom/miui/gallery/util/Future<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;
    invoke-static {v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/miui/gallery/ui/AlbumSetSlidingWindow;)Lcom/miui/gallery/ui/SynchronizedHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;
    invoke-static {v1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/miui/gallery/ui/AlbumSetSlidingWindow;)Lcom/miui/gallery/ui/SynchronizedHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lcom/miui/gallery/ui/SynchronizedHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/SynchronizedHandler;->sendMessage(Landroid/os/Message;)Z

    .line 487
    return-void
.end method

.method public render(Lcom/miui/gallery/ui/GLCanvas;I)I
    .locals 19
    .parameter "canvas"
    .parameter "pass"

    .prologue
    .line 428
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mLabelSpec:Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;
    invoke-static {v1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->access$700(Lcom/miui/gallery/ui/AlbumSetSlidingWindow;)Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;

    move-result-object v1

    iget v4, v1, Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;->albumCoverWidth:I

    .line 429
    .local v4, width:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mLabelSpec:Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;
    invoke-static {v1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->access$700(Lcom/miui/gallery/ui/AlbumSetSlidingWindow;)Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;

    move-result-object v1

    iget v5, v1, Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;->albumSlotHeight:I

    .line 432
    .local v5, height:I
    const/4 v8, 0x0

    .line 433
    .local v8, sourceType:I
    const/4 v15, 0x0

    .line 434
    .local v15, cacheFlag:I
    const/16 v16, 0x0

    .line 435
    .local v16, cacheStatus:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;
    invoke-static {v1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->access$800(Lcom/miui/gallery/ui/AlbumSetSlidingWindow;)[Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mSlotIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;
    invoke-static {v3}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->access$800(Lcom/miui/gallery/ui/AlbumSetSlidingWindow;)[Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v2, v3

    aget-object v18, v1, v2

    .line 437
    .local v18, set:Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;
    if-nez v18, :cond_0

    .line 438
    const-string v1, "GallerySlidingWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mData["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mSlotIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is NULL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v1, 0x0

    .line 469
    :goto_0
    return v1

    .line 442
    :cond_0
    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->setPath:Lcom/miui/gallery/data/Path;

    .line 443
    .local v7, path:Lcom/miui/gallery/data/Path;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mCoverIndex:I

    if-nez v1, :cond_1

    .line 444
    move-object/from16 v0, v18

    iget v15, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->cacheFlag:I

    .line 445
    move-object/from16 v0, v18

    iget v0, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->cacheStatus:I

    move/from16 v16, v0

    .line 448
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;
    invoke-static {v1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->access$900(Lcom/miui/gallery/ui/AlbumSetSlidingWindow;)Lcom/miui/gallery/ui/SelectionDrawer;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mContent:Lcom/miui/gallery/ui/Texture;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->getRotation()I

    move-result v6

    move-object/from16 v0, p0

    iget v9, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mMediaType:I

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mIsPanorama:Z

    const/4 v11, 0x0

    const/4 v2, 0x2

    if-ne v15, v2, :cond_2

    const/4 v12, 0x1

    :goto_1
    const/4 v2, 0x2

    if-ne v15, v2, :cond_3

    const/4 v2, 0x3

    move/from16 v0, v16

    if-eq v0, v2, :cond_3

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v13}, Lcom/miui/gallery/ui/SelectionDrawer;->draw(Lcom/miui/gallery/ui/GLCanvas;Lcom/miui/gallery/ui/Texture;IIILcom/miui/gallery/data/Path;IIZIZZ)V

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->isParent()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mChildCount:I

    if-eqz v1, :cond_4

    .line 456
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mChildCount:I

    add-int/lit8 v17, v1, -0x1

    .local v17, i:I
    :goto_3
    if-ltz v17, :cond_4

    .line 457
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    iget-object v9, v1, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mCoverBlur:Lcom/miui/gallery/ui/ResourceTexture;

    div-int/lit8 v1, v4, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mChildPixelGap:I

    mul-int v2, v2, v17

    add-int v11, v1, v2

    neg-int v1, v5

    div-int/lit8 v12, v1, 0x2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mChildPixelGap:I

    move-object/from16 v10, p1

    move v14, v5

    invoke-virtual/range {v9 .. v14}, Lcom/miui/gallery/ui/ResourceTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;IIII)V

    .line 456
    add-int/lit8 v17, v17, -0x1

    goto :goto_3

    .line 448
    .end local v17           #i:I
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    .line 461
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mContent:Lcom/miui/gallery/ui/Texture;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mWaitLoadingTexture:Lcom/miui/gallery/ui/ColorTexture;
    invoke-static {v2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->access$300(Lcom/miui/gallery/ui/AlbumSetSlidingWindow;)Lcom/miui/gallery/ui/ColorTexture;

    move-result-object v2

    if-ne v1, v2, :cond_5

    .line 462
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mWaitLoadingDisplayed:Z

    .line 465
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mContent:Lcom/miui/gallery/ui/Texture;

    instance-of v1, v1, Lcom/miui/gallery/ui/FadeInTexture;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mContent:Lcom/miui/gallery/ui/Texture;

    check-cast v1, Lcom/miui/gallery/ui/FadeInTexture;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/FadeInTexture;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 467
    const/4 v1, 0x2

    goto/16 :goto_0

    .line 469
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public startLoadBitmap()V
    .locals 3

    .prologue
    .line 475
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mThreadPool:Lcom/miui/gallery/util/ThreadPool;
    invoke-static {v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->access$1000(Lcom/miui/gallery/ui/AlbumSetSlidingWindow;)Lcom/miui/gallery/util/ThreadPool;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/data/MediaItem;->requestImage(I)Lcom/miui/gallery/util/ThreadPool$Job;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/miui/gallery/util/ThreadPool;->submit(Lcom/miui/gallery/util/ThreadPool$Job;Lcom/miui/gallery/util/FutureListener;)Lcom/miui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mFuture:Lcom/miui/gallery/util/Future;

    .line 477
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 497
    const-string v0, "GalleryDisplayItem(%s, %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mSlotIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mCoverIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
