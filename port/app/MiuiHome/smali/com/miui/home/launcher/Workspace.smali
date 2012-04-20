.class public Lcom/miui/home/launcher/Workspace;
.super Lcom/miui/home/launcher/DragableScreenView;
.source "Workspace.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/miui/home/launcher/DragSource;
.implements Lcom/miui/home/launcher/DropTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private mDefaultScreenId:J

.field private mDragController:Lcom/miui/home/launcher/DragController;

.field private mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

.field private mDragViewVisualCenter:[F

.field private mEditingModeAnimating:Z

.field private mEditingNewScreenLeft:Lcom/miui/home/launcher/CellScreen;

.field private mEditingNewScreenRight:Lcom/miui/home/launcher/CellScreen;

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mInDraggingMode:Z

.field private mInEditingMode:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mInitThreePinchSize:F

.field private mLastDragScreenID:J

.field private mLastShakeTime:J

.field private mLastShakeX:F

.field private mLastTouchPointerCount:I

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mNewScreenId:J

.field private mOldTransitionType:I

.field private mPositionMapping:[I

.field private mPreviousScreen:I

.field private mResolver:Landroid/content/ContentResolver;

.field private mScreenIdMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mShakeCounter:I

.field private mShowEditingIndicator:Z

.field private mSkipDrawingChild:Z

.field private mSlideBarEditingEnter:Landroid/view/animation/Animation;

.field private mSlideBarEditingExit:Landroid/view/animation/Animation;

.field private mTempCell:[I

.field private mThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;

.field private mThumbnailViewAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/miui/home/launcher/Workspace;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v9, -0x2

    const/4 v8, 0x0

    const-wide/16 v6, -0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 155
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/DragableScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    iput v5, p0, Lcom/miui/home/launcher/Workspace;->mPreviousScreen:I

    .line 103
    iput-wide v6, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    .line 114
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    .line 115
    const/4 v3, 0x2

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mDragViewVisualCenter:[F

    .line 118
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/miui/home/launcher/Workspace;->mSkipDrawingChild:Z

    .line 119
    const/4 v3, 0x7

    iput v3, p0, Lcom/miui/home/launcher/Workspace;->mInEditingMode:I

    .line 120
    iput-boolean v4, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    .line 121
    iput-boolean v4, p0, Lcom/miui/home/launcher/Workspace;->mInDraggingMode:Z

    .line 122
    iput-boolean v4, p0, Lcom/miui/home/launcher/Workspace;->mEditingModeAnimating:Z

    .line 135
    iput-wide v6, p0, Lcom/miui/home/launcher/Workspace;->mNewScreenId:J

    .line 510
    iput v4, p0, Lcom/miui/home/launcher/Workspace;->mLastTouchPointerCount:I

    .line 511
    iput v8, p0, Lcom/miui/home/launcher/Workspace;->mInitThreePinchSize:F

    .line 1063
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mScreenIds:Ljava/util/ArrayList;

    .line 1064
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdMap:Landroid/util/LongSparseArray;

    .line 1431
    new-instance v3, Landroid/graphics/Camera;

    invoke-direct {v3}, Landroid/graphics/Camera;-><init>()V

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mCamera:Landroid/graphics/Camera;

    .line 1749
    iput-wide v6, p0, Lcom/miui/home/launcher/Workspace;->mLastShakeTime:J

    .line 1750
    iput v8, p0, Lcom/miui/home/launcher/Workspace;->mLastShakeX:F

    .line 1751
    iput v5, p0, Lcom/miui/home/launcher/Workspace;->mShakeCounter:I

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mResolver:Landroid/content/ContentResolver;

    .line 159
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 160
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/miui/home/launcher/Workspace;->mInflater:Landroid/view/LayoutInflater;

    .line 161
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 162
    .local v2, r:Landroid/content/res/Resources;
    const/high16 v3, 0x7f0b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, indicator:Ljava/lang/String;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const v3, 0x7f0c0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 165
    .local v1, params:Landroid/widget/FrameLayout$LayoutParams;
    const-string v3, "bottom_point"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 167
    const/16 v3, 0x51

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 168
    const v3, 0x7f0200a8

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Workspace;->setSeekPointResource(I)V

    .line 169
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 170
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    .line 183
    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Workspace;->setAnimationCacheEnabled(Z)V

    .line 184
    const/16 v3, 0x1770

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Workspace;->setMaximumSnapVelocity(I)V

    .line 185
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Workspace;->setClipChildren(Z)V

    .line 186
    return-void

    .line 171
    :cond_1
    const-string v3, "top_point"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 172
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 173
    const/16 v3, 0x31

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 174
    const v3, 0x7f0c0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 175
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 176
    iput-boolean v4, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    goto :goto_0

    .line 177
    :cond_2
    const-string v3, "slider"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 179
    const/16 v3, 0x50

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 180
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 181
    iput-boolean v4, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/ThumbnailViewAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mThumbnailViewAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/Workspace;)Landroid/util/LongSparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdMap:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/Workspace;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mPositionMapping:[I

    return-object v0
.end method

.method static synthetic access$1102(Lcom/miui/home/launcher/Workspace;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mPositionMapping:[I

    return-object p1
.end method

.method static synthetic access$1200(Lcom/miui/home/launcher/Workspace;Landroid/view/MotionEvent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->setTouchState(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/home/launcher/Workspace;Landroid/view/MotionEvent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->setTouchState(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/home/launcher/Workspace;Landroid/view/MotionEvent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->setTouchState(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/home/launcher/Workspace;Landroid/view/MotionEvent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->setTouchState(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/home/launcher/Workspace;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/home/launcher/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/DragController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/Workspace;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->delayedShowPreview(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/Workspace;Landroid/view/MotionEvent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->setTouchState(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$802(Lcom/miui/home/launcher/Workspace;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/WorkspaceThumbnailView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    return-object v0
.end method

.method private delayedShowPreview(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    if-ne p1, v0, :cond_1

    .line 1292
    :cond_0
    :goto_0
    return-void

    .line 1280
    :cond_1
    if-eqz p1, :cond_3

    .line 1281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mPositionMapping:[I

    .line 1282
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mThumbnailViewAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ThumbnailViewAdapter;->notifyDataSetChanged()V

    .line 1283
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->setVisibility(I)V

    .line 1284
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mPreviousScreen:I

    .line 1291
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->show(Z)V

    goto :goto_0

    .line 1287
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mPositionMapping:[I

    if-eqz v0, :cond_2

    .line 1288
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->reorderScreens()V

    goto :goto_1
.end method

.method private getDefaultScreenIndex()I
    .locals 3

    .prologue
    .line 1049
    iget-wide v1, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    .line 1050
    .local v0, defaultScreen:I
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private getDragViewVisualCenter(IIIILcom/miui/home/launcher/DragView;[F)[F
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 866
    if-nez p6, :cond_0

    .line 867
    const/4 v0, 0x2

    new-array p6, v0, [F

    .line 874
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 875
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, p2

    .line 881
    sub-int/2addr v0, p3

    .line 882
    sub-int/2addr v1, p4

    .line 885
    const/4 v2, 0x0

    invoke-virtual {p5}, Lcom/miui/home/launcher/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    int-to-float v0, v0

    aput v0, p6, v2

    .line 886
    const/4 v0, 0x1

    invoke-virtual {p5}, Lcom/miui/home/launcher/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, p6, v0

    .line 888
    return-object p6
.end method

.method private getThreePinchSize(Landroid/view/MotionEvent;)F
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/high16 v4, 0x4000

    .line 515
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private isDropAllow(Lcom/miui/home/launcher/DropTarget$DragObject;)Z
    .locals 1
    .parameter "d"

    .prologue
    .line 904
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method private isInNormalEditingMode()Z
    .locals 2

    .prologue
    .line 200
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mInEditingMode:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInQuickEditingMode()Z
    .locals 2

    .prologue
    .line 204
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mInEditingMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDropExternal(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/DropTarget$DragObject;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const v8, 0x7f0b002c

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 776
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->onWorkspaceDropExternalComplate()V

    .line 779
    iget-object v0, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    packed-switch v0, :pswitch_data_0

    .line 819
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v2, v2, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 783
    :pswitch_1
    iget-object v0, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v0, v0, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    move v5, v6

    .line 830
    :cond_0
    :goto_0
    return v5

    .line 786
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v0, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v1, p1, v0}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v0

    .line 787
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 788
    invoke-virtual {p1, p2, v0}, Lcom/miui/home/launcher/CellLayout;->onDrop(Lcom/miui/home/launcher/DropTarget$DragObject;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 790
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const v1, 0x7f0b002b

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->showError(I)V

    move-object v0, v7

    .line 821
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 822
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    .line 823
    invoke-virtual {v0, v5}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 825
    iget-object v1, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragView:Lcom/miui/home/launcher/DragView;

    if-eqz v1, :cond_3

    iget-object v1, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v1, v1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v3, -0x64

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 826
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v1

    iget-object v2, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragView:Lcom/miui/home/launcher/DragView;

    invoke-virtual {v1, v2, v0, v7}, Lcom/miui/home/launcher/DragLayer;->animateViewIntoPosition(Lcom/miui/home/launcher/DragView;Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_3
    move v5, v6

    .line 828
    goto :goto_0

    .line 794
    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/CellScreen;->translateTouch(Lcom/miui/home/launcher/DropTarget$DragObject;)V

    .line 795
    iget v0, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->x:I

    iget v1, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->xOffset:I

    sub-int v1, v0, v1

    iget v0, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->y:I

    iget v2, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->yOffset:I

    sub-int v2, v0, v2

    iget-object v0, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v3, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget-object v0, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v4, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout;->findNearestVacantArea(IIIIZ)[I

    move-result-object v1

    .line 797
    if-eqz v1, :cond_4

    .line 798
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v0, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    aget v3, v1, v5

    aget v1, v1, v6

    invoke-virtual {v2, v0, v3, v1}, Lcom/miui/home/launcher/Launcher;->addFolderToCurrentScreen(Lcom/miui/home/launcher/FolderInfo;II)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    goto :goto_1

    .line 800
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v8}, Lcom/miui/home/launcher/Launcher;->showError(I)V

    move-object v0, v7

    .line 802
    goto :goto_1

    .line 804
    :pswitch_3
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v0, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->addAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V

    move v5, v6

    .line 805
    goto/16 :goto_0

    .line 807
    :pswitch_4
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v0, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->addGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;)V

    move v5, v6

    .line 808
    goto/16 :goto_0

    .line 810
    :pswitch_5
    invoke-virtual {p1, p2, v7}, Lcom/miui/home/launcher/CellLayout;->onDrop(Lcom/miui/home/launcher/DropTarget$DragObject;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 811
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 812
    iget-object v0, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast v0, Lcom/miui/home/launcher/ShortcutProviderInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/ShortcutProviderInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 813
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p2, v1}, Lcom/miui/home/launcher/Launcher;->onDropShortcut(Lcom/miui/home/launcher/DropTarget$DragObject;Landroid/content/Intent;)V

    move v5, v6

    .line 814
    goto/16 :goto_0

    .line 816
    :cond_5
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v8}, Lcom/miui/home/launcher/Launcher;->showError(I)V

    move-object v0, v7

    .line 817
    goto/16 :goto_1

    .line 779
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private registAccelerometer()V
    .locals 3

    .prologue
    .line 1735
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 1736
    if-eqz v0, :cond_0

    .line 1737
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 1738
    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1740
    :cond_0
    return-void
.end method

.method private setEditModeIfNeeded()V
    .locals 2

    .prologue
    .line 1333
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1334
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mInEditingMode:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->setEditMode(IZ)V

    .line 1336
    :cond_0
    return-void
.end method

.method private setupEditingScreen(ZZ)V
    .locals 2
    .parameter "isEditing"
    .parameter "isEntering"

    .prologue
    const/4 v1, 0x0

    .line 1319
    if-eqz p1, :cond_1

    .line 1320
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mEditingNewScreenLeft:Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->addView(Landroid/view/View;I)V

    .line 1321
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mEditingNewScreenRight:Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Workspace;->addView(Landroid/view/View;I)V

    .line 1322
    if-eqz p2, :cond_0

    .line 1323
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setCurrentScreen(I)V

    .line 1330
    :cond_0
    :goto_0
    return-void

    .line 1326
    :cond_1
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->removeScreen(I)V

    .line 1327
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setCurrentScreen(I)V

    .line 1328
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->removeScreen(I)V

    goto :goto_0
.end method

.method private unRegistAccelerometer()V
    .locals 2

    .prologue
    .line 1743
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 1744
    if-eqz v0, :cond_0

    .line 1745
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1747
    :cond_0
    return-void
.end method

.method private updateWallpaperOffset()V
    .locals 3

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 370
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->updateWallpaperOffsetDuringSwitchingPreview()V

    goto :goto_0

    .line 373
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_1
    mul-int/2addr v0, v2

    sub-int v0, v1, v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Workspace;->updateWallpaperOffset(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private updateWallpaperOffset(I)V
    .locals 7
    .parameter "scrollRange"

    .prologue
    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    const/4 v3, 0x0

    .line 379
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 380
    .local v2, token:Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v4

    if-ne v4, v5, :cond_1

    move v1, v3

    .line 382
    .local v1, steps:F
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v4

    if-ne v4, v5, :cond_2

    move v0, v3

    .line 384
    .local v0, offsetX:F
    :goto_1
    iget-object v4, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4, v1, v3, v0, v3}, Lcom/miui/home/launcher/Launcher;->updateWallpaperOffset(FFFF)V

    .line 386
    .end local v0           #offsetX:F
    .end local v1           #steps:F
    :cond_0
    return-void

    .line 381
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float v1, v6, v4

    goto :goto_0

    .line 382
    .restart local v1       #steps:F
    :cond_2
    iget v5, p0, Lcom/miui/home/launcher/Workspace;->mScrollX:I

    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getWidth()I

    move-result v4

    :goto_2
    sub-int v4, v5, v4

    int-to-float v4, v4

    int-to-float v5, p1

    div-float/2addr v4, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DropTarget$DragObject;)Z
    .locals 2
    .parameter "d"

    .prologue
    .line 896
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->isDropAllow(Lcom/miui/home/launcher/DropTarget$DragObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const v1, 0x7f0b002b

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->showError(I)V

    .line 898
    const/4 v0, 0x0

    .line 900
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 3
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 495
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getCurrentOpenedFolder()Landroid/view/View;

    move-result-object v0

    .line 496
    .local v0, openFolder:Landroid/view/View;
    if-nez v0, :cond_0

    .line 497
    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 498
    const/16 v1, 0x11

    if-ne p2, v1, :cond_1

    .line 499
    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    if-lez v1, :cond_0

    .line 500
    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    const/16 v1, 0x42

    if-ne p2, v1, :cond_0

    .line 503
    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 504
    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method addInCurrentScreen(Landroid/view/View;IIIIZ)V
    .locals 9
    .parameter "child"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    .line 270
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    .line 271
    return-void
.end method

.method addInScreen(Landroid/view/View;JIIII)V
    .locals 9
    .parameter "child"
    .parameter "screenId"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 285
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    .line 286
    return-void
.end method

.method addInScreen(Landroid/view/View;JIIIIZ)V
    .locals 5
    .parameter "child"
    .parameter "screenId"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    const/4 v3, 0x0

    .line 301
    invoke-virtual {p0, p2, p3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v2

    .line 302
    .local v2, screen:I
    if-gez v2, :cond_0

    .line 303
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Workspace;->loadScreens(Z)V

    .line 304
    invoke-virtual {p0, p2, p3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v2

    .line 305
    if-gez v2, :cond_0

    .line 306
    const-string v3, "Launcher.Workspace"

    const-string v4, "The screen must be >= 0; skipping child"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 313
    .local v0, group:Lcom/miui/home/launcher/CellLayout;
    iget-object v4, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    .line 315
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 316
    .local v1, lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    if-nez v1, :cond_2

    .line 317
    new-instance v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .end local v1           #lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    invoke-direct {v1, p4, p5, p6, p7}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>(IIII)V

    .line 324
    .restart local v1       #lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    :goto_1
    if-eqz p8, :cond_3

    :goto_2
    invoke-virtual {v0, p1, v3, v1}, Lcom/miui/home/launcher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 326
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v3}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 327
    new-instance v3, Lcom/miui/home/launcher/Workspace$1;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/Workspace$1;-><init>(Lcom/miui/home/launcher/Workspace;)V

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 335
    :cond_1
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    goto :goto_0

    .line 319
    :cond_2
    iput p4, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    .line 320
    iput p5, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    .line 321
    iput p6, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellHSpan:I

    .line 322
    iput p7, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellVSpan:I

    goto :goto_1

    .line 324
    :cond_3
    const/4 v3, -0x1

    goto :goto_2
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 390
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->computeScroll()V

    .line 391
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->updateWallpaperOffset()V

    .line 392
    return-void
.end method

.method public createUserFolderWithDragOverlap(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 13
    .parameter "dragItem"
    .parameter "overItem"

    .prologue
    .line 834
    iget-wide v2, p2, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    invoke-virtual {p0, v2, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v11

    .line 835
    .local v11, cl:Lcom/miui/home/launcher/CellLayout;
    iget-object v10, p0, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    .line 836
    .local v10, cellXY:[I
    const/4 v1, 0x0

    .line 837
    .local v1, folder:Lcom/miui/home/launcher/FolderIcon;
    invoke-virtual {v11, p2, v10}, Lcom/miui/home/launcher/CellLayout;->getChildVisualPosByTag(Ljava/lang/Object;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-wide v2, p2, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    const/4 v4, 0x0

    aget v4, v10, v4

    const/4 v5, 0x1

    aget v5, v10, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/miui/home/launcher/Launcher;->createNewFolder(JII)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v1

    .line 840
    :cond_0
    if-nez v1, :cond_1

    .line 841
    const/4 v0, 0x0

    .line 856
    :goto_0
    return v0

    .line 843
    :cond_1
    const/4 v0, 0x0

    aget v0, v10, v0

    iput v0, p2, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    .line 844
    const/4 v0, 0x1

    aget v0, v10, v0

    iput v0, p2, Lcom/miui/home/launcher/ShortcutInfo;->cellY:I

    .line 845
    invoke-virtual {v11, p2}, Lcom/miui/home/launcher/CellLayout;->removeChild(Lcom/miui/home/launcher/ItemInfo;)V

    .line 846
    invoke-virtual {v11}, Lcom/miui/home/launcher/CellLayout;->clearBackupLayout()V

    .line 848
    iget-wide v2, p2, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    const/4 v0, 0x0

    aget v4, v10, v0

    const/4 v0, 0x1

    aget v5, v10, v0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIII)V

    .line 849
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/home/launcher/FolderInfo;

    .line 850
    .local v12, folderInfo:Lcom/miui/home/launcher/FolderInfo;
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-wide v4, v12, Lcom/miui/home/launcher/FolderInfo;->id:J

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    invoke-static/range {v2 .. v9}, Lcom/miui/home/launcher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    .line 851
    invoke-virtual {v12, p1}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 852
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-wide v4, v12, Lcom/miui/home/launcher/FolderInfo;->id:J

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p2

    invoke-static/range {v2 .. v9}, Lcom/miui/home/launcher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    .line 853
    invoke-virtual {v12, p2}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 854
    invoke-virtual {v12}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 855
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/FolderIcon;->onDragExit(Lcom/miui/home/launcher/DropTarget$DragObject;)V

    .line 856
    const/4 v0, 0x1

    goto :goto_0
.end method

.method deleteScreen(J)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 1391
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1413
    :goto_1
    return-void

    .line 1391
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    goto :goto_0

    .line 1394
    :cond_1
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_2

    .line 1395
    iput-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    .line 1396
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1397
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1398
    const-string v1, "pref_default_screen"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1399
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1401
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1402
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    .line 1403
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 1404
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_4

    add-int/lit8 v1, v0, 0x1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setCurrentScreen(I)V

    .line 1411
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/miui/home/launcher/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1412
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->reorderScreens()V

    goto :goto_1

    .line 1404
    :cond_4
    add-int/lit8 v1, v0, -0x1

    goto :goto_2

    .line 1407
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_3

    .line 1408
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setCurrentScreen(I)V

    goto :goto_3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/4 v6, -0x1

    .line 401
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getDrawingTime()J

    move-result-wide v2

    .line 402
    .local v2, drawingTime:J
    iget-boolean v10, p0, Lcom/miui/home/launcher/Workspace;->mSkipDrawingChild:Z

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lcom/miui/home/launcher/Workspace;->mEditingModeAnimating:Z

    if-eqz v10, :cond_2

    .line 403
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 438
    :cond_1
    return-void

    .line 406
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v9

    .line 407
    .local v9, touchState:I
    iget v10, p0, Lcom/miui/home/launcher/Workspace;->mNextScreen:I

    if-ne v10, v6, :cond_6

    if-eqz v9, :cond_3

    const/4 v10, 0x6

    if-eq v9, v10, :cond_3

    const/4 v10, 0x7

    if-ne v9, v10, :cond_6

    :cond_3
    const/4 v4, 0x1

    .line 412
    .local v4, fastDraw:Z
    :goto_0
    if-eqz v4, :cond_7

    .line 413
    iget v10, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v10}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {p0, p1, v10, v2, v3}, Lcom/miui/home/launcher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 431
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getChildCount()I

    move-result v1

    .line 432
    .local v1, count:I
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v5

    .local v5, i:I
    :goto_2
    if-ge v5, v1, :cond_1

    .line 433
    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 434
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_5

    .line 435
    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/miui/home/launcher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 432
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 407
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v4           #fastDraw:Z
    .end local v5           #i:I
    :cond_6
    const/4 v4, 0x0

    goto :goto_0

    .line 415
    .restart local v4       #fastDraw:Z
    :cond_7
    iget v10, p0, Lcom/miui/home/launcher/Workspace;->mScrollX:I

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float v8, v10, v11

    .line 416
    .local v8, scrollPos:F
    const/4 v10, 0x0

    cmpg-float v10, v8, v10

    if-gez v10, :cond_9

    .line 417
    .local v6, leftScreen:I
    :goto_3
    add-int/lit8 v7, v6, 0x1

    .line 418
    .local v7, rightScreen:I
    if-ltz v6, :cond_8

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v10

    if-ge v6, v10, :cond_8

    .line 419
    invoke-virtual {p0, v6}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v10

    invoke-virtual {v10}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v10

    if-eqz v10, :cond_8

    .line 420
    invoke-virtual {p0, v6}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {p0, p1, v10, v2, v3}, Lcom/miui/home/launcher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 423
    :cond_8
    int-to-float v10, v6

    cmpl-float v10, v8, v10

    if-eqz v10, :cond_4

    if-ltz v7, :cond_4

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v10

    if-ge v7, v10, :cond_4

    .line 424
    invoke-virtual {p0, v7}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v10

    invoke-virtual {v10}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v10

    if-eqz v10, :cond_4

    .line 425
    invoke-virtual {p0, v7}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {p0, p1, v10, v2, v3}, Lcom/miui/home/launcher/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    .line 416
    .end local v6           #leftScreen:I
    .end local v7           #rightScreen:I
    :cond_9
    float-to-int v6, v8

    goto :goto_3
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 522
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 523
    .local v0, pointerCount:I
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    .line 524
    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mLastTouchPointerCount:I

    if-eq v1, v0, :cond_1

    .line 525
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->getThreePinchSize(Landroid/view/MotionEvent;)F

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/Workspace;->mInitThreePinchSize:F

    .line 533
    :cond_0
    :goto_0
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mLastTouchPointerCount:I

    .line 534
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 535
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 536
    const/4 v1, 0x0

    .line 539
    :goto_1
    return v1

    .line 527
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mInitThreePinchSize:F

    const v2, 0x3f333333

    mul-float/2addr v1, v2

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->getThreePinchSize(Landroid/view/MotionEvent;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 528
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->finishCurrentGesture()V

    .line 529
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Launcher;->showPreview(Z)V

    goto :goto_0

    .line 539
    :cond_2
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .parameter "focused"

    .prologue
    .line 625
    iget v3, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    .line 626
    .local v0, current:Landroid/view/View;
    move-object v2, p1

    .line 628
    .local v2, v:Landroid/view/View;
    :goto_0
    if-ne v2, v0, :cond_1

    .line 629
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->focusableViewAvailable(Landroid/view/View;)V

    .line 639
    :cond_0
    return-void

    .line 632
    :cond_1
    if-eq v2, p0, :cond_0

    .line 635
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 636
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 637
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #v:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public getCellLayout(I)Lcom/miui/home/launcher/CellLayout;
    .locals 2
    .parameter "screenIndex"

    .prologue
    .line 1103
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    .line 1104
    .local v0, cs:Lcom/miui/home/launcher/CellScreen;
    if-eqz v0, :cond_0

    .line 1105
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    .line 1107
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCellScreen(I)Lcom/miui/home/launcher/CellScreen;
    .locals 2
    .parameter "screenIndex"

    .prologue
    .line 1095
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    .line 1096
    .local v0, v:Landroid/view/View;
    instance-of v1, v0, Lcom/miui/home/launcher/CellScreen;

    if-eqz v1, :cond_0

    .line 1097
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CellScreen;

    .line 1099
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getChildStaticTransformationByScreen(Landroid/view/View;Landroid/view/animation/Transformation;F)Z
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v9, 0x4000

    const v8, 0x3f6147ae

    const/4 v7, 0x0

    .line 1436
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 1437
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    .line 1438
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    .line 1439
    div-float v3, v2, v9

    .line 1440
    const v4, 0x3e0624dd

    mul-float/2addr v4, v1

    .line 1441
    const v5, 0x3f0a1cac

    mul-float/2addr v2, v5

    .line 1442
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3fc0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 1443
    const/4 v0, 0x0

    .line 1459
    :goto_0
    return v0

    .line 1445
    :cond_0
    iget-object v5, p0, Lcom/miui/home/launcher/Workspace;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 1446
    cmpl-float v5, p3, v7

    if-lez v5, :cond_1

    .line 1447
    iget-object v5, p0, Lcom/miui/home/launcher/Workspace;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v1, v7, v7}, Landroid/graphics/Camera;->translate(FFF)V

    .line 1449
    :cond_1
    iget-object v5, p0, Lcom/miui/home/launcher/Workspace;->mCamera:Landroid/graphics/Camera;

    const/high16 v6, 0x4120

    mul-float/2addr v6, p3

    invoke-virtual {v5, v6}, Landroid/graphics/Camera;->rotateY(F)V

    .line 1450
    cmpl-float v5, p3, v7

    if-lez v5, :cond_2

    .line 1451
    iget-object v5, p0, Lcom/miui/home/launcher/Workspace;->mCamera:Landroid/graphics/Camera;

    neg-float v1, v1

    invoke-virtual {v5, v1, v7, v7}, Landroid/graphics/Camera;->translate(FFF)V

    .line 1453
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v1, v0}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 1454
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    .line 1455
    neg-float v1, v3

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1456
    mul-float v1, v4, p3

    div-float v3, v4, v9

    add-float/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1458
    const/high16 v1, 0x3f00

    invoke-virtual {v0, v8, v8, v1, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1459
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;
    .locals 1

    .prologue
    .line 1115
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;
    .locals 1

    .prologue
    .line 1111
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    return-object v0
.end method

.method getCurrentScreenId()J
    .locals 2

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDropTargetDelegate(Lcom/miui/home/launcher/DropTarget$DragObject;)Lcom/miui/home/launcher/DropTarget;
    .locals 1
    .parameter "d"

    .prologue
    .line 772
    const/4 v0, 0x0

    return-object v0
.end method

.method getScreenIdByIndex(I)J
    .locals 3
    .parameter "index"

    .prologue
    const-wide/16 v0, -0x1

    .line 1081
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1082
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt p1, v2, :cond_0

    if-nez p1, :cond_1

    .line 1090
    :cond_0
    :goto_0
    return-wide v0

    .line 1085
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenIds:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 1087
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method getScreenIndexById(J)I
    .locals 4
    .parameter "id"

    .prologue
    const/4 v2, -0x1

    .line 1076
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdMap:Landroid/util/LongSparseArray;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, p2, v3}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1077
    .local v0, index:I
    if-ne v0, v2, :cond_1

    move v0, v2

    .end local v0           #index:I
    :cond_0
    :goto_0
    return v0

    .restart local v0       #index:I
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public inEditingModeAnimating()Z
    .locals 1

    .prologue
    .line 1339
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mEditingModeAnimating:Z

    return v0
.end method

.method insertNewScreen(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1417
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1418
    const-string v2, "screenOrder"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1419
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/miui/home/launcher/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1420
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 1421
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1422
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v3

    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sub-int v0, v3, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1424
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mNewScreenId:J

    .line 1425
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1428
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->reorderScreens()V

    .line 1429
    return-void

    :cond_1
    move v0, v1

    .line 1422
    goto :goto_0
.end method

.method isDefaultScreenShowing()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isScrolling()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDropEnabled()Z
    .locals 1

    .prologue
    .line 860
    const/4 v0, 0x1

    return v0
.end method

.method isScrolling()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadScreens(Z)V
    .locals 10
    .parameter

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 1119
    const-wide/16 v0, 0x0

    .line 1121
    if-nez p1, :cond_1

    .line 1122
    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screens before reload "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v0

    .line 1124
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 1125
    iget-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mNewScreenId:J

    .line 1126
    iput-wide v4, p0, Lcom/miui/home/launcher/Workspace;->mNewScreenId:J

    .line 1128
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1129
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    :cond_1
    move-wide v6, v0

    .line 1134
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/miui/home/launcher/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    const-string v5, "screenOrder ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1141
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1142
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1143
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdMap:Landroid/util/LongSparseArray;

    iget-object v4, p0, Lcom/miui/home/launcher/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1144
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1147
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 1148
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 1147
    :cond_3
    if-eqz v1, :cond_4

    .line 1148
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1151
    :cond_4
    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screens loaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1155
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .line 1157
    :goto_1
    if-ltz v1, :cond_5

    .line 1158
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    .line 1159
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->clearAnimation()V

    .line 1160
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 1164
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    invoke-virtual {p0, v8, v0}, Lcom/miui/home/launcher/Workspace;->removeScreensInLayout(II)V

    .line 1167
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_7

    .line 1168
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1169
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    .line 1170
    if-nez v0, :cond_6

    .line 1171
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030008

    invoke-virtual {v0, v5, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    .line 1172
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v5

    .line 1173
    invoke-virtual {v5, v3, v4}, Lcom/miui/home/launcher/CellLayout;->setScreenId(J)V

    .line 1174
    const/16 v3, -0x64

    invoke-virtual {v5, v3}, Lcom/miui/home/launcher/CellLayout;->setContainerId(I)V

    .line 1175
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v5, v3}, Lcom/miui/home/launcher/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1177
    :cond_6
    invoke-virtual {p0, v0, v8}, Lcom/miui/home/launcher/Workspace;->addView(Landroid/view/View;I)V

    .line 1167
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 1180
    :cond_7
    if-eqz p1, :cond_9

    .line 1181
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1182
    const-string v1, "pref_default_screen"

    const-wide/16 v2, 0x3

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J

    .line 1183
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setCurrentScreen(I)V

    .line 1193
    :cond_8
    :goto_3
    return-void

    .line 1187
    :cond_9
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->setEditModeIfNeeded()V

    .line 1189
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenIdMap:Landroid/util/LongSparseArray;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v7, v1}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v9, :cond_8

    .line 1190
    invoke-virtual {p0, v6, v7}, Lcom/miui/home/launcher/Workspace;->setCurrentScreenById(J)V

    .line 1191
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_3
.end method

.method moveToDefaultScreen(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 1054
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v0

    .line 1055
    .local v0, defaultScreenIndex:I
    if-eqz p1, :cond_0

    .line 1056
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->snapToScreen(I)V

    .line 1060
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1061
    return-void

    .line 1058
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setCurrentScreen(I)V

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 1792
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 442
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->onAttachedToWindow()V

    .line 443
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->setWindowToken(Landroid/os/IBinder;)V

    .line 444
    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 745
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mInDraggingMode:Z

    .line 746
    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 764
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mInDraggingMode:Z

    if-eqz v0, :cond_0

    .line 765
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mInDraggingMode:Z

    .line 767
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    .line 768
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellScreen;->onDragExit(Lcom/miui/home/launcher/DropTarget$DragObject;)V

    .line 769
    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 6
    .parameter "d"

    .prologue
    .line 749
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace;->isDropAllow(Lcom/miui/home/launcher/DropTarget$DragObject;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 750
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    .line 751
    .local v1, cs:Lcom/miui/home/launcher/CellScreen;
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 752
    .local v0, cl:Lcom/miui/home/launcher/CellLayout;
    iget-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 753
    iget-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 754
    iget-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    invoke-virtual {p0, v2, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/CellScreen;->onDragExit(Lcom/miui/home/launcher/DropTarget$DragObject;)V

    .line 756
    :cond_0
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/CellScreen;->onDragEnter(Lcom/miui/home/launcher/DropTarget$DragObject;)V

    .line 757
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/home/launcher/Workspace;->mLastDragScreenID:J

    .line 759
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/CellScreen;->onDragOver(Lcom/miui/home/launcher/DropTarget$DragObject;)V

    .line 761
    .end local v0           #cl:Lcom/miui/home/launcher/CellLayout;
    .end local v1           #cs:Lcom/miui/home/launcher/CellScreen;
    :cond_2
    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DropTarget$DragObject;)Z
    .locals 17
    .parameter "d"

    .prologue
    .line 681
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/CellScreen;->onDragExit(Lcom/miui/home/launcher/DropTarget$DragObject;)V

    .line 682
    move-object/from16 v0, p1

    iget v3, v0, Lcom/miui/home/launcher/DropTarget$DragObject;->x:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/miui/home/launcher/DropTarget$DragObject;->y:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/miui/home/launcher/DropTarget$DragObject;->xOffset:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/miui/home/launcher/DropTarget$DragObject;->yOffset:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/miui/home/launcher/DropTarget$DragObject;->dragView:Lcom/miui/home/launcher/DragView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/home/launcher/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/miui/home/launcher/Workspace;->getDragViewVisualCenter(IIIILcom/miui/home/launcher/DragView;[F)[F

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/home/launcher/Workspace;->mDragViewVisualCenter:[F

    .line 684
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v11

    .line 685
    .local v11, cellScreen:Lcom/miui/home/launcher/CellScreen;
    invoke-virtual {v11}, Lcom/miui/home/launcher/CellScreen;->isEditingNewScreenMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 686
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Workspace;->insertNewScreen(I)V

    .line 687
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v11

    .line 689
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/home/launcher/DropTarget$DragObject;->dragSource:Lcom/miui/home/launcher/DragSource;

    move-object/from16 v0, p0

    if-eq v2, v0, :cond_1

    .line 690
    invoke-virtual {v11}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/miui/home/launcher/Workspace;->onDropExternal(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/DropTarget$DragObject;)Z

    move-result v16

    .line 741
    :goto_0
    return v16

    .line 693
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    if-eqz v2, :cond_6

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-object v9, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 695
    .local v9, cell:Landroid/view/View;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v9}, Lcom/miui/home/launcher/CellScreen;->onDrop(Lcom/miui/home/launcher/DropTarget$DragObject;Landroid/view/View;)Z

    move-result v16

    .line 696
    .local v16, r:Z
    if-nez v16, :cond_3

    .line 697
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const v3, 0x7f0b002b

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/Launcher;->showError(I)V

    .line 732
    :cond_2
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/home/launcher/DropTarget$DragObject;->dragView:Lcom/miui/home/launcher/DragView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragView;->hasDrawn()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v2, v2, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 733
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/miui/home/launcher/DropTarget$DragObject;->dragView:Lcom/miui/home/launcher/DragView;

    const/16 v4, 0x12c

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v9, v4, v5}, Lcom/miui/home/launcher/DragLayer;->animateViewIntoPosition(Lcom/miui/home/launcher/DragView;Landroid/view/View;ILjava/lang/Runnable;)V

    goto :goto_0

    .line 699
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v2, v2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-wide v4, v4, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 700
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-wide v2, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v14

    .line 701
    .local v14, originalCellScreen:Lcom/miui/home/launcher/CellScreen;
    invoke-virtual {v14}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/miui/home/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 702
    invoke-virtual {v14}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    .line 703
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v2, v2, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 704
    invoke-virtual {v11}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/miui/home/launcher/CellLayout;->addView(Landroid/view/View;)V

    .line 705
    invoke-virtual {v11}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    .line 706
    instance-of v2, v9, Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v2, :cond_4

    move-object v2, v9

    .line 707
    check-cast v2, Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {v2}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    .line 712
    .end local v14           #originalCellScreen:Lcom/miui/home/launcher/CellScreen;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v9, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    if-eqz v2, :cond_2

    .line 713
    invoke-virtual {v11}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v10

    .line 714
    .local v10, cellLayout:Lcom/miui/home/launcher/CellLayout;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    .local v13, info:Lcom/miui/home/launcher/ItemInfo;
    move-object v12, v9

    .line 718
    check-cast v12, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    .line 719
    .local v12, hostView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;
    invoke-virtual {v12}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v15

    .line 720
    .local v15, pinfo:Landroid/appwidget/AppWidgetProviderInfo;
    iget v2, v15, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v2, :cond_2

    .line 721
    new-instance v2, Lcom/miui/home/launcher/Workspace$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v13, v12, v10}, Lcom/miui/home/launcher/Workspace$2;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherAppWidgetHostView;Lcom/miui/home/launcher/CellLayout;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 736
    .end local v10           #cellLayout:Lcom/miui/home/launcher/CellLayout;
    .end local v12           #hostView:Lcom/miui/home/launcher/LauncherAppWidgetHostView;
    .end local v13           #info:Lcom/miui/home/launcher/ItemInfo;
    .end local v15           #pinfo:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 741
    .end local v9           #cell:Landroid/view/View;
    .end local v16           #r:Z
    :cond_6
    const/16 v16, 0x1

    goto/16 :goto_0
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/miui/home/launcher/DropTarget$DragObject;Z)V
    .locals 6
    .parameter "target"
    .parameter "d"
    .parameter "success"

    .prologue
    const/4 v5, 0x0

    .line 916
    if-eqz p3, :cond_2

    .line 917
    if-eq p1, p0, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    if-eqz v1, :cond_0

    .line 918
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-wide v1, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 919
    .local v0, cellLayout:Lcom/miui/home/launcher/CellLayout;
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 920
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    .line 932
    .end local v0           #cellLayout:Lcom/miui/home/launcher/CellLayout;
    :cond_0
    :goto_0
    iget-boolean v1, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->cancelled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 933
    iget-object v1, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragView:Lcom/miui/home/launcher/DragView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragView;->hasDrawn()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 934
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v1

    iget-object v2, p2, Lcom/miui/home/launcher/DropTarget$DragObject;->dragView:Lcom/miui/home/launcher/DragView;

    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-object v3, v3, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    const/16 v4, 0x12c

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/miui/home/launcher/DragLayer;->animateViewIntoPosition(Lcom/miui/home/launcher/DragView;Landroid/view/View;ILjava/lang/Runnable;)V

    .line 940
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, v5}, Lcom/miui/home/launcher/DragController;->setTouchTranslator(Lcom/miui/home/launcher/DragController$TouchTranslator;)V

    .line 941
    iput-object v5, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    .line 942
    return-void

    .line 923
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    if-eqz v1, :cond_3

    .line 924
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-wide v1, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 925
    .restart local v0       #cellLayout:Lcom/miui/home/launcher/CellLayout;
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->onDropAborted(Landroid/view/View;)V

    .line 928
    .end local v0           #cellLayout:Lcom/miui/home/launcher/CellLayout;
    :cond_3
    if-ne p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-wide v3, v3, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 929
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const v2, 0x7f0b002b

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Launcher;->showError(I)V

    goto :goto_0

    .line 937
    :cond_4
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method onEditModeEnterComplate()V
    .locals 3

    .prologue
    .line 1298
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/home/launcher/Workspace;->mEditingModeAnimating:Z

    .line 1299
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1300
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    .line 1301
    .local v0, cell:Lcom/miui/home/launcher/CellScreen;
    if-eqz v0, :cond_0

    .line 1302
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->onEditingAnimationEnterEnd()V

    .line 1299
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1305
    .end local v0           #cell:Lcom/miui/home/launcher/CellScreen;
    :cond_1
    return-void
.end method

.method onEditModeExitComplate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1308
    iput-boolean v3, p0, Lcom/miui/home/launcher/Workspace;->mEditingModeAnimating:Z

    .line 1309
    iget v2, p0, Lcom/miui/home/launcher/Workspace;->mOldTransitionType:I

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->setScreenTransitionType(I)V

    .line 1310
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1311
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    .line 1312
    .local v0, cell:Lcom/miui/home/launcher/CellScreen;
    if-eqz v0, :cond_0

    .line 1313
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/CellScreen;->onEditingAnimationExitEnd(Z)V

    .line 1310
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 1313
    goto :goto_1

    .line 1316
    .end local v0           #cell:Lcom/miui/home/launcher/CellScreen;
    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const v3, 0x7f030008

    const/4 v2, 0x0

    .line 448
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mFadeIn:Landroid/view/animation/Animation;

    .line 449
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040011

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mFadeOut:Landroid/view/animation/Animation;

    .line 450
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04001b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mSlideBarEditingEnter:Landroid/view/animation/Animation;

    .line 451
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04001c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mSlideBarEditingExit:Landroid/view/animation/Animation;

    .line 452
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->loadScreens(Z)V

    .line 453
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mEditingNewScreenLeft:Lcom/miui/home/launcher/CellScreen;

    .line 454
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mEditingNewScreenLeft:Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->setEditingNewScreenMode()V

    .line 455
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellScreen;

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mEditingNewScreenRight:Lcom/miui/home/launcher/CellScreen;

    .line 456
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mEditingNewScreenRight:Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->setEditingNewScreenMode()V

    .line 457
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v5, 0x0

    .line 544
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    :cond_0
    :goto_0
    return v5

    .line 553
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 555
    .local v7, action:I
    and-int/lit16 v0, v7, 0xff

    packed-switch v0, :pswitch_data_0

    .line 576
    :cond_2
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_0

    .line 558
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v0

    if-nez v0, :cond_2

    .line 559
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v8

    .line 560
    .local v8, currentScreen:Lcom/miui/home/launcher/CellLayout;
    invoke-virtual {v8}, Lcom/miui/home/launcher/CellLayout;->lastDownOnOccupiedCell()Z

    move-result v0

    if-nez v0, :cond_2

    .line 561
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getLocationOnScreen([I)V

    .line 563
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.wallpaper.tap"

    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    aget v3, v3, v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/miui/home/launcher/Workspace;->mTempCell:[I

    const/4 v6, 0x1

    aget v4, v4, v6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v4, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    goto :goto_1

    .line 555
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 461
    iget-boolean v1, p0, Lcom/miui/home/launcher/Workspace;->mFirstLayout:Z

    if-eqz v1, :cond_0

    .line 462
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 463
    .local v0, width:I
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Workspace;->updateWallpaperOffset(I)V

    .line 465
    .end local v0           #width:I
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->onMeasure(II)V

    .line 466
    return-void
.end method

.method protected onPinchIn(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .parameter "detector"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 582
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->finishCurrentGesture()V

    .line 583
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    .line 585
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->onPinchIn(Landroid/view/ScaleGestureDetector;)V

    .line 586
    return-void
.end method

.method protected onPinchOut(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .parameter "detector"

    .prologue
    .line 590
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getEditingState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 591
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->finishCurrentGesture()V

    .line 592
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    .line 594
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->onPinchOut(Landroid/view/ScaleGestureDetector;)V

    .line 595
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 5
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v2, 0x0

    .line 470
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 490
    :goto_0
    return v2

    .line 478
    :cond_0
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getCurrentOpenedFolder()Landroid/view/View;

    move-result-object v1

    .line 479
    .local v1, openFolder:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 480
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    goto :goto_0

    .line 483
    :cond_1
    iget v3, p0, Lcom/miui/home/launcher/Workspace;->mNextScreen:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 484
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mNextScreen:I

    .line 488
    .local v0, focusableScreen:I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    goto :goto_0

    .line 486
    .end local v0           #focusableScreen:I
    :cond_2
    iget v0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    .restart local v0       #focusableScreen:I
    goto :goto_1
.end method

.method public onSecondaryPointerDown(Landroid/view/MotionEvent;I)V
    .locals 1
    .parameter "ev"
    .parameter "pointerId"

    .prologue
    .line 599
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->onSecondaryPointerDown(Landroid/view/MotionEvent;I)V

    .line 602
    :cond_0
    return-void
.end method

.method public onSecondaryPointerMove(Landroid/view/MotionEvent;I)V
    .locals 1
    .parameter "ev"
    .parameter "pointerId"

    .prologue
    .line 611
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->onSecondaryPointerMove(Landroid/view/MotionEvent;I)V

    .line 614
    :cond_0
    return-void
.end method

.method public onSecondaryPointerUp(Landroid/view/MotionEvent;I)V
    .locals 1
    .parameter "ev"
    .parameter "pointerId"

    .prologue
    .line 605
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 606
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->onSecondaryPointerUp(Landroid/view/MotionEvent;I)V

    .line 608
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12
    .parameter

    .prologue
    const-wide/16 v10, 0x258

    const/4 v2, 0x0

    const-wide/16 v8, -0x1

    const/4 v7, -0x1

    .line 1757
    sget-boolean v0, Lcom/miui/home/launcher/Workspace;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1758
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    .line 1759
    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mShakeCounter:I

    if-ne v1, v7, :cond_1

    .line 1760
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mLastShakeX:F

    .line 1761
    iput v2, p0, Lcom/miui/home/launcher/Workspace;->mShakeCounter:I

    .line 1788
    :goto_0
    return-void

    .line 1764
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1765
    iget-wide v3, p0, Lcom/miui/home/launcher/Workspace;->mLastShakeTime:J

    sub-long v3, v1, v3

    .line 1766
    iget v5, p0, Lcom/miui/home/launcher/Workspace;->mLastShakeX:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x40a0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    .line 1767
    iget-wide v5, p0, Lcom/miui/home/launcher/Workspace;->mLastShakeTime:J

    cmp-long v5, v5, v8

    if-nez v5, :cond_3

    .line 1768
    iget v3, p0, Lcom/miui/home/launcher/Workspace;->mShakeCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/home/launcher/Workspace;->mShakeCounter:I

    .line 1769
    iput-wide v1, p0, Lcom/miui/home/launcher/Workspace;->mLastShakeTime:J

    .line 1787
    :cond_2
    :goto_1
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mLastShakeX:F

    goto :goto_0

    .line 1770
    :cond_3
    const-wide/16 v5, 0x12c

    cmp-long v5, v3, v5

    if-lez v5, :cond_4

    cmp-long v5, v3, v10

    if-gez v5, :cond_4

    .line 1772
    iget v3, p0, Lcom/miui/home/launcher/Workspace;->mShakeCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/home/launcher/Workspace;->mShakeCounter:I

    .line 1773
    iput-wide v1, p0, Lcom/miui/home/launcher/Workspace;->mLastShakeTime:J

    .line 1774
    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mShakeCounter:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 1775
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->alignIconsToTop()V

    .line 1776
    iput v7, p0, Lcom/miui/home/launcher/Workspace;->mShakeCounter:I

    .line 1777
    iput-wide v8, p0, Lcom/miui/home/launcher/Workspace;->mLastShakeTime:J

    goto :goto_1

    .line 1779
    :cond_4
    const-wide/16 v1, 0x384

    cmp-long v1, v3, v1

    if-lez v1, :cond_2

    .line 1780
    iput v7, p0, Lcom/miui/home/launcher/Workspace;->mShakeCounter:I

    .line 1781
    iput-wide v8, p0, Lcom/miui/home/launcher/Workspace;->mLastShakeTime:J

    goto :goto_1

    .line 1783
    :cond_5
    cmp-long v1, v3, v10

    if-lez v1, :cond_2

    .line 1784
    iput v7, p0, Lcom/miui/home/launcher/Workspace;->mShakeCounter:I

    .line 1785
    iput-wide v8, p0, Lcom/miui/home/launcher/Workspace;->mLastShakeTime:J

    goto :goto_1
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1464
    const-string v1, "pref_key_transformation_type"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1466
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1467
    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mOldTransitionType:I

    .line 1471
    :goto_0
    return-void

    .line 1469
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setScreenTransitionType(I)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 1295
    return-void
.end method

.method removeItems(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/AllAppsList$RemoveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 979
    .local p1, packages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/AllAppsList$RemoveInfo;>;"
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    .line 980
    .local v0, count:I
    iget-object v5, p0, Lcom/miui/home/launcher/Workspace;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 981
    .local v3, manager:Landroid/content/pm/PackageManager;
    iget-object v5, p0, Lcom/miui/home/launcher/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    .line 983
    .local v4, widgets:Landroid/appwidget/AppWidgetManager;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 984
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    .line 987
    .local v2, layout:Lcom/miui/home/launcher/CellLayout;
    new-instance v5, Lcom/miui/home/launcher/Workspace$3;

    invoke-direct {v5, p0, v2, p1, v4}, Lcom/miui/home/launcher/Workspace$3;-><init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/CellLayout;Ljava/util/ArrayList;Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 983
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1046
    .end local v2           #layout:Lcom/miui/home/launcher/CellLayout;
    :cond_0
    return-void
.end method

.method reorderScreens()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1196
    const-string v0, "Launcher.Workspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Screens before reorder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1199
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mPositionMapping:[I

    if-nez v0, :cond_0

    .line 1200
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mPositionMapping:[I

    move v0, v1

    .line 1201
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1202
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mPositionMapping:[I

    aput v0, v3, v0

    .line 1201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1206
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    .line 1207
    :goto_1
    if-ge v0, v2, :cond_1

    .line 1208
    iget-object v4, p0, Lcom/miui/home/launcher/Workspace;->mScreenIds:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/miui/home/launcher/Workspace;->mPositionMapping:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1207
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1210
    :cond_1
    iput-object v6, p0, Lcom/miui/home/launcher/Workspace;->mPositionMapping:[I

    .line 1212
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1214
    const-string v2, "screenOrder"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1215
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/miui/home/launcher/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 1216
    const-string v0, "Launcher.Workspace"

    const-string v1, "Failed to update screens table for reorder, aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :goto_2
    return-void

    .line 1220
    :cond_2
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->loadScreens(Z)V

    .line 1222
    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screens after reorder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setCurrentScreenById(J)V
    .locals 2
    .parameter "screenId"

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setCurrentScreen(I)V

    .line 238
    return-void
.end method

.method protected setCurrentScreenInner(I)V
    .locals 10
    .parameter "screenIndex"

    .prologue
    .line 209
    iget v8, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    if-eq p1, v8, :cond_4

    iget-object v8, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v8, :cond_4

    .line 210
    iget-object v8, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v8, v8, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    if-eqz v8, :cond_4

    .line 213
    iget v8, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v9

    if-ge v8, v9, :cond_1

    iget v8, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v8}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v0

    .line 214
    .local v0, currentId:J
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v6

    .line 216
    .local v6, nextId:J
    iget-object v8, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v3, v8, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    .line 217
    .local v3, gadgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/gadget/Gadget;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, i:I
    :goto_1
    if-ltz v4, :cond_2

    .line 218
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/gadget/Gadget;

    .local v2, gadget:Lcom/miui/home/launcher/gadget/Gadget;
    move-object v8, v2

    .line 219
    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 220
    .local v5, info:Lcom/miui/home/launcher/gadget/GadgetInfo;
    iget-wide v8, v5, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    cmp-long v8, v8, v0

    if-nez v8, :cond_0

    .line 221
    invoke-interface {v2}, Lcom/miui/home/launcher/gadget/Gadget;->onPause()V

    .line 217
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 213
    .end local v0           #currentId:J
    .end local v2           #gadget:Lcom/miui/home/launcher/gadget/Gadget;
    .end local v3           #gadgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/gadget/Gadget;>;"
    .end local v4           #i:I
    .end local v5           #info:Lcom/miui/home/launcher/gadget/GadgetInfo;
    .end local v6           #nextId:J
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 224
    .restart local v0       #currentId:J
    .restart local v3       #gadgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/gadget/Gadget;>;"
    .restart local v4       #i:I
    .restart local v6       #nextId:J
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    :goto_2
    if-ltz v4, :cond_4

    .line 225
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/gadget/Gadget;

    .restart local v2       #gadget:Lcom/miui/home/launcher/gadget/Gadget;
    move-object v8, v2

    .line 226
    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 227
    .restart local v5       #info:Lcom/miui/home/launcher/gadget/GadgetInfo;
    iget-wide v8, v5, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    cmp-long v8, v8, v6

    if-nez v8, :cond_3

    .line 228
    invoke-interface {v2}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    .line 224
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 233
    .end local v0           #currentId:J
    .end local v2           #gadget:Lcom/miui/home/launcher/gadget/Gadget;
    .end local v3           #gadgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/home/launcher/gadget/Gadget;>;"
    .end local v4           #i:I
    .end local v5           #info:Lcom/miui/home/launcher/gadget/GadgetInfo;
    .end local v6           #nextId:J
    :cond_4
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->setCurrentScreenInner(I)V

    .line 234
    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0
    .parameter "dragController"

    .prologue
    .line 912
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    .line 913
    return-void
.end method

.method public setEditMode(IZ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1343
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v0

    .line 1344
    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mInEditingMode:I

    .line 1345
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v5

    .line 1346
    if-nez v0, :cond_3

    if-eqz v5, :cond_3

    move v4, v1

    .line 1347
    :goto_0
    if-eqz v0, :cond_4

    if-eqz v5, :cond_4

    move v3, v1

    .line 1348
    :goto_1
    if-nez p2, :cond_5

    if-nez v3, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mEditingModeAnimating:Z

    .line 1349
    if-nez p2, :cond_1

    .line 1350
    invoke-direct {p0, v5, v4}, Lcom/miui/home/launcher/Workspace;->setupEditingScreen(ZZ)V

    .line 1351
    if-nez v3, :cond_1

    .line 1352
    if-nez v5, :cond_6

    :goto_3
    iput-boolean v1, p0, Lcom/miui/home/launcher/Workspace;->mSkipDrawingChild:Z

    .line 1353
    iget-boolean v0, p0, Lcom/miui/home/launcher/Workspace;->mShowEditingIndicator:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz v0, :cond_8

    .line 1354
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz v5, :cond_7

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mSlideBarEditingEnter:Landroid/view/animation/Animation;

    :goto_4
    invoke-virtual {v1, v0}, Lmiui/widget/ScreenView$SeekBarIndicator;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1365
    :cond_0
    :goto_5
    if-eqz v4, :cond_d

    .line 1366
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenTransitionType()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/Workspace;->mOldTransitionType:I

    .line 1367
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setOvershootTension(F)V

    .line 1368
    const/16 v0, 0xb4

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setScreenSnapDuration(I)V

    .line 1369
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setScreenTransitionType(I)V

    .line 1370
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->registAccelerometer()V

    .line 1377
    :cond_1
    :goto_6
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    if-ge v2, v0, :cond_10

    .line 1378
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    .line 1379
    if-eqz v1, :cond_2

    .line 1380
    if-eqz p2, :cond_e

    .line 1381
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->isInQuickEditingMode()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/CellScreen;->onQuickEditingModeChanged(Z)V

    .line 1377
    :cond_2
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_3
    move v4, v2

    .line 1346
    goto :goto_0

    :cond_4
    move v3, v2

    .line 1347
    goto :goto_1

    :cond_5
    move v0, v2

    .line 1348
    goto :goto_2

    :cond_6
    move v1, v2

    .line 1352
    goto :goto_3

    .line 1354
    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mSlideBarEditingExit:Landroid/view/animation/Animation;

    goto :goto_4

    .line 1356
    :cond_8
    if-eqz v5, :cond_a

    const/4 v0, 0x4

    :goto_8
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->setIndicatorBarVisibility(I)V

    .line 1357
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    if-eqz v0, :cond_9

    .line 1358
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    if-eqz v5, :cond_b

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mFadeOut:Landroid/view/animation/Animation;

    :goto_9
    invoke-virtual {v1, v0}, Lmiui/widget/ScreenView$SlideBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1360
    :cond_9
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz v0, :cond_0

    .line 1361
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz v5, :cond_c

    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mFadeOut:Landroid/view/animation/Animation;

    :goto_a
    invoke-virtual {v1, v0}, Lmiui/widget/ScreenView$SeekBarIndicator;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_5

    :cond_a
    move v0, v2

    .line 1356
    goto :goto_8

    .line 1358
    :cond_b
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mFadeIn:Landroid/view/animation/Animation;

    goto :goto_9

    .line 1361
    :cond_c
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mFadeIn:Landroid/view/animation/Animation;

    goto :goto_a

    .line 1372
    :cond_d
    invoke-direct {p0}, Lcom/miui/home/launcher/Workspace;->unRegistAccelerometer()V

    goto :goto_6

    .line 1383
    :cond_e
    if-nez v3, :cond_f

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    sub-int v0, v2, v0

    :goto_b
    invoke-virtual {v1, v5, v0}, Lcom/miui/home/launcher/CellScreen;->setEditMode(ZI)V

    goto :goto_7

    :cond_f
    const/high16 v0, -0x8000

    goto :goto_b

    .line 1388
    :cond_10
    return-void
.end method

.method setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 908
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 909
    return-void
.end method

.method setThumbnailView(Lcom/miui/home/launcher/WorkspaceThumbnailView;)V
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x4000

    .line 1256
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1258
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    .line 1259
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->setThumbnailMeasureSpec(II)V

    .line 1262
    new-instance v0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;-><init>(Lcom/miui/home/launcher/Workspace;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Workspace;->mThumbnailViewAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    .line 1263
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mThumbnailViewAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->setAdapter(Lcom/miui/home/launcher/ThumbnailViewAdapter;)V

    .line 1264
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace;->mThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->setAnimationDuration(I)V

    .line 1265
    return-void
.end method

.method public showPreview(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 1268
    new-instance v0, Lcom/miui/home/launcher/Workspace$4;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/Workspace$4;-><init>(Lcom/miui/home/launcher/Workspace;Z)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1274
    return-void
.end method

.method protected snapToScreen(IIZ)V
    .locals 3
    .parameter "whichScreen"
    .parameter "velocity"
    .parameter "settle"

    .prologue
    .line 646
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 648
    iput p1, p0, Lcom/miui/home/launcher/Workspace;->mNextScreen:I

    .line 650
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 651
    .local v0, focusedChild:Landroid/view/View;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 653
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 656
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/DragableScreenView;->snapToScreen(IIZ)V

    .line 657
    return-void
.end method

.method startDrag(Lcom/miui/home/launcher/CellLayout$CellInfo;)V
    .locals 5
    .parameter "cellInfo"

    .prologue
    .line 660
    iget-object v0, p1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 663
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 678
    :goto_0
    return-void

    .line 667
    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    .line 669
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 670
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 672
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    .line 673
    .local v1, current:Lcom/miui/home/launcher/CellLayout;
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mDragInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    .line 674
    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/CellLayout;->onDragChild(Landroid/view/View;)V

    .line 675
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getTouchTranslator()Lcom/miui/home/launcher/DragController$TouchTranslator;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/DragController;->setTouchTranslator(Lcom/miui/home/launcher/DragController$TouchTranslator;)V

    .line 676
    iget-object v3, p0, Lcom/miui/home/launcher/Workspace;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ItemInfo;

    sget v4, Lcom/miui/home/launcher/DragController;->DRAG_ACTION_MOVE:I

    invoke-virtual {v3, v0, p0, v2, v4}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/view/View;Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/ItemInfo;I)V

    .line 677
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->invalidate()V

    goto :goto_0
.end method

.method public updateWallpaperOffsetDuringSwitchingPreview()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x3f80

    const/4 v5, 0x0

    .line 342
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .line 343
    .local v3, token:Landroid/os/IBinder;
    iget v6, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v6}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 344
    .local v0, currentAnimation:Landroid/view/animation/Animation;
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 351
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-float v6, v6

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v7

    long-to-float v7, v7

    div-float v1, v6, v7

    .line 353
    .local v1, percentage:F
    invoke-static {v1, v10}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 356
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v6

    if-ne v6, v11, :cond_1

    move v4, v5

    .line 359
    .local v4, xStep:F
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v6

    if-ne v6, v11, :cond_2

    move v2, v5

    .line 361
    .local v2, scrollX:F
    :goto_1
    iget-object v6, p0, Lcom/miui/home/launcher/Workspace;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2, v10}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-virtual {v6, v4, v5, v7, v5}, Lcom/miui/home/launcher/Launcher;->updateWallpaperOffset(FFFF)V

    .line 363
    .end local v1           #percentage:F
    .end local v2           #scrollX:F
    .end local v4           #xStep:F
    :cond_0
    return-void

    .line 356
    .restart local v1       #percentage:F
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    div-float v4, v10, v6

    goto :goto_0

    .line 359
    .restart local v4       #xStep:F
    :cond_2
    iget v6, p0, Lcom/miui/home/launcher/Workspace;->mPreviousScreen:I

    int-to-float v6, v6

    sub-float v7, v10, v1

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/miui/home/launcher/Workspace;->mCurrentScreen:I

    int-to-float v7, v7

    mul-float/2addr v7, v1

    add-float/2addr v6, v7

    mul-float v2, v4, v6

    goto :goto_1
.end method
