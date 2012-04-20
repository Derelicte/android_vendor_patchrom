.class public Lcom/miui/gallery/app/AlbumPage;
.super Lcom/miui/gallery/app/ActivityState;
.source "AlbumPage.java"

# interfaces
.implements Lcom/miui/gallery/data/MediaSet$SyncListener;
.implements Lcom/miui/gallery/ui/SelectionManager$SelectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/app/AlbumPage$MyDetailsSource;,
        Lcom/miui/gallery/app/AlbumPage$MyLoadingListener;
    }
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

.field private mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;

.field private mAlbumView:Lcom/miui/gallery/ui/AlbumView;

.field private mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

.field private mDetailsSource:Lcom/miui/gallery/app/AlbumPage$MyDetailsSource;

.field private mFocusIndex:I

.field private mGetContent:Z

.field private mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;

.field private mHighlightDrawer:Lcom/miui/gallery/ui/HighlightDrawer;

.field private mInitialSynced:Z

.field private mInselectionMode:Z

.field private mIsActive:Z

.field private mLoadingBits:I

.field private mMediaName:Ljava/lang/String;

.field private mMediaSet:Lcom/miui/gallery/data/MediaSet;

.field private mMediaSetPath:Lcom/miui/gallery/data/Path;

.field private final mRootPane:Lcom/miui/gallery/ui/GLView;

.field protected mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

.field private mShowClusterMenu:Z

.field private mShowDetails:Z

.field private mSortBy:I

.field private mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

.field private mSyncTask:Lcom/miui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUserDistance:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/miui/gallery/app/ActivityState;-><init>()V

    .line 83
    iput-boolean v1, p0, Lcom/miui/gallery/app/AlbumPage;->mIsActive:Z

    .line 102
    iput v1, p0, Lcom/miui/gallery/app/AlbumPage;->mFocusIndex:I

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mSyncTask:Lcom/miui/gallery/util/Future;

    .line 112
    iput v1, p0, Lcom/miui/gallery/app/AlbumPage;->mLoadingBits:I

    .line 113
    iput-boolean v1, p0, Lcom/miui/gallery/app/AlbumPage;->mInitialSynced:Z

    .line 115
    new-instance v0, Lcom/miui/gallery/app/AlbumPage$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/AlbumPage$1;-><init>(Lcom/miui/gallery/app/AlbumPage;)V

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    .line 681
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/app/AlbumPage;)Lcom/miui/gallery/ui/StaticBackground;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/app/AlbumPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumPage;->mShowDetails:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/app/AlbumPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumPage;->onUp()V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/gallery/app/AlbumPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumPage;->hideDetails()V

    return-void
.end method

.method static synthetic access$1302(Lcom/miui/gallery/app/AlbumPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/miui/gallery/app/AlbumPage;->mInitialSynced:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/miui/gallery/app/AlbumPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumPage;->mIsActive:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/app/AlbumPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/AlbumPage;->clearLoadingBit(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/gallery/app/AlbumPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/AlbumPage;->setLoadingBit(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/gallery/app/AlbumPage;)Lcom/miui/gallery/app/AlbumDataAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/miui/gallery/app/AlbumPage;)Lcom/miui/gallery/ui/HighlightDrawer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mHighlightDrawer:Lcom/miui/gallery/ui/HighlightDrawer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/app/AlbumPage;)Lcom/miui/gallery/ui/DetailsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/app/AlbumPage;)Lcom/miui/gallery/ui/GridDrawer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/app/AlbumPage;)Lcom/miui/gallery/ui/AlbumView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumView:Lcom/miui/gallery/ui/AlbumView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/app/AlbumPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumPage;->mInselectionMode:Z

    return v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/app/AlbumPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumPage;->mGetContent:Z

    return v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/app/AlbumPage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/miui/gallery/app/AlbumPage;->mUserDistance:F

    return v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/app/AlbumPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/AlbumPage;->onDown(I)V

    return-void
.end method

.method private clearLoadingBit(I)V
    .locals 3
    .parameter

    .prologue
    .line 656
    iget v0, p0, Lcom/miui/gallery/app/AlbumPage;->mLoadingBits:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/app/AlbumPage;->mLoadingBits:I

    .line 657
    iget v0, p0, Lcom/miui/gallery/app/AlbumPage;->mLoadingBits:I

    if-nez v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GalleryUtils;->setSpinnerVisibility(Landroid/app/Activity;Z)V

    .line 660
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumDataAdapter;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f0d006e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 663
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/gallery/app/StateManager;->finishState(Lcom/miui/gallery/app/ActivityState;)V

    .line 666
    :cond_0
    return-void
