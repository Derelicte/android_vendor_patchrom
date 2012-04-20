.class Lcom/android/fileexplorer/FileIconLoader$LoaderThread;
.super Landroid/os/HandlerThread;
.source "FileIconLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/FileIconLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderThread"
.end annotation


# instance fields
.field private mLoaderThreadHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/fileexplorer/FileIconLoader;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/FileIconLoader;)V
    .locals 1
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/fileexplorer/FileIconLoader$LoaderThread;->this$0:Lcom/android/fileexplorer/FileIconLoader;

    .line 389
    const-string v0, "FileIconLoader"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method private getImageThumbnail(J)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "id"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/fileexplorer/FileIconLoader$LoaderThread;->this$0:Lcom/android/fileexplorer/FileIconLoader;

    #getter for: Lcom/android/fileexplorer/FileIconLoader;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/fileexplorer/FileIconLoader;->access$500(Lcom/android/fileexplorer/FileIconLoader;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getVideoThumbnail(J)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "id"

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/fileexplorer/FileIconLoader$LoaderThread;->this$0:Lcom/android/fileexplorer/FileIconLoader;

    #getter for: Lcom/android/fileexplorer/FileIconLoader;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/fileexplorer/FileIconLoader;->access$500(Lcom/android/fileexplorer/FileIconLoader;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 12
    .parameter "msg"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x2

    const/4 v5, 0x1

    .line 407
    iget-object v6, p0, Lcom/android/fileexplorer/FileIconLoader$LoaderThread;->this$0:Lcom/android/fileexplorer/FileIconLoader;

    #getter for: Lcom/android/fileexplorer/FileIconLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v6}, Lcom/android/fileexplorer/FileIconLoader;->access$300(Lcom/android/fileexplorer/FileIconLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 408
    .local v4, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/fileexplorer/FileIconLoader$FileId;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 409
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/FileIconLoader$FileId;

    .line 410
    .local v2, id:Lcom/android/fileexplorer/FileIconLoader$FileId;
    invoke-static {}, Lcom/android/fileexplorer/FileIconLoader;->access$400()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    iget-object v7, v2, Lcom/android/fileexplorer/FileIconLoader$FileId;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileIconLoader$ImageHolder;

    .line 411
    .local v0, holder:Lcom/android/fileexplorer/FileIconLoader$ImageHolder;
    if-eqz v0, :cond_0

    iget v6, v0, Lcom/android/fileexplorer/FileIconLoader$ImageHolder;->state:I

    if-nez v6, :cond_0

    .line 413
    iput v5, v0, Lcom/android/fileexplorer/FileIconLoader$ImageHolder;->state:I

    .line 415
    sget-object v6, Lcom/android/fileexplorer/FileIconLoader$1;->$SwitchMap$com$android$fileexplorer$FileCategoryHelper$FileCategory:[I

    iget-object v7, v2, Lcom/android/fileexplorer/FileIconLoader$FileId;->mCategory:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v7}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 432
    :goto_1
    iput v9, v0, Lcom/android/fileexplorer/FileIconLoader$ImageHolder;->state:I

    .line 433
    invoke-static {}, Lcom/android/fileexplorer/FileIconLoader;->access$400()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    iget-object v7, v2, Lcom/android/fileexplorer/FileIconLoader$FileId;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 417
    :pswitch_0
    iget-object v6, p0, Lcom/android/fileexplorer/FileIconLoader$LoaderThread;->this$0:Lcom/android/fileexplorer/FileIconLoader;

    #getter for: Lcom/android/fileexplorer/FileIconLoader;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/fileexplorer/FileIconLoader;->access$500(Lcom/android/fileexplorer/FileIconLoader;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, v2, Lcom/android/fileexplorer/FileIconLoader$FileId;->mPath:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/fileexplorer/Util;->getApkIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 418
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/FileIconLoader$ImageHolder;->setImage(Ljava/lang/Object;)V

    goto :goto_1

    .line 422
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    :pswitch_1
    iget-object v6, v2, Lcom/android/fileexplorer/FileIconLoader$FileId;->mCategory:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    sget-object v7, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    if-ne v6, v7, :cond_3

    move v3, v5

    .line 423
    .local v3, isVideo:Z
    :goto_2
    iget-wide v6, v2, Lcom/android/fileexplorer/FileIconLoader$FileId;->mId:J

    cmp-long v6, v6, v10

    if-nez v6, :cond_1

    .line 424
    iget-object v6, p0, Lcom/android/fileexplorer/FileIconLoader$LoaderThread;->this$0:Lcom/android/fileexplorer/FileIconLoader;

    iget-object v7, v2, Lcom/android/fileexplorer/FileIconLoader$FileId;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v7, v3}, Lcom/android/fileexplorer/FileIconLoader;->getDbId(Ljava/lang/String;Z)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/fileexplorer/FileIconLoader$FileId;->mId:J

    .line 425
    :cond_1
    iget-wide v6, v2, Lcom/android/fileexplorer/FileIconLoader$FileId;->mId:J

    cmp-long v6, v6, v10

    if-nez v6, :cond_2

    .line 426
    const-string v6, "FileIconLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fail to get dababase id for:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/android/fileexplorer/FileIconLoader$FileId;->mPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_2
    if-eqz v3, :cond_4

    iget-wide v6, v2, Lcom/android/fileexplorer/FileIconLoader$FileId;->mId:J

    invoke-direct {p0, v6, v7}, Lcom/android/fileexplorer/FileIconLoader$LoaderThread;->getVideoThumbnail(J)Landroid/graphics/Bitmap;

    move-result-object v6

    :goto_3
    invoke-virtual {v0, v6}, Lcom/android/fileexplorer/FileIconLoader$ImageHolder;->setImage(Ljava/lang/Object;)V

    goto :goto_1

    .line 422
    .end local v3           #isVideo:Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 428
    .restart local v3       #isVideo:Z
    :cond_4
    iget-wide v6, v2, Lcom/android/fileexplorer/FileIconLoader$FileId;->mId:J

    invoke-direct {p0, v6, v7}, Lcom/android/fileexplorer/FileIconLoader$LoaderThread;->getImageThumbnail(J)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_3

    .line 437
    .end local v0           #holder:Lcom/android/fileexplorer/FileIconLoader$ImageHolder;
    .end local v2           #id:Lcom/android/fileexplorer/FileIconLoader$FileId;
    .end local v3           #isVideo:Z
    :cond_5
    iget-object v6, p0, Lcom/android/fileexplorer/FileIconLoader$LoaderThread;->this$0:Lcom/android/fileexplorer/FileIconLoader;

    #getter for: Lcom/android/fileexplorer/FileIconLoader;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/fileexplorer/FileIconLoader;->access$600(Lcom/android/fileexplorer/FileIconLoader;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 438
    return v5

    .line 415
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public requestLoading()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/fileexplorer/FileIconLoader$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 397
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/fileexplorer/FileIconLoader$LoaderThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FileIconLoader$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/android/fileexplorer/FileIconLoader$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 400
    return-void
.end method
