.class public Lcom/miui/gallery/ui/AlbumSetSlidingWindow;
.super Ljava/lang/Object;
.source "AlbumSetSlidingWindow.java"

# interfaces
.implements Lcom/miui/gallery/ui/AlbumSetView$ModelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/AlbumSetSlidingWindow$LabelDisplayItem;,
        Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;,
        Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;,
        Lcom/miui/gallery/ui/AlbumSetSlidingWindow$Listener;
    }
.end annotation


# instance fields
.field private mActiveEnd:I

.field private mActiveRequestCount:I

.field private mActiveStart:I

.field private mContentEnd:I

.field private mContentStart:I

.field protected mContext:Landroid/content/Context;

.field protected final mCoverBlur:Lcom/miui/gallery/ui/ResourceTexture;

.field private final mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

.field private final mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;

.field private mIsActive:Z

.field private final mLabelSpec:Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;

.field private mListener:Lcom/miui/gallery/ui/AlbumSetSlidingWindow$Listener;

.field private mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

.field private mShowType:I

.field private mShowTypeVersion:J

.field private mSize:I

.field private final mSource:Lcom/miui/gallery/ui/AlbumSetView$Model;

.field private final mThreadPool:Lcom/miui/gallery/util/ThreadPool;

.field private final mWaitLoadingTexture:Lcom/miui/gallery/ui/ColorTexture;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;Lcom/miui/gallery/ui/SelectionDrawer;Lcom/miui/gallery/ui/AlbumSetView$Model;II)V
    .locals 3
    .parameter "activity"
    .parameter "labelSpec"
    .parameter "drawer"
    .parameter "source"
    .parameter "cacheSize"
    .parameter "showType"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    .line 58
    iput v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .line 60
    iput v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    .line 61
    iput v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    .line 74
    iput v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 75
    iput-boolean v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mIsActive:Z

    .line 88
    invoke-interface {p4, p0}, Lcom/miui/gallery/ui/AlbumSetView$Model;->setModelListener(Lcom/miui/gallery/ui/AlbumSetView$ModelListener;)V

    .line 89
    iput-object p2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mLabelSpec:Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;

    .line 90
    iput-object p4, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mSource:Lcom/miui/gallery/ui/AlbumSetView$Model;

    .line 91
    iput-object p3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

    .line 92
    new-array v0, p5, [Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    .line 93
    invoke-interface {p4}, Lcom/miui/gallery/ui/AlbumSetView$Model;->size()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    .line 94
    iput p6, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mShowType:I

    .line 96
    new-instance v0, Lcom/miui/gallery/ui/ColorTexture;

    const v1, -0xddddde

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/ColorTexture;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mWaitLoadingTexture:Lcom/miui/gallery/ui/ColorTexture;

    .line 97
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mWaitLoadingTexture:Lcom/miui/gallery/ui/ColorTexture;

    invoke-virtual {v0, v2, v2}, Lcom/miui/gallery/ui/ColorTexture;->setSize(II)V

    .line 99
    new-instance v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$1;

    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$1;-><init>(Lcom/miui/gallery/ui/AlbumSetSlidingWindow;Lcom/miui/gallery/ui/GLRoot;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;

    .line 107
    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getThreadPool()Lcom/miui/gallery/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mThreadPool:Lcom/miui/gallery/util/ThreadPool;

    .line 108
    check-cast p1, Landroid/content/Context;

    .end local p1
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContext:Landroid/content/Context;

    .line 109
    new-instance v0, Lcom/miui/gallery/ui/ResourceTexture;

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContext:Landroid/content/Context;

    const v2, 0x7f02002a

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mCoverBlur:Lcom/miui/gallery/ui/ResourceTexture;

    .line 110
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/ui/AlbumSetSlidingWindow;)Lcom/miui/gallery/util/ThreadPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mThreadPool:Lcom/miui/gallery/util/ThreadPool;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/ui/AlbumSetSlidingWindow;)Lcom/miui/gallery/ui/SynchronizedHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/ui/AlbumSetSlidingWindow;)Lcom/miui/gallery/ui/AlbumSetView$Model;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mSource:Lcom/miui/gallery/ui/AlbumSetView$Model;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/AlbumSetSlidingWindow;)Lcom/miui/gallery/ui/ColorTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mWaitLoadingTexture:Lcom/miui/gallery/ui/ColorTexture;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/AlbumSetSlidingWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$406(Lcom/miui/gallery/ui/AlbumSetSlidingWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/AlbumSetSlidingWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->requestNonactiveImages()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/AlbumSetSlidingWindow;)Lcom/miui/gallery/ui/AlbumSetSlidingWindow$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mListener:Lcom/miui/gallery/ui/AlbumSetSlidingWindow$Listener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/ui/AlbumSetSlidingWindow;)Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mLabelSpec:Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/ui/AlbumSetSlidingWindow;)[Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/ui/AlbumSetSlidingWindow;)Lcom/miui/gallery/ui/SelectionDrawer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

    return-object v0