.end method

.method private forceRefresh()V
    .locals 1

    .prologue
    .line 564
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/AlbumPage;->setLoadingBit(I)V

    .line 565
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumDataAdapter;->refresh()V

    .line 566
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumView:Lcom/miui/gallery/ui/AlbumView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumView;->refresh()V

    .line 567
    return-void
.end method

.method private hideDetails()V
    .locals 2

    .prologue
    .line 439
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumPage;->mShowDetails:Z

    .line 440
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/DetailsHelper;->hide()V

    .line 441
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumView:Lcom/miui/gallery/ui/AlbumView;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumView;->setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V

    .line 442
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumView:Lcom/miui/gallery/ui/AlbumView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumView;->invalidate()V

    .line 443
    return-void
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 413
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/AlbumUtils;->increaseAlbumVisitCount(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "MediaSet is null. Path = %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/gallery/app/AlbumPage;->mMediaSetPath:Lcom/miui/gallery/data/Path;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 416
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/SelectionManager;->setSource(Ljava/lang/Object;)V

    .line 417
    new-instance v0, Lcom/miui/gallery/app/AlbumDataAdapter;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/app/AlbumDataAdapter;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/data/MediaSet;)V

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;

    .line 418
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;

    new-instance v1, Lcom/miui/gallery/app/AlbumPage$MyLoadingListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/app/AlbumPage$MyLoadingListener;-><init>(Lcom/miui/gallery/app/AlbumPage;Lcom/miui/gallery/app/AlbumPage$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/AlbumDataAdapter;->setLoadingListener(Lcom/miui/gallery/app/LoadingListener;)V

    .line 419
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumView:Lcom/miui/gallery/ui/AlbumView;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumView;->setModel(Lcom/miui/gallery/ui/AlbumView$Model;)V

    .line 420
    return-void

    :cond_0
    move v0, v2

    .line 414
    goto :goto_0
.end method

.method private initializeViews()V
    .locals 6

    .prologue
    const v3, 0x7f020075

    .line 367
    new-instance v2, Lcom/miui/gallery/ui/StaticBackground;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v2, v1}, Lcom/miui/gallery/ui/StaticBackground;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/gallery/app/AlbumPage;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

    .line 370
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

    invoke-virtual {v1, v3, v3}, Lcom/miui/gallery/ui/StaticBackground;->setImage(II)V

    .line 371
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPage;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/GLView;->addComponent(Lcom/miui/gallery/ui/GLView;)V

    .line 373
    new-instance v1, Lcom/miui/gallery/ui/SelectionManager;

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-direct {v1, v2}, Lcom/miui/gallery/ui/SelectionManager;-><init>(Lcom/miui/gallery/app/GalleryContext;)V

    iput-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    .line 374
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v1, p0}, Lcom/miui/gallery/ui/SelectionManager;->setSelectionListener(Lcom/miui/gallery/ui/SelectionManager$SelectionListener;)V

    .line 375
    new-instance v2, Lcom/miui/gallery/ui/GridDrawer;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v1, Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/gallery/app/AlbumPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-direct {v2, v1, v3}, Lcom/miui/gallery/ui/GridDrawer;-><init>(Landroid/content/Context;Lcom/miui/gallery/ui/SelectionManager;)V

    iput-object v2, p0, Lcom/miui/gallery/app/AlbumPage;->mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;

    .line 376
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/gallery/app/Config$AlbumPageConfig;->get(Landroid/content/Context;)Lcom/miui/gallery/app/Config$AlbumPageConfig;

    move-result-object v0

    .line 377
    .local v0, config:Lcom/miui/gallery/app/Config$AlbumPageConfig;
    new-instance v1, Lcom/miui/gallery/ui/AlbumView;

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v3, v0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/gallery/app/AlbumPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v5}, Lcom/miui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/gallery/ui/AlbumView;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SlotView$Spec;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumView:Lcom/miui/gallery/ui/AlbumView;

    .line 378
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumView:Lcom/miui/gallery/ui/AlbumView;

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPage;->mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/AlbumView;->setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V

    .line 380
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumView:Lcom/miui/gallery/ui/AlbumView;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/GLView;->addComponent(Lcom/miui/gallery/ui/GLView;)V

    .line 382
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumView:Lcom/miui/gallery/ui/AlbumView;

    new-instance v2, Lcom/miui/gallery/app/AlbumPage$4;

    invoke-direct {v2, p0}, Lcom/miui/gallery/app/AlbumPage$4;-><init>(Lcom/miui/gallery/app/AlbumPage;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/AlbumView;->setListener(Lcom/miui/gallery/ui/SlotView$Listener;)V

    .line 403
    new-instance v1, Lcom/miui/gallery/ui/ActionModeHandler;

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v3, p0, Lcom/miui/gallery/app/AlbumPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/ui/ActionModeHandler;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SelectionManager;Lcom/miui/gallery/ui/MenuExecutor$TaskListener;)V

    iput-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    .line 404
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    new-instance v2, Lcom/miui/gallery/app/AlbumPage$5;

    invoke-direct {v2, p0}, Lcom/miui/gallery/app/AlbumPage$5;-><init>(Lcom/miui/gallery/app/AlbumPage;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/ActionModeHandler;->setActionModeListener(Lcom/miui/gallery/ui/ActionModeHandler$ActionModeListener;)V

    .line 409
    return-void
.end method

.method private onDown(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 167
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/app/AlbumDataAdapter;->get(I)Lcom/miui/gallery/data/MediaItem;

    move-result-object v0

    .line 168
    .local v0, item:Lcom/miui/gallery/data/MediaItem;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 169
    .local v1, path:Lcom/miui/gallery/data/Path;
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v2, v1}, Lcom/miui/gallery/ui/SelectionManager;->setPressedPath(Lcom/miui/gallery/data/Path;)V

    .line 170
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumView:Lcom/miui/gallery/ui/AlbumView;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AlbumView;->invalidate()V

    .line 171
    return-void

    .line 168
    .end local v1           #path:Lcom/miui/gallery/data/Path;
    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v1

    goto :goto_0
.end method

.method private onGetContent(Lcom/miui/gallery/data/MediaItem;)V
    .locals 8
    .parameter "item"

    .prologue
    .line 210
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v4}, Lcom/miui/gallery/app/GalleryActivity;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v1

    .line 211
    .local v1, dm:Lcom/miui/gallery/data/DataManager;
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 212
    .local v0, activity:Landroid/app/Activity;
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumPage;->mData:Landroid/os/Bundle;

    const-string v5, "crop"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 214
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/gallery/data/DataManager;->getContentUri(Lcom/miui/gallery/data/Path;)Landroid/net/Uri;

    move-result-object v3

    .line 215
    .local v3, uri:Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.camera.action.CROP"

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v5, 0x200

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumPage;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 218
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumPage;->mData:Landroid/os/Bundle;

    const-string v5, "output"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    if-nez v4, :cond_0

    .line 219
    const-string v4, "return-data"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 221
    :cond_0
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 222
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 228
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 224
    :cond_1
    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 226
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private onUp()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/SelectionManager;->setPressedPath(Lcom/miui/gallery/data/Path;)V

    .line 175
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumView:Lcom/miui/gallery/ui/AlbumView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumView;->invalidate()V

    .line 176
    return-void
