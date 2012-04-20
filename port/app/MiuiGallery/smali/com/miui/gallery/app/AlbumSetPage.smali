.class public Lcom/miui/gallery/app/AlbumSetPage;
.super Lcom/miui/gallery/app/ActivityState;
.source "AlbumSetPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/gallery/app/EyePosition$EyePositionListener;
.implements Lcom/miui/gallery/data/MediaSet$SyncListener;
.implements Lcom/miui/gallery/ui/SelectionManager$SelectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;,
        Lcom/miui/gallery/app/AlbumSetPage$MyLoadingListener;
    }
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

.field private mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapter;

.field private mAlbumSetShowType:I

.field private mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetView;

.field private mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

.field private mDetailsSource:Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;

.field private mEyePosition:Lcom/miui/gallery/app/EyePosition;

.field private mGetAlbum:Z

.field private mGetContent:Z

.field private mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;

.field private mHighlightDrawer:Lcom/miui/gallery/ui/HighlightDrawer;

.field private mInitialSynced:Z

.field private mInselectionMode:Z

.field private mIsActive:Z

.field private mLoadingBits:I

.field private mMediaSet:Lcom/miui/gallery/data/MediaSet;

.field private mMenu:Landroid/view/Menu;

.field private final mRootPane:Lcom/miui/gallery/ui/GLView;

.field protected mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

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

.field private mTaskListener:Lcom/miui/gallery/ui/TaskListenerForRefresh;

.field private mX:F

.field private mY:F

.field private mZ:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Lcom/miui/gallery/app/ActivityState;-><init>()V

    .line 87
    iput-boolean v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mIsActive:Z

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSyncTask:Lcom/miui/gallery/util/Future;

    .line 119
    iput v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mLoadingBits:I

    .line 120
    iput-boolean v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mInitialSynced:Z

    .line 122
    new-instance v0, Lcom/miui/gallery/app/AlbumSetPage$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/AlbumSetPage$1;-><init>(Lcom/miui/gallery/app/AlbumSetPage;)V

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    .line 738
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/app/AlbumSetPage;)Lcom/miui/gallery/ui/StaticBackground;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/app/AlbumSetPage;)Lcom/miui/gallery/app/EyePosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mEyePosition:Lcom/miui/gallery/app/EyePosition;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/app/AlbumSetPage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mY:F

    return v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/app/AlbumSetPage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mZ:F

    return v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/app/AlbumSetPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/AlbumSetPage;->onDown(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/gallery/app/AlbumSetPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumSetPage;->onUp()V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/gallery/app/AlbumSetPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumSetPage;->hideDetails()V

    return-void
.end method

.method static synthetic access$1702(Lcom/miui/gallery/app/AlbumSetPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mInitialSynced:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/miui/gallery/app/AlbumSetPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mIsActive:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/miui/gallery/app/AlbumSetPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/AlbumSetPage;->clearLoadingBit(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/app/AlbumSetPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mShowDetails:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/miui/gallery/app/AlbumSetPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/AlbumSetPage;->setLoadingBit(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/miui/gallery/app/AlbumSetPage;)Lcom/miui/gallery/app/AlbumSetDataAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/miui/gallery/app/AlbumSetPage;)Lcom/miui/gallery/ui/HighlightDrawer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mHighlightDrawer:Lcom/miui/gallery/ui/HighlightDrawer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/app/AlbumSetPage;)Lcom/miui/gallery/ui/DetailsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/app/AlbumSetPage;)Lcom/miui/gallery/ui/GridDrawer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/app/AlbumSetPage;)Lcom/miui/gallery/ui/AlbumSetView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/app/AlbumSetPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mInselectionMode:Z

    return v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/app/AlbumSetPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mGetAlbum:Z

    return v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/app/AlbumSetPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mGetContent:Z

    return v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/app/AlbumSetPage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mX:F

    return v0
.end method

.method private changeShowType(I)V
    .locals 2
    .parameter "showType"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/AlbumSetView;->changeShowType(I)V

    .line 408
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->changeShowType(I)V

    .line 410
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/AlbumSetPage;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 412
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->getAlbumCache()Lcom/miui/gallery/data/AlbumCacheBase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/SelectionManager;->setSource(Ljava/lang/Object;)V

    .line 413
    return-void
.end method

.method private clearLoadingBit(I)V
    .locals 3
    .parameter "loadingBit"

    .prologue
    const/4 v2, 0x1

    .line 287
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mLoadingBits:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mLoadingBits:I

    .line 288
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mLoadingBits:I

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GalleryUtils;->setSpinnerVisibility(Landroid/app/Activity;Z)V

    .line 291
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->totalSize()I

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f0d006e

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 296
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/app/StateManager;->getStateCount()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 297
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/gallery/app/StateManager;->finishState(Lcom/miui/gallery/app/ActivityState;)V

    .line 301
    :cond_0
    return-void
