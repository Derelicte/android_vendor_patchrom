.class public Lcom/miui/gallery/data/UriImage;
.super Lcom/miui/gallery/data/MediaItem;
.source "UriImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/UriImage$BitmapJob;,
        Lcom/miui/gallery/data/UriImage$RegionDecoderJob;
    }
.end annotation


# instance fields
.field private mApplication:Lcom/miui/gallery/app/GalleryApp;

.field private mCacheEntry:Lcom/miui/gallery/data/DownloadCache$Entry;

.field private final mContentType:Ljava/lang/String;

.field private mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mHeight:I

.field private mRotation:I

.field private mState:I

.field private final mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/data/Path;Landroid/net/Uri;)V
    .locals 2
    .parameter "application"
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 63
    invoke-static {}, Lcom/miui/gallery/data/UriImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/miui/gallery/data/MediaItem;-><init>(Lcom/miui/gallery/data/Path;J)V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/data/UriImage;->mState:I

    .line 64
    iput-object p3, p0, Lcom/miui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    .line 65
    invoke-static {p1}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/GalleryApp;

    iput-object v0, p0, Lcom/miui/gallery/data/UriImage;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    .line 66
    invoke-direct {p0, p3}, Lcom/miui/gallery/data/UriImage;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/UriImage;->mContentType:Ljava/lang/String;

    .line 67
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/data/UriImage;Lcom/miui/gallery/util/ThreadPool$JobContext;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/miui/gallery/data/UriImage;->prepareInputFile(Lcom/miui/gallery/util/ThreadPool$JobContext;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/data/UriImage;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/gallery/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/gallery/data/UriImage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/miui/gallery/data/UriImage;->mWidth:I

    return p1
.end method

.method static synthetic access$402(Lcom/miui/gallery/data/UriImage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/miui/gallery/data/UriImage;->mHeight:I

    return p1
.end method

.method private getMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "uri"

    .prologue
    .line 70
    const-string v2, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, extension:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, type:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 77
    .end local v0           #extension:Ljava/lang/String;
    .end local v1           #type:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/data/UriImage;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private isSharable()Z
    .locals 2

    .prologue
    .line 240
    const-string v0, "file"

    iget-object v1, p0, Lcom/miui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private openFileOrDownloadTempFile(Lcom/miui/gallery/util/ThreadPool$JobContext;)V
    .locals 3
    .parameter "jc"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/miui/gallery/data/UriImage;->openOrDownloadInner(Lcom/miui/gallery/util/ThreadPool$JobContext;)I

    move-result v0

    .line 92
    .local v0, state:I
    monitor-enter p0

    .line 93
    :try_start_0
    iput v0, p0, Lcom/miui/gallery/data/UriImage;->mState:I

    .line 94
    iget v1, p0, Lcom/miui/gallery/data/UriImage;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 95
    iget-object v1, p0, Lcom/miui/gallery/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/miui/gallery/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Lcom/miui/gallery/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 97
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 100
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 101
    monitor-exit p0

    .line 102
    return-void

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private openOrDownloadInner(Lcom/miui/gallery/util/ThreadPool$JobContext;)I
    .locals 12
    .parameter "jc"

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 105
    iget-object v9, p0, Lcom/miui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, scheme:Ljava/lang/String;
    const-string v9, "content"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android.resource"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "file"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 110
    :cond_0
    :try_start_0
    const-string v9, "image/jpeg"

    iget-object v10, p0, Lcom/miui/gallery/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 111
    iget-object v9, p0, Lcom/miui/gallery/data/UriImage;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v9}, Lcom/miui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 113
    .local v2, is:Ljava/io/InputStream;
    invoke-static {v2}, Lcom/miui/gallery/data/Exif;->getOrientation(Ljava/io/InputStream;)I

    move-result v9

    iput v9, p0, Lcom/miui/gallery/data/UriImage;->mRotation:I

    .line 114
    invoke-static {v2}, Lcom/miui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 116
    .end local v2           #is:Ljava/io/InputStream;
    :cond_1
    iget-object v9, p0, Lcom/miui/gallery/data/UriImage;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v9}, Lcom/miui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    const-string v11, "r"

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    iput-object v9, p0, Lcom/miui/gallery/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 118
    invoke-interface {p1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_3

    .line 146
    :cond_2
    :goto_0
    return v6

    :cond_3
    move v6, v8

    .line 119
    goto :goto_0

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v6, "UriImage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fail to open: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v1}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    .line 122
    goto :goto_0

    .line 126
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_4
    :try_start_1
    new-instance v9, Ljava/net/URI;

    iget-object v10, p0, Lcom/miui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v5

    .line 127
    .local v5, url:Ljava/net/URL;
    iget-object v9, p0, Lcom/miui/gallery/data/UriImage;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v9}, Lcom/miui/gallery/app/GalleryApp;->getDownloadCache()Lcom/miui/gallery/data/DownloadCache;

    move-result-object v0

    .line 128
    .local v0, downloadCache:Lcom/miui/gallery/data/DownloadCache;
    if-eqz v0, :cond_5

    .line 129
    invoke-virtual {v0, p1, v5}, Lcom/miui/gallery/data/DownloadCache;->download(Lcom/miui/gallery/util/ThreadPool$JobContext;Ljava/net/URL;)Lcom/miui/gallery/data/DownloadCache$Entry;

    move-result-object v9

    iput-object v9, p0, Lcom/miui/gallery/data/UriImage;->mCacheEntry:Lcom/miui/gallery/data/DownloadCache$Entry;

    .line 130
    invoke-interface {p1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v9

    if-nez v9, :cond_2

    .line 132
    :cond_5
    iget-object v6, p0, Lcom/miui/gallery/data/UriImage;->mCacheEntry:Lcom/miui/gallery/data/DownloadCache$Entry;

    if-nez v6, :cond_6

    .line 133
    const-string v6, "UriImage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "download failed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 134
    goto :goto_0

    .line 136
    :cond_6
    const-string v6, "image/jpeg"

    iget-object v9, p0, Lcom/miui/gallery/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 137
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/miui/gallery/data/UriImage;->mCacheEntry:Lcom/miui/gallery/data/DownloadCache$Entry;

    iget-object v6, v6, Lcom/miui/gallery/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 138
    .restart local v2       #is:Ljava/io/InputStream;
    invoke-static {v2}, Lcom/miui/gallery/data/Exif;->getOrientation(Ljava/io/InputStream;)I

    move-result v6

    iput v6, p0, Lcom/miui/gallery/data/UriImage;->mRotation:I

    .line 139
    invoke-static {v2}, Lcom/miui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 141
    .end local v2           #is:Ljava/io/InputStream;
    :cond_7
    iget-object v6, p0, Lcom/miui/gallery/data/UriImage;->mCacheEntry:Lcom/miui/gallery/data/DownloadCache$Entry;

    iget-object v6, v6, Lcom/miui/gallery/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    const/high16 v9, 0x1000

    invoke-static {v6, v9}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move v6, v8

    .line 143
    goto/16 :goto_0

    .line 144
    .end local v0           #downloadCache:Lcom/miui/gallery/data/DownloadCache;
    .end local v5           #url:Ljava/net/URL;
    :catch_1
    move-exception v4

    .line 145
    .local v4, t:Ljava/lang/Throwable;
    const-string v6, "UriImage"

    const-string v8, "download error"

    invoke-static {v6, v8, v4}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    .line 146
    goto/16 :goto_0
.end method

.method private prepareInputFile(Lcom/miui/gallery/util/ThreadPool$JobContext;)Z
    .locals 4
    .parameter "jc"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 152
    new-instance v2, Lcom/miui/gallery/data/UriImage$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/data/UriImage$1;-><init>(Lcom/miui/gallery/data/UriImage;)V

    invoke-interface {p1, v2}, Lcom/miui/gallery/util/ThreadPool$JobContext;->setCancelListener(Lcom/miui/gallery/util/ThreadPool$CancelListener;)V

    .line 161
    :goto_0
    monitor-enter p0

    .line 162
    :try_start_0
    invoke-interface {p1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit p0

    .line 169
    :goto_1
    return v0

    .line 163
    :cond_0
    iget v2, p0, Lcom/miui/gallery/data/UriImage;->mState:I

    if-nez v2, :cond_1

    .line 164
    const/4 v2, 0x1

    iput v2, p0, Lcom/miui/gallery/data/UriImage;->mState:I

    .line 178
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-direct {p0, p1}, Lcom/miui/gallery/data/UriImage;->openFileOrDownloadTempFile(Lcom/miui/gallery/util/ThreadPool$JobContext;)V

    goto :goto_0

    .line 166
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/miui/gallery/data/UriImage;->mState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 167
    monitor-exit p0

    goto :goto_1

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 168
    :cond_2
    :try_start_2
    iget v2, p0, Lcom/miui/gallery/data/UriImage;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 169
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_1

    .line 172
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 176
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v2

    goto :goto_2
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/miui/gallery/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 285
    return-void

    .line 283
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/miui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDetails()Lcom/miui/gallery/data/MediaDetails;
    .locals 4

    .prologue
    .line 255
    invoke-super {p0}, Lcom/miui/gallery/data/MediaItem;->getDetails()Lcom/miui/gallery/data/MediaDetails;

    move-result-object v0

    .line 256
    .local v0, details:Lcom/miui/gallery/data/MediaDetails;
    iget v2, p0, Lcom/miui/gallery/data/UriImage;->mWidth:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/miui/gallery/data/UriImage;->mHeight:I

    if-eqz v2, :cond_0

    .line 257
    const/4 v2, 0x5

    iget v3, p0, Lcom/miui/gallery/data/UriImage;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 258
    const/4 v2, 0x6

    iget v3, p0, Lcom/miui/gallery/data/UriImage;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 260
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/data/UriImage;->mContentType:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 261
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/miui/gallery/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 263
    :cond_1
    const-string v2, "file"

    iget-object v3, p0, Lcom/miui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 264
    iget-object v2, p0, Lcom/miui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, filePath:Ljava/lang/String;
    const/16 v2, 0xc8

    invoke-virtual {v0, v2, v1}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 266
    invoke-static {v0, v1}, Lcom/miui/gallery/data/MediaDetails;->extractExifInfo(Lcom/miui/gallery/data/MediaDetails;Ljava/lang/String;)V

    .line 268
    .end local v1           #filePath:Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x2

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/miui/gallery/data/UriImage;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/miui/gallery/data/UriImage;->mRotation:I

    return v0
.end method

.method public getSupportedOperations()I
    .locals 2

    .prologue
    .line 227
    const/16 v0, 0x220

    .line 228
    .local v0, supported:I
    invoke-direct {p0}, Lcom/miui/gallery/data/UriImage;->isSharable()Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/gallery/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    or-int/lit8 v0, v0, 0x40

    .line 232
    :cond_1
    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public requestImage(I)Lcom/miui/gallery/util/ThreadPool$Job;
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/miui/gallery/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lcom/miui/gallery/data/UriImage$BitmapJob;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/data/UriImage$BitmapJob;-><init>(Lcom/miui/gallery/data/UriImage;I)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/miui/gallery/util/ThreadPool$Job;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/gallery/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Lcom/miui/gallery/data/UriImage$RegionDecoderJob;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/data/UriImage$RegionDecoderJob;-><init>(Lcom/miui/gallery/data/UriImage;Lcom/miui/gallery/data/UriImage$1;)V

    return-object v0
.end method
