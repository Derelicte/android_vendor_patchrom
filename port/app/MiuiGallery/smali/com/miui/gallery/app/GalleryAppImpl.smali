.class public Lcom/miui/gallery/app/GalleryAppImpl;
.super Landroid/app/Application;
.source "GalleryAppImpl.java"

# interfaces
.implements Lcom/miui/gallery/app/GalleryApp;


# static fields
.field private static sContext:Lcom/miui/gallery/app/GalleryAppImpl;


# instance fields
.field private mAllAlbumCache:Lcom/miui/gallery/data/AllAlbumCache;

.field private mAllMediaSet:Lcom/miui/gallery/data/MediaSet;

.field private mDataManager:Lcom/miui/gallery/data/DataManager;

.field private mDownloadCache:Lcom/miui/gallery/data/DownloadCache;

.field private mImageCacheService:Lcom/miui/gallery/data/ImageCacheService;

.field private mIsStorageReady:Z

.field private mRecentAlbumCache:Lcom/miui/gallery/data/RecentAlbumCache;

.field private mThreadPool:Lcom/miui/gallery/util/ThreadPool;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static sGetAndroidContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/miui/gallery/app/GalleryAppImpl;->sContext:Lcom/miui/gallery/app/GalleryAppImpl;

    return-object v0
.end method

.method public static sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/miui/gallery/app/GalleryAppImpl;->sContext:Lcom/miui/gallery/app/GalleryAppImpl;

    return-object v0
.end method

.method public static sIsStorageReady()Z
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/miui/gallery/app/GalleryAppImpl;->sContext:Lcom/miui/gallery/app/GalleryAppImpl;

    iget-boolean v0, v0, Lcom/miui/gallery/app/GalleryAppImpl;->mIsStorageReady:Z

    return v0
.end method


