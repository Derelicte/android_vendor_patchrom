.class public Lcom/miui/gallery/ui/AlbumSlidingWindow;
.super Ljava/lang/Object;
.source "AlbumSlidingWindow.java"

# interfaces
.implements Lcom/miui/gallery/ui/AlbumView$ModelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;,
        Lcom/miui/gallery/ui/AlbumSlidingWindow$Listener;
    }
.end annotation


# instance fields
.field private mActiveEnd:I

.field private mActiveRequestCount:I

.field private mActiveStart:I

.field private mAlbumSetPath:Ljava/lang/String;

.field private mCacheThumbSize:I

.field mConfig:Lcom/miui/gallery/app/Config$AlbumPageConfig;

.field private mContentEnd:I

.field private mContentStart:I

.field private final mData:[Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;

.field private mDecimalFormater:Ljava/text/DecimalFormat;

.field private mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;

.field private mImageCache:Lcom/miui/gallery/common/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/common/LruCache",
            "<",
            "Lcom/miui/gallery/data/Path;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActive:Z

.field private mListener:Lcom/miui/gallery/ui/AlbumSlidingWindow$Listener;

.field private mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

.field private mSize:I

.field private final mSource:Lcom/miui/gallery/ui/AlbumView$Model;

.field private mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

.field mTextPaint:Landroid/graphics/Paint;

.field private mThreadPool:Lcom/miui/gallery/util/JobLimiter;

.field private mUpCoverBlur:Lcom/miui/gallery/ui/ResourceTexture;

.field private final mWaitLoadingTexture:Lcom/miui/gallery/ui/ColorTexture;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/AlbumView$Model;IILcom/miui/gallery/ui/SlotView$Spec;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "source"
    .parameter "cacheSize"
    .parameter "cacheThumbSize"
    .parameter "spec"
    .parameter "albumSetPath"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    .line 64
    iput v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    .line 66
    iput v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mActiveStart:I

    .line 67
    iput v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    .line 78
    iput v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    .line 79
    iput-boolean v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mIsActive:Z

    .line 82
    new-instance v0, Lcom/miui/gallery/common/LruCache;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Lcom/miui/gallery/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mImageCache:Lcom/miui/gallery/common/LruCache;

    .line 85
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mDecimalFormater:Ljava/text/DecimalFormat;

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mTextPaint:Landroid/graphics/Paint;

    .line 93
    invoke-interface {p2, p0}, Lcom/miui/gallery/ui/AlbumView$Model;->setModelListener(Lcom/miui/gallery/ui/AlbumView$ModelListener;)V

    .line 94
    iput-object p2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mSource:Lcom/miui/gallery/ui/AlbumView$Model;

    .line 95
    new-array v0, p3, [Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;

    .line 96
    invoke-interface {p2}, Lcom/miui/gallery/ui/AlbumView$Model;->size()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mSize:I

    .line 98
    new-instance v0, Lcom/miui/gallery/ui/ColorTexture;

    const v1, -0xddddde

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/ColorTexture;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mWaitLoadingTexture:Lcom/miui/gallery/ui/ColorTexture;

    .line 99
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mWaitLoadingTexture:Lcom/miui/gallery/ui/ColorTexture;

    invoke-virtual {v0, v2, v2}, Lcom/miui/gallery/ui/ColorTexture;->setSize(II)V

    .line 101
    new-instance v0, Lcom/miui/gallery/ui/AlbumSlidingWindow$1;

    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/AlbumSlidingWindow$1;-><init>(Lcom/miui/gallery/ui/AlbumSlidingWindow;Lcom/miui/gallery/ui/GLRoot;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;

    .line 117
    new-instance v0, Lcom/miui/gallery/util/JobLimiter;

    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getThreadPool()Lcom/miui/gallery/util/ThreadPool;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/util/JobLimiter;-><init>(Lcom/miui/gallery/util/ThreadPool;I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mThreadPool:Lcom/miui/gallery/util/JobLimiter;

    .line 118
    iput-object p5, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    .line 119
    new-instance v1, Lcom/miui/gallery/ui/ResourceTexture;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    const v2, 0x7f0200e1

    invoke-direct {v1, v0, v2}, Lcom/miui/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mUpCoverBlur:Lcom/miui/gallery/ui/ResourceTexture;

    .line 120
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mDecimalFormater:Ljava/text/DecimalFormat;

    const-string v1, "###0.00"

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    check-cast p1, Landroid/content/Context;

    .end local p1
    invoke-static {p1}, Lcom/miui/gallery/app/Config$AlbumPageConfig;->get(Landroid/content/Context;)Lcom/miui/gallery/app/Config$AlbumPageConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mConfig:Lcom/miui/gallery/app/Config$AlbumPageConfig;

    .line 123
    iput-object p6, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mAlbumSetPath:Ljava/lang/String;

    .line 124
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/AlbumSlidingWindow;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->updateSlotContent(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/ui/AlbumSlidingWindow;)Lcom/miui/gallery/common/LruCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mImageCache:Lcom/miui/gallery/common/LruCache;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/ui/AlbumSlidingWindow;)Lcom/miui/gallery/util/JobLimiter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mThreadPool:Lcom/miui/gallery/util/JobLimiter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/ui/AlbumSlidingWindow;)Lcom/miui/gallery/ui/SynchronizedHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/AlbumSlidingWindow;)Lcom/miui/gallery/ui/ColorTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mWaitLoadingTexture:Lcom/miui/gallery/ui/ColorTexture;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/AlbumSlidingWindow;)Ljava/text/DecimalFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mDecimalFormater:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/AlbumSlidingWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$406(Lcom/miui/gallery/ui/AlbumSlidingWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/AlbumSlidingWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->requestNonactiveImages()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/AlbumSlidingWindow;)Lcom/miui/gallery/ui/AlbumSlidingWindow$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mListener:Lcom/miui/gallery/ui/AlbumSlidingWindow$Listener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/ui/AlbumSlidingWindow;)Lcom/miui/gallery/ui/SelectionDrawer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/ui/AlbumSlidingWindow;)Lcom/miui/gallery/ui/ResourceTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mUpCoverBlur:Lcom/miui/gallery/ui/ResourceTexture;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/ui/AlbumSlidingWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mCacheThumbSize:I

    return v0
