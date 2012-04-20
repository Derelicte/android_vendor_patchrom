.class public Lcom/android/fileexplorer/FileIconLoader;
.super Ljava/lang/Object;
.source "FileIconLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/FileIconLoader$1;,
        Lcom/android/fileexplorer/FileIconLoader$LoaderThread;,
        Lcom/android/fileexplorer/FileIconLoader$IconLoadFinishListener;,
        Lcom/android/fileexplorer/FileIconLoader$FileId;,
        Lcom/android/fileexplorer/FileIconLoader$DrawableHolder;,
        Lcom/android/fileexplorer/FileIconLoader$BitmapHolder;,
        Lcom/android/fileexplorer/FileIconLoader$ImageHolder;
    }
.end annotation


# static fields
.field private static final mImageCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/fileexplorer/FileIconLoader$ImageHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private iconLoadListener:Lcom/android/fileexplorer/FileIconLoader$IconLoadFinishListener;

.field private final mContext:Landroid/content/Context;

.field private mLoaderThread:Lcom/android/fileexplorer/FileIconLoader$LoaderThread;

.field private mLoadingRequested:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mMediaProvider:Landroid/content/IContentProvider;

.field private mPaused:Z

.field private final mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Lcom/android/fileexplorer/FileIconLoader$FileId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/FileIconLoader;->mImageCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/fileexplorer/FileIconLoader$IconLoadFinishListener;)V
    .locals 2
    .parameter "context"
    .parameter "l"

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/FileIconLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 137
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FileIconLoader;->mMainThreadHandler:Landroid/os/Handler;

    .line 168
    iput-object p1, p0, Lcom/android/fileexplorer/FileIconLoader;->mContext:Landroid/content/Context;

    .line 169
    iput-object p2, p0, Lcom/android/fileexplorer/FileIconLoader;->iconLoadListener:Lcom/android/fileexplorer/FileIconLoader$IconLoadFinishListener;

    .line 170
    iget-object v0, p0, Lcom/android/fileexplorer/FileIconLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/FileIconLoader;->mMediaProvider:Landroid/content/IContentProvider;

    .line 171
    return-void
.end method

