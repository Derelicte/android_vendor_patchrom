.class public Lcom/miui/gallery/app/HomePage;
.super Lcom/miui/gallery/app/ActivityState;
.source "HomePage.java"

# interfaces
.implements Lcom/miui/gallery/app/EyePosition$EyePositionListener;
.implements Lcom/miui/gallery/data/MediaSet$SyncListener;
.implements Lcom/miui/gallery/ui/SelectionManager$SelectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/app/HomePage$MyDetailsSource;,
        Lcom/miui/gallery/app/HomePage$MyLoadingListener;,
        Lcom/miui/gallery/app/HomePage$SelectionMaskManager;,
        Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;,
        Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;,
        Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;
    }
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

.field private mCameraDataAdapter:Lcom/miui/gallery/app/HomeCameraDataAdapter;

.field private mCameraMediaSet:Lcom/miui/gallery/data/MediaSet;

.field private mCameraSyncTask:Lcom/miui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

.field private mCameraViewGestureLisenter:Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;

.field private mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

.field private mDetailsSource:Lcom/miui/gallery/app/HomePage$MyDetailsSource;

.field private mEyePosition:Lcom/miui/gallery/app/EyePosition;

.field private mGetAlbum:Z

.field private mGetContent:Z

.field private mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;

.field private mHighlightDrawer:Lcom/miui/gallery/ui/HighlightDrawer;

.field private mInitialSynced:Z

.field private mIsActive:Z

.field private mLoadingBits:I

.field private mRecentAlbumDataAdapter:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

.field private mRecentAlbumMediaSet:Lcom/miui/gallery/data/MediaSet;

.field private mRecentAlbumSyncTask:Lcom/miui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentAlbumView:Lcom/miui/gallery/ui/HomeRecentAlbumView;

.field private mRecentAlbumViewGestureLisenter:Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;

.field private final mRootPane:Lcom/miui/gallery/ui/GLView;

.field protected mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

.field private mSelectionMaskManager:Lcom/miui/gallery/app/HomePage$SelectionMaskManager;

.field private mShowDetails:Z

.field private mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

.field private mTaskListener:Lcom/miui/gallery/ui/TaskListenerForRefresh;

.field private mX:F

.field private mY:F

