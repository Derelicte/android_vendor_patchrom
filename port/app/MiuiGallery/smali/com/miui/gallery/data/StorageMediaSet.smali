.class public Lcom/miui/gallery/data/StorageMediaSet;
.super Lcom/miui/gallery/data/MediaSet;
.source "StorageMediaSet.java"


# instance fields
.field private final mApplication:Lcom/miui/gallery/app/GalleryApp;

.field mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

.field private final mFolderPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Ljava/lang/String;)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "folderPath"

    .prologue
    .line 25
    invoke-static {}, Lcom/miui/gallery/data/StorageMediaSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/data/MediaSet;-><init>(Lcom/miui/gallery/data/Path;J)V

    .line 26
    iput-object p2, p0, Lcom/miui/gallery/data/StorageMediaSet;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    .line 27
    iput-object p3, p0, Lcom/miui/gallery/data/StorageMediaSet;->mFolderPath:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private static loadOrUpdateItem(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/data/DataManager;Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/StorageExplorer/FileInfo;)Lcom/miui/gallery/data/MediaItem;
    .locals 2
    .parameter "path"
    .parameter "dataManager"
    .parameter "app"
    .parameter "fileInfo"

    .prologue
    .line 67
    invoke-virtual {p1, p0}, Lcom/miui/gallery/data/DataManager;->peekMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/StorageMediaItem;

    .line 68
    .local v0, item:Lcom/miui/gallery/data/StorageMediaItem;
    if-nez v0, :cond_1

    .line 69
    invoke-virtual {p3}, Lcom/miui/gallery/StorageExplorer/FileInfo;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    new-instance v0, Lcom/miui/gallery/data/StorageVideo;

    .end local v0           #item:Lcom/miui/gallery/data/StorageMediaItem;
    invoke-direct {v0, p0, p2, p3}, Lcom/miui/gallery/data/StorageVideo;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/StorageExplorer/FileInfo;)V

    .line 77
    .restart local v0       #item:Lcom/miui/gallery/data/StorageMediaItem;
    :goto_0
    return-object v0

    .line 72
    :cond_0
    new-instance v0, Lcom/miui/gallery/data/StorageImage;

    .end local v0           #item:Lcom/miui/gallery/data/StorageMediaItem;
    invoke-direct {v0, p0, p2, p3}, Lcom/miui/gallery/data/StorageImage;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/StorageExplorer/FileInfo;)V

    .restart local v0       #item:Lcom/miui/gallery/data/StorageMediaItem;
    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {v0, p3}, Lcom/miui/gallery/data/StorageMediaItem;->updateContent(Lcom/miui/gallery/StorageExplorer/FileInfo;)V

    goto :goto_0
.end method


# virtual methods
.method public delete()V
    .locals 1

    .prologue
    .line 115
    invoke-static {}, Lcom/miui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    .line 116
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaSet;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/FileBucket;->deleteAllMedia()V

    .line 117
    return-void
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaSet;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 8
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {}, Lcom/miui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    .line 40
    iget-object v7, p0, Lcom/miui/gallery/data/StorageMediaSet;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v7}, Lcom/miui/gallery/app/GalleryApp;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v1

    .line 41
    .local v1, dataManager:Lcom/miui/gallery/data/DataManager;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    move v3, p1

    .local v3, index:I
    :goto_0
    add-int v7, p1, p2

    if-ge v3, v7, :cond_0

    .line 46
    iget-object v7, p0, Lcom/miui/gallery/data/StorageMediaSet;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-virtual {v7, v3}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getFileMeta(I)Lcom/miui/gallery/StorageExplorer/FileInfo;

    move-result-object v2

    .line 47
    .local v2, fileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;
    if-nez v2, :cond_1

    .line 63
    .end local v2           #fileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;
    :cond_0
    return-object v6

    .line 52
    .restart local v2       #fileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;
    :cond_1
    invoke-virtual {v2}, Lcom/miui/gallery/StorageExplorer/FileInfo;->isVideo()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 53
    sget-object v5, Lcom/miui/gallery/data/StorageVideo;->ITEM_PATH:Lcom/miui/gallery/data/Path;

    .line 54
    .local v5, itemPath:Lcom/miui/gallery/data/Path;
    iget-object v7, v2, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    invoke-static {v7}, Lcom/miui/gallery/data/DataManager;->addBracesToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/miui/gallery/data/Path;->getChild(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v0

    .line 60
    .local v0, childPath:Lcom/miui/gallery/data/Path;
    :goto_1
    iget-object v7, p0, Lcom/miui/gallery/data/StorageMediaSet;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-static {v0, v1, v7, v2}, Lcom/miui/gallery/data/StorageMediaSet;->loadOrUpdateItem(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/data/DataManager;Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/StorageExplorer/FileInfo;)Lcom/miui/gallery/data/MediaItem;

    move-result-object v4

    .line 61
    .local v4, item:Lcom/miui/gallery/data/MediaItem;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 56
    .end local v0           #childPath:Lcom/miui/gallery/data/Path;
    .end local v4           #item:Lcom/miui/gallery/data/MediaItem;
    .end local v5           #itemPath:Lcom/miui/gallery/data/Path;
    :cond_2
    sget-object v5, Lcom/miui/gallery/data/StorageImage;->ITEM_PATH:Lcom/miui/gallery/data/Path;

    .line 57
    .restart local v5       #itemPath:Lcom/miui/gallery/data/Path;
    iget-object v7, v2, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    invoke-static {v7}, Lcom/miui/gallery/data/DataManager;->addBracesToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/miui/gallery/data/Path;->getChild(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v0

    .restart local v0       #childPath:Lcom/miui/gallery/data/Path;
    goto :goto_1
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaSet;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getFileCount()I

    move-result v0

    return v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 110
    const/16 v0, 0x405

    return v0
.end method

.method public initBucket(Lcom/miui/gallery/StorageExplorer/FileBucket;)V
    .locals 3
    .parameter "fileBucket"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaSet;->mFolderPath:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "path should be the same"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iput-object p1, p0, Lcom/miui/gallery/data/StorageMediaSet;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    .line 35
    return-void
.end method

.method public reload()J
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaSet;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/FileBucket;->isModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaSet;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/FileBucket;->loadAllMedias()V

    .line 103
    invoke-static {}, Lcom/miui/gallery/data/StorageMediaSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/StorageMediaSet;->mDataVersion:J

    .line 105
    :cond_0
    iget-wide v0, p0, Lcom/miui/gallery/data/StorageMediaSet;->mDataVersion:J

    return-wide v0
.end method