.end method

.method private setLoadingBit(I)V
    .locals 2
    .parameter "loadTaskBit"

    .prologue
    .line 649
    iget v0, p0, Lcom/miui/gallery/app/AlbumPage;->mLoadingBits:I

    if-nez v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GalleryUtils;->setSpinnerVisibility(Landroid/app/Activity;Z)V

    .line 652
    :cond_0
    iget v0, p0, Lcom/miui/gallery/app/AlbumPage;->mLoadingBits:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/miui/gallery/app/AlbumPage;->mLoadingBits:I

    .line 653
    return-void
.end method

.method private setSort(Landroid/view/MenuItem;I)V
    .locals 2
    .parameter "item"
    .parameter "sortBy"

    .prologue
    .line 553
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 554
    iget v0, p0, Lcom/miui/gallery/app/AlbumPage;->mSortBy:I

    if-eq v0, p2, :cond_0

    .line 556
    iput p2, p0, Lcom/miui/gallery/app/AlbumPage;->mSortBy:I

    .line 557
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/app/AlbumPage;->mSortBy:I

    invoke-static {v0, v1}, Lcom/miui/gallery/util/AlbumUtils;->setAlbumSortBy(Ljava/lang/String;I)V

    .line 558
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumPage;->forceRefresh()V

    .line 560
    :cond_0
    return-void