# virtual methods
.method public getAllAlbumCache()Lcom/miui/gallery/data/AllAlbumCache;
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mAllAlbumCache:Lcom/miui/gallery/data/AllAlbumCache;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/miui/gallery/data/AllAlbumCache;

    iget-object v1, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mAllMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {p0}, Lcom/miui/gallery/app/GalleryAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/data/AllAlbumCache;-><init>(Lcom/miui/gallery/data/MediaSet;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mAllAlbumCache:Lcom/miui/gallery/data/AllAlbumCache;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mAllAlbumCache:Lcom/miui/gallery/data/AllAlbumCache;

    return-object v0
.end method

.method public getAndroidContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 97
    return-object p0
.end method

.method public declared-synchronized getDataManager()Lcom/miui/gallery/data/DataManager;
    .locals 1

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mDataManager:Lcom/miui/gallery/data/DataManager;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/miui/gallery/data/DataManager;

    invoke-direct {v0, p0}, Lcom/miui/gallery/data/DataManager;-><init>(Lcom/miui/gallery/app/GalleryApp;)V

    iput-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mDataManager:Lcom/miui/gallery/data/DataManager;

    .line 103
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mDataManager:Lcom/miui/gallery/data/DataManager;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DataManager;->initializeSourceMap()V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mDataManager:Lcom/miui/gallery/data/DataManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDownloadCache()Lcom/miui/gallery/data/DownloadCache;
    .locals 4

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mDownloadCache:Lcom/miui/gallery/data/DownloadCache;

    if-nez v1, :cond_2

    .line 124
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/gallery/app/GalleryAppImpl;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    .local v0, cacheDir:Ljava/io/File;
    if-eqz v0, :cond_2

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 128
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 129
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to create: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .end local v0           #cacheDir:Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 132
    .restart local v0       #cacheDir:Ljava/io/File;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/miui/gallery/data/DownloadCache;

    const-wide/32 v2, 0x4000000

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/miui/gallery/data/DownloadCache;-><init>(Lcom/miui/gallery/app/GalleryApp;Ljava/io/File;J)V

    iput-object v1, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mDownloadCache:Lcom/miui/gallery/data/DownloadCache;

    .line 135
    .end local v0           #cacheDir:Ljava/io/File;
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mDownloadCache:Lcom/miui/gallery/data/DownloadCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized getImageCacheService()Lcom/miui/gallery/data/ImageCacheService;
    .locals 2

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mImageCacheService:Lcom/miui/gallery/data/ImageCacheService;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/miui/gallery/data/ImageCacheService;

    invoke-virtual {p0}, Lcom/miui/gallery/app/GalleryAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/data/ImageCacheService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mImageCacheService:Lcom/miui/gallery/data/ImageCacheService;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mImageCacheService:Lcom/miui/gallery/data/ImageCacheService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRecentAlbumCache()Lcom/miui/gallery/data/RecentAlbumCache;
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mRecentAlbumCache:Lcom/miui/gallery/data/RecentAlbumCache;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lcom/miui/gallery/data/RecentAlbumCache;

    iget-object v1, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mAllMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {p0}, Lcom/miui/gallery/app/GalleryAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/data/RecentAlbumCache;-><init>(Lcom/miui/gallery/data/MediaSet;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mRecentAlbumCache:Lcom/miui/gallery/data/RecentAlbumCache;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mRecentAlbumCache:Lcom/miui/gallery/data/RecentAlbumCache;

    return-object v0
.end method

.method public declared-synchronized getThreadPool()Lcom/miui/gallery/util/ThreadPool;
    .locals 1

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mThreadPool:Lcom/miui/gallery/util/ThreadPool;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/miui/gallery/util/ThreadPool;

    invoke-direct {v0}, Lcom/miui/gallery/util/ThreadPool;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mThreadPool:Lcom/miui/gallery/util/ThreadPool;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mThreadPool:Lcom/miui/gallery/util/ThreadPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyMediaMountState(Ljava/lang/String;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 80
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mIsStorageReady:Z

    .line 82
    invoke-virtual {p0}, Lcom/miui/gallery/app/GalleryAppImpl;->getImageCacheService()Lcom/miui/gallery/data/ImageCacheService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/data/ImageCacheService;->initCache()V

    .line 83
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 58
    sput-object p0, Lcom/miui/gallery/app/GalleryAppImpl;->sContext:Lcom/miui/gallery/app/GalleryAppImpl;

    .line 59
    invoke-static {p0}, Lcom/miui/gallery/util/GalleryUtils;->initialize(Landroid/content/Context;)V

    .line 60
    invoke-static {p0}, Lcom/miui/gallery/gadget/WidgetUtils;->initialize(Landroid/content/Context;)V

    .line 61
    invoke-static {p0}, Lcom/miui/gallery/picasasource/PicasaSource;->initialize(Landroid/content/Context;)V

    .line 62
    invoke-static {p0}, Lcom/miui/gallery/util/AlbumUtils;->initialize(Landroid/content/Context;)V

    .line 65
    invoke-static {}, Lcom/miui/gallery/util/AlbumUtils;->addDefaultRecentAlbums()V

    .line 67
    invoke-virtual {p0}, Lcom/miui/gallery/app/GalleryAppImpl;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/data/DataManager;->getAllMediaSet()Lcom/miui/gallery/data/MediaSet;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mAllMediaSet:Lcom/miui/gallery/data/MediaSet;

    .line 68
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mAllMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaSet;->reload()J

    .line 71
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mAllMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-static {v0}, Lcom/miui/gallery/data/AlbumCache;->initCache(Lcom/miui/gallery/data/MediaSet;)V

    .line 73
    invoke-static {}, Lcom/miui/gallery/StorageExplorer/StorageUtils;->hasStorage()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mIsStorageReady:Z

    .line 76
    invoke-static {}, Lcom/miui/gallery/util/DefaultImages;->tryCopy()V

    .line 77
    return-void
.end method