.end method

.method private cancelImagesInSlot(I)V
    .locals 7
    .parameter "slotIndex"

    .prologue
    .line 216
    iget v5, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v5, :cond_0

    iget v5, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v5, :cond_1

    .line 221
    :cond_0
    return-void

    .line 217
    :cond_1
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    array-length v6, v6

    rem-int v6, p1, v6

    aget-object v3, v5, v6

    .line 218
    .local v3, items:Lcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;
    iget-object v0, v3, Lcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;->covers:[Lcom/miui/gallery/ui/CoverDisplayItem;

    .local v0, arr$:[Lcom/miui/gallery/ui/CoverDisplayItem;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v0, v1

    .line 219
    .local v2, item:Lcom/miui/gallery/ui/DisplayItem;
    check-cast v2, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;

    .end local v2           #item:Lcom/miui/gallery/ui/DisplayItem;
    invoke-virtual {v2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->cancelImageRequest()V

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private cancelNonactiveImages()V
    .locals 5

    .prologue
    .line 199
    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 201
    .local v1, range:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 202
    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->cancelImagesInSlot(I)V

    .line 203
    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->cancelImagesInSlot(I)V

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_0
    return-void
.end method

.method private freeSlotContent(I)V
    .locals 8
    .parameter "slotIndex"

    .prologue
    .line 224
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    .line 225
    .local v1, data:[Lcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;
    array-length v7, v1

    rem-int v3, p1, v7

    .line 226
    .local v3, index:I
    aget-object v6, v1, v3

    .line 227
    .local v6, original:Lcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;
    if-eqz v6, :cond_0

    .line 228
    const/4 v7, 0x0

    aput-object v7, v1, v3

    .line 229
    iget-object v0, v6, Lcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;->covers:[Lcom/miui/gallery/ui/CoverDisplayItem;

    .local v0, arr$:[Lcom/miui/gallery/ui/CoverDisplayItem;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v4, v0, v2

    .line 230
    .local v4, item:Lcom/miui/gallery/ui/DisplayItem;
    check-cast v4, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;

    .end local v4           #item:Lcom/miui/gallery/ui/DisplayItem;
    invoke-virtual {v4}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->recycle()V

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    .end local v0           #arr$:[Lcom/miui/gallery/ui/CoverDisplayItem;
    .end local v2           #i$:I
    .end local v5           #len$:I
    :cond_0
    return-void
.end method

.method private getMediaSetDataVersion(Lcom/miui/gallery/data/MediaSet;)J
    .locals 2
    .parameter "set"

    .prologue
    .line 236
    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaSet;->getDataVersion()J

    move-result-wide v0

    goto :goto_0
.end method

.method private static identifyCacheFlag(Lcom/miui/gallery/data/MediaSet;)I
    .locals 1
    .parameter "set"

    .prologue
    .line 503
    const/4 v0, 0x0

    return v0
.end method

.method private static identifyCacheStatus(Lcom/miui/gallery/data/MediaSet;)I
    .locals 1
    .parameter "set"

    .prologue
    .line 507
    const/4 v0, 0x0

    return v0
.end method

.method private isCoverItemsChanged(I)Z
    .locals 10
    .parameter "slotIndex"

    .prologue
    const/4 v5, 0x1

    .line 270
    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    iget-object v7, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    array-length v7, v7

    rem-int v7, p1, v7

    aget-object v4, v6, v7

    .line 271
    .local v4, original:Lcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;
    if-nez v4, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v5

    .line 272
    :cond_1
    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mSource:Lcom/miui/gallery/ui/AlbumSetView$Model;

    invoke-interface {v6, p1}, Lcom/miui/gallery/ui/AlbumSetView$Model;->getCoverItems(I)[Lcom/miui/gallery/data/MediaItem;

    move-result-object v0

    .line 274
    .local v0, coverItems:[Lcom/miui/gallery/data/MediaItem;
    iget-object v6, v4, Lcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;->covers:[Lcom/miui/gallery/ui/CoverDisplayItem;

    array-length v6, v6

    array-length v7, v0

    if-ne v6, v7, :cond_0

    .line 275
    const/4 v2, 0x0

    .local v2, i:I
    array-length v3, v0

    .local v3, n:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 276
    iget-object v6, v4, Lcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;->covers:[Lcom/miui/gallery/ui/CoverDisplayItem;

    aget-object v1, v6, v2

    check-cast v1, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;

    .line 277
    .local v1, g:Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;
    #getter for: Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->mDataVersion:J
    invoke-static {v1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->access$200(Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;)J

    move-result-wide v6

    aget-object v8, v0, v2

    invoke-virtual {v8}, Lcom/miui/gallery/data/MediaItem;->getDataVersion()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 275
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 279
    .end local v1           #g:Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private notifySlotChanged(II)V
    .locals 12
    .parameter "slotIndex"
    .parameter "showType"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 313
    iget v6, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v6, :cond_0

    iget v6, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v6, :cond_2

    .line 314
    :cond_0
    const-string v6, "GallerySlidingWindow"

    const-string v7, "invalid update: %s is outside (%s, %s)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    iget v9, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x2

    iget v10, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_1
    :goto_0
    return-void

    .line 321
    :cond_2
    iget v6, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mShowType:I

    if-eq v6, p2, :cond_3

    .line 322
    const-string v6, "GallerySlidingWindow"

    const-string v7, "show type changed: index%s album needn\'t show on page"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 326
    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->updateSlotContent(I)V

    .line 327
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result v3

    .line 328
    .local v3, isActiveSlot:Z
    iget v6, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    if-eqz v6, :cond_4

    if-eqz v3, :cond_1

    .line 329
    :cond_4
    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    iget-object v7, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    array-length v7, v7

    rem-int v7, p1, v7

    aget-object v6, v6, v7

    iget-object v0, v6, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->covers:[Lcom/miui/gallery/ui/CoverDisplayItem;

    .local v0, arr$:[Lcom/miui/gallery/ui/CoverDisplayItem;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v4, v0, v2

    .local v4, item:Lcom/miui/gallery/ui/DisplayItem;
    move-object v1, v4

    .line 330
    check-cast v1, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;

    .line 331
    .local v1, galleryItem:Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;
    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->requestImage()V

    .line 332
    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->isRequestInProgress()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 333
    iget v6, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 329
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private prepareSlotContent(I)V
    .locals 11
    .parameter "slotIndex"

    .prologue
    const/4 v5, 0x0

    .line 242
    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mSource:Lcom/miui/gallery/ui/AlbumSetView$Model;

    invoke-interface {v6, p1}, Lcom/miui/gallery/ui/AlbumSetView$Model;->getMediaSet(I)Lcom/miui/gallery/data/MediaSet;

    move-result-object v4

    .line 244
    .local v4, set:Lcom/miui/gallery/data/MediaSet;
    new-instance v3, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    invoke-direct {v3, v5}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;-><init>(Lcom/miui/gallery/ui/AlbumSetSlidingWindow$1;)V

    .line 245
    .local v3, item:Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;
    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mSource:Lcom/miui/gallery/ui/AlbumSetView$Model;

    invoke-interface {v6, p1}, Lcom/miui/gallery/ui/AlbumSetView$Model;->getCoverItems(I)[Lcom/miui/gallery/data/MediaItem;

    move-result-object v1

    .line 246
    .local v1, coverItems:[Lcom/miui/gallery/data/MediaItem;
    array-length v6, v1

    new-array v6, v6, [Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;

    iput-object v6, v3, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->covers:[Lcom/miui/gallery/ui/CoverDisplayItem;

    .line 247
    invoke-static {v4}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->identifyCacheFlag(Lcom/miui/gallery/data/MediaSet;)I

    move-result v6

    iput v6, v3, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->cacheFlag:I

    .line 248
    invoke-static {v4}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->identifyCacheStatus(Lcom/miui/gallery/data/MediaSet;)I

    move-result v6

    iput v6, v3, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->cacheStatus:I

    .line 249
    if-nez v4, :cond_0

    :goto_0
    iput-object v5, v3, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->setPath:Lcom/miui/gallery/data/Path;

    .line 251
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_2

    .line 252
    iget-object v5, v3, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->covers:[Lcom/miui/gallery/ui/CoverDisplayItem;

    new-instance v6, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;

    aget-object v7, v1, v2

    invoke-direct {v6, p0, p1, v2, v7}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;-><init>(Lcom/miui/gallery/ui/AlbumSetSlidingWindow;IILcom/miui/gallery/data/MediaItem;)V

    aput-object v6, v5, v2

    .line 253
    new-instance v0, Lcom/miui/gallery/ui/DisplayItem$CropDimension;

    iget-object v5, v3, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->covers:[Lcom/miui/gallery/ui/CoverDisplayItem;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mLabelSpec:Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;

    iget v6, v6, Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;->albumCoverWidth:I

    iget-object v7, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mLabelSpec:Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;

    iget v7, v7, Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;->albumSlotHeight:I

    invoke-direct {v0, v5, v6, v7}, Lcom/miui/gallery/ui/DisplayItem$CropDimension;-><init>(Lcom/miui/gallery/ui/DisplayItem;II)V

    .line 255
    .local v0, coverCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;
    iget-object v5, v3, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->covers:[Lcom/miui/gallery/ui/CoverDisplayItem;

    aget-object v5, v5, v2

    invoke-virtual {v5, v0}, Lcom/miui/gallery/ui/CoverDisplayItem;->setCrop(Lcom/miui/gallery/ui/DisplayItem$CropDimension;)V

    .line 256
    if-nez v2, :cond_1

    .line 257
    iget-object v5, v3, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->covers:[Lcom/miui/gallery/ui/CoverDisplayItem;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mLabelSpec:Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;

    iget v7, v7, Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;->albumCoverGap:I

    invoke-virtual {v5, v6, v7}, Lcom/miui/gallery/ui/CoverDisplayItem;->setParentAttribute(II)V

    .line 251
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 249
    .end local v0           #coverCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;
    .end local v2           #i:I
    :cond_0
    invoke-virtual {v4}, Lcom/miui/gallery/data/MediaSet;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v5

    goto :goto_0

    .line 259
    .restart local v0       #coverCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;
    .restart local v2       #i:I
    :cond_1
    iget-object v5, v3, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->covers:[Lcom/miui/gallery/ui/CoverDisplayItem;

    aget-object v5, v5, v2

    invoke-virtual {v5, v2}, Lcom/miui/gallery/ui/CoverDisplayItem;->setNeedFadeInFrame(I)V

    goto :goto_2

    .line 262
    .end local v0           #coverCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;
    :cond_2
    new-instance v5, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$LabelDisplayItem;

    invoke-direct {v5, p0, p1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$LabelDisplayItem;-><init>(Lcom/miui/gallery/ui/AlbumSetSlidingWindow;I)V

    iput-object v5, v3, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->labelItem:Lcom/miui/gallery/ui/DisplayItem;

    .line 263
    new-instance v5, Lcom/miui/gallery/ui/ResourceTextureDisplayItem;

    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContext:Landroid/content/Context;

    const v7, 0x7f02000f

    iget-object v8, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mLabelSpec:Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;

    iget v8, v8, Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;->albumSlotWidth:I

    array-length v9, v1

    rsub-int/lit8 v9, v9, 0x3

    iget-object v10, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mLabelSpec:Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;

    iget v10, v10, Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;->albumCoverGap:I

    mul-int/2addr v9, v10

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x3

    iget-object v9, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mLabelSpec:Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;

    iget v9, v9, Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;->albumSlotHeight:I

    iget-object v10, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mLabelSpec:Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;

    iget v10, v10, Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;->albumCoverHeight:I

    sub-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/miui/gallery/ui/ResourceTextureDisplayItem;-><init>(Landroid/content/Context;III)V

    iput-object v5, v3, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->bottomCover:Lcom/miui/gallery/ui/DisplayItem;

    .line 265
    invoke-direct {p0, v4}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->getMediaSetDataVersion(Lcom/miui/gallery/data/MediaSet;)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->setDataVersion:J

    .line 266
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    array-length v6, v6

    rem-int v6, p1, v6

    aput-object v3, v5, v6

    .line 267
    return-void
.end method

.method private requestImagesInSlot(I)V
    .locals 7
    .parameter "slotIndex"

    .prologue
    .line 208
    iget v5, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v5, :cond_0

    iget v5, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v5, :cond_1

    .line 213
    :cond_0
    return-void

    .line 209
    :cond_1
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    array-length v6, v6

    rem-int v6, p1, v6

    aget-object v3, v5, v6

    .line 210
    .local v3, items:Lcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;
    iget-object v0, v3, Lcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;->covers:[Lcom/miui/gallery/ui/CoverDisplayItem;

    .local v0, arr$:[Lcom/miui/gallery/ui/CoverDisplayItem;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v0, v1

    .line 211
    .local v2, item:Lcom/miui/gallery/ui/DisplayItem;
    check-cast v2, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;

    .end local v2           #item:Lcom/miui/gallery/ui/DisplayItem;
    invoke-virtual {v2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->requestImage()V

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private requestNonactiveImages()V
    .locals 5

    .prologue
    .line 190
    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 192
    .local v1, range:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 193
    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->requestImagesInSlot(I)V

    .line 194
    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->requestImagesInSlot(I)V

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_0
    return-void
.end method

.method private setContentWindow(II)V
    .locals 3
    .parameter "contentStart"
    .parameter "contentEnd"

    .prologue
    .line 136
    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-ne p2, v2, :cond_0

    .line 164
    :goto_0
    return-void

    .line 138
    :cond_0
    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-ge p1, v2, :cond_1

    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt v2, p2, :cond_3

    .line 139
    :cond_1
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 140
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 142
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mSource:Lcom/miui/gallery/ui/AlbumSetView$Model;

    invoke-interface {v2, p1, p2}, Lcom/miui/gallery/ui/AlbumSetView$Model;->setActiveWindow(II)V

    .line 143
    move v0, p1

    :goto_2
    if-ge v0, p2, :cond_7

    .line 144
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 147
    .end local v0           #i:I
    .end local v1           #n:I
    :cond_3
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    .restart local v0       #i:I
    :goto_3
    if-ge v0, p1, :cond_4

    .line 148
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 150
    :cond_4
    move v0, p2

    iget v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .restart local v1       #n:I
    :goto_4
    if-ge v0, v1, :cond_5

    .line 151
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 153
    :cond_5
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mSource:Lcom/miui/gallery/ui/AlbumSetView$Model;

    invoke-interface {v2, p1, p2}, Lcom/miui/gallery/ui/AlbumSetView$Model;->setActiveWindow(II)V

    .line 154
    move v0, p1

    iget v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    :goto_5
    if-ge v0, v1, :cond_6

    .line 155
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 157
    :cond_6
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    :goto_6
    if-ge v0, p2, :cond_7

    .line 158
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 162
    :cond_7
    iput p1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    .line 163
    iput p2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    goto :goto_0
.end method

.method private updateAllImageRequests()V
    .locals 9

    .prologue
    .line 340
    const/4 v7, 0x0

    iput v7, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 341
    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    .local v2, i:I
    iget v6, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    .local v6, n:I
    :goto_0
    if-ge v2, v6, :cond_2

    .line 342
    iget-object v7, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    iget-object v8, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    array-length v8, v8

    rem-int v8, v2, v8

    aget-object v7, v7, v8

    iget-object v0, v7, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->covers:[Lcom/miui/gallery/ui/CoverDisplayItem;

    .local v0, arr$:[Lcom/miui/gallery/ui/CoverDisplayItem;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v4, v0, v3

    .local v4, item:Lcom/miui/gallery/ui/DisplayItem;
    move-object v1, v4

    .line 343
    check-cast v1, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;

    .line 344
    .local v1, coverItem:Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;
    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->requestImage()V

    .line 345
    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->isRequestInProgress()Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 342
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 341
    .end local v1           #coverItem:Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;
    .end local v4           #item:Lcom/miui/gallery/ui/DisplayItem;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 348
    .end local v0           #arr$:[Lcom/miui/gallery/ui/CoverDisplayItem;
    .end local v3           #i$:I
    .end local v5           #len$:I
    :cond_2
    iget v7, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    if-nez v7, :cond_3

    .line 349
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->requestNonactiveImages()V

    .line 353
    :goto_2
    return-void

    .line 351
    :cond_3
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->cancelNonactiveImages()V

    goto :goto_2
.end method

.method private updateSlotContent(I)V
    .locals 10
    .parameter "slotIndex"

    .prologue
    .line 284
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    .line 285
    .local v1, data:[Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;
    array-length v9, v1

    rem-int v6, p1, v9

    .line 286
    .local v6, pos:I
    aget-object v5, v1, v6

    .line 288
    .local v5, original:Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->isCoverItemsChanged(I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 289
    iget-object v9, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mSource:Lcom/miui/gallery/ui/AlbumSetView$Model;

    invoke-interface {v9, p1}, Lcom/miui/gallery/ui/AlbumSetView$Model;->getMediaSet(I)Lcom/miui/gallery/data/MediaSet;

    move-result-object v7

    .line 290
    .local v7, set:Lcom/miui/gallery/data/MediaSet;
    invoke-static {v7}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->identifyCacheFlag(Lcom/miui/gallery/data/MediaSet;)I

    move-result v9

    iput v9, v5, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->cacheFlag:I

    .line 291
    invoke-static {v7}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->identifyCacheStatus(Lcom/miui/gallery/data/MediaSet;)I

    move-result v9

    iput v9, v5, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->cacheStatus:I

    .line 292
    if-nez v7, :cond_1

    const/4 v9, 0x0

    :goto_0
    iput-object v9, v5, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->setPath:Lcom/miui/gallery/data/Path;

    .line 293
    iget-object v9, v5, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->labelItem:Lcom/miui/gallery/ui/DisplayItem;

    check-cast v9, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$LabelDisplayItem;

    invoke-virtual {v9}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$LabelDisplayItem;->updateContent()Z

    .line 294
    iget-object v9, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mListener:Lcom/miui/gallery/ui/AlbumSetSlidingWindow$Listener;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mListener:Lcom/miui/gallery/ui/AlbumSetSlidingWindow$Listener;

    invoke-interface {v9}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$Listener;->onContentInvalidated()V

    .line 309
    .end local v7           #set:Lcom/miui/gallery/data/MediaSet;
    :cond_0
    return-void

    .line 292
    .restart local v7       #set:Lcom/miui/gallery/data/MediaSet;
    :cond_1
    invoke-virtual {v7}, Lcom/miui/gallery/data/MediaSet;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v9

    goto :goto_0

    .line 298
    .end local v7           #set:Lcom/miui/gallery/data/MediaSet;
    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    .line 299
    aget-object v8, v1, v6

    .line 301
    .local v8, update:Lcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;
    iget-object v9, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mListener:Lcom/miui/gallery/ui/AlbumSetSlidingWindow$Listener;

    if-eqz v9, :cond_3

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 302
    iget-object v9, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mListener:Lcom/miui/gallery/ui/AlbumSetSlidingWindow$Listener;

    invoke-interface {v9, p1, v5, v8}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$Listener;->onWindowContentChanged(ILcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;Lcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;)V

    .line 304
    :cond_3
    if-eqz v5, :cond_0

    .line 305
    iget-object v0, v5, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;->covers:[Lcom/miui/gallery/ui/CoverDisplayItem;

    .local v0, arr$:[Lcom/miui/gallery/ui/CoverDisplayItem;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    .line 306
    .local v3, item:Lcom/miui/gallery/ui/DisplayItem;
    check-cast v3, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;

    .end local v3           #item:Lcom/miui/gallery/ui/DisplayItem;
    invoke-virtual {v3}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$GalleryDisplayItem;->recycle()V

    .line 305
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public changeShowType(I)V
    .locals 0
    .parameter "showType"

    .prologue
    .line 606
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->freeAll()V

    .line 607
    iput p1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mShowType:I

    .line 608
    return-void
.end method

.method public freeAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 590
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 591
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 590
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 594
    :cond_0
    invoke-direct {p0, v2, v2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->setContentWindow(II)V

    .line 595
    return-void
.end method

.method public get(I)Lcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;
    .locals 5
    .parameter "slotIndex"

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    const-string v1, "invalid slot: %s outsides (%s, %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isActiveSlot(I)Z
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 132
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSizeChanged(IIJ)V
    .locals 2
    .parameter "size"
    .parameter "totalMediaObjectCount"
    .parameter "showTypeVersion"

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    if-ne v0, p1, :cond_0

    iget-wide v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mShowTypeVersion:J

    cmp-long v0, v0, p3

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 567
    :cond_0
    iput p1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    .line 568
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mListener:Lcom/miui/gallery/ui/AlbumSetSlidingWindow$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mListener:Lcom/miui/gallery/ui/AlbumSetSlidingWindow$Listener;

    iget v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$Listener;->onSizeChanged(IIJ)V

    .line 570
    :cond_1
    return-void
.end method

.method public onWindowContentChanged(II)V
    .locals 1
    .parameter "index"
    .parameter "showType"

    .prologue
    .line 573
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-nez v0, :cond_0

    .line 578
    :goto_0
    return-void

    .line 577
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->notifySlotChanged(II)V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 581
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mIsActive:Z

    .line 583
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 584
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 583
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 586
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 598
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mIsActive:Z

    .line 599
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 600
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 602
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->updateAllImageRequests()V

    .line 603
    return-void
.end method

.method public setActiveWindow(II)V
    .locals 9
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 167
    if-gt p1, p2, :cond_1

    sub-int v3, p2, p1

    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    array-length v6, v6

    if-gt v3, v6, :cond_1

    iget v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    if-gt p2, v3, :cond_1

    move v3, v4

    :goto_0
    const-string v6, "start = %s, end = %s, length = %s, size = %s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x2

    iget-object v8, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    array-length v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x3

    iget v8, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v3, v6, v7}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 172
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;

    .line 174
    .local v2, data:[Lcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;
    iput p1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    .line 175
    iput p2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    .line 177
    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    array-length v4, v2

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    array-length v6, v2

    sub-int/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v5, v4}, Lcom/miui/gallery/common/Utils;->clamp(III)I

    move-result v1

    .line 179
    .local v1, contentStart:I
    array-length v3, v2

    add-int/2addr v3, v1

    iget v4, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 180
    .local v0, contentEnd:I
    invoke-direct {p0, v1, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->setContentWindow(II)V

    .line 181
    iget-boolean v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->updateAllImageRequests()V

    .line 182
    :cond_0
    return-void

    .end local v0           #contentEnd:I
    .end local v1           #contentStart:I
    .end local v2           #data:[Lcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;
    :cond_1
    move v3, v5

    .line 167
    goto :goto_0
.end method

.method public setListener(Lcom/miui/gallery/ui/AlbumSetSlidingWindow$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mListener:Lcom/miui/gallery/ui/AlbumSetSlidingWindow$Listener;

    .line 118
    return-void
.end method

.method public setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V
    .locals 0
    .parameter "drawer"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

    .line 114
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    return v0
.end method