.end method

.method private cancelNonactiveImages()V
    .locals 5

    .prologue
    .line 225
    iget v2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 227
    .local v1, range:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 228
    iget v2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->cancelSlotImage(I)V

    .line 229
    iget v2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->cancelSlotImage(I)V

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_0
    return-void
.end method

.method private cancelSlotImage(I)V
    .locals 3
    .parameter "slotIndex"

    .prologue
    .line 234
    iget v1, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 236
    .local v0, item:Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;
    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->cancelImageRequest()V

    goto :goto_0
.end method

.method private freeSlotContent(I)V
    .locals 4
    .parameter "slotIndex"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;

    .line 241
    .local v0, data:[Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;
    array-length v3, v0

    rem-int v1, p1, v3

    .line 242
    .local v1, index:I
    aget-object v2, v0, v1

    .line 243
    .local v2, original:Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;
    if-eqz v2, :cond_0

    .line 244
    invoke-virtual {v2}, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->recycle()V

    .line 245
    const/4 v3, 0x0

    aput-object v3, v0, v1

    .line 247
    :cond_0
    return-void
.end method

.method private prepareSlotContent(II)V
    .locals 5
    .parameter "slotIndex"
    .parameter "sortBy"

    .prologue
    .line 250
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;

    array-length v2, v2

    rem-int v2, p1, v2

    new-instance v3, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;

    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mSource:Lcom/miui/gallery/ui/AlbumView$Model;

    invoke-interface {v4, p1}, Lcom/miui/gallery/ui/AlbumView$Model;->get(I)Lcom/miui/gallery/data/MediaItem;

    move-result-object v4

    invoke-direct {v3, p0, p1, v4, p2}, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;-><init>(Lcom/miui/gallery/ui/AlbumSlidingWindow;ILcom/miui/gallery/data/MediaItem;I)V

    aput-object v3, v1, v2

    .line 252
    new-instance v0, Lcom/miui/gallery/ui/DisplayItem$CropDimension;

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v2, v2, Lcom/miui/gallery/ui/SlotView$Spec;->slotWidth:I

    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v3, v3, Lcom/miui/gallery/ui/SlotView$Spec;->slotHeight:I

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/ui/DisplayItem$CropDimension;-><init>(Lcom/miui/gallery/ui/DisplayItem;II)V

    .line 253
    .local v0, coverCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->setCrop(Lcom/miui/gallery/ui/DisplayItem$CropDimension;)V

    .line 254
    return-void
.end method

.method private requestNonactiveImages()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 210
    iget v2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 212
    .local v1, range:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 213
    iget v2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2, v5}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->requestSlotImage(IZ)V

    .line 214
    iget v2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2, v5}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->requestSlotImage(IZ)V

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_0
    return-void