.field private mZ:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lcom/miui/gallery/app/ActivityState;-><init>()V

    .line 72
    iput-boolean v0, p0, Lcom/miui/gallery/app/HomePage;->mIsActive:Z

    .line 102
    iput-object v1, p0, Lcom/miui/gallery/app/HomePage;->mCameraSyncTask:Lcom/miui/gallery/util/Future;

    .line 103
    iput-object v1, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumSyncTask:Lcom/miui/gallery/util/Future;

    .line 105
    iput v0, p0, Lcom/miui/gallery/app/HomePage;->mLoadingBits:I

    .line 106
    iput-boolean v0, p0, Lcom/miui/gallery/app/HomePage;->mInitialSynced:Z

    .line 108
    new-instance v0, Lcom/miui/gallery/app/HomePage$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/HomePage$1;-><init>(Lcom/miui/gallery/app/HomePage;)V

    iput-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    .line 884
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/ui/StaticBackground;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/app/EyePosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mEyePosition:Lcom/miui/gallery/app/EyePosition;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/app/HomePage;I[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/app/HomePage;->savePositions(I[I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/gallery/app/HomePage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/miui/gallery/app/HomePage;->mGetContent:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/ui/HighlightDrawer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mHighlightDrawer:Lcom/miui/gallery/ui/HighlightDrawer;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/app/HomePage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/miui/gallery/app/HomePage;->mGetAlbum:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/app/HomePage$MyDetailsSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mDetailsSource:Lcom/miui/gallery/app/HomePage$MyDetailsSource;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/app/HomeCameraDataAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraDataAdapter:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraMediaSet:Lcom/miui/gallery/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumDataAdapter:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/app/HomePage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/miui/gallery/app/HomePage;->mShowDetails:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraViewGestureLisenter:Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/miui/gallery/app/HomePage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage;->hideDetails()V

    return-void
.end method

.method static synthetic access$2202(Lcom/miui/gallery/app/HomePage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/miui/gallery/app/HomePage;->mInitialSynced:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/miui/gallery/app/HomePage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/miui/gallery/app/HomePage;->mIsActive:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/miui/gallery/app/HomePage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/HomePage;->clearLoadingBit(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/miui/gallery/app/HomePage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/HomePage;->setLoadingBit(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/ui/DetailsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/ui/GridDrawer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/ui/HomeCameraView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/ui/HomeRecentAlbumView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumView:Lcom/miui/gallery/ui/HomeRecentAlbumView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/app/HomePage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/miui/gallery/app/HomePage;->mX:F

    return v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/app/HomePage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/miui/gallery/app/HomePage;->mY:F

    return v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/app/HomePage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/miui/gallery/app/HomePage;->mZ:F

    return v0
.end method

.method private clearLoadingBit(I)V
    .locals 2
    .parameter "loadingBit"

    .prologue
    .line 448
    iget v0, p0, Lcom/miui/gallery/app/HomePage;->mLoadingBits:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/app/HomePage;->mLoadingBits:I

    .line 449
    iget v0, p0, Lcom/miui/gallery/app/HomePage;->mLoadingBits:I

    if-nez v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GalleryUtils;->setSpinnerVisibility(Landroid/app/Activity;Z)V

    .line 452
    :cond_0
    return-void
.end method

.method private getSelectedString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 714
    iget-object v4, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v4}, Lcom/miui/gallery/app/GalleryActivity;->getGalleryActionBar()Lcom/miui/gallery/app/GalleryActionBar;

    move-result-object v0

    .line 715
    .local v0, actionBar:Lcom/miui/gallery/app/GalleryActionBar;
    iget-object v4, p0, Lcom/miui/gallery/app/HomePage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result v1

    .line 716
    .local v1, count:I
    const/high16 v3, 0x7f0f

    .line 717
    .local v3, string:I
    iget-object v4, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v4}, Lcom/miui/gallery/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    .line 718
    .local v2, format:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getTextForSelectMenu()I
    .locals 5

    .prologue
    .line 598
    iget-object v2, p0, Lcom/miui/gallery/app/HomePage;->mData:Landroid/os/Bundle;

    const-string v3, "type-bits"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 600
    .local v1, typeBits:I
    const v0, 0x7f0d003e

    .line 601
    .local v0, id:I
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_0

    .line 602
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_1

    const v0, 0x7f0d003f

    .line 606
    :cond_0
    :goto_0
    return v0

    .line 602
    :cond_1
    const v0, 0x7f0d0040

    goto :goto_0
.end method

.method private hideDetails()V
    .locals 2

    .prologue
    .line 828
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/app/HomePage;->mShowDetails:Z

    .line 829
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/DetailsHelper;->hide()V

    .line 830
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/HomeCameraView;->setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V

    .line 831
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/HomeCameraView;->invalidate()V

    .line 832
    return-void
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 6
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    .line 521
    const-string v1, "media-path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, mediaPath:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/MediaSetUtils;->createCameraMediaSet(Lcom/miui/gallery/data/DataManager;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/app/HomePage;->mCameraMediaSet:Lcom/miui/gallery/data/MediaSet;

    .line 523
    new-instance v1, Lcom/miui/gallery/app/HomeCameraDataAdapter;

    iget-object v2, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v3, p0, Lcom/miui/gallery/app/HomePage;->mCameraMediaSet:Lcom/miui/gallery/data/MediaSet;

    const/16 v4, 0xb

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/app/HomeCameraDataAdapter;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/data/MediaSet;I)V

    iput-object v1, p0, Lcom/miui/gallery/app/HomePage;->mCameraDataAdapter:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    .line 525
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mCameraDataAdapter:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    new-instance v2, Lcom/miui/gallery/app/HomePage$MyLoadingListener;

    invoke-direct {v2, p0, v5}, Lcom/miui/gallery/app/HomePage$MyLoadingListener;-><init>(Lcom/miui/gallery/app/HomePage;Lcom/miui/gallery/app/HomePage$1;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->setLoadingListener(Lcom/miui/gallery/app/LoadingListener;)V

    .line 527
    new-instance v1, Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;

    invoke-direct {v1, p0}, Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;-><init>(Lcom/miui/gallery/app/HomePage;)V

    iput-object v1, p0, Lcom/miui/gallery/app/HomePage;->mCameraViewGestureLisenter:Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;

    .line 528
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    iget-object v2, p0, Lcom/miui/gallery/app/HomePage;->mCameraViewGestureLisenter:Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/HomeCameraView;->setListener(Lcom/miui/gallery/ui/SlotView$Listener;)V

    .line 529
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    iget-object v2, p0, Lcom/miui/gallery/app/HomePage;->mCameraDataAdapter:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/HomeCameraView;->setModel(Lcom/miui/gallery/ui/HomeSlidingWindowBase$Model;)V

    .line 531
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gallery/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumMediaSet:Lcom/miui/gallery/data/MediaSet;

    .line 532
    new-instance v1, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    iget-object v2, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v3, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumMediaSet:Lcom/miui/gallery/data/MediaSet;

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/data/MediaSet;I)V

    iput-object v1, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumDataAdapter:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    .line 534
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumDataAdapter:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    new-instance v2, Lcom/miui/gallery/app/HomePage$MyLoadingListener;

    invoke-direct {v2, p0, v5}, Lcom/miui/gallery/app/HomePage$MyLoadingListener;-><init>(Lcom/miui/gallery/app/HomePage;Lcom/miui/gallery/app/HomePage$1;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->setLoadingListener(Lcom/miui/gallery/app/LoadingListener;)V

    .line 536
    new-instance v1, Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;

    invoke-direct {v1, p0}, Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;-><init>(Lcom/miui/gallery/app/HomePage;)V

    iput-object v1, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumViewGestureLisenter:Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;

    .line 537
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumView:Lcom/miui/gallery/ui/HomeRecentAlbumView;

    iget-object v2, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumViewGestureLisenter:Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/HomeRecentAlbumView;->setListener(Lcom/miui/gallery/ui/SlotView$Listener;)V

    .line 538
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumView:Lcom/miui/gallery/ui/HomeRecentAlbumView;

    iget-object v2, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumDataAdapter:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/HomeRecentAlbumView;->setModel(Lcom/miui/gallery/ui/HomeSlidingWindowBase$Model;)V

    .line 541
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    iget-object v2, p0, Lcom/miui/gallery/app/HomePage;->mCameraMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/SelectionManager;->setSource(Ljava/lang/Object;)V

    .line 542
    return-void
.end method

.method private initializeViews()V
    .locals 12

    .prologue
    const v9, 0x7f020075

    .line 546
    new-instance v7, Lcom/miui/gallery/ui/SelectionManager;

    iget-object v8, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-direct {v7, v8}, Lcom/miui/gallery/ui/SelectionManager;-><init>(Lcom/miui/gallery/app/GalleryContext;)V

    iput-object v7, p0, Lcom/miui/gallery/app/HomePage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    .line 547
    iget-object v7, p0, Lcom/miui/gallery/app/HomePage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v7, p0}, Lcom/miui/gallery/ui/SelectionManager;->setSelectionListener(Lcom/miui/gallery/ui/SelectionManager$SelectionListener;)V

    .line 548
    new-instance v7, Lcom/miui/gallery/ui/StaticBackground;

    iget-object v8, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v8}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/miui/gallery/ui/StaticBackground;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/miui/gallery/app/HomePage;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

    .line 551
    iget-object v7, p0, Lcom/miui/gallery/app/HomePage;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

    invoke-virtual {v7, v9, v9}, Lcom/miui/gallery/ui/StaticBackground;->setImage(II)V

    .line 552
    iget-object v7, p0, Lcom/miui/gallery/app/HomePage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    iget-object v8, p0, Lcom/miui/gallery/app/HomePage;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

    invoke-virtual {v7, v8}, Lcom/miui/gallery/ui/GLView;->addComponent(Lcom/miui/gallery/ui/GLView;)V

    .line 554
    new-instance v8, Lcom/miui/gallery/ui/GridDrawer;

    iget-object v7, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v7, Landroid/content/Context;

    iget-object v9, p0, Lcom/miui/gallery/app/HomePage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-direct {v8, v7, v9}, Lcom/miui/gallery/ui/GridDrawer;-><init>(Landroid/content/Context;Lcom/miui/gallery/ui/SelectionManager;)V

    iput-object v8, p0, Lcom/miui/gallery/app/HomePage;->mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;

    .line 556
    iget-object v7, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v7, Landroid/content/Context;

    invoke-static {v7}, Lcom/miui/gallery/app/Config$HomePageConfig;->get(Landroid/content/Context;)Lcom/miui/gallery/app/Config$HomePageConfig;

    move-result-object v0

    .line 559
    .local v0, config:Lcom/miui/gallery/app/Config$HomePageConfig;
    new-instance v7, Lcom/miui/gallery/ui/HomeCameraView;

    iget-object v8, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v9, p0, Lcom/miui/gallery/app/HomePage;->mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;

    iget-object v10, v0, Lcom/miui/gallery/app/Config$HomePageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    invoke-direct {v7, v8, v9, v10}, Lcom/miui/gallery/ui/HomeCameraView;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SelectionDrawer;Lcom/miui/gallery/ui/SlotView$Spec;)V

    iput-object v7, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    .line 560
    iget-object v7, p0, Lcom/miui/gallery/app/HomePage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    iget-object v8, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    invoke-virtual {v7, v8}, Lcom/miui/gallery/ui/GLView;->addComponent(Lcom/miui/gallery/ui/GLView;)V

    .line 563
    new-instance v7, Lcom/miui/gallery/ui/HomeRecentAlbumView;

    iget-object v8, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v9, p0, Lcom/miui/gallery/app/HomePage;->mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;

    iget-object v10, v0, Lcom/miui/gallery/app/Config$HomePageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget-object v11, v0, Lcom/miui/gallery/app/Config$HomePageConfig;->recentAlbumLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/miui/gallery/ui/HomeRecentAlbumView;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SelectionDrawer;Lcom/miui/gallery/ui/SlotView$Spec;Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;)V

    iput-object v7, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumView:Lcom/miui/gallery/ui/HomeRecentAlbumView;

    .line 565
    new-instance v6, Lcom/miui/gallery/ui/TitleView;

    invoke-virtual {p0}, Lcom/miui/gallery/app/HomePage;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0b004a

    invoke-direct {v6, v7, v8}, Lcom/miui/gallery/ui/TitleView;-><init>(Landroid/app/Activity;I)V

    .line 566
    .local v6, titleView:Lcom/miui/gallery/ui/TitleView;
    iget-object v7, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumView:Lcom/miui/gallery/ui/HomeRecentAlbumView;

    invoke-virtual {v7, v6}, Lcom/miui/gallery/ui/HomeRecentAlbumView;->setTitleView(Lcom/miui/gallery/ui/TitleView;)V

    .line 567
    iget-object v7, p0, Lcom/miui/gallery/app/HomePage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    iget-object v8, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumView:Lcom/miui/gallery/ui/HomeRecentAlbumView;

    invoke-virtual {v7, v8}, Lcom/miui/gallery/ui/GLView;->addComponent(Lcom/miui/gallery/ui/GLView;)V

    .line 570
    const v7, 0x7f0b004b

    invoke-virtual {p0, v7}, Lcom/miui/gallery/app/HomePage;->findViewInPage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 571
    .local v1, countText:Landroid/widget/TextView;
    instance-of v7, v1, Lcom/miui/gallery/ui/GradualTextView;

    if-eqz v7, :cond_0

    move-object v3, v1

    .line 572
    check-cast v3, Lcom/miui/gallery/ui/GradualTextView;

    .line 573
    .local v3, gtv:Lcom/miui/gallery/ui/GradualTextView;
    invoke-virtual {v3}, Lcom/miui/gallery/ui/GradualTextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 574
    .local v4, res:Landroid/content/res/Resources;
    const v7, 0x7f080011

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 575
    .local v5, start:I
    const v7, 0x7f080012

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 576
    .local v2, end:I
    invoke-virtual {v3, v5, v2}, Lcom/miui/gallery/ui/GradualTextView;->setGradualColor(II)V

    .line 579
    .end local v2           #end:I
    .end local v3           #gtv:Lcom/miui/gallery/ui/GradualTextView;
    .end local v4           #res:Landroid/content/res/Resources;
    .end local v5           #start:I
    :cond_0
    new-instance v7, Lcom/miui/gallery/ui/TaskListenerForRefresh;

    invoke-direct {v7}, Lcom/miui/gallery/ui/TaskListenerForRefresh;-><init>()V

    iput-object v7, p0, Lcom/miui/gallery/app/HomePage;->mTaskListener:Lcom/miui/gallery/ui/TaskListenerForRefresh;

    .line 580
    new-instance v7, Lcom/miui/gallery/ui/ActionModeHandler;

    iget-object v8, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v9, p0, Lcom/miui/gallery/app/HomePage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    iget-object v10, p0, Lcom/miui/gallery/app/HomePage;->mTaskListener:Lcom/miui/gallery/ui/TaskListenerForRefresh;

    invoke-direct {v7, v8, v9, v10}, Lcom/miui/gallery/ui/ActionModeHandler;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SelectionManager;Lcom/miui/gallery/ui/MenuExecutor$TaskListener;)V

    iput-object v7, p0, Lcom/miui/gallery/app/HomePage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    .line 581
    iget-object v7, p0, Lcom/miui/gallery/app/HomePage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    new-instance v8, Lcom/miui/gallery/app/HomePage$2;

    invoke-direct {v8, p0}, Lcom/miui/gallery/app/HomePage$2;-><init>(Lcom/miui/gallery/app/HomePage;)V

    invoke-virtual {v7, v8}, Lcom/miui/gallery/ui/ActionModeHandler;->setActionModeListener(Lcom/miui/gallery/ui/ActionModeHandler$ActionModeListener;)V

    .line 587
    const v7, 0x7f0b004f

    invoke-virtual {p0, v7}, Lcom/miui/gallery/app/HomePage;->findViewInPage(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/miui/gallery/app/HomePage$3;

    invoke-direct {v8, p0}, Lcom/miui/gallery/app/HomePage$3;-><init>(Lcom/miui/gallery/app/HomePage;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 595
    return-void
.end method

.method private onEnterSelectionMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 766
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0, v3}, Lcom/miui/gallery/ui/ActionModeHandler;->startActionMode(Z)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/HomePage;->mActionMode:Landroid/view/ActionMode;

    .line 767
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/GalleryUtils;->vibrate(Lcom/miui/gallery/app/GalleryActivity;J)V

    .line 770
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraViewGestureLisenter:Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumViewGestureLisenter:Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;->setNotInSelectionMode()V

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumViewGestureLisenter:Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 774
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraViewGestureLisenter:Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;->setNotInSelectionMode()V

    .line 776
    :cond_1
    const v0, 0x7f0b004f

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/HomePage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 778
    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage;->setDrawableTitle()V

    .line 779
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mSelectionMaskManager:Lcom/miui/gallery/app/HomePage$SelectionMaskManager;

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->onEnterSelectionMode()V

    .line 780
    return-void
.end method

.method private onLeaveSelectionMode()V
    .locals 2

    .prologue
    .line 783
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 784
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLView;->invalidate()V

    .line 786
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraViewGestureLisenter:Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;->setNotInSelectionMode()V

    .line 787
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumViewGestureLisenter:Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;->setNotInSelectionMode()V

    .line 789
    const v0, 0x7f0b004f

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/HomePage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 791
    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage;->setDrawableTitle()V

    .line 793
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mSelectionMaskManager:Lcom/miui/gallery/app/HomePage$SelectionMaskManager;

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->onLeaveSelectionMode()V

    .line 794
    return-void
.end method

.method private refresh()V
    .locals 0

    .prologue
    .line 489
    invoke-static {}, Lcom/miui/gallery/StorageExplorer/MediaStoreHelper;->triggerMediaMounted()V

    .line 490
    return-void
.end method

.method private savePositions(I[I)V
    .locals 9
    .parameter "slotIndex"
    .parameter "center"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 191
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 193
    .local v0, offset:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/miui/gallery/app/HomePage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    iget-object v5, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    invoke-virtual {v4, v5, v0}, Lcom/miui/gallery/ui/GLView;->getBoundsOf(Lcom/miui/gallery/ui/GLView;Landroid/graphics/Rect;)Z

    .line 194
    iget-object v4, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    iget-object v5, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-static {v5}, Lcom/miui/gallery/ui/PositionRepository;->getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/ui/PositionRepository;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/gallery/ui/HomeCameraView;->savePositions(Lcom/miui/gallery/ui/PositionRepository;)V

    .line 195
    iget-object v4, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    invoke-virtual {v4, p1}, Lcom/miui/gallery/ui/HomeCameraView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 196
    .local v1, r:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/HomeCameraView;->getScrollX()I

    move-result v2

    .line 197
    .local v2, scrollX:I
    iget-object v4, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/HomeCameraView;->getScrollY()I

    move-result v3

    .line 198
    .local v3, scrollY:I
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    aput v4, p2, v7

    .line 199
    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v4, v3

    aput v4, p2, v8

    .line 201
    iget-object v4, p0, Lcom/miui/gallery/app/HomePage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    iget-object v5, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumView:Lcom/miui/gallery/ui/HomeRecentAlbumView;

    invoke-virtual {v4, v5, v0}, Lcom/miui/gallery/ui/GLView;->getBoundsOf(Lcom/miui/gallery/ui/GLView;Landroid/graphics/Rect;)Z

    .line 202
    iget-object v4, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumView:Lcom/miui/gallery/ui/HomeRecentAlbumView;

    iget-object v5, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-static {v5}, Lcom/miui/gallery/ui/PositionRepository;->getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/ui/PositionRepository;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/gallery/ui/HomeRecentAlbumView;->savePositions(Lcom/miui/gallery/ui/PositionRepository;)V

    .line 203
    iget-object v4, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumView:Lcom/miui/gallery/ui/HomeRecentAlbumView;

    invoke-virtual {v4, p1}, Lcom/miui/gallery/ui/HomeRecentAlbumView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 204
    iget-object v4, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumView:Lcom/miui/gallery/ui/HomeRecentAlbumView;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/HomeRecentAlbumView;->getScrollX()I

    move-result v2

    .line 205
    iget-object v4, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumView:Lcom/miui/gallery/ui/HomeRecentAlbumView;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/HomeRecentAlbumView;->getScrollY()I

    move-result v3

    .line 206
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    aput v4, p2, v7

    .line 207
    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v4, v3

    aput v4, p2, v8

    .line 209
    return-void
.end method

.method private setDrawableTitle()V
    .locals 3

    .prologue
    .line 723
    const v2, 0x7f0b004f

    invoke-virtual {p0, v2}, Lcom/miui/gallery/app/HomePage;->findViewInPage(I)Landroid/view/View;

    move-result-object v1

    .line 724
    .local v1, viewStorageExplorerTitle:Landroid/view/View;
    const/4 v0, -0x1

    .line 726
    .local v0, drawableId:I
    iget-object v2, p0, Lcom/miui/gallery/app/HomePage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 727
    const v0, 0x7f0200da

    .line 732
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 733
    return-void

    .line 729
    :cond_0
    const v0, 0x7f0200dc

    goto :goto_0
.end method

.method private setLoadingBit(I)V
    .locals 2
    .parameter "loadingBit"

    .prologue
    .line 455
    iget v0, p0, Lcom/miui/gallery/app/HomePage;->mLoadingBits:I

    if-nez v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GalleryUtils;->setSpinnerVisibility(Landroid/app/Activity;Z)V

    .line 458
    :cond_0
    iget v0, p0, Lcom/miui/gallery/app/HomePage;->mLoadingBits:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/miui/gallery/app/HomePage;->mLoadingBits:I

    .line 459
    return-void
.end method

.method private showDetails()V
    .locals 4

    .prologue
    .line 835
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/app/HomePage;->mShowDetails:Z

    .line 836
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    if-nez v0, :cond_0

    .line 837
    new-instance v0, Lcom/miui/gallery/ui/HighlightDrawer;

    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/app/HomePage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/ui/HighlightDrawer;-><init>(Landroid/content/Context;Lcom/miui/gallery/ui/SelectionManager;)V

    iput-object v0, p0, Lcom/miui/gallery/app/HomePage;->mHighlightDrawer:Lcom/miui/gallery/ui/HighlightDrawer;

    .line 839
    new-instance v0, Lcom/miui/gallery/ui/DetailsHelper;

    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v2, p0, Lcom/miui/gallery/app/HomePage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    iget-object v3, p0, Lcom/miui/gallery/app/HomePage;->mDetailsSource:Lcom/miui/gallery/app/HomePage$MyDetailsSource;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/ui/DetailsHelper;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/GLView;Lcom/miui/gallery/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/miui/gallery/app/HomePage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    .line 840
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    new-instance v1, Lcom/miui/gallery/app/HomePage$6;

    invoke-direct {v1, p0}, Lcom/miui/gallery/app/HomePage$6;-><init>(Lcom/miui/gallery/app/HomePage;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/DetailsHelper;->setCloseListener(Lcom/miui/gallery/ui/DetailsHelper$CloseListener;)V

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mHighlightDrawer:Lcom/miui/gallery/ui/HighlightDrawer;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/HomeCameraView;->setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V

    .line 847
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/DetailsHelper;->show()V

    .line 848
    return-void
.end method

.method private startTransition()V
    .locals 3

    .prologue
    .line 686
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-static {v1}, Lcom/miui/gallery/ui/PositionRepository;->getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/ui/PositionRepository;

    move-result-object v0

    .line 688
    .local v0, repository:Lcom/miui/gallery/ui/PositionRepository;
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    new-instance v2, Lcom/miui/gallery/app/HomePage$4;

    invoke-direct {v2, p0, v0}, Lcom/miui/gallery/app/HomePage$4;-><init>(Lcom/miui/gallery/app/HomePage;Lcom/miui/gallery/ui/PositionRepository;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/HomeCameraView;->startTransition(Lcom/miui/gallery/ui/PositionProvider;)V

    .line 700
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumView:Lcom/miui/gallery/ui/HomeRecentAlbumView;

    new-instance v2, Lcom/miui/gallery/app/HomePage$5;

    invoke-direct {v2, p0, v0}, Lcom/miui/gallery/app/HomePage$5;-><init>(Lcom/miui/gallery/app/HomePage;Lcom/miui/gallery/ui/PositionRepository;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/HomeRecentAlbumView;->startTransition(Lcom/miui/gallery/ui/PositionProvider;)V

    .line 711
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/miui/gallery/app/HomePage;->mShowDetails:Z

    if-eqz v0, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage;->hideDetails()V

    .line 188
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 186
    :cond_1
    invoke-super {p0}, Lcom/miui/gallery/app/ActivityState;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .parameter "data"
    .parameter "restoreState"

    .prologue
    const/4 v3, 0x0

    .line 435
    const v1, 0x7f0b0051

    const v2, 0x7f040013

    invoke-virtual {p0, v1, v2}, Lcom/miui/gallery/app/HomePage;->inflatePageView(II)V

    .line 436
    new-instance v1, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;

    invoke-direct {v1, p0}, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;-><init>(Lcom/miui/gallery/app/HomePage;)V

    iput-object v1, p0, Lcom/miui/gallery/app/HomePage;->mSelectionMaskManager:Lcom/miui/gallery/app/HomePage$SelectionMaskManager;

    .line 437
    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage;->initializeViews()V

    .line 438
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/HomePage;->initializeData(Landroid/os/Bundle;)V

    .line 439
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 440
    .local v0, context:Landroid/content/Context;
    const-string v1, "get-content"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/app/HomePage;->mGetContent:Z

    .line 441
    const-string v1, "get-album"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/app/HomePage;->mGetAlbum:Z

    .line 442
    new-instance v1, Lcom/miui/gallery/app/EyePosition;

    invoke-direct {v1, v0, p0}, Lcom/miui/gallery/app/EyePosition;-><init>(Landroid/content/Context;Lcom/miui/gallery/app/EyePosition$EyePositionListener;)V

    iput-object v1, p0, Lcom/miui/gallery/app/HomePage;->mEyePosition:Lcom/miui/gallery/app/EyePosition;

    .line 443
    new-instance v1, Lcom/miui/gallery/app/HomePage$MyDetailsSource;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/app/HomePage$MyDetailsSource;-><init>(Lcom/miui/gallery/app/HomePage;Lcom/miui/gallery/app/HomePage$1;)V

    iput-object v1, p0, Lcom/miui/gallery/app/HomePage;->mDetailsSource:Lcom/miui/gallery/app/HomePage$MyDetailsSource;

    .line 444
    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage;->startTransition()V

    .line 445
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const v8, 0x7f100009

    const/4 v7, 0x1

    .line 611
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    .line 612
    .local v1, activity:Landroid/app/Activity;
    iget-object v5, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v5}, Lcom/miui/gallery/app/GalleryActivity;->getGalleryActionBar()Lcom/miui/gallery/app/GalleryActionBar;

    move-result-object v0

    .line 614
    .local v0, actionBar:Lcom/miui/gallery/app/GalleryActionBar;
    invoke-virtual {v0, v7}, Lcom/miui/gallery/app/GalleryActionBar;->setStyle(I)V

    .line 615
    iget-object v5, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v5}, Lcom/miui/gallery/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0073

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 616
    .local v4, text:Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/miui/gallery/app/GalleryActionBar;->setTitleText(Ljava/lang/CharSequence;)V

    .line 618
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Lcom/miui/gallery/app/GalleryActionBar;->setDisplayOptions(I)V

    .line 620
    iget-object v5, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v5}, Lcom/miui/gallery/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090045

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/miui/gallery/app/GalleryActionBar;->setPaddingLeft(I)V

    .line 623
    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 625
    .local v2, inflater:Landroid/view/MenuInflater;
    iget-boolean v5, p0, Lcom/miui/gallery/app/HomePage;->mGetContent:Z

    if-eqz v5, :cond_1

    .line 626
    invoke-virtual {v2, v8, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 627
    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage;->getTextForSelectMenu()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/miui/gallery/app/GalleryActionBar;->setTitle(I)V

    .line 639
    :cond_0
    :goto_0
    return v7

    .line 628
    :cond_1
    iget-boolean v5, p0, Lcom/miui/gallery/app/HomePage;->mGetAlbum:Z

    if-eqz v5, :cond_2

    .line 629
    invoke-virtual {v2, v8, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 630
    const v5, 0x7f0d0041

    invoke-virtual {v0, v5}, Lcom/miui/gallery/app/GalleryActionBar;->setTitle(I)V

    goto :goto_0

    .line 632
    :cond_2
    const v5, 0x7f100005

    invoke-virtual {v2, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 633
    const v5, 0x7f0b0082

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 635
    .local v3, selectItem:Landroid/view/MenuItem;
    if-eqz v3, :cond_0

    .line 636
    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage;->getTextForSelectMenu()I

    move-result v5

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onEyePositionChanged(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLView;->lockRendering()V

    .line 172
    iput p1, p0, Lcom/miui/gallery/app/HomePage;->mX:F

    .line 173
    iput p2, p0, Lcom/miui/gallery/app/HomePage;->mY:F

    .line 174
    iput p3, p0, Lcom/miui/gallery/app/HomePage;->mZ:F

    .line 175
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLView;->unlockRendering()V

    .line 176
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLView;->invalidate()V

    .line 177
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 644
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 645
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    move v0, v2

    .line 672
    :goto_0
    return v0

    .line 647
    :sswitch_0
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 648
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    move v0, v1

    .line 649
    goto :goto_0

    .line 651
    :sswitch_1
    iget-object v3, p0, Lcom/miui/gallery/app/HomePage;->mCameraDataAdapter:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    invoke-virtual {v3}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 652
    iget-boolean v0, p0, Lcom/miui/gallery/app/HomePage;->mShowDetails:Z

    if-eqz v0, :cond_0

    .line 653
    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage;->hideDetails()V

    :goto_1
    move v0, v1

    .line 662
    goto :goto_0

    .line 655
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage;->showDetails()V

    goto :goto_1

    .line 658
    :cond_1
    const v3, 0x7f0d006d

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 664
    :sswitch_2
    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage;->refresh()V

    move v0, v1

    .line 665
    goto :goto_0

    .line 668
    :sswitch_3
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/miui/gallery/settings/GallerySettings;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 669
    goto :goto_0

    .line 645
    :sswitch_data_0
    .sparse-switch
        0x7f0b0083 -> :sswitch_3
        0x7f0b0084 -> :sswitch_2
        0x7f0b0091 -> :sswitch_1
        0x7f0b00a1 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 463
    invoke-super {p0}, Lcom/miui/gallery/app/ActivityState;->onPause()V

    .line 464
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/app/HomePage;->mIsActive:Z

    .line 465
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ActionModeHandler;->pause()V

    .line 466
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraDataAdapter:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->pause()V

    .line 467
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumDataAdapter:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->pause()V

    .line 468
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/HomeCameraView;->pause()V

    .line 469
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumView:Lcom/miui/gallery/ui/HomeRecentAlbumView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/HomeRecentAlbumView;->pause()V

    .line 470
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mEyePosition:Lcom/miui/gallery/app/EyePosition;

    invoke-virtual {v0}, Lcom/miui/gallery/app/EyePosition;->pause()V

    .line 471
    invoke-static {}, Lcom/miui/gallery/ui/DetailsHelper;->pause()V

    .line 473
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraSyncTask:Lcom/miui/gallery/util/Future;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraSyncTask:Lcom/miui/gallery/util/Future;

    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 475
    iput-object v1, p0, Lcom/miui/gallery/app/HomePage;->mCameraSyncTask:Lcom/miui/gallery/util/Future;

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumSyncTask:Lcom/miui/gallery/util/Future;

    if-eqz v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumSyncTask:Lcom/miui/gallery/util/Future;

    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 479
    iput-object v1, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumSyncTask:Lcom/miui/gallery/util/Future;

    .line 481
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/HomePage;->clearLoadingBit(I)V

    .line 484
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getGalleryActionBar()Lcom/miui/gallery/app/GalleryActionBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/GalleryActionBar;->setTitleTextVisibility(I)V

    .line 485
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getGalleryActionBar()Lcom/miui/gallery/app/GalleryActionBar;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/GalleryActionBar;->setCountText(Ljava/lang/CharSequence;)V

    .line 486
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 494
    invoke-super {p0}, Lcom/miui/gallery/app/ActivityState;->onResume()V

    .line 495
    iput-boolean v1, p0, Lcom/miui/gallery/app/HomePage;->mIsActive:Z

    .line 496
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/HomePage;->setContentPane(Lcom/miui/gallery/ui/GLView;)V

    .line 499
    invoke-direct {p0, v1}, Lcom/miui/gallery/app/HomePage;->setLoadingBit(I)V

    .line 500
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraDataAdapter:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->resume()V

    .line 501
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumDataAdapter:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->resume()V

    .line 502
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/HomeCameraView;->resume()V

    .line 507
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mCameraDataAdapter:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->getTotalMediaObjectCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/HomeCameraView;->updateTitleView(I)V

    .line 509
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumView:Lcom/miui/gallery/ui/HomeRecentAlbumView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/HomeRecentAlbumView;->resume()V

    .line 511
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mEyePosition:Lcom/miui/gallery/app/EyePosition;

    invoke-virtual {v0}, Lcom/miui/gallery/app/EyePosition;->resume()V

    .line 512
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ActionModeHandler;->resume()V

    .line 513
    iget-boolean v0, p0, Lcom/miui/gallery/app/HomePage;->mInitialSynced:Z

    if-nez v0, :cond_0

    .line 514
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/HomePage;->setLoadingBit(I)V

    .line 515
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/data/MediaSet;->requestSync(Lcom/miui/gallery/data/MediaSet$SyncListener;)Lcom/miui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraSyncTask:Lcom/miui/gallery/util/Future;

    .line 516
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/data/MediaSet;->requestSync(Lcom/miui/gallery/data/MediaSet$SyncListener;)Lcom/miui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumSyncTask:Lcom/miui/gallery/util/Future;

    .line 518
    :cond_0
    return-void
.end method

.method public onSelectionChange(Lcom/miui/gallery/data/Path;Z)V
    .locals 2
    .parameter "path"
    .parameter "selected"

    .prologue
    .line 822
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 823
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage;->getSelectedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 824
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/ui/ActionModeHandler;->updateSupportedOperation(Lcom/miui/gallery/data/Path;Z)V

    .line 825
    return-void

    .line 822
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSelectionModeChange(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 798
    packed-switch p1, :pswitch_data_0

    .line 819
    :cond_0
    :goto_0
    return-void

    .line 800
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage;->onEnterSelectionMode()V

    goto :goto_0

    .line 804
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage;->onLeaveSelectionMode()V

    .line 806
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mTaskListener:Lcom/miui/gallery/ui/TaskListenerForRefresh;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/TaskListenerForRefresh;->isExcuteRefeshTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage;->refresh()V

    .line 809
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mTaskListener:Lcom/miui/gallery/ui/TaskListenerForRefresh;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/TaskListenerForRefresh;->resetExcuteRefeshTask()V

    goto :goto_0

    .line 814
    :pswitch_2
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage;->getSelectedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 815
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLView;->invalidate()V

    goto :goto_0

    .line 798
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 678
    packed-switch p1, :pswitch_data_0

    .line 683
    :goto_0
    return-void

    .line 680
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage;->startTransition()V

    goto :goto_0

    .line 678
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onSyncDone(Lcom/miui/gallery/data/MediaSet;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 852
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 853
    const-string v0, "HomePage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSyncDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaSet;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/miui/gallery/app/HomePage$7;

    invoke-direct {v1, p0, p2}, Lcom/miui/gallery/app/HomePage$7;-><init>(Lcom/miui/gallery/app/HomePage;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 870
    return-void
.end method