.method static synthetic access$300(Lcom/android/fileexplorer/FileIconLoader;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/fileexplorer/FileIconLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/fileexplorer/FileIconLoader;->mImageCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/fileexplorer/FileIconLoader;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/fileexplorer/FileIconLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/fileexplorer/FileIconLoader;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/fileexplorer/FileIconLoader;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private loadCachedIcon(Landroid/widget/ImageView;Ljava/lang/String;Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;)Z
    .locals 5
    .parameter "view"
    .parameter "path"
    .parameter "cate"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 223
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v1

    .line 227
    :cond_1
    sget-object v3, Lcom/android/fileexplorer/FileIconLoader;->mImageCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileIconLoader$ImageHolder;

    .line 229
    .local v0, holder:Lcom/android/fileexplorer/FileIconLoader$ImageHolder;
    if-nez v0, :cond_4

    .line 230
    invoke-static {p3}, Lcom/android/fileexplorer/FileIconLoader$ImageHolder;->create(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/FileIconLoader$ImageHolder;

    move-result-object v0

    .line 231
    if-nez v0, :cond_2

    move v1, v2

    .line 232
    goto :goto_0

    .line 234
    :cond_2
    sget-object v1, Lcom/android/fileexplorer/FileIconLoader;->mImageCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_3
    iput v2, v0, Lcom/android/fileexplorer/FileIconLoader$ImageHolder;->state:I

    move v1, v2

    .line 248
    goto :goto_0

    .line 235
    :cond_4
    iget v3, v0, Lcom/android/fileexplorer/FileIconLoader$ImageHolder;->state:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 236
    invoke-virtual {v0}, Lcom/android/fileexplorer/FileIconLoader$ImageHolder;->isNull()Z

    move-result v3

    if-nez v3, :cond_0

    .line 242
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/FileIconLoader$ImageHolder;->setImageView(Landroid/widget/ImageView;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method private processLoadedIcons()V
    .locals 6

    .prologue
    .line 364
    iget-object v4, p0, Lcom/android/fileexplorer/FileIconLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 365
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/widget/ImageView;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 366
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 367
    .local v3, view:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/fileexplorer/FileIconLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileIconLoader$FileId;

    .line 368
    .local v0, fileId:Lcom/android/fileexplorer/FileIconLoader$FileId;
    iget-object v4, v0, Lcom/android/fileexplorer/FileIconLoader$FileId;->mPath:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/fileexplorer/FileIconLoader$FileId;->mCategory:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/fileexplorer/FileIconLoader;->loadCachedIcon(Landroid/widget/ImageView;Ljava/lang/String;Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;)Z

    move-result v2

    .line 369
    .local v2, loaded:Z
    if-eqz v2, :cond_0

    .line 370
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 371
    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v0, Lcom/android/fileexplorer/FileIconLoader$FileId;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 372
    iget-object v4, p0, Lcom/android/fileexplorer/FileIconLoader;->iconLoadListener:Lcom/android/fileexplorer/FileIconLoader$IconLoadFinishListener;

    invoke-interface {v4, v3}, Lcom/android/fileexplorer/FileIconLoader$IconLoadFinishListener;->onIconLoadFinished(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 377
    .end local v0           #fileId:Lcom/android/fileexplorer/FileIconLoader$FileId;
    .end local v2           #loaded:Z
    .end local v3           #view:Landroid/widget/ImageView;
    :cond_1
    iget-object v4, p0, Lcom/android/fileexplorer/FileIconLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 378
    invoke-direct {p0}, Lcom/android/fileexplorer/FileIconLoader;->requestLoading()V

    .line 380
    :cond_2
    return-void
.end method

.method private requestLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 324
    iget-boolean v0, p0, Lcom/android/fileexplorer/FileIconLoader;->mLoadingRequested:Z

    if-nez v0, :cond_0

    .line 325
    iput-boolean v1, p0, Lcom/android/fileexplorer/FileIconLoader;->mLoadingRequested:Z

    .line 326
    iget-object v0, p0, Lcom/android/fileexplorer/FileIconLoader;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 328
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelRequest(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/fileexplorer/FileIconLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    return-void
.end method

.method public getDbId(Ljava/lang/String;Z)J
    .locals 13
    .parameter "path"
    .parameter "isVideo"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    const/4 v5, 0x0

    .line 252
    const-string v9, "external"

    .line 253
    .local v9, volumeName:Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-static {v9}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 254
    .local v1, uri:Landroid/net/Uri;
    :goto_0
    const-string v3, "_data=?"

    .line 256
    .local v3, selection:Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    aput-object p1, v4, v5

    .line 260
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "_data"

    aput-object v0, v2, v12

    .line 265
    .local v2, columns:[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/fileexplorer/FileIconLoader;->mMediaProvider:Landroid/content/IContentProvider;

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 266
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_1

    move-wide v7, v10

    .line 277
    .end local v6           #c:Landroid/database/Cursor;
    :goto_1
    return-wide v7

    .line 253
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    :cond_0
    invoke-static {v9}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 268
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_1
    const-wide/16 v7, 0x0

    .line 269
    .local v7, id:J
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 272
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 274
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #id:J
    :catch_0
    move-exception v0

    move-wide v7, v10

    .line 277
    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 334
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 355
    :cond_0
    :goto_0
    return v0

    .line 336
    :pswitch_0
    iput-boolean v1, p0, Lcom/android/fileexplorer/FileIconLoader;->mLoadingRequested:Z

    .line 337
    iget-boolean v1, p0, Lcom/android/fileexplorer/FileIconLoader;->mPaused:Z

    if-nez v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/android/fileexplorer/FileIconLoader;->mLoaderThread:Lcom/android/fileexplorer/FileIconLoader$LoaderThread;

    if-nez v1, :cond_1

    .line 339
    new-instance v1, Lcom/android/fileexplorer/FileIconLoader$LoaderThread;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/FileIconLoader$LoaderThread;-><init>(Lcom/android/fileexplorer/FileIconLoader;)V

    iput-object v1, p0, Lcom/android/fileexplorer/FileIconLoader;->mLoaderThread:Lcom/android/fileexplorer/FileIconLoader$LoaderThread;

    .line 340
    iget-object v1, p0, Lcom/android/fileexplorer/FileIconLoader;->mLoaderThread:Lcom/android/fileexplorer/FileIconLoader$LoaderThread;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileIconLoader$LoaderThread;->start()V

    .line 343
    :cond_1
    iget-object v1, p0, Lcom/android/fileexplorer/FileIconLoader;->mLoaderThread:Lcom/android/fileexplorer/FileIconLoader$LoaderThread;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileIconLoader$LoaderThread;->requestLoading()V

    goto :goto_0

    .line 349
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/fileexplorer/FileIconLoader;->mPaused:Z

    if-nez v1, :cond_0

    .line 350
    invoke-direct {p0}, Lcom/android/fileexplorer/FileIconLoader;->processLoadedIcons()V

    goto :goto_0

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadIcon(Landroid/widget/ImageView;Ljava/lang/String;JLcom/android/fileexplorer/FileCategoryHelper$FileCategory;)Z
    .locals 3
    .parameter "view"
    .parameter "path"
    .parameter "id"
    .parameter "cate"

    .prologue
    .line 199
    invoke-direct {p0, p1, p2, p5}, Lcom/android/fileexplorer/FileIconLoader;->loadCachedIcon(Landroid/widget/ImageView;Ljava/lang/String;Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;)Z

    move-result v0

    .line 200
    .local v0, loaded:Z
    if-eqz v0, :cond_1

    .line 201
    iget-object v2, p0, Lcom/android/fileexplorer/FileIconLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_0
    :goto_0
    return v0

    .line 203
    :cond_1
    new-instance v1, Lcom/android/fileexplorer/FileIconLoader$FileId;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/android/fileexplorer/FileIconLoader$FileId;-><init>(Ljava/lang/String;JLcom/android/fileexplorer/FileCategoryHelper$FileCategory;)V

    .line 204
    .local v1, p:Lcom/android/fileexplorer/FileIconLoader$FileId;
    iget-object v2, p0, Lcom/android/fileexplorer/FileIconLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-boolean v2, p0, Lcom/android/fileexplorer/FileIconLoader;->mPaused:Z

    if-nez v2, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/android/fileexplorer/FileIconLoader;->requestLoading()V

    goto :goto_0
.end method