.end method

.method private requestSlotImage(IZ)V
    .locals 3
    .parameter "slotIndex"
    .parameter "isActive"

    .prologue
    .line 219
    iget v1, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 221
    .local v0, item:Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;
    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->requestImage()V

    goto :goto_0
.end method

.method private setContentWindow(II)V
    .locals 4
    .parameter "contentStart"
    .parameter "contentEnd"

    .prologue
    .line 150
    iget v3, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    if-ne p1, v3, :cond_0

    iget v3, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ne p2, v3, :cond_0

    .line 186
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-boolean v3, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mIsActive:Z

    if-nez v3, :cond_1

    .line 153
    iput p1, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    .line 154
    iput p2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    .line 155
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mSource:Lcom/miui/gallery/ui/AlbumView$Model;

    invoke-interface {v3, p1, p2}, Lcom/miui/gallery/ui/AlbumView$Model;->setActiveWindow(II)V

    goto :goto_0

    .line 159
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mAlbumSetPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/miui/gallery/util/AlbumUtils;->getAlbumSortBy(Ljava/lang/String;)I

    move-result v2

    .line 160
    .local v2, sortBy:I
    iget v3, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ge p1, v3, :cond_2

    iget v3, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt v3, p2, :cond_4

    .line 161
    :cond_2
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 162
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 164
    :cond_3
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mSource:Lcom/miui/gallery/ui/AlbumView$Model;

    invoke-interface {v3, p1, p2}, Lcom/miui/gallery/ui/AlbumView$Model;->setActiveWindow(II)V

    .line 165
    move v0, p1

    :goto_2
    if-ge v0, p2, :cond_8

    .line 166
    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->prepareSlotContent(II)V

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 169
    .end local v0           #i:I
    .end local v1           #n:I
    :cond_4
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    .restart local v0       #i:I
    :goto_3
    if-ge v0, p1, :cond_5

    .line 170
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 172
    :cond_5
    move v0, p2

    iget v1, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    .restart local v1       #n:I
    :goto_4
    if-ge v0, v1, :cond_6

    .line 173
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 175
    :cond_6
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mSource:Lcom/miui/gallery/ui/AlbumView$Model;

    invoke-interface {v3, p1, p2}, Lcom/miui/gallery/ui/AlbumView$Model;->setActiveWindow(II)V

    .line 176
    move v0, p1

    iget v1, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    :goto_5
    if-ge v0, v1, :cond_7

    .line 177
    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->prepareSlotContent(II)V

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 179
    :cond_7
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    :goto_6
    if-ge v0, p2, :cond_8

    .line 180
    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->prepareSlotContent(II)V

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 184
    :cond_8
    iput p1, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    .line 185
    iput p2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    goto :goto_0
.end method