.end method

.method private getSelectedString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 636
    iget-object v3, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 637
    .local v0, count:I
    const v2, 0x7f0f0001

    .line 638
    .local v2, string:I
    iget-object v3, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v3}, Lcom/miui/gallery/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 639
    .local v1, format:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private hideDetails()V
    .locals 2

    .prologue
    .line 683
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mShowDetails:Z

    .line 684
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/DetailsHelper;->hide()V

    .line 685
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetView;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumSetView;->setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V

    .line 686
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumSetView;->invalidate()V

    .line 687
    return-void
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 6
    .parameter "data"

    .prologue
    .line 365
    const-string v1, "media-path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, mediaPath:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gallery/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    .line 367
    new-instance v1, Lcom/miui/gallery/app/AlbumSetDataAdapter;

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v3, p0, Lcom/miui/gallery/app/AlbumSetPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    const/16 v4, 0x100

    iget v5, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetShowType:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/gallery/app/AlbumSetDataAdapter;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/data/MediaSet;II)V

    iput-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    .line 369
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    new-instance v2, Lcom/miui/gallery/app/AlbumSetPage$MyLoadingListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/gallery/app/AlbumSetPage$MyLoadingListener;-><init>(Lcom/miui/gallery/app/AlbumSetPage;Lcom/miui/gallery/app/AlbumSetPage$1;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->setLoadingListener(Lcom/miui/gallery/app/LoadingListener;)V

    .line 370
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetView;

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    iget v3, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetShowType:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/AlbumSetView;->setModel(Lcom/miui/gallery/ui/AlbumSetView$Model;I)V

    .line 373
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    invoke-virtual {v2}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->getAlbumCache()Lcom/miui/gallery/data/AlbumCacheBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/SelectionManager;->setSource(Ljava/lang/Object;)V

    .line 374
    return-void
.end method

.method private initializeViews()V
    .locals 8

    .prologue
    const v5, 0x7f020075

    .line 416
    new-instance v3, Lcom/miui/gallery/ui/SelectionManager;

    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-direct {v3, v4}, Lcom/miui/gallery/ui/SelectionManager;-><init>(Lcom/miui/gallery/app/GalleryContext;)V

    iput-object v3, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    .line 417
    iget-object v3, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v3, p0}, Lcom/miui/gallery/ui/SelectionManager;->setSelectionListener(Lcom/miui/gallery/ui/SelectionManager$SelectionListener;)V

    .line 418
    new-instance v3, Lcom/miui/gallery/ui/StaticBackground;

    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v4}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/miui/gallery/ui/StaticBackground;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/gallery/app/AlbumSetPage;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

    .line 421
    iget-object v3, p0, Lcom/miui/gallery/app/AlbumSetPage;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

    invoke-virtual {v3, v5, v5}, Lcom/miui/gallery/ui/StaticBackground;->setImage(II)V

    .line 422
    iget-object v3, p0, Lcom/miui/gallery/app/AlbumSetPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetPage;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/GLView;->addComponent(Lcom/miui/gallery/ui/GLView;)V

    .line 423
    new-instance v4, Lcom/miui/gallery/ui/GridDrawer;

    iget-object v3, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v3, Landroid/content/Context;

    iget-object v5, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-direct {v4, v3, v5}, Lcom/miui/gallery/ui/GridDrawer;-><init>(Landroid/content/Context;Lcom/miui/gallery/ui/SelectionManager;)V

    iput-object v4, p0, Lcom/miui/gallery/app/AlbumSetPage;->mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;

    .line 424
    iget-object v3, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->get(Landroid/content/Context;)Lcom/miui/gallery/app/Config$AlbumSetPageConfig;

    move-result-object v0

    .line 425
    .local v0, config:Lcom/miui/gallery/app/Config$AlbumSetPageConfig;
    new-instance v3, Lcom/miui/gallery/ui/AlbumSetView;

    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v5, p0, Lcom/miui/gallery/app/AlbumSetPage;->mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;

    iget-object v6, v0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget-object v7, v0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->labelSpec:Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/miui/gallery/ui/AlbumSetView;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SelectionDrawer;Lcom/miui/gallery/ui/SlotView$Spec;Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;)V

    iput-object v3, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetView;

    .line 428
    const v3, 0x7f0b0009

    invoke-virtual {p0, v3}, Lcom/miui/gallery/app/AlbumSetPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 429
    .local v2, dragRecent:Landroid/widget/LinearLayout;
    const v3, 0x7f0b000e

    invoke-virtual {p0, v3}, Lcom/miui/gallery/app/AlbumSetPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 430
    .local v1, dragAll:Landroid/widget/LinearLayout;
    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    iget v3, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetShowType:I

    invoke-direct {p0, v3}, Lcom/miui/gallery/app/AlbumSetPage;->toggleDragTab(I)V

    .line 434
    iget-object v3, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetView;

    new-instance v4, Lcom/miui/gallery/app/AlbumSetPage$2;

    invoke-direct {v4, p0}, Lcom/miui/gallery/app/AlbumSetPage$2;-><init>(Lcom/miui/gallery/app/AlbumSetPage;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/AlbumSetView;->setListener(Lcom/miui/gallery/ui/SlotView$Listener;)V

    .line 456
    new-instance v3, Lcom/miui/gallery/ui/TaskListenerForRefresh;

    invoke-direct {v3}, Lcom/miui/gallery/ui/TaskListenerForRefresh;-><init>()V

    iput-object v3, p0, Lcom/miui/gallery/app/AlbumSetPage;->mTaskListener:Lcom/miui/gallery/ui/TaskListenerForRefresh;

    .line 457
    new-instance v3, Lcom/miui/gallery/ui/ActionModeHandler;

    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v5, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    iget-object v6, p0, Lcom/miui/gallery/app/AlbumSetPage;->mTaskListener:Lcom/miui/gallery/ui/TaskListenerForRefresh;

    invoke-direct {v3, v4, v5, v6}, Lcom/miui/gallery/ui/ActionModeHandler;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SelectionManager;Lcom/miui/gallery/ui/MenuExecutor$TaskListener;)V

    iput-object v3, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    .line 458
    iget-object v3, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    new-instance v4, Lcom/miui/gallery/app/AlbumSetPage$3;

    invoke-direct {v4, p0}, Lcom/miui/gallery/app/AlbumSetPage$3;-><init>(Lcom/miui/gallery/app/AlbumSetPage;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/ActionModeHandler;->setActionModeListener(Lcom/miui/gallery/ui/ActionModeHandler$ActionModeListener;)V

    .line 463
    iget-object v3, p0, Lcom/miui/gallery/app/AlbumSetPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetView;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/GLView;->addComponent(Lcom/miui/gallery/ui/GLView;)V

    .line 464
    return-void
.end method

.method private onDown(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 239
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->getMediaSet(I)Lcom/miui/gallery/data/MediaSet;

    move-result-object v1

    .line 240
    .local v1, set:Lcom/miui/gallery/data/MediaSet;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 241
    .local v0, path:Lcom/miui/gallery/data/Path;
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/SelectionManager;->setPressedPath(Lcom/miui/gallery/data/Path;)V

    .line 242
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetView;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AlbumSetView;->invalidate()V

    .line 243
    return-void

    .line 240
    .end local v0           #path:Lcom/miui/gallery/data/Path;
    :cond_0
    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSet;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v0

    goto :goto_0
.end method

.method private onUp()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SelectionManager;->getPressedPath()Lcom/miui/gallery/data/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/SelectionManager;->setPressedPath(Lcom/miui/gallery/data/Path;)V

    .line 248
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumSetView;->invalidate()V

    .line 250
    :cond_0
    return-void
.end method

.method private refresh()V
    .locals 0

    .prologue
    .line 327
    invoke-static {}, Lcom/miui/gallery/StorageExplorer/MediaStoreHelper;->triggerMediaMounted()V

    .line 328
    return-void
.end method

.method private refreshPage()V
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/AlbumSetPage;->setLoadingBit(I)V

    .line 335
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->refresh()V

    .line 336
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumSetView;->refresh()V

    .line 337
    return-void
.end method

.method private savePositions(I[I)V
    .locals 8
    .parameter "slotIndex"
    .parameter "center"

    .prologue
    .line 187
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 188
    .local v0, offset:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    iget-object v5, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetView;

    invoke-virtual {v4, v5, v0}, Lcom/miui/gallery/ui/GLView;->getBoundsOf(Lcom/miui/gallery/ui/GLView;Landroid/graphics/Rect;)Z

    .line 189
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetView;

    iget-object v5, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-static {v5}, Lcom/miui/gallery/ui/PositionRepository;->getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/ui/PositionRepository;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/gallery/ui/AlbumSetView;->savePositions(Lcom/miui/gallery/ui/PositionRepository;)V

    .line 190
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetView;

    invoke-virtual {v4, p1}, Lcom/miui/gallery/ui/AlbumSetView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 191
    .local v1, r:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetView;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/AlbumSetView;->getScrollX()I

    move-result v2

    .line 192
    .local v2, scrollX:I
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetView;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/AlbumSetView;->getScrollY()I

    move-result v3

    .line 193
    .local v3, scrollY:I
    const/4 v4, 0x0

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v5, v2

    aput v5, p2, v4

    .line 194
    const/4 v4, 0x1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v5, v3

    aput v5, p2, v4

    .line 195
    return-void
.end method

.method private setLoadingBit(I)V
    .locals 2
    .parameter "loadingBit"

    .prologue
    .line 304
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mLoadingBits:I

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GalleryUtils;->setSpinnerVisibility(Landroid/app/Activity;Z)V

    .line 307
    :cond_0
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mLoadingBits:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mLoadingBits:I

    .line 308
    return-void
.end method

.method private setSortBy(Landroid/view/MenuItem;I)V
    .locals 2
    .parameter "item"
    .parameter "sortBy"

    .prologue
    .line 602
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 603
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSortBy:I

    if-eq v0, p2, :cond_0

    .line 604
    iput p2, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSortBy:I

    .line 605
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    iget v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSortBy:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->setSortBy(I)V

    .line 606
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumSetPage;->refreshPage()V

    .line 608
    :cond_0
    return-void
.end method

.method private setTabClickable(Z)V
    .locals 3
    .parameter "isTabClickable"

    .prologue
    .line 498
    const v2, 0x7f0b0009

    invoke-virtual {p0, v2}, Lcom/miui/gallery/app/AlbumSetPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 499
    .local v1, dragRecent:Landroid/widget/LinearLayout;
    const v2, 0x7f0b000e

    invoke-virtual {p0, v2}, Lcom/miui/gallery/app/AlbumSetPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 500
    .local v0, dragAll:Landroid/widget/LinearLayout;
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 501
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 502
    return-void
.end method

.method private showDetails()V
    .locals 4

    .prologue
    .line 690
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mShowDetails:Z

    .line 691
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    if-nez v0, :cond_0

    .line 692
    new-instance v0, Lcom/miui/gallery/ui/HighlightDrawer;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/ui/HighlightDrawer;-><init>(Landroid/content/Context;Lcom/miui/gallery/ui/SelectionManager;)V

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mHighlightDrawer:Lcom/miui/gallery/ui/HighlightDrawer;

    .line 694
    new-instance v0, Lcom/miui/gallery/ui/DetailsHelper;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumSetPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    iget-object v3, p0, Lcom/miui/gallery/app/AlbumSetPage;->mDetailsSource:Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/ui/DetailsHelper;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/GLView;Lcom/miui/gallery/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    .line 695
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    new-instance v1, Lcom/miui/gallery/app/AlbumSetPage$5;

    invoke-direct {v1, p0}, Lcom/miui/gallery/app/AlbumSetPage$5;-><init>(Lcom/miui/gallery/app/AlbumSetPage;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/DetailsHelper;->setCloseListener(Lcom/miui/gallery/ui/DetailsHelper$CloseListener;)V

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetView;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mHighlightDrawer:Lcom/miui/gallery/ui/HighlightDrawer;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumSetView;->setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V

    .line 702
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/DetailsHelper;->show()V

    .line 703
    return-void
.end method

.method private startTransition()V
    .locals 3

    .prologue
    .line 620
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-static {v1}, Lcom/miui/gallery/ui/PositionRepository;->getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/ui/PositionRepository;

    move-result-object v0

    .line 622
    .local v0, repository:Lcom/miui/gallery/ui/PositionRepository;
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetView;

    new-instance v2, Lcom/miui/gallery/app/AlbumSetPage$4;

    invoke-direct {v2, p0, v0}, Lcom/miui/gallery/app/AlbumSetPage$4;-><init>(Lcom/miui/gallery/app/AlbumSetPage;Lcom/miui/gallery/ui/PositionRepository;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/AlbumSetView;->startTransition(Lcom/miui/gallery/ui/PositionProvider;)V

    .line 633
    return-void
.end method

.method private toggleDragTab(I)V
    .locals 12
    .parameter "showType"

    .prologue
    const v11, 0x7f020003

    const v10, 0x7f020002

    .line 377
    iget-object v8, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v8}, Lcom/miui/gallery/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 378
    .local v5, resource:Landroid/content/res/Resources;
    const v8, 0x7f08000f

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 379
    .local v7, textColorNormal:Landroid/content/res/ColorStateList;
    const v8, 0x7f08000e

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 382
    .local v6, textColorHighlight:Landroid/content/res/ColorStateList;
    const v8, 0x7f0b000b

    invoke-virtual {p0, v8}, Lcom/miui/gallery/app/AlbumSetPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 383
    .local v4, dragRecentText:Landroid/widget/TextView;
    const v8, 0x7f0b000f

    invoke-virtual {p0, v8}, Lcom/miui/gallery/app/AlbumSetPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 384
    .local v1, dragAllText:Landroid/widget/TextView;
    const v8, 0x7f0b000a

    invoke-virtual {p0, v8}, Lcom/miui/gallery/app/AlbumSetPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 385
    .local v3, dragRecentStar:Landroid/widget/ImageView;
    const v8, 0x7f0b000c

    invoke-virtual {p0, v8}, Lcom/miui/gallery/app/AlbumSetPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 386
    .local v2, dragRecentBottom:Landroid/widget/ImageView;
    const v8, 0x7f0b0010

    invoke-virtual {p0, v8}, Lcom/miui/gallery/app/AlbumSetPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 387
    .local v0, dragAllBottom:Landroid/widget/ImageView;
    const/4 v8, 0x1

    if-ne p1, v8, :cond_0

    .line 388
    const v8, 0x7f0b0012

    invoke-virtual {p0, v8}, Lcom/miui/gallery/app/AlbumSetPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 389
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 390
    const v8, 0x7f020004

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 391
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 392
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 393
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 395
    :cond_0
    const/4 v8, 0x2

    if-ne p1, v8, :cond_1

    .line 396
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 397
    const v8, 0x7f020005

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 398
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 399
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 400
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 402
    :cond_1
    return-void
.end method


# virtual methods
.method protected getSortBy()I
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->getSortBy()I

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mShowDetails:Z

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumSetPage;->hideDetails()V

    .line 184
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetView;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-static {v1}, Lcom/miui/gallery/ui/PositionRepository;->getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/ui/PositionRepository;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumSetView;->savePositions(Lcom/miui/gallery/ui/PositionRepository;)V

    .line 181
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetShowType:I

    invoke-static {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->setLastVisitedType(I)V

    .line 182
    invoke-super {p0}, Lcom/miui/gallery/app/ActivityState;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 468
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetShowType:I

    .line 469
    .local v0, showType:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 479
    :goto_0
    iget v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetShowType:I

    if-eq v0, v1, :cond_0

    .line 480
    iput v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetShowType:I

    .line 481
    iget v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetShowType:I

    invoke-direct {p0, v1}, Lcom/miui/gallery/app/AlbumSetPage;->toggleDragTab(I)V

    .line 482
    iget v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetShowType:I

    invoke-direct {p0, v1}, Lcom/miui/gallery/app/AlbumSetPage;->changeShowType(I)V

    .line 484
    :cond_0
    return-void

    .line 471
    :sswitch_0
    const/4 v0, 0x2

    .line 472
    goto :goto_0

    .line 475
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 469
    :sswitch_data_0
    .sparse-switch
        0x7f0b0009 -> :sswitch_0
        0x7f0b000e -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .parameter "data"
    .parameter "restoreState"

    .prologue
    const/4 v3, 0x0

    .line 273
    const v1, 0x7f0b0024

    const v2, 0x7f040003

    invoke-virtual {p0, v1, v2}, Lcom/miui/gallery/app/AlbumSetPage;->inflatePageView(II)V

    .line 274
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 276
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getLastVisitedType()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetShowType:I

    .line 277
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumSetPage;->initializeViews()V

    .line 278
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/AlbumSetPage;->initializeData(Landroid/os/Bundle;)V

    .line 279
    const-string v1, "get-content"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mGetContent:Z

    .line 280
    const-string v1, "get-album"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mGetAlbum:Z

    .line 281
    new-instance v1, Lcom/miui/gallery/app/EyePosition;

    invoke-direct {v1, v0, p0}, Lcom/miui/gallery/app/EyePosition;-><init>(Landroid/content/Context;Lcom/miui/gallery/app/EyePosition$EyePositionListener;)V

    iput-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mEyePosition:Lcom/miui/gallery/app/EyePosition;

    .line 282
    new-instance v1, Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;-><init>(Lcom/miui/gallery/app/AlbumSetPage;Lcom/miui/gallery/app/AlbumSetPage$1;)V

    iput-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mDetailsSource:Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;

    .line 283
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumSetPage;->startTransition()V

    .line 284
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 13
    .parameter "menu"

    .prologue
    const v12, 0x7f100009

    const v11, 0x7f0d0041

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 506
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    .line 507
    .local v1, activity:Landroid/app/Activity;
    iget-object v7, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v7}, Lcom/miui/gallery/app/GalleryActivity;->getGalleryActionBar()Lcom/miui/gallery/app/GalleryActionBar;

    move-result-object v0

    .line 509
    .local v0, actionBar:Lcom/miui/gallery/app/GalleryActionBar;
    invoke-virtual {v0, v9}, Lcom/miui/gallery/app/GalleryActionBar;->setStyle(I)V

    .line 510
    iget-object v7, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v7}, Lcom/miui/gallery/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d00b0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 511
    .local v5, text:Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/miui/gallery/app/GalleryActionBar;->setTitleText(Ljava/lang/CharSequence;)V

    .line 513
    const/16 v7, 0x17

    invoke-virtual {v0, v7}, Lcom/miui/gallery/app/GalleryActionBar;->setDisplayOptions(I)V

    .line 515
    invoke-virtual {v0, v10}, Lcom/miui/gallery/app/GalleryActionBar;->setPaddingLeft(I)V

    .line 516
    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    .line 518
    .local v3, inflater:Landroid/view/MenuInflater;
    iget-boolean v7, p0, Lcom/miui/gallery/app/AlbumSetPage;->mGetContent:Z

    if-eqz v7, :cond_2

    .line 519
    invoke-virtual {v3, v12, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 520
    iget-object v7, p0, Lcom/miui/gallery/app/AlbumSetPage;->mData:Landroid/os/Bundle;

    const-string v8, "type-bits"

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 522
    .local v6, typeBits:I
    const v2, 0x7f0d003e

    .line 523
    .local v2, id:I
    and-int/lit8 v7, v6, 0x2

    if-eqz v7, :cond_0

    .line 524
    and-int/lit8 v7, v6, 0x1

    if-nez v7, :cond_1

    const v2, 0x7f0d003f

    .line 528
    :cond_0
    :goto_0
    invoke-virtual {v0, v2}, Lcom/miui/gallery/app/GalleryActionBar;->setTitle(I)V

    .line 543
    .end local v2           #id:I
    .end local v6           #typeBits:I
    :goto_1
    return v9

    .line 524
    .restart local v2       #id:I
    .restart local v6       #typeBits:I
    :cond_1
    const v2, 0x7f0d0040

    goto :goto_0

    .line 529
    .end local v2           #id:I
    .end local v6           #typeBits:I
    :cond_2
    iget-boolean v7, p0, Lcom/miui/gallery/app/AlbumSetPage;->mGetAlbum:Z

    if-eqz v7, :cond_3

    .line 530
    invoke-virtual {v3, v12, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 531
    invoke-virtual {v0, v11}, Lcom/miui/gallery/app/GalleryActionBar;->setTitle(I)V

    goto :goto_1

    .line 533
    :cond_3
    invoke-static {p1}, Lcom/miui/gallery/util/AlbumUtils;->addAlbumSetSortMenu(Landroid/view/Menu;)V

    .line 535
    const v7, 0x7f100001

    invoke-virtual {v3, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 536
    const v7, 0x7f0b0082

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 538
    .local v4, selectItem:Landroid/view/MenuItem;
    if-eqz v4, :cond_4

    .line 539
    invoke-interface {v4, v11}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 541
    :cond_4
    iget-object v7, p0, Lcom/miui/gallery/app/AlbumSetPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v7}, Lcom/miui/gallery/data/MediaSet;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v7

    invoke-static {v0, v7, v10}, Lcom/miui/gallery/app/FilterUtils;->setupMenuItems(Lcom/miui/gallery/app/GalleryActionBar;Lcom/miui/gallery/data/Path;Z)V

    goto :goto_1
.end method

.method public onEyePositionChanged(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLView;->lockRendering()V

    .line 165
    iput p1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mX:F

    .line 166
    iput p2, p0, Lcom/miui/gallery/app/AlbumSetPage;->mY:F

    .line 167
    iput p3, p0, Lcom/miui/gallery/app/AlbumSetPage;->mZ:F

    .line 168
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLView;->unlockRendering()V

    .line 169
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLView;->invalidate()V

    .line 170
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 548
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 549
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    move v0, v2

    .line 592
    :goto_0
    return v0

    .line 551
    :sswitch_0
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 552
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    move v0, v1

    .line 553
    goto :goto_0

    .line 556
    :sswitch_1
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 557
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SelectionManager;->enterSelectionMode()V

    move v0, v1

    .line 558
    goto :goto_0

    .line 561
    :sswitch_2
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumSetPage;->refresh()V

    move v0, v1

    .line 562
    goto :goto_0

    .line 570
    :sswitch_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/app/AlbumSetPage;->setSortBy(Landroid/view/MenuItem;I)V

    move v0, v1

    .line 571
    goto :goto_0

    .line 574
    :sswitch_4
    iget-object v3, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    invoke-virtual {v3}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 575
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mShowDetails:Z

    if-eqz v0, :cond_0

    .line 576
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumSetPage;->hideDetails()V

    :goto_1
    move v0, v1

    .line 585
    goto :goto_0

    .line 578
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumSetPage;->showDetails()V

    goto :goto_1

    .line 581
    :cond_1
    const v3, 0x7f0d006d

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 588
    :sswitch_5
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/miui/gallery/settings/GallerySettings;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 589
    goto :goto_0

    .line 549
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4 -> :sswitch_3
        -0x3 -> :sswitch_3
        -0x1 -> :sswitch_3
        0x1 -> :sswitch_3
        0x3 -> :sswitch_3
        0x4 -> :sswitch_3
        0x7f0b0082 -> :sswitch_1
        0x7f0b0083 -> :sswitch_5
        0x7f0b0084 -> :sswitch_2
        0x7f0b0091 -> :sswitch_4
        0x7f0b00a1 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLongTap(I)V
    .locals 3
    .parameter "slotIndex"

    .prologue
    .line 253
    iget-boolean v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mGetContent:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mGetAlbum:Z

    if-eqz v1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-boolean v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mShowDetails:Z

    if-eqz v1, :cond_2

    .line 255
    invoke-virtual {p0, p1}, Lcom/miui/gallery/app/AlbumSetPage;->onSingleTapUp(I)V

    goto :goto_0

    .line 257
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->getMediaSet(I)Lcom/miui/gallery/data/MediaSet;

    move-result-object v0

    .line 258
    .local v0, set:Lcom/miui/gallery/data/MediaSet;
    if-eqz v0, :cond_0

    .line 259
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 260
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaSet;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/SelectionManager;->toggle(Lcom/miui/gallery/data/Path;)V

    .line 261
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mDetailsSource:Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;->findIndex(I)I

    .line 262
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetView;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlbumSetView;->invalidate()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 312
    invoke-super {p0}, Lcom/miui/gallery/app/ActivityState;->onPause()V

    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mIsActive:Z

    .line 314
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ActionModeHandler;->pause()V

    .line 315
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->pause()V

    .line 316
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumSetView;->pause()V

    .line 317
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mEyePosition:Lcom/miui/gallery/app/EyePosition;

    invoke-virtual {v0}, Lcom/miui/gallery/app/EyePosition;->pause()V

    .line 318
    invoke-static {}, Lcom/miui/gallery/ui/DetailsHelper;->pause()V

    .line 319
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSyncTask:Lcom/miui/gallery/util/Future;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSyncTask:Lcom/miui/gallery/util/Future;

    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSyncTask:Lcom/miui/gallery/util/Future;

    .line 322
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/AlbumSetPage;->clearLoadingBit(I)V

    .line 324
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mGetContent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mGetAlbum:Z

    if-nez v0, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetPage;->getSortBy()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSortBy:I

    .line 491
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSortBy:I

    invoke-static {p1, v0}, Lcom/miui/gallery/util/AlbumUtils;->prepareOptionsMenu(Landroid/view/Menu;I)V

    .line 492
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mMenu:Landroid/view/Menu;

    .line 494
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gallery/app/ActivityState;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 341
    invoke-super {p0}, Lcom/miui/gallery/app/ActivityState;->onResume()V

    .line 342
    iput-boolean v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mIsActive:Z

    .line 343
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/AlbumSetPage;->setContentPane(Lcom/miui/gallery/ui/GLView;)V

    .line 346
    invoke-direct {p0, v1}, Lcom/miui/gallery/app/AlbumSetPage;->setLoadingBit(I)V

    .line 347
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->resume()V

    .line 348
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumSetView;->resume()V

    .line 356
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mEyePosition:Lcom/miui/gallery/app/EyePosition;

    invoke-virtual {v0}, Lcom/miui/gallery/app/EyePosition;->resume()V

    .line 357
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ActionModeHandler;->resume()V

    .line 358
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mInitialSynced:Z

    if-nez v0, :cond_0

    .line 359
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/AlbumSetPage;->setLoadingBit(I)V

    .line 360
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/data/MediaSet;->requestSync(Lcom/miui/gallery/data/MediaSet$SyncListener;)Lcom/miui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSyncTask:Lcom/miui/gallery/util/Future;

    .line 362
    :cond_0
    return-void
.end method

.method public onSelectionChange(Lcom/miui/gallery/data/Path;Z)V
    .locals 2
    .parameter "path"
    .parameter "selected"

    .prologue
    .line 677
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 678
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumSetPage;->getSelectedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/ui/ActionModeHandler;->updateSupportedOperation(Lcom/miui/gallery/data/Path;Z)V

    .line 680
    return-void

    .line 677
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSelectionModeChange(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 643
    packed-switch p1, :pswitch_data_0

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 646
    :pswitch_0
    iput-boolean v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mInselectionMode:Z

    .line 647
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetView;

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/app/AlbumSetPage;->setViewLayout(Lcom/miui/gallery/ui/SlotViewWithTitle;Z)V

    .line 648
    invoke-direct {p0, v2}, Lcom/miui/gallery/app/AlbumSetPage;->setTabClickable(Z)V

    .line 649
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/ActionModeHandler;->startActionMode(Z)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActionMode:Landroid/view/ActionMode;

    .line 650
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/GalleryUtils;->vibrate(Lcom/miui/gallery/app/GalleryActivity;J)V

    goto :goto_0

    .line 655
    :pswitch_1
    iput-boolean v2, p0, Lcom/miui/gallery/app/AlbumSetPage;->mInselectionMode:Z

    .line 656
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetView;

    invoke-virtual {p0, v0, v2}, Lcom/miui/gallery/app/AlbumSetPage;->setViewLayout(Lcom/miui/gallery/ui/SlotViewWithTitle;Z)V

    .line 657
    invoke-direct {p0, v1}, Lcom/miui/gallery/app/AlbumSetPage;->setTabClickable(Z)V

    .line 658
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 659
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLView;->invalidate()V

    .line 661
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mTaskListener:Lcom/miui/gallery/ui/TaskListenerForRefresh;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/TaskListenerForRefresh;->isExcuteRefeshTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumSetPage;->refreshPage()V

    .line 664
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mTaskListener:Lcom/miui/gallery/ui/TaskListenerForRefresh;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/TaskListenerForRefresh;->resetExcuteRefeshTask()V

    goto :goto_0

    .line 669
    :pswitch_2
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumSetPage;->getSelectedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 670
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLView;->invalidate()V

    goto :goto_0

    .line 643
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSingleTapUp(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 198
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->getMediaSet(I)Lcom/miui/gallery/data/MediaSet;

    move-result-object v1

    .line 199
    if-nez v1, :cond_0

    .line 236
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mShowDetails:Z

    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSet;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mHighlightDrawer:Lcom/miui/gallery/ui/HighlightDrawer;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/HighlightDrawer;->setHighlightItem(Lcom/miui/gallery/data/Path;)V

    .line 204
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/DetailsHelper;->reloadDetails(I)V

    goto :goto_0

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 206
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetPage;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 207
    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSet;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    .line 208
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 209
    invoke-direct {p0, p1, v3}, Lcom/miui/gallery/app/AlbumSetPage;->savePositions(I[I)V

    .line 210
    const-string v4, "set-center"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 211
    iget-boolean v3, p0, Lcom/miui/gallery/app/AlbumSetPage;->mGetAlbum:Z

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSet;->isLeafAlbum()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 212
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 213
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "album-path"

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSet;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 215
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 216
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 217
    :cond_2
    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSet;->getSubMediaSetCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 218
    const-string v1, "media-path"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/app/AlbumSetPage;

    invoke-virtual {v1, v2, v5, v0}, Lcom/miui/gallery/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 222
    :cond_3
    iget-boolean v3, p0, Lcom/miui/gallery/app/AlbumSetPage;->mGetContent:Z

    if-nez v3, :cond_4

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSet;->getSupportedOperations()I

    move-result v3

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_4

    .line 224
    const-string v3, "auto-select-all"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 226
    :cond_4
    const-string v3, "media-path"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v2, "media-name"

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSet;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v1, "cluster-menu"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 229
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/app/AlbumPage;

    invoke-virtual {v1, v2, v5, v0}, Lcom/miui/gallery/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 233
    :cond_5
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSet;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/SelectionManager;->toggle(Lcom/miui/gallery/data/Path;)V

    .line 234
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumSetView;->invalidate()V

    goto/16 :goto_0
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 612
    packed-switch p1, :pswitch_data_0

    .line 617
    :goto_0
    return-void

    .line 614
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumSetPage;->startTransition()V

    goto :goto_0

    .line 612
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
    .line 707
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 708
    const-string v0, "AlbumSetPage"

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

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/miui/gallery/app/AlbumSetPage$6;

    invoke-direct {v1, p0, p2}, Lcom/miui/gallery/app/AlbumSetPage$6;-><init>(Lcom/miui/gallery/app/AlbumSetPage;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 725
    return-void
.end method
