.class Lcom/miui/supermarket/util/PackageIconLoader$LoaderThread;
.super Landroid/os/HandlerThread;
.source "PackageIconLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/supermarket/util/PackageIconLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderThread"
.end annotation


# instance fields
.field private mLoaderThreadHandler:Landroid/os/Handler;

.field private final mPhotoItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/supermarket/util/PackageIconItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/supermarket/util/PackageIconLoader;


# direct methods
.method public constructor <init>(Lcom/miui/supermarket/util/PackageIconLoader;Landroid/content/ContentResolver;)V
    .locals 1
    .parameter
    .parameter "resolver"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/miui/supermarket/util/PackageIconLoader$LoaderThread;->this$0:Lcom/miui/supermarket/util/PackageIconLoader;

    .line 239
    const-string v0, "PackageIconLoader"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/supermarket/util/PackageIconLoader$LoaderThread;->mPhotoItems:Ljava/util/ArrayList;

    .line 240
    return-void
.end method

.method private loadPhotosFromOnline()V
    .locals 6

    .prologue
    .line 263
    iget-object v4, p0, Lcom/miui/supermarket/util/PackageIconLoader$LoaderThread;->this$0:Lcom/miui/supermarket/util/PackageIconLoader;

    iget-object v5, p0, Lcom/miui/supermarket/util/PackageIconLoader$LoaderThread;->mPhotoItems:Ljava/util/ArrayList;

    #calls: Lcom/miui/supermarket/util/PackageIconLoader;->obtainPhotoIdsToLoad(Ljava/util/ArrayList;)V
    invoke-static {v4, v5}, Lcom/miui/supermarket/util/PackageIconLoader;->access$100(Lcom/miui/supermarket/util/PackageIconLoader;Ljava/util/ArrayList;)V

    .line 265
    iget-object v4, p0, Lcom/miui/supermarket/util/PackageIconLoader$LoaderThread;->mPhotoItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 266
    .local v0, count:I
    if-nez v0, :cond_1

    .line 279
    :cond_0
    return-void

    .line 270
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 271
    iget-object v4, p0, Lcom/miui/supermarket/util/PackageIconLoader$LoaderThread;->mPhotoItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/supermarket/util/PackageIconItem;

    .line 273
    .local v3, item:Lcom/miui/supermarket/util/PackageIconItem;
    :try_start_0
    iget-object v4, p0, Lcom/miui/supermarket/util/PackageIconLoader$LoaderThread;->this$0:Lcom/miui/supermarket/util/PackageIconLoader;

    #getter for: Lcom/miui/supermarket/util/PackageIconLoader;->mManager:Lcom/miui/supermarket/util/PackageIconItemManager;
    invoke-static {v4}, Lcom/miui/supermarket/util/PackageIconLoader;->access$200(Lcom/miui/supermarket/util/PackageIconLoader;)Lcom/miui/supermarket/util/PackageIconItemManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/miui/supermarket/util/PackageIconItemManager;->downloadOnePhoto(Lcom/miui/supermarket/util/PackageIconItem;)V

    .line 274
    iget-object v4, p0, Lcom/miui/supermarket/util/PackageIconLoader$LoaderThread;->this$0:Lcom/miui/supermarket/util/PackageIconLoader;

    #getter for: Lcom/miui/supermarket/util/PackageIconLoader;->mManager:Lcom/miui/supermarket/util/PackageIconItemManager;
    invoke-static {v4}, Lcom/miui/supermarket/util/PackageIconLoader;->access$200(Lcom/miui/supermarket/util/PackageIconLoader;)Lcom/miui/supermarket/util/PackageIconItemManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/miui/supermarket/util/PackageIconItemManager;->tryGetBitmapLocally(Lcom/miui/supermarket/util/PackageIconItem;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/supermarket/util/PackageIconItem;->setCachedBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    :catch_0
    move-exception v1

    .line 276
    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/miui/supermarket/util/PackageIconItem;->setDownloadFailed(Z)V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/miui/supermarket/util/PackageIconLoader$LoaderThread;->loadPhotosFromOnline()V

    .line 258
    iget-object v0, p0, Lcom/miui/supermarket/util/PackageIconLoader$LoaderThread;->this$0:Lcom/miui/supermarket/util/PackageIconLoader;

    #getter for: Lcom/miui/supermarket/util/PackageIconLoader;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/supermarket/util/PackageIconLoader;->access$000(Lcom/miui/supermarket/util/PackageIconLoader;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 259
    const/4 v0, 0x1

    return v0
.end method

.method public requestLoading()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/miui/supermarket/util/PackageIconLoader$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/miui/supermarket/util/PackageIconLoader$LoaderThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/miui/supermarket/util/PackageIconLoader$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/miui/supermarket/util/PackageIconLoader$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 250
    return-void
.end method
