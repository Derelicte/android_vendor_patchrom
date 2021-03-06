.class public abstract Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;
.super Lcom/miui/gallery/ui/AbstractDisplayItem;
.source "HomeSlidingWindowBase.java"

# interfaces
.implements Lcom/miui/gallery/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/HomeSlidingWindowBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AbstractHomeSlotViewDisplayItem"
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
.field protected mContent:Lcom/miui/gallery/ui/Texture;

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

.field protected final mIsPanorama:Z

.field protected final mMediaType:I

.field protected final mSlotIndex:I

.field protected mWaitLoadingDisplayed:Z

.field final synthetic this$0:Lcom/miui/gallery/ui/HomeSlidingWindowBase;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/HomeSlidingWindowBase;ILcom/miui/gallery/data/MediaItem;)V
    .locals 1
    .parameter
    .parameter "slotIndex"
    .parameter "item"

    .prologue
    .line 268
    iput-object p1, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;->this$0:Lcom/miui/gallery/ui/HomeSlidingWindowBase;

    .line 269
    invoke-direct {p0, p3}, Lcom/miui/gallery/ui/AbstractDisplayItem;-><init>(Lcom/miui/gallery/data/MediaItem;)V

    .line 270
    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;->mMediaType:I

    .line 273
    iput p2, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;->mSlotIndex:I

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;->mIsPanorama:Z

    .line 275
    iget-object v0, p1, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mWaitLoadingTexture:Lcom/miui/gallery/ui/ColorTexture;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;->updateContent(Lcom/miui/gallery/ui/Texture;)V

    .line 276
    return-void

    .line 270
    :cond_0
    invoke-virtual {p3}, Lcom/miui/gallery/data/MediaItem;->getMediaType()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public cancelLoadBitmap()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;->mFuture:Lcom/miui/gallery/util/Future;

    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 337
    return-void
.end method