.end method

.method private showDetails()V
    .locals 4

    .prologue
    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumPage;->mShowDetails:Z

    .line 424
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    if-nez v0, :cond_0

    .line 425
    new-instance v0, Lcom/miui/gallery/ui/HighlightDrawer;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/ui/HighlightDrawer;-><init>(Landroid/content/Context;Lcom/miui/gallery/ui/SelectionManager;)V

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mHighlightDrawer:Lcom/miui/gallery/ui/HighlightDrawer;

    .line 427
    new-instance v0, Lcom/miui/gallery/ui/DetailsHelper;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    iget-object v3, p0, Lcom/miui/gallery/app/AlbumPage;->mDetailsSource:Lcom/miui/gallery/app/AlbumPage$MyDetailsSource;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/ui/DetailsHelper;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/GLView;Lcom/miui/gallery/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    .line 428
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    new-instance v1, Lcom/miui/gallery/app/AlbumPage$6;

    invoke-direct {v1, p0}, Lcom/miui/gallery/app/AlbumPage$6;-><init>(Lcom/miui/gallery/app/AlbumPage;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/DetailsHelper;->setCloseListener(Lcom/miui/gallery/ui/DetailsHelper$CloseListener;)V

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumView:Lcom/miui/gallery/ui/AlbumView;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mHighlightDrawer:Lcom/miui/gallery/ui/HighlightDrawer;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumView;->setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V

    .line 435
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/DetailsHelper;->show()V

    .line 436
    return-void
.end method

.method private startTransition()V
    .locals 3

    .prologue
    .line 286
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-static {v1}, Lcom/miui/gallery/ui/PositionRepository;->getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/ui/PositionRepository;

    move-result-object v0

    .line 288
    .local v0, repository:Lcom/miui/gallery/ui/PositionRepository;
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumView:Lcom/miui/gallery/ui/AlbumView;

    new-instance v2, Lcom/miui/gallery/app/AlbumPage$2;

    invoke-direct {v2, p0, v0}, Lcom/miui/gallery/app/AlbumPage$2;-><init>(Lcom/miui/gallery/app/AlbumPage;Lcom/miui/gallery/ui/PositionRepository;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/AlbumView;->startTransition(Lcom/miui/gallery/ui/PositionProvider;)V

    .line 298
    return-void
.end method

.method private startTransition(Landroid/os/Bundle;)V
    .locals 5
    .parameter "data"

    .prologue
    .line 301
    iget-object v3, p0, Lcom/miui/gallery/app/AlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-static {v3}, Lcom/miui/gallery/ui/PositionRepository;->getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/ui/PositionRepository;

    move-result-object v2

    .line 303
    .local v2, repository:Lcom/miui/gallery/ui/PositionRepository;
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 306
    .local v0, center:[I
    :goto_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 307
    .local v1, random:Ljava/util/Random;
    iget-object v3, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumView:Lcom/miui/gallery/ui/AlbumView;

    new-instance v4, Lcom/miui/gallery/app/AlbumPage$3;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/miui/gallery/app/AlbumPage$3;-><init>(Lcom/miui/gallery/app/AlbumPage;Lcom/miui/gallery/ui/PositionRepository;[ILjava/util/Random;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/AlbumView;->startTransition(Lcom/miui/gallery/ui/PositionProvider;)V

    .line 324
    return-void

    .line 303
    .end local v0           #center:[I
    .end local v1           #random:Ljava/util/Random;
    :cond_0
    const-string v3, "set-center"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected onBackPressed()V
    .locals 2

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumPage;->mShowDetails:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumPage;->hideDetails()V

    .line 164
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumView:Lcom/miui/gallery/ui/AlbumView;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-static {v1}, Lcom/miui/gallery/ui/PositionRepository;->getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/ui/PositionRepository;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumView;->savePositions(Lcom/miui/gallery/ui/PositionRepository;)V

    .line 162
    invoke-super {p0}, Lcom/miui/gallery/app/ActivityState;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .parameter "data"
    .parameter "restoreState"

    .prologue
    const/4 v2, 0x0

    .line 267
    const v0, 0x3e99999a

    invoke-static {v0}, Lcom/miui/gallery/util/GalleryUtils;->meterToPixel(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/gallery/app/AlbumPage;->mUserDistance:F

    .line 268
    const v0, 0x7f0b0025

    const v1, 0x7f040002

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/app/AlbumPage;->inflatePageView(II)V

    .line 269
    const-string v0, "media-name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mMediaName:Ljava/lang/String;

    .line 270
    const-string v0, "media-path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mMediaSetPath:Lcom/miui/gallery/data/Path;

    .line 271
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mMediaSetPath:Lcom/miui/gallery/data/Path;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/DataManager;->getMediaSet(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    .line 272
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumPage;->initializeViews()V

    .line 273
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/AlbumPage;->initializeData(Landroid/os/Bundle;)V

    .line 274
    const-string v0, "get-content"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumPage;->mGetContent:Z

    .line 275
    const-string v0, "cluster-menu"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumPage;->mShowClusterMenu:Z

    .line 276
    new-instance v0, Lcom/miui/gallery/app/AlbumPage$MyDetailsSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/app/AlbumPage$MyDetailsSource;-><init>(Lcom/miui/gallery/app/AlbumPage;Lcom/miui/gallery/app/AlbumPage$1;)V

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mDetailsSource:Lcom/miui/gallery/app/AlbumPage$MyDetailsSource;

    .line 277
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/AlbumPage;->startTransition(Landroid/os/Bundle;)V

    .line 280
    const-string v0, "auto-select-all"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SelectionManager;->selectAll()V

    .line 283
    :cond_0
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x1

    .line 473
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    .line 474
    .local v1, activity:Landroid/app/Activity;
    iget-object v5, p0, Lcom/miui/gallery/app/AlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v5}, Lcom/miui/gallery/app/GalleryActivity;->getGalleryActionBar()Lcom/miui/gallery/app/GalleryActionBar;

    move-result-object v0

    .line 476
    .local v0, actionBar:Lcom/miui/gallery/app/GalleryActionBar;
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/miui/gallery/app/GalleryActionBar;->setStyle(I)V

    .line 477
    iget-object v5, p0, Lcom/miui/gallery/app/AlbumPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v5}, Lcom/miui/gallery/data/MediaSet;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 478
    .local v3, nameText:Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/miui/gallery/app/GalleryActionBar;->setTitleText(Ljava/lang/CharSequence;)V

    .line 480
    const/16 v5, 0x17

    invoke-virtual {v0, v5}, Lcom/miui/gallery/app/GalleryActionBar;->setDisplayOptions(I)V

    .line 482
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/miui/gallery/app/GalleryActionBar;->setPaddingLeft(I)V

    .line 483
    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 485
    .local v2, inflater:Landroid/view/MenuInflater;
    iget-boolean v5, p0, Lcom/miui/gallery/app/AlbumPage;->mGetContent:Z

    if-eqz v5, :cond_0

    .line 486
    const v5, 0x7f100009

    invoke-virtual {v2, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 487
    iget-object v5, p0, Lcom/miui/gallery/app/AlbumPage;->mData:Landroid/os/Bundle;

    const-string v6, "type-bits"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 490
    .local v4, typeBits:I
    invoke-static {v4}, Lcom/miui/gallery/util/GalleryUtils;->getSelectionModePrompt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/miui/gallery/app/GalleryActionBar;->setTitle(I)V

    .line 498
    .end local v4           #typeBits:I
    :goto_0
    return v7

    .line 492
    :cond_0
    invoke-static {p1}, Lcom/miui/gallery/util/AlbumUtils;->addAlbumSortMenu(Landroid/view/Menu;)V

    .line 494
    const/high16 v5, 0x7f10

    invoke-virtual {v2, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 496
    iget-object v5, p0, Lcom/miui/gallery/app/AlbumPage;->mMediaSetPath:Lcom/miui/gallery/data/Path;

    invoke-static {v0, v5, v7}, Lcom/miui/gallery/app/FilterUtils;->setupMenuItems(Lcom/miui/gallery/app/GalleryActionBar;Lcom/miui/gallery/data/Path;Z)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 360
    invoke-super {p0}, Lcom/miui/gallery/app/ActivityState;->onDestroy()V

    .line 361
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/AlbumDataAdapter;->setLoadingListener(Lcom/miui/gallery/app/LoadingListener;)V

    .line 364
    :cond_0
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 503
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 504
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 547
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 506
    :sswitch_0
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/gallery/app/StateManager;->finishState(Lcom/miui/gallery/app/ActivityState;)V

    move v0, v1

    .line 507
    goto :goto_0

    .line 514
    :sswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/app/AlbumPage;->setSort(Landroid/view/MenuItem;I)V

    move v0, v1

    .line 515
    goto :goto_0

    .line 519
    :sswitch_2
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/AlbumUtils;->toggleHiddenAlbum(Ljava/lang/String;)V

    move v0, v1

    .line 520
    goto :goto_0

    .line 524
    :sswitch_3
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/AlbumUtils;->toggleRecentAlbum(Ljava/lang/String;)V

    move v0, v1

    .line 525
    goto :goto_0

    .line 528
    :sswitch_4
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SelectionManager;->enterSelectionMode()V

    move v0, v1

    .line 529
    goto :goto_0

    .line 535
    :sswitch_5
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/miui/gallery/settings/GallerySettings;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 536
    goto :goto_0

    .line 539
    :sswitch_6
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumPage;->mShowDetails:Z

    if-eqz v0, :cond_0

    .line 540
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumPage;->hideDetails()V

    :goto_1
    move v0, v1

    .line 544
    goto :goto_0

    .line 542
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumPage;->showDetails()V

    goto :goto_1

    .line 504
    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_1
        -0x2 -> :sswitch_1
        -0x1 -> :sswitch_1
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x7f0b0080 -> :sswitch_2
        0x7f0b0081 -> :sswitch_3
        0x7f0b0082 -> :sswitch_4
        0x7f0b0083 -> :sswitch_5
        0x7f0b0091 -> :sswitch_6
        0x7f0b00a1 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLongTap(I)V
    .locals 3
    .parameter "slotIndex"

    .prologue
    .line 231
    iget-boolean v1, p0, Lcom/miui/gallery/app/AlbumPage;->mGetContent:Z

    if-eqz v1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-boolean v1, p0, Lcom/miui/gallery/app/AlbumPage;->mShowDetails:Z

    if-eqz v1, :cond_2

    .line 233
    invoke-virtual {p0, p1}, Lcom/miui/gallery/app/AlbumPage;->onSingleTapUp(I)V

    goto :goto_0

    .line 235
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/app/AlbumDataAdapter;->get(I)Lcom/miui/gallery/data/MediaItem;

    move-result-object v0

    .line 236
    .local v0, item:Lcom/miui/gallery/data/MediaItem;
    if-eqz v0, :cond_0

    .line 237
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/SelectionManager;->toggle(Lcom/miui/gallery/data/Path;)V

    .line 238
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mDetailsSource:Lcom/miui/gallery/app/AlbumPage$MyDetailsSource;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/app/AlbumPage$MyDetailsSource;->findIndex(I)I

    .line 239
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumView:Lcom/miui/gallery/ui/AlbumView;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlbumView;->invalidate()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 345
    invoke-super {p0}, Lcom/miui/gallery/app/ActivityState;->onPause()V

    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumPage;->mIsActive:Z

    .line 347
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumDataAdapter;->pause()V

    .line 348
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumView:Lcom/miui/gallery/ui/AlbumView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumView;->pause()V

    .line 349
    invoke-static {}, Lcom/miui/gallery/ui/DetailsHelper;->pause()V

    .line 351
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mSyncTask:Lcom/miui/gallery/util/Future;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mSyncTask:Lcom/miui/gallery/util/Future;

    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mSyncTask:Lcom/miui/gallery/util/Future;

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ActionModeHandler;->pause()V

    .line 356
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 448
    iget-boolean v2, p0, Lcom/miui/gallery/app/AlbumPage;->mGetContent:Z

    if-nez v2, :cond_2

    .line 449
    const v2, 0x7f0b0081

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 451
    .local v1, setRecent:Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/AlbumUtils;->isRecentAlbum(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 452
    const v2, 0x7f0d00ad

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 456
    :goto_0
    const v2, 0x7f0b0080

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 458
    .local v0, setHidden:Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/AlbumUtils;->isHiddenAlbum(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 459
    const v2, 0x7f0d00af

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 464
    :goto_1
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/AlbumUtils;->getAlbumSortBy(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/app/AlbumPage;->mSortBy:I

    .line 465
    iget v2, p0, Lcom/miui/gallery/app/AlbumPage;->mSortBy:I

    invoke-static {p1, v2}, Lcom/miui/gallery/util/AlbumUtils;->prepareOptionsMenu(Landroid/view/Menu;I)V

    .line 466
    invoke-super {p0, p1}, Lcom/miui/gallery/app/ActivityState;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    .line 468
    .end local v0           #setHidden:Landroid/view/MenuItem;
    .end local v1           #setRecent:Landroid/view/MenuItem;
    :goto_2
    return v2

    .line 454
    .restart local v1       #setRecent:Landroid/view/MenuItem;
    :cond_0
    const v2, 0x7f0d00ac

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 461
    .restart local v0       #setHidden:Landroid/view/MenuItem;
    :cond_1
    const v2, 0x7f0d00ae

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 468
    .end local v0           #setHidden:Landroid/view/MenuItem;
    .end local v1           #setRecent:Landroid/view/MenuItem;
    :cond_2
    const/4 v2, 0x1

    goto :goto_2
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 328
    invoke-super {p0}, Lcom/miui/gallery/app/ActivityState;->onResume()V

    .line 329
    iput-boolean v1, p0, Lcom/miui/gallery/app/AlbumPage;->mIsActive:Z

    .line 330
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/AlbumPage;->setContentPane(Lcom/miui/gallery/ui/GLView;)V

    .line 333
    invoke-direct {p0, v1}, Lcom/miui/gallery/app/AlbumPage;->setLoadingBit(I)V

    .line 334
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumDataAdapter;->resume()V

    .line 335
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumView:Lcom/miui/gallery/ui/AlbumView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumView;->resume()V

    .line 336
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ActionModeHandler;->resume()V

    .line 337
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumPage;->mInitialSynced:Z

    if-nez v0, :cond_0

    .line 338
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/AlbumPage;->setLoadingBit(I)V

    .line 339
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/data/MediaSet;->requestSync(Lcom/miui/gallery/data/MediaSet$SyncListener;)Lcom/miui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mSyncTask:Lcom/miui/gallery/util/Future;

    .line 341
    :cond_0
    return-void
.end method

.method public onSelectionChange(Lcom/miui/gallery/data/Path;Z)V
    .locals 6
    .parameter "path"
    .parameter "selected"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 620
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPage;->mActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 621
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 622
    .local v0, count:I
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v5, 0x7f0f

    invoke-virtual {v2, v5, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 624
    .local v1, format:Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 625
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-virtual {v2, p1, p2}, Lcom/miui/gallery/ui/ActionModeHandler;->updateSupportedOperation(Lcom/miui/gallery/data/Path;Z)V

    .line 626
    return-void

    .end local v0           #count:I
    .end local v1           #format:Ljava/lang/String;
    :cond_0
    move v2, v4

    .line 620
    goto :goto_0
.end method

.method public onSelectionModeChange(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 594
    packed-switch p1, :pswitch_data_0

    .line 617
    :goto_0
    return-void

    .line 597
    :pswitch_0
    iput-boolean v1, p0, Lcom/miui/gallery/app/AlbumPage;->mInselectionMode:Z

    .line 598
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumView:Lcom/miui/gallery/ui/AlbumView;

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/app/AlbumPage;->setViewLayout(Lcom/miui/gallery/ui/SlotViewWithTitle;Z)V

    .line 599
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/ActionModeHandler;->startActionMode(Z)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mActionMode:Landroid/view/ActionMode;

    .line 600
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/GalleryUtils;->vibrate(Lcom/miui/gallery/app/GalleryActivity;J)V

    goto :goto_0

    .line 605
    :pswitch_1
    iput-boolean v2, p0, Lcom/miui/gallery/app/AlbumPage;->mInselectionMode:Z

    .line 606
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumView:Lcom/miui/gallery/ui/AlbumView;

    invoke-virtual {p0, v0, v2}, Lcom/miui/gallery/app/AlbumPage;->setViewLayout(Lcom/miui/gallery/ui/SlotViewWithTitle;Z)V

    .line 607
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 608
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLView;->invalidate()V

    goto :goto_0

    .line 612
    :pswitch_2
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 613
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLView;->invalidate()V

    goto :goto_0

    .line 594
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSingleTapUp(I)V
    .locals 4
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/AlbumDataAdapter;->get(I)Lcom/miui/gallery/data/MediaItem;

    move-result-object v0

    .line 180
    if-nez v0, :cond_0

    .line 181
    const-string v0, "AlbumPage"

    const-string v1, "item not ready yet, ignore the click"

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-boolean v1, p0, Lcom/miui/gallery/app/AlbumPage;->mShowDetails:Z

    if-eqz v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mHighlightDrawer:Lcom/miui/gallery/ui/HighlightDrawer;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/HighlightDrawer;->setHighlightItem(Lcom/miui/gallery/data/Path;)V

    .line 186
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/DetailsHelper;->reloadDetails(I)V

    goto :goto_0

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 188
    iget-boolean v1, p0, Lcom/miui/gallery/app/AlbumPage;->mGetContent:Z

    if-eqz v1, :cond_2

    .line 189
    invoke-direct {p0, v0}, Lcom/miui/gallery/app/AlbumPage;->onGetContent(Lcom/miui/gallery/data/MediaItem;)V

    goto :goto_0

    .line 192
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 193
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumView:Lcom/miui/gallery/ui/AlbumView;

    iget-object v3, p0, Lcom/miui/gallery/app/AlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-static {v3}, Lcom/miui/gallery/ui/PositionRepository;->getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/ui/PositionRepository;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/AlbumView;->savePositions(Lcom/miui/gallery/ui/PositionRepository;)V

    .line 194
    const-string v2, "index-hint"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    const-string v2, "media-set-path"

    iget-object v3, p0, Lcom/miui/gallery/app/AlbumPage;->mMediaSetPath:Lcom/miui/gallery/data/Path;

    invoke-virtual {v3}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v2, "media-item-path"

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/miui/gallery/app/PhotoPage;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3, v1}, Lcom/miui/gallery/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 203
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/SelectionManager;->toggle(Lcom/miui/gallery/data/Path;)V

    .line 204
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mDetailsSource:Lcom/miui/gallery/app/AlbumPage$MyDetailsSource;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/AlbumPage$MyDetailsSource;->findIndex(I)I

    .line 205
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumView:Lcom/miui/gallery/ui/AlbumView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumView;->invalidate()V

    goto :goto_0
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "request"
    .parameter "result"
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 571
    packed-switch p1, :pswitch_data_0

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 574
    :pswitch_0
    if-eqz p3, :cond_0

    .line 575
    const-string v0, "photo-index"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/app/AlbumPage;->mFocusIndex:I

    .line 576
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumView:Lcom/miui/gallery/ui/AlbumView;

    iget v1, p0, Lcom/miui/gallery/app/AlbumPage;->mFocusIndex:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumView;->setCenterIndex(I)V

    goto :goto_0

    .line 580
    :pswitch_1
    if-eqz p3, :cond_0

    .line 581
    const-string v0, "index-hint"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/app/AlbumPage;->mFocusIndex:I

    .line 582
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mAlbumView:Lcom/miui/gallery/ui/AlbumView;

    iget v1, p0, Lcom/miui/gallery/app/AlbumPage;->mFocusIndex:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumView;->setCenterIndex(I)V

    .line 583
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumPage;->startTransition()V

    goto :goto_0

    .line 587
    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/AlbumPage;->startTransition(Landroid/os/Bundle;)V

    goto :goto_0

    .line 571
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSyncDone(Lcom/miui/gallery/data/MediaSet;I)V
    .locals 3
    .parameter "mediaSet"
    .parameter "resultCode"

    .prologue
    .line 630
    const-string v0, "AlbumPage"

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

    .line 632
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/miui/gallery/app/AlbumPage$7;

    invoke-direct {v1, p0, p2}, Lcom/miui/gallery/app/AlbumPage$7;-><init>(Lcom/miui/gallery/app/AlbumPage;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 646
    return-void
.end method