.method private updateAllImageRequests()V
    .locals 5

    .prologue
    .line 286
    const/4 v4, 0x0

    iput v4, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    .line 287
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;

    .line 288
    .local v0, data:[Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;
    iget v1, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mActiveStart:I

    .local v1, i:I
    iget v3, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    .local v3, n:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 289
    array-length v4, v0

    rem-int v4, v1, v4

    aget-object v2, v0, v4

    .line 290
    .local v2, item:Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;
    invoke-virtual {v2}, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->requestImage()V

    .line 291
    invoke-virtual {v2}, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->isRequestInProgress()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    .line 288
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 293
    .end local v2           #item:Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;
    :cond_1
    iget v4, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    if-nez v4, :cond_2

    .line 294
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->requestNonactiveImages()V

    .line 298
    :goto_1
    return-void

    .line 296
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->cancelNonactiveImages()V

    goto :goto_1
.end method

.method private updateSlotContent(I)V
    .locals 11
    .parameter "slotIndex"

    .prologue
    .line 257
    iget-object v8, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mSource:Lcom/miui/gallery/ui/AlbumView$Model;

    invoke-interface {v8, p1}, Lcom/miui/gallery/ui/AlbumView$Model;->get(I)Lcom/miui/gallery/data/MediaItem;

    move-result-object v4

    .line 258
    .local v4, item:Lcom/miui/gallery/data/MediaItem;
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;

    .line 259
    .local v1, data:[Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;
    array-length v8, v1

    rem-int v2, p1, v8

    .line 260
    .local v2, index:I
    aget-object v5, v1, v2

    .line 261
    .local v5, original:Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;
    iget-object v8, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mAlbumSetPath:Ljava/lang/String;

    invoke-static {v8}, Lcom/miui/gallery/util/AlbumUtils;->getAlbumSortBy(Ljava/lang/String;)I

    move-result v6

    .line 262
    .local v6, sortBy:I
    new-instance v7, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;

    invoke-direct {v7, p0, p1, v4, v6}, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;-><init>(Lcom/miui/gallery/ui/AlbumSlidingWindow;ILcom/miui/gallery/data/MediaItem;I)V

    .line 263
    .local v7, update:Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;
    new-instance v0, Lcom/miui/gallery/ui/DisplayItem$CropDimension;

    iget-object v8, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;

    iget-object v9, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;

    array-length v9, v9

    rem-int v9, p1, v9

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v9, v9, Lcom/miui/gallery/ui/SlotView$Spec;->slotWidth:I

    iget-object v10, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v10, v10, Lcom/miui/gallery/ui/SlotView$Spec;->slotHeight:I

    invoke-direct {v0, v8, v9, v10}, Lcom/miui/gallery/ui/DisplayItem$CropDimension;-><init>(Lcom/miui/gallery/ui/DisplayItem;II)V

    .line 264
    .local v0, coverCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;
    aput-object v7, v1, v2

    .line 265
    aget-object v8, v1, v2

    invoke-virtual {v8, v0}, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->setCrop(Lcom/miui/gallery/ui/DisplayItem$CropDimension;)V

    .line 266
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v3

    .line 267
    .local v3, isActive:Z
    iget-object v8, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mListener:Lcom/miui/gallery/ui/AlbumSlidingWindow$Listener;

    if-eqz v8, :cond_0

    if-eqz v3, :cond_0

    .line 268
    iget-object v8, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mListener:Lcom/miui/gallery/ui/AlbumSlidingWindow$Listener;

    invoke-interface {v8, p1, v5, v7}, Lcom/miui/gallery/ui/AlbumSlidingWindow$Listener;->onWindowContentChanged(ILcom/miui/gallery/ui/DisplayItem;Lcom/miui/gallery/ui/DisplayItem;)V

    .line 270
    :cond_0
    if-eqz v5, :cond_2

    .line 271
    if-eqz v3, :cond_1

    invoke-virtual {v5}, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->isRequestInProgress()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 272
    iget v8, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    .line 274
    :cond_1
    invoke-virtual {v5}, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->recycle()V

    .line 276
    :cond_2
    if-eqz v3, :cond_5

    .line 277
    iget v8, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    if-nez v8, :cond_3

    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->cancelNonactiveImages()V

    .line 278
    :cond_3
    iget v8, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    .line 279
    invoke-virtual {v7}, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->requestImage()V

    .line 283
    :cond_4
    :goto_0
    return-void

    .line 281
    :cond_5
    iget v8, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    if-nez v8, :cond_4

    invoke-virtual {v7}, Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;->requestImage()V

    goto :goto_0
.end method


# virtual methods
.method public get(I)Lcom/miui/gallery/ui/DisplayItem;
    .locals 5
    .parameter "slotIndex"

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    const-string v1, "invalid slot: %s outsides (%s, %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mActiveStart:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isActiveSlot(I)Z
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 146
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSizeChanged(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 503
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mSize:I

    if-eq v0, p1, :cond_0

    .line 504
    iput p1, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mSize:I

    .line 505
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mListener:Lcom/miui/gallery/ui/AlbumSlidingWindow$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mListener:Lcom/miui/gallery/ui/AlbumSlidingWindow$Listener;

    iget v1, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mSize:I

    invoke-interface {v0, v1}, Lcom/miui/gallery/ui/AlbumSlidingWindow$Listener;->onSizeChanged(I)V

    .line 507
    :cond_0
    return-void
.end method

.method public onWindowContentChanged(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 510
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ge p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 511
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->updateSlotContent(I)V

    .line 513
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 525
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mIsActive:Z

    .line 526
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 527
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 526
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 529
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mImageCache:Lcom/miui/gallery/common/LruCache;

    invoke-virtual {v2}, Lcom/miui/gallery/common/LruCache;->clear()V

    .line 530
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 516
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mIsActive:Z

    .line 517
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mAlbumSetPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/miui/gallery/util/AlbumUtils;->getAlbumSortBy(Ljava/lang/String;)I

    move-result v2

    .line 518
    .local v2, sortBy:I
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 519
    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->prepareSlotContent(II)V

    .line 518
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 521
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->updateAllImageRequests()V

    .line 522
    return-void
.end method

.method public setActiveWindow(II)V
    .locals 9
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 189
    if-gt p1, p2, :cond_1

    sub-int v3, p2, p1

    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;

    array-length v6, v6

    if-gt v3, v6, :cond_1

    iget v3, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mSize:I

    if-gt p2, v3, :cond_1

    move v3, v4

    :goto_0
    const-string v6, "%s, %s, %s, %s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x2

    iget-object v8, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;

    array-length v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x3

    iget v8, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mSize:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v3, v6, v7}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 192
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/AlbumSlidingWindow$AlbumDisplayItem;

    .line 194
    .local v2, data:[Lcom/miui/gallery/ui/DisplayItem;
    iput p1, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mActiveStart:I

    .line 195
    iput p2, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    .line 197
    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    array-length v4, v2

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mSize:I

    array-length v6, v2

    sub-int/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v5, v4}, Lcom/miui/gallery/common/Utils;->clamp(III)I

    move-result v1

    .line 199
    .local v1, contentStart:I
    array-length v3, v2

    add-int/2addr v3, v1

    iget v4, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 200
    .local v0, contentEnd:I
    invoke-direct {p0, v1, v0}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->setContentWindow(II)V

    .line 201
    iget-boolean v3, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mIsActive:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->updateAllImageRequests()V

    .line 202
    :cond_0
    return-void

    .end local v0           #contentEnd:I
    .end local v1           #contentStart:I
    .end local v2           #data:[Lcom/miui/gallery/ui/DisplayItem;
    :cond_1
    move v3, v5

    .line 189
    goto :goto_0
.end method

.method public setListener(Lcom/miui/gallery/ui/AlbumSlidingWindow$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mListener:Lcom/miui/gallery/ui/AlbumSlidingWindow$Listener;

    .line 132
    return-void
.end method

.method public setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V
    .locals 0
    .parameter "drawer"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumSlidingWindow;->mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

    .line 128
    return-void
.end method