.method protected onBitmapAvailable(Landroid/graphics/Bitmap;)V
    .locals 11
    .parameter "bitmap"

    .prologue
    const/4 v10, 0x2

    const v9, -0xddddde

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 280
    iget-object v4, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;->this$0:Lcom/miui/gallery/ui/HomeSlidingWindowBase;

    iget v5, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;->mSlotIndex:I

    invoke-virtual {v4, v5}, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->isActiveSlot(I)Z

    move-result v1

    .line 281
    .local v1, isActiveSlot:Z
    if-eqz v1, :cond_0

    .line 282
    iget-object v4, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;->this$0:Lcom/miui/gallery/ui/HomeSlidingWindowBase;

    iget v5, v4, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mActiveRequestCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mActiveRequestCount:I

    .line 283
    iget-object v4, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;->this$0:Lcom/miui/gallery/ui/HomeSlidingWindowBase;

    iget v4, v4, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mActiveRequestCount:I

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;->this$0:Lcom/miui/gallery/ui/HomeSlidingWindowBase;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->requestNonactiveImages()V

    .line 286
    :cond_0
    if-eqz p1, :cond_4

    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, blurBitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 290
    .local v3, toBitmapTexture:Lcom/miui/gallery/ui/BitmapTexture;
    iget-object v4, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;->mFrameManager:Lcom/miui/gallery/ui/FrameBitmapManager;

    if-nez v4, :cond_1

    .line 291
    new-instance v4, Lcom/miui/gallery/ui/FrameBitmapManager;

    invoke-direct {v4}, Lcom/miui/gallery/ui/FrameBitmapManager;-><init>()V

    iput-object v4, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;->mFrameManager:Lcom/miui/gallery/ui/FrameBitmapManager;

    .line 292
    iget-object v4, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;->mFrameManager:Lcom/miui/gallery/ui/FrameBitmapManager;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/miui/gallery/ui/FrameBitmapManager;->createFrame(II)V

    .line 295
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;->isNeedFadeInFrame()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 297
    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;->selfChildIndex()I

    move-result v4

    if-ne v7, v4, :cond_5

    .line 298
    iget-object v4, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;->mFrameManager:Lcom/miui/gallery/ui/FrameBitmapManager;

    invoke-virtual {v4, v7, p1, v8}, Lcom/miui/gallery/ui/FrameBitmapManager;->createBitmapWithFrame(ILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 302
    :cond_2
    :goto_0
    invoke-static {p1, v0, v8}, Lcom/miui/gallery/common/BitmapUtils;->createBitmapWithFrame(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 303
    new-instance v3, Lcom/miui/gallery/ui/BitmapTexture;

    .end local v3           #toBitmapTexture:Lcom/miui/gallery/ui/BitmapTexture;
    invoke-direct {v3, v0, v7}, Lcom/miui/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 304
    .restart local v3       #toBitmapTexture:Lcom/miui/gallery/ui/BitmapTexture;
    invoke-virtual {v3, v7}, Lcom/miui/gallery/ui/BitmapTexture;->setThrottled(Z)V

    .line 307
    :cond_3
    new-instance v2, Lcom/miui/gallery/ui/BitmapTexture;

    invoke-direct {v2, p1, v7}, Lcom/miui/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 308
    .local v2, texture:Lcom/miui/gallery/ui/BitmapTexture;
    invoke-virtual {v2, v7}, Lcom/miui/gallery/ui/BitmapTexture;->setThrottled(Z)V

    .line 309
    iget-boolean v4, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;->mWaitLoadingDisplayed:Z

    if-eqz v4, :cond_7

    .line 310
    if-nez v3, :cond_6

    .line 311
    new-instance v4, Lcom/miui/gallery/ui/FadeInTexture;

    invoke-direct {v4, v9, v2}, Lcom/miui/gallery/ui/FadeInTexture;-><init>(ILcom/miui/gallery/ui/BasicTexture;)V

    invoke-virtual {p0, v4}, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;->updateContent(Lcom/miui/gallery/ui/Texture;)V

    .line 318
    :goto_1
    iget-object v4, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;->this$0:Lcom/miui/gallery/ui/HomeSlidingWindowBase;

    iget-object v4, v4, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mListener:Lcom/miui/gallery/ui/HomeSlidingWindowBase$Listener;

    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    .line 319
    iget-object v4, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;->this$0:Lcom/miui/gallery/ui/HomeSlidingWindowBase;

    iget-object v4, v4, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mListener:Lcom/miui/gallery/ui/HomeSlidingWindowBase$Listener;

    invoke-interface {v4}, Lcom/miui/gallery/ui/HomeSlidingWindowBase$Listener;->onContentInvalidated()V

    .line 322
    .end local v0           #blurBitmap:Landroid/graphics/Bitmap;
    .end local v2           #texture:Lcom/miui/gallery/ui/BitmapTexture;
    .end local v3           #toBitmapTexture:Lcom/miui/gallery/ui/BitmapTexture;
    :cond_4
    return-void

    .line 299
    .restart local v0       #blurBitmap:Landroid/graphics/Bitmap;
    .restart local v3       #toBitmapTexture:Lcom/miui/gallery/ui/BitmapTexture;
    :cond_5
    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;->selfChildIndex()I

    move-result v4

    if-ne v10, v4, :cond_2

    .line 300
    iget-object v4, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;->mFrameManager:Lcom/miui/gallery/ui/FrameBitmapManager;

    invoke-virtual {v4, v10, p1, v8}, Lcom/miui/gallery/ui/FrameBitmapManager;->createBitmapWithFrame(ILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 313
    .restart local v2       #texture:Lcom/miui/gallery/ui/BitmapTexture;
    :cond_6
    new-instance v4, Lcom/miui/gallery/ui/FadeInTexture;

    invoke-direct {v4, v9, v3}, Lcom/miui/gallery/ui/FadeInTexture;-><init>(ILcom/miui/gallery/ui/BasicTexture;)V

    invoke-virtual {p0, v4}, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;->updateContent(Lcom/miui/gallery/ui/Texture;)V

    goto :goto_1

    .line 316
    :cond_7
    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;->updateContent(Lcom/miui/gallery/ui/Texture;)V

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
    .line 341
    .local p1, future:Lcom/miui/gallery/util/Future;,"Lcom/miui/gallery/util/Future<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;->this$0:Lcom/miui/gallery/ui/HomeSlidingWindowBase;

    #getter for: Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;
    invoke-static {v0}, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->access$000(Lcom/miui/gallery/ui/HomeSlidingWindowBase;)Lcom/miui/gallery/ui/SynchronizedHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;->this$0:Lcom/miui/gallery/ui/HomeSlidingWindowBase;

    #getter for: Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;
    invoke-static {v1}, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->access$000(Lcom/miui/gallery/ui/HomeSlidingWindowBase;)Lcom/miui/gallery/ui/SynchronizedHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lcom/miui/gallery/ui/SynchronizedHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/SynchronizedHandler;->sendMessage(Landroid/os/Message;)Z

    .line 342
    return-void
.end method

.method public onLoadBitmapDone()V
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;->mFuture:Lcom/miui/gallery/util/Future;

    .line 346
    .local v0, future:Lcom/miui/gallery/util/Future;,"Lcom/miui/gallery/util/Future<Landroid/graphics/Bitmap;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;->mFuture:Lcom/miui/gallery/util/Future;

    .line 347
    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->isCancelled()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;->updateImage(Landroid/graphics/Bitmap;Z)V

    .line 348
    return-void
.end method

.method public startLoadBitmap()V
    .locals 3

    .prologue
    .line 330
    iget-object v0, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;->this$0:Lcom/miui/gallery/ui/HomeSlidingWindowBase;

    iget-object v0, v0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mThreadPool:Lcom/miui/gallery/util/ThreadPool;

    iget-object v1, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/data/MediaItem;->requestImage(I)Lcom/miui/gallery/util/ThreadPool$Job;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/miui/gallery/util/ThreadPool;->submit(Lcom/miui/gallery/util/ThreadPool$Job;Lcom/miui/gallery/util/FutureListener;)Lcom/miui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;->mFuture:Lcom/miui/gallery/util/Future;

    .line 332
    return-void
.end method

.method protected updateContent(Lcom/miui/gallery/ui/Texture;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 325
    iput-object p1, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;->mContent:Lcom/miui/gallery/ui/Texture;

    .line 326
    return-void
.end method
