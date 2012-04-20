.class public Lcom/miui/home/launcher/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"

# interfaces
.implements Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/CellLayout$1;,
        Lcom/miui/home/launcher/CellLayout$CellInfo;,
        Lcom/miui/home/launcher/CellLayout$LayoutParams;,
        Lcom/miui/home/launcher/CellLayout$StayConfirm;,
        Lcom/miui/home/launcher/CellLayout$DragPos;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCellBackground:Landroid/widget/ImageView;

.field private final mCellHeight:I

.field private final mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

.field private final mCellWidth:I

.field mCellXY:[I

.field private mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

.field private mDisableTouch:Z

.field private mEmptyCellNumber:I

.field private mHCells:I

.field private mHeightGap:I

.field private mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

.field private mLastDownOnOccupiedCell:Z

.field mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLayoutBackupValid:Z

.field private mMyCachePaint:Landroid/graphics/Paint;

.field private mOccupiedCell:[[Landroid/view/View;

.field private mOccupiedCellBak:[[Landroid/view/View;

.field private mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

.field private final mPaddingLeft:I

.field private final mPaddingRight:I

.field private final mPaddingTop:I

.field private final mRect:Landroid/graphics/Rect;

.field private mRectTmp:Landroid/graphics/Rect;

.field private mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

.field private mStayConfirmSize:I

.field private mTmpCellLR:[I

.field mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

.field private mTotalCells:I

.field private mVCells:I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private final mWidgetCellHeight:I

.field private final mWidgetCellMeasureHeight:I

.field private final mWidgetCellMeasureWidth:I

.field private final mWidgetCellPaddingBottom:I

.field private final mWidgetCellPaddingTop:I

.field private final mWidgetCellWidth:I

.field private mWidthGap:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/miui/home/launcher/CellLayout;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 81
    new-instance v1, Lcom/miui/home/launcher/CellLayout$CellInfo;

    invoke-direct {v1}, Lcom/miui/home/launcher/CellLayout$CellInfo;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    .line 83
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    .line 84
    new-instance v1, Lcom/miui/home/launcher/CellLayout$DragPos;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/CellLayout$DragPos;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    .line 85
    new-instance v1, Lcom/miui/home/launcher/CellLayout$DragPos;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/CellLayout$DragPos;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    .line 87
    iput-boolean v3, p0, Lcom/miui/home/launcher/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 92
    iput-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    .line 102
    iput-boolean v3, p0, Lcom/miui/home/launcher/CellLayout;->mDisableTouch:Z

    .line 104
    iput-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mMyCachePaint:Landroid/graphics/Paint;

    .line 714
    new-instance v1, Lcom/miui/home/launcher/CellLayout$StayConfirm;

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/CellLayout$StayConfirm;-><init>(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/CellLayout$1;)V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    .line 716
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mTmpCellLR:[I

    .line 814
    iput-boolean v3, p0, Lcom/miui/home/launcher/CellLayout;->mLayoutBackupValid:Z

    .line 953
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mRectTmp:Landroid/graphics/Rect;

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 120
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0c0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    .line 121
    const v1, 0x7f0c0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    .line 122
    const v1, 0x7f0c0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellWidth:I

    .line 123
    const v1, 0x7f0c0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellHeight:I

    .line 124
    const v1, 0x7f0c000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellMeasureWidth:I

    .line 125
    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellMeasureHeight:I

    .line 126
    const v1, 0x7f0c000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellPaddingTop:I

    .line 127
    const v1, 0x7f0c000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellPaddingBottom:I

    .line 128
    const v1, 0x7f0c000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mPaddingTop:I

    .line 129
    const v1, 0x7f0c000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mPaddingLeft:I

    .line 130
    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mPaddingLeft:I

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mPaddingRight:I

    .line 132
    iput v5, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    .line 133
    iput v5, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    .line 134
    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    .line 136
    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    int-to-float v1, v1

    const v2, 0x3dcccccd

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirmSize:I

    .line 138
    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-class v2, Landroid/view/View;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Landroid/view/View;

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    .line 139
    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-class v2, Landroid/view/View;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Landroid/view/View;

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    .line 140
    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellNumber:I

    .line 142
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mWallpaperManager:Landroid/app/WallpaperManager;

    move-object v1, p1

    .line 144
    check-cast v1, Lcom/miui/home/launcher/Launcher;

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 145
    new-instance v1, Lcom/miui/home/launcher/OnLongClickAgent;

    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {v1, p0, v2, p0}, Lcom/miui/home/launcher/OnLongClickAgent;-><init>(Landroid/view/ViewGroup;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;)V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    .line 147
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Landroid/widget/ImageView;

    .line 148
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Landroid/widget/ImageView;

    new-instance v2, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-direct {v2, v3, v3, v3, v3}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

    .line 151
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/CellLayout;)[[Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/CellLayout;)Lcom/miui/home/launcher/DropTarget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/DropTarget;)Lcom/miui/home/launcher/DropTarget;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/CellLayout;)[[Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/CellLayout;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->rollbackLayout()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/CellLayout;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/CellLayout;->makeEmptyCellAt(IIII)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/CellLayout;III)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/CellLayout;->cellToGapIndex(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/CellLayout;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout;->makeEmptyCellAt(I)V

    return-void
.end method

.method private backupLayout()V
    .locals 2

    .prologue
    .line 817
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    .line 818
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mLayoutBackupValid:Z

    .line 819
    return-void
.end method

.method private cellToGapIndex(III)I
    .locals 2
    .parameter "cellX"
    .parameter "cellY"
    .parameter "stayType"

    .prologue
    .line 1024
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, p2

    add-int v1, v0, p1

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z
    .locals 5
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 822
    const/4 v0, 0x0

    .line 824
    .local v0, modified:Z
    const/4 v2, 0x0

    .local v2, y:I
    :goto_0
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v2, v3, :cond_2

    .line 825
    const/4 v1, 0x0

    .local v1, x:I
    :goto_1
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v1, v3, :cond_1

    .line 826
    aget-object v3, p2, v1

    aget-object v3, v3, v2

    aget-object v4, p1, v1

    aget-object v4, v4, v2

    if-eq v3, v4, :cond_0

    .line 827
    aget-object v3, p2, v1

    aget-object v4, p1, v1

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    .line 828
    const/4 v0, 0x1

    .line 825
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 824
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 832
    .end local v1           #x:I
    :cond_2
    return v0
.end method

.method private gapToCellIndexes(I[I)V
    .locals 5
    .parameter "gap"
    .parameter "cellLR"

    .prologue
    const/4 v3, -0x1

    .line 1028
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    add-int/lit8 v2, v2, 0x1

    rem-int v1, p1, v2

    .line 1029
    .local v1, gapV:I
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    add-int/lit8 v2, v2, 0x1

    div-int v0, p1, v2

    .line 1030
    .local v0, gapH:I
    const/4 v4, 0x0

    if-nez v1, :cond_0

    move v2, v3

    :goto_0
    aput v2, p2, v4

    .line 1031
    const/4 v2, 0x1

    iget v4, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ne v1, v4, :cond_1

    :goto_1
    aput v3, p2, v2

    .line 1032
    return-void

    .line 1030
    :cond_0
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1031
    :cond_1
    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    mul-int/2addr v3, v0

    add-int/2addr v3, v1

    goto :goto_1
.end method

.method private makeEmptyCellAt(I)V
    .locals 14
    .parameter "gap"

    .prologue
    const/4 v9, -0x1

    const/4 v13, 0x0

    const/4 v10, 0x1

    .line 718
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mTmpCellLR:[I

    .line 719
    .local v1, cellLR:[I
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    .line 720
    .local v2, cellXY:[I
    invoke-direct {p0, p1, v1}, Lcom/miui/home/launcher/CellLayout;->gapToCellIndexes(I[I)V

    .line 721
    aget v4, v1, v10

    .line 722
    .local v4, forward:I
    aget v0, v1, v13

    .line 723
    .local v0, backward:I
    :goto_0
    if-eq v4, v9, :cond_0

    iget v11, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    if-ge v4, v11, :cond_0

    .line 724
    invoke-direct {p0, v4, v2}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCell(I[I)V

    .line 725
    iget-object v11, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget v12, v2, v13

    aget-object v11, v11, v12

    aget v12, v2, v10

    aget-object v11, v11, v12

    if-nez v11, :cond_9

    .line 728
    :cond_0
    iget v11, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    if-ne v4, v11, :cond_1

    move v4, v9

    .line 729
    :cond_1
    :goto_1
    if-eq v0, v9, :cond_2

    if-ltz v0, :cond_2

    .line 730
    invoke-direct {p0, v0, v2}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCell(I[I)V

    .line 731
    iget-object v11, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget v12, v2, v13

    aget-object v11, v11, v12

    aget v12, v2, v10

    aget-object v11, v11, v12

    if-nez v11, :cond_a

    .line 734
    :cond_2
    if-gez v0, :cond_3

    move v0, v9

    .line 736
    :cond_3
    if-eq v4, v9, :cond_e

    if-eq v0, v9, :cond_e

    .line 737
    sub-int v11, v4, v0

    const/4 v12, 0x2

    if-ne v11, v12, :cond_c

    .line 738
    aget v11, v1, v10

    if-eq v4, v11, :cond_b

    aget v7, v1, v10

    .line 752
    .local v7, startPos:I
    :goto_2
    const/4 v6, 0x0

    .line 753
    .local v6, previous:Landroid/view/View;
    aget v11, v1, v13

    if-ne v7, v11, :cond_10

    move v3, v9

    .line 754
    .local v3, delta:I
    :cond_4
    :goto_3
    iget v9, p0, Lcom/miui/home/launcher/CellLayout;->mTotalCells:I

    if-ge v7, v9, :cond_7

    .line 755
    invoke-direct {p0, v7, v2}, Lcom/miui/home/launcher/CellLayout;->positionIndexToCell(I[I)V

    .line 756
    add-int/2addr v7, v3

    .line 757
    iget-object v9, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget v11, v2, v13

    aget-object v9, v9, v11

    aget v11, v2, v10

    aget-object v8, v9, v11

    .line 759
    .local v8, v:Landroid/view/View;
    if-eqz v8, :cond_5

    .line 760
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 761
    .local v5, lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    iget v9, v5, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v9, v10, :cond_4

    iget v9, v5, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellVSpan:I

    if-ne v9, v10, :cond_4

    .line 765
    .end local v5           #lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    :cond_5
    iget-object v9, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget v11, v2, v13

    aget-object v9, v9, v11

    aget v11, v2, v10

    aput-object v6, v9, v11

    .line 766
    if-eqz v6, :cond_6

    .line 767
    iget-object v9, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget v11, v2, v13

    aget-object v9, v9, v11

    aget v11, v2, v10

    aput-object v6, v9, v11

    .line 768
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 769
    .restart local v5       #lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    aget v9, v2, v13

    iput v9, v5, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    .line 770
    aget v9, v2, v10

    iput v9, v5, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    .line 772
    .end local v5           #lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    :cond_6
    if-nez v8, :cond_11

    .line 777
    .end local v8           #v:Landroid/view/View;
    :cond_7
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    .line 778
    .end local v3           #delta:I
    .end local v6           #previous:Landroid/view/View;
    .end local v7           #startPos:I
    :cond_8
    return-void

    .line 726
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 732
    :cond_a
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 738
    :cond_b
    aget v7, v1, v13

    goto :goto_2

    .line 739
    :cond_c
    aget v11, v1, v10

    sub-int v11, v4, v11

    aget v12, v1, v13

    sub-int/2addr v12, v0

    if-gt v11, v12, :cond_d

    .line 740
    aget v7, v1, v10

    .restart local v7       #startPos:I
    goto :goto_2

    .line 742
    .end local v7           #startPos:I
    :cond_d
    aget v7, v1, v13

    .restart local v7       #startPos:I
    goto :goto_2

    .line 744
    .end local v7           #startPos:I
    :cond_e
    if-eq v4, v9, :cond_f

    .line 745
    aget v7, v1, v10

    .restart local v7       #startPos:I
    goto :goto_2

    .line 746
    .end local v7           #startPos:I
    :cond_f
    if-eq v0, v9, :cond_8

    .line 747
    aget v7, v1, v13

    .restart local v7       #startPos:I
    goto :goto_2

    .restart local v6       #previous:Landroid/view/View;
    :cond_10
    move v3, v10

    .line 753
    goto :goto_3

    .line 775
    .restart local v3       #delta:I
    .restart local v8       #v:Landroid/view/View;
    :cond_11
    move-object v6, v8

    .line 776
    goto :goto_3
.end method

.method private makeEmptyCellAt(IIII)V
    .locals 0
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 783
    return-void
.end method

.method private onRemoveViews(II)V
    .locals 7
    .parameter "start"
    .parameter "count"

    .prologue
    .line 1267
    if-gez p1, :cond_2

    .line 1277
    :cond_0
    return-void

    .line 1268
    .end local p2
    .local v1, count:I
    :goto_0
    add-int/lit8 p2, v1, -0x1

    .end local v1           #count:I
    .restart local p2
    if-lez v1, :cond_0

    .line 1269
    add-int v3, p1, p2

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1270
    .local v0, child:Landroid/view/View;
    instance-of v3, v0, Lcom/miui/home/launcher/Folder;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Landroid/widget/ImageView;

    if-eq v0, v3, :cond_1

    .line 1271
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 1272
    .local v2, params:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ItemInfo;

    iget-wide v3, v3, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 1273
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v0, v3}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Lcom/miui/home/launcher/CellLayout$LayoutParams;Landroid/view/View;Z)V

    .end local v2           #params:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    :cond_1
    move v1, p2

    .line 1276
    .end local p2
    .restart local v1       #count:I
    goto :goto_0

    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .restart local p2
    :cond_2
    move v1, p2

    .end local p2
    .restart local v1       #count:I
    goto :goto_0
.end method

.method private positionIndexToCell(I[I)V
    .locals 2
    .parameter "index"
    .parameter "cellXY"

    .prologue
    .line 1019
    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    rem-int v1, p1, v1

    aput v1, p2, v0

    .line 1020
    const/4 v0, 0x1

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    div-int v1, p1, v1

    aput v1, p2, v0

    .line 1021
    return-void
.end method

.method public static rectToCell(Landroid/content/res/Resources;II[I)[I
    .locals 9
    .parameter "resources"
    .parameter "width"
    .parameter "height"
    .parameter "result"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1049
    const v5, 0x7f0c0008

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1050
    .local v1, actualWidth:I
    const v5, 0x7f0c0009

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1051
    .local v0, actualHeight:I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1054
    .local v2, smallerSize:I
    int-to-float v5, p1

    int-to-float v6, v2

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    .line 1055
    .local v3, spanX:I
    int-to-float v5, p2

    int-to-float v6, v2

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v4, v5

    .line 1057
    .local v4, spanY:I
    if-nez p3, :cond_0

    .line 1058
    const/4 v5, 0x2

    new-array p3, v5, [I

    .end local p3
    aput v3, p3, v7

    aput v4, p3, v8

    .line 1062
    :goto_0
    return-object p3

    .line 1060
    .restart local p3
    :cond_0
    aput v3, p3, v7

    .line 1061
    aput v4, p3, v8

    goto :goto_0
.end method

.method private relayoutByOccupiedCells()V
    .locals 9

    .prologue
    .line 794
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    .line 795
    .local v0, accessTag:J
    const/4 v6, 0x0

    .local v6, y:I
    :goto_0
    iget v7, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v6, v7, :cond_2

    .line 796
    const/4 v5, 0x0

    .local v5, x:I
    :goto_1
    iget v7, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v5, v7, :cond_1

    .line 797
    iget-object v7, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v7, v7, v5

    aget-object v4, v7, v6

    .line 798
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 799
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 800
    .local v3, lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    iget-wide v7, v3, Lcom/miui/home/launcher/CellLayout$LayoutParams;->accessTag:J

    cmp-long v7, v7, v0

    if-gez v7, :cond_0

    .line 801
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ItemInfo;

    .line 802
    .local v2, info:Lcom/miui/home/launcher/ItemInfo;
    iput v5, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 803
    iput v6, v2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 804
    iput v5, v3, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    .line 805
    iput v6, v3, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    .line 806
    iput-wide v0, v3, Lcom/miui/home/launcher/CellLayout$LayoutParams;->accessTag:J

    .line 796
    .end local v2           #info:Lcom/miui/home/launcher/ItemInfo;
    .end local v3           #lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 795
    .end local v4           #v:Landroid/view/View;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 811
    .end local v5           #x:I
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    .line 812
    return-void
.end method

.method private rollbackLayout()V
    .locals 2

    .prologue
    .line 786
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mLayoutBackupValid:Z

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->copyOccupiedCells([[Landroid/view/View;[[Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->relayoutByOccupiedCells()V

    .line 791
    :cond_0
    return-void
.end method

.method private saveCurrentLayout()V
    .locals 12

    .prologue
    .line 863
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellNumber:I

    .line 864
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 865
    .local v10, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v7

    .line 866
    .local v7, accessTag:J
    const/4 v6, 0x0

    .local v6, y:I
    :goto_0
    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v6, v1, :cond_2

    .line 867
    const/4 v5, 0x0

    .local v5, x:I
    :goto_1
    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v5, v1, :cond_1

    .line 868
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v1, v1, v5

    aget-object v11, v1, v6

    .line 869
    .local v11, v:Landroid/view/View;
    if-eqz v11, :cond_0

    .line 870
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 871
    .local v9, lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    iget-wide v1, v9, Lcom/miui/home/launcher/CellLayout$LayoutParams;->accessTag:J

    cmp-long v1, v1, v7

    if-gez v1, :cond_0

    .line 872
    iput-wide v7, v9, Lcom/miui/home/launcher/CellLayout$LayoutParams;->accessTag:J

    .line 873
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    aget-object v1, v1, v5

    aget-object v1, v1, v6

    if-eq v11, v1, :cond_0

    .line 874
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 875
    .local v0, info:Lcom/miui/home/launcher/ItemInfo;
    iput v5, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 876
    iput v6, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 877
    const-wide/16 v1, -0x64

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v3

    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/LauncherModel;->getMoveItemOperation(Lcom/miui/home/launcher/ItemInfo;JJII)Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    .end local v0           #info:Lcom/miui/home/launcher/ItemInfo;
    .end local v9           #lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    :cond_0
    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellNumber:I

    .line 867
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 866
    .end local v11           #v:Landroid/view/View;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 888
    .end local v5           #x:I
    :cond_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 889
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mContext:Landroid/content/Context;

    const-string v2, "com.miui.home.launcher.settings"

    invoke-static {v1, v2, v10}, Lcom/miui/home/launcher/LauncherModel;->applyBatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 891
    :cond_3
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    const/4 v2, 0x1

    .line 199
    move-object v0, p3

    check-cast v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 200
    .local v0, cellParams:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    iput-boolean v2, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->regenerateId:Z

    .line 202
    instance-of v1, p1, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 203
    check-cast v1, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ItemIcon;->setEnableTranslateAnimation(Z)V

    .line 206
    :cond_0
    instance-of v1, p1, Lcom/miui/home/launcher/Folder;

    if-nez v1, :cond_1

    .line 207
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Lcom/miui/home/launcher/CellLayout$LayoutParams;Landroid/view/View;Z)V

    .line 210
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 211
    return-void
.end method

.method public alignIconsToTop()V
    .locals 12

    .prologue
    .line 1292
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getEmptyCellNumber()I

    move-result v0

    if-nez v0, :cond_1

    .line 1339
    :cond_0
    :goto_0
    return-void

    .line 1295
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1297
    .local v8, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v6, 0x0

    .local v6, dstV:I
    move v5, v6

    .local v5, dstH:I
    move v10, v6

    .local v10, srcV:I
    move v9, v6

    .line 1298
    .local v9, srcH:I
    const/4 v10, 0x0

    :goto_1
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v10, v0, :cond_8

    .line 1299
    const/4 v9, 0x0

    :goto_2
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v9, v0, :cond_7

    .line 1300
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v0, v0, v9

    aget-object v11, v0, v10

    .line 1301
    .local v11, sv:Landroid/view/View;
    instance-of v0, v11, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v0, :cond_6

    .line 1303
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v0, v0, v5

    aget-object v0, v0, v6

    instance-of v0, v0, Lcom/miui/home/launcher/ItemIcon;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v0, v0, v5

    aget-object v0, v0, v6

    if-eqz v0, :cond_3

    .line 1304
    add-int/lit8 v5, v5, 0x1

    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-lt v5, v0, :cond_2

    .line 1305
    const/4 v5, 0x0

    .line 1306
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1309
    :cond_3
    if-ne v9, v5, :cond_4

    if-eq v10, v6, :cond_5

    .line 1310
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v0, v0, v5

    aput-object v11, v0, v6

    .line 1311
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v0, v0, v9

    const/4 v1, 0x0

    aput-object v1, v0, v10

    .line 1312
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 1313
    .local v7, lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    iput v5, v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    .line 1314
    iput v6, v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    .line 1315
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    const-wide/16 v1, -0x64

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v3

    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/LauncherModel;->getMoveItemOperation(Lcom/miui/home/launcher/ItemInfo;JJII)Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1321
    .end local v7           #lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-lt v5, v0, :cond_6

    .line 1322
    const/4 v5, 0x0

    .line 1323
    add-int/lit8 v6, v6, 0x1

    .line 1299
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1298
    .end local v11           #sv:Landroid/view/View;
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1328
    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1329
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->performHapticFeedback(II)Z

    .line 1332
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.miui.home.launcher.settings"

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1337
    :goto_4
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    goto/16 :goto_0

    .line 1335
    :catch_0
    move-exception v0

    goto :goto_4

    .line 1334
    :catch_1
    move-exception v0

    goto :goto_4

    .line 1333
    :catch_2
    move-exception v0

    goto :goto_4
.end method

.method public buildDrawingCache(Z)V
    .locals 0
    .parameter "autoScale"

    .prologue
    .line 1348
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->buildDrawingCache(Z)V

    .line 1349
    return-void
.end method

.method public cancelLongPress()V
    .locals 4

    .prologue
    .line 156
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {v3}, Lcom/miui/home/launcher/OnLongClickAgent;->cancelCustomziedLongPress()V

    .line 159
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v1

    .line 160
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 161
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 162
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method cellToPoint(II[I)V
    .locals 4
    .parameter "cellX"
    .parameter "cellY"
    .parameter "result"

    .prologue
    .line 361
    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mPaddingLeft:I

    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mWidthGap:I

    add-int/2addr v2, v3

    mul-int/2addr v2, p1

    add-int/2addr v1, v2

    aput v1, p3, v0

    .line 362
    const/4 v0, 0x1

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mPaddingTop:I

    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mHeightGap:I

    add-int/2addr v2, v3

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    aput v1, p3, v0

    .line 363
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 1106
    instance-of v0, p1, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    return v0
.end method

.method clearBackupLayout()V
    .locals 4

    .prologue
    .line 895
    const/4 v1, 0x0

    .local v1, y:I
    :goto_0
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v1, v2, :cond_1

    .line 896
    const/4 v0, 0x0

    .local v0, x:I
    :goto_1
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v0, v2, :cond_0

    .line 897
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 896
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 895
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 900
    .end local v0           #x:I
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/home/launcher/CellLayout;->mLayoutBackupValid:Z

    .line 901
    return-void
.end method

.method clearCellBackground()V
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 652
    return-void
.end method

.method public destroyDrawingCache()V
    .locals 0

    .prologue
    .line 1343
    invoke-super {p0}, Landroid/view/ViewGroup;->destroyDrawingCache()V

    .line 1344
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 193
    return-void
.end method

.method findNearestVacantArea(IIIIZ)[I
    .locals 17
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreOccupied"

    .prologue
    .line 522
    if-nez p5, :cond_1

    mul-int v11, p3, p4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellNumber:I

    if-le v11, v12, :cond_1

    const/4 v5, 0x0

    .line 557
    :cond_0
    :goto_0
    return-object v5

    .line 525
    :cond_1
    const/4 v11, 0x2

    new-array v5, v11, [I

    .line 526
    .local v5, bestXY:[I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    .line 527
    .local v6, cellXY:[I
    const-wide v3, 0x7fefffffffffffffL

    .line 532
    .local v3, bestDistance:D
    move-object/from16 v0, p0

    iget v11, v0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    sub-int v9, v11, p3

    .local v9, x:I
    :goto_1
    if-ltz v9, :cond_6

    .line 533
    move-object/from16 v0, p0

    iget v11, v0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    sub-int v10, v11, p4

    .local v10, y:I
    :goto_2
    if-ltz v10, :cond_5

    .line 535
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10, v6}, Lcom/miui/home/launcher/CellLayout;->cellToPoint(II[I)V

    .line 536
    const/4 v11, 0x0

    aget v11, v6, v11

    sub-int v11, v11, p1

    int-to-double v11, v11

    const-wide/high16 v13, 0x4000

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    const/4 v13, 0x1

    aget v13, v6, v13

    sub-int v13, v13, p2

    int-to-double v13, v13

    const-wide/high16 v15, 0x4000

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    add-double v7, v11, v13

    .line 537
    .local v7, distance:D
    cmpl-double v11, v7, v3

    if-ltz v11, :cond_3

    .line 533
    :cond_2
    :goto_3
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 542
    :cond_3
    if-nez p5, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v9, v10, v1, v2}, Lcom/miui/home/launcher/CellLayout;->isCellOccupied(IIII)Z

    move-result v11

    if-nez v11, :cond_2

    .line 547
    :cond_4
    move-wide v3, v7

    .line 548
    const/4 v11, 0x0

    aput v9, v5, v11

    .line 549
    const/4 v11, 0x1

    aput v10, v5, v11

    goto :goto_3

    .line 532
    .end local v7           #distance:D
    :cond_5
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 554
    .end local v10           #y:I
    :cond_6
    const-wide v11, 0x7fefffffffffffffL

    cmpg-double v11, v3, v11

    if-ltz v11, :cond_0

    .line 557
    const/4 v5, 0x0

    goto :goto_0
.end method

.method findNearestVacantAreaByCellPos(IIIIZ)[I
    .locals 6
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreOccupied"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/CellLayout;->cellToPoint(II[I)V

    .line 506
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    const/4 v2, 0x1

    aget v2, v0, v2

    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout;->findNearestVacantArea(IIIIZ)[I

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 1101
    new-instance v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 1111
    new-instance v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method getCellHeight()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    return v0
.end method

.method getCellWidth()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    return v0
.end method

.method getChildVisualPosByTag(Ljava/lang/Object;[I)Z
    .locals 6
    .parameter "tag"
    .parameter "outPos"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 562
    const/4 v2, 0x0

    .local v2, y:I
    :goto_0
    iget v5, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v2, v5, :cond_2

    .line 563
    const/4 v1, 0x0

    .local v1, x:I
    :goto_1
    iget v5, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v1, v5, :cond_1

    .line 564
    iget-object v5, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v5, v5, v1

    aget-object v0, v5, v2

    .line 565
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 566
    aput v1, p2, v4

    .line 567
    aput v2, p2, v3

    .line 572
    .end local v0           #v:Landroid/view/View;
    .end local v1           #x:I
    :goto_2
    return v3

    .line 563
    .restart local v0       #v:Landroid/view/View;
    .restart local v1       #x:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 562
    .end local v0           #v:Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1           #x:I
    :cond_2
    move v3, v4

    .line 572
    goto :goto_2
.end method

.method public getEmptyCellNumber()I
    .locals 1

    .prologue
    .line 1288
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellNumber:I

    return v0
.end method

.method public getExpandabilityArrayForView(Landroid/view/View;[I)V
    .locals 10
    .parameter "view"
    .parameter "expandability"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 909
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 912
    .local v1, lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    aput v6, p2, v6

    .line 913
    iget v4, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    add-int/lit8 v2, v4, -0x1

    .local v2, x:I
    :goto_0
    if-ltz v2, :cond_2

    .line 914
    const/4 v0, 0x0

    .line 915
    .local v0, flag:Z
    iget v3, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    .local v3, y:I
    :goto_1
    iget v4, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    iget v5, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_1

    .line 916
    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v4, v4, v2

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 915
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 918
    :cond_1
    if-eqz v0, :cond_4

    .line 922
    .end local v0           #flag:Z
    .end local v3           #y:I
    :cond_2
    aput v6, p2, v7

    .line 923
    iget v4, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    add-int/lit8 v3, v4, -0x1

    .restart local v3       #y:I
    :goto_2
    if-ltz v3, :cond_6

    .line 924
    const/4 v0, 0x0

    .line 925
    .restart local v0       #flag:Z
    iget v2, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    :goto_3
    iget v4, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    iget v5, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_5

    .line 926
    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v4, v4, v2

    aget-object v4, v4, v3

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    .line 925
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 919
    :cond_4
    aget v4, p2, v6

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v6

    .line 913
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 928
    :cond_5
    if-eqz v0, :cond_8

    .line 932
    .end local v0           #flag:Z
    :cond_6
    aput v6, p2, v8

    .line 933
    iget v4, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    iget v5, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellHSpan:I

    add-int v2, v4, v5

    :goto_4
    iget v4, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-ge v2, v4, :cond_a

    .line 934
    const/4 v0, 0x0

    .line 935
    .restart local v0       #flag:Z
    iget v3, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    :goto_5
    iget v4, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    iget v5, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_9

    .line 936
    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v4, v4, v2

    aget-object v4, v4, v3

    if-eqz v4, :cond_7

    const/4 v0, 0x1

    .line 935
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 929
    :cond_8
    aget v4, p2, v7

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v7

    .line 923
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 938
    :cond_9
    if-eqz v0, :cond_c

    .line 942
    .end local v0           #flag:Z
    :cond_a
    aput v6, p2, v9

    .line 943
    iget v4, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    iget v5, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellVSpan:I

    add-int v3, v4, v5

    :goto_6
    iget v4, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-ge v3, v4, :cond_e

    .line 944
    const/4 v0, 0x0

    .line 945
    .restart local v0       #flag:Z
    iget v2, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    :goto_7
    iget v4, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    iget v5, v1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_d

    .line 946
    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v4, v4, v2

    aget-object v4, v4, v3

    if-eqz v4, :cond_b

    const/4 v0, 0x1

    .line 945
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 939
    :cond_c
    aget v4, p2, v8

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v8

    .line 933
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 948
    :cond_d
    if-eqz v0, :cond_f

    .line 951
    .end local v0           #flag:Z
    :cond_e
    return-void

    .line 949
    .restart local v0       #flag:Z
    :cond_f
    aget v4, p2, v9

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v9

    .line 943
    add-int/lit8 v3, v3, 0x1

    goto :goto_6
.end method

.method getHeightGap()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mHeightGap:I

    return v0
.end method

.method getScreenId()J
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-wide v0, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    return-wide v0
.end method

.method public getVersionTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getWindowAttachCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method getWidthGap()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mWidthGap:I

    return v0
.end method

.method isCellOccupied(IIII)Z
    .locals 4
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 494
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 495
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-ge v1, p4, :cond_1

    .line 496
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    add-int v3, p1, v0

    aget-object v2, v2, v3

    add-int v3, p2, v1

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    .line 497
    const/4 v2, 0x1

    .line 501
    .end local v1           #j:I
    :goto_2
    return v2

    .line 495
    .restart local v1       #j:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 494
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 501
    .end local v1           #j:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public lastDownOnOccupiedCell()Z
    .locals 1

    .prologue
    .line 1218
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastDownOnOccupiedCell:Z

    return v0
.end method

.method public measureChild(Landroid/view/View;)V
    .locals 14
    .parameter "child"

    .prologue
    const/high16 v13, 0x4000

    const/4 v3, 0x0

    .line 413
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 414
    .local v0, lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    instance-of v4, p1, Landroid/appwidget/AppWidgetHostView;

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Landroid/widget/ImageView;

    if-ne p1, v4, :cond_4

    .line 416
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    div-int v2, v4, v5

    .line 417
    .local v2, widgetCellHeight:I
    iget v4, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellHeight:I

    if-le v2, v4, :cond_2

    .line 418
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    div-int v1, v4, v5

    .line 419
    .local v1, widgetCellWidth:I
    iget v4, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellWidth:I

    if-le v1, v4, :cond_3

    .line 420
    :goto_1
    iget v6, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellPaddingTop:I

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/CellLayout$LayoutParams;->setup(IIIIII)V

    .line 425
    .end local v1           #widgetCellWidth:I
    .end local v2           #widgetCellHeight:I
    :goto_2
    iget-boolean v4, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->regenerateId:Z

    if-eqz v4, :cond_1

    .line 426
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getId()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    iget v5, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    iget v5, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    invoke-virtual {p1, v4}, Landroid/view/View;->setId(I)V

    .line 427
    iput-boolean v3, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->regenerateId:Z

    .line 430
    :cond_1
    iget v3, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->width:I

    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 431
    .local v11, childWidthMeasureSpec:I
    iget v3, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->height:I

    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 433
    .local v12, childheightMeasureSpec:I
    invoke-virtual {p1, v11, v12}, Landroid/view/View;->measure(II)V

    .line 434
    return-void

    .line 417
    .end local v11           #childWidthMeasureSpec:I
    .end local v12           #childheightMeasureSpec:I
    .restart local v2       #widgetCellHeight:I
    :cond_2
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellHeight:I

    goto :goto_0

    .line 419
    .restart local v1       #widgetCellWidth:I
    :cond_3
    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellWidth:I

    goto :goto_1

    .line 422
    .end local v1           #widgetCellWidth:I
    .end local v2           #widgetCellHeight:I
    :cond_4
    iget v5, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    iget v6, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    iget v7, p0, Lcom/miui/home/launcher/CellLayout;->mWidthGap:I

    iget v8, p0, Lcom/miui/home/launcher/CellLayout;->mHeightGap:I

    iget v9, p0, Lcom/miui/home/launcher/CellLayout;->mPaddingLeft:I

    iget v10, p0, Lcom/miui/home/launcher/CellLayout;->mPaddingTop:I

    move-object v4, v0

    invoke-virtual/range {v4 .. v10}, Lcom/miui/home/launcher/CellLayout$LayoutParams;->setup(IIIIII)V

    goto :goto_2
.end method

.method onDragChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    const/4 v1, 0x1

    .line 645
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 646
    .local v0, lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    iput-boolean v1, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->isDragging:Z

    .line 647
    invoke-virtual {p0, v0, p1, v1}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Lcom/miui/home/launcher/CellLayout$LayoutParams;Landroid/view/View;Z)V

    .line 648
    return-void
.end method

.method onDragEnter(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 836
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout$DragPos;->reset()V

    .line 837
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->backupLayout()V

    .line 838
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->outline:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->outline:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 840
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 845
    :goto_0
    return-void

    .line 842
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mDefaultCellBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 843
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

.method onDragExit(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 3
    .parameter "d"

    .prologue
    const/4 v2, 0x0

    .line 848
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 849
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->clearCellBackground()V

    .line 850
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 852
    iget-boolean v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragComplete:Z

    if-nez v0, :cond_0

    .line 853
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->rollbackLayout()V

    .line 854
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->clearBackupLayout()V

    .line 855
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DropTarget$DragObject;)V

    .line 857
    iput-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    .line 860
    :cond_0
    return-void
.end method

.method onDragOver(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 12
    .parameter "d"

    .prologue
    const/16 v11, 0x64

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 957
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v3, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 958
    .local v3, spanX:I
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v4, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 959
    .local v4, spanY:I
    iget v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->x:I

    iget v1, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->xOffset:I

    sub-int v1, v0, v1

    iget v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->y:I

    iget v2, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->yOffset:I

    sub-int v2, v0, v2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout;->findNearestVacantArea(IIIIZ)[I

    move-result-object v6

    .line 960
    .local v6, cellPos:[I
    if-eqz v6, :cond_0

    .line 961
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 962
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    if-nez v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 964
    .local v7, lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    aget v0, v6, v5

    iput v0, v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    .line 965
    aget v0, v6, v9

    iput v0, v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    .line 966
    iput v3, v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellHSpan:I

    .line 967
    iput v4, v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellVSpan:I

    .line 968
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v5, v7}, Lcom/miui/home/launcher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 969
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragSource:Lcom/miui/home/launcher/DragSource;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 970
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    aget v1, v6, v5

    iput v1, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 971
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    aget v1, v6, v9

    iput v1, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 976
    .end local v7           #lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    :cond_0
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    instance-of v0, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_2

    .line 1011
    :cond_1
    :goto_0
    return-void

    .line 980
    :cond_2
    iget v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->x:I

    iget v1, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->y:I

    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/CellLayout;->pointToCell(II[I)V

    .line 981
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v1, v1, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v1, v1, v5

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v1, v1, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v1, v1, v9

    aget-object v8, v0, v1

    .line 983
    .local v8, occupiedView:Landroid/view/View;
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    if-eq v8, v0, :cond_3

    .line 984
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DropTarget$DragObject;)V

    .line 985
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    .line 988
    :cond_3
    if-eqz v8, :cond_7

    instance-of v0, v8, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v0, :cond_7

    .line 989
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mRectTmp:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 990
    iget v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->x:I

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mRectTmp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirmSize:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_5

    .line 991
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iput v9, v0, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    .line 1002
    :goto_1
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout$DragPos;->equal(Lcom/miui/home/launcher/CellLayout$DragPos;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1003
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout$DragPos;->set(Lcom/miui/home/launcher/CellLayout$DragPos;)V

    .line 1004
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1005
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    #setter for: Lcom/miui/home/launcher/CellLayout$StayConfirm;->lastDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;
    invoke-static {v0, p1}, Lcom/miui/home/launcher/CellLayout$StayConfirm;->access$802(Lcom/miui/home/launcher/CellLayout$StayConfirm;Lcom/miui/home/launcher/DropTarget$DragObject;)Lcom/miui/home/launcher/DropTarget$DragObject;

    .line 1006
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget v0, v0, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    if-ne v0, v10, :cond_9

    instance-of v0, v8, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v0, :cond_4

    :cond_4
    int-to-long v0, v11

    :goto_2
    invoke-virtual {p0, v2, v0, v1}, Lcom/miui/home/launcher/CellLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 992
    :cond_5
    iget v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->x:I

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mRectTmp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirmSize:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_6

    .line 993
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    const/4 v1, 0x3

    iput v1, v0, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    goto :goto_1

    .line 995
    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iput v10, v0, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    goto :goto_1

    .line 997
    :cond_7
    if-nez v8, :cond_8

    .line 998
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iput v5, v0, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    goto :goto_1

    .line 1000
    :cond_8
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mTmpDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    const/4 v1, 0x4

    iput v1, v0, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    goto :goto_1

    .line 1006
    :cond_9
    const-wide/16 v0, 0x96

    goto :goto_2
.end method

.method onDrop(Lcom/miui/home/launcher/DropTarget$DragObject;Landroid/view/View;)Z
    .locals 10
    .parameter "d"
    .parameter "v"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 576
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 577
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/DropTarget;->onDrop(Lcom/miui/home/launcher/DropTarget$DragObject;)Z

    move-result v8

    .line 579
    .local v8, r:Z
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/DropTarget;->onDragExit(Lcom/miui/home/launcher/DropTarget$DragObject;)V

    .line 580
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    .line 581
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->rollbackLayout()V

    .line 625
    .end local v8           #r:Z
    :goto_0
    return v8

    .line 584
    :cond_0
    iget v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->x:I

    iget v1, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->xOffset:I

    sub-int v1, v0, v1

    iget v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->y:I

    iget v2, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->yOffset:I

    sub-int v2, v0, v2

    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v3, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v4, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/CellLayout;->findNearestVacantArea(IIIIZ)[I

    move-result-object v9

    .line 586
    .local v9, targetXY:[I
    if-nez v9, :cond_1

    move v8, v5

    .line 587
    goto :goto_0

    .line 590
    :cond_1
    if-nez p2, :cond_2

    .line 591
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    aget v1, v9, v5

    iput v1, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 592
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    aget v1, v9, v8

    iput v1, v0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    goto :goto_0

    .line 596
    :cond_2
    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v0, v0, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget v2, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->container:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    aget v0, v9, v5

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget v1, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    if-ne v0, v1, :cond_3

    aget v0, v9, v8

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget v1, v1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v0, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iget-wide v2, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 599
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->rollbackLayout()V

    .line 600
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-virtual {p0, v0, p2, v5}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Lcom/miui/home/launcher/CellLayout$LayoutParams;Landroid/view/View;Z)V

    goto :goto_0

    .line 604
    :cond_3
    if-eqz p2, :cond_4

    .line 605
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/ItemInfo;

    .line 606
    .local v6, info:Lcom/miui/home/launcher/ItemInfo;
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 607
    aget v0, v9, v5

    iput v0, v6, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 608
    aget v0, v9, v8

    iput v0, v6, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 609
    const-wide/16 v0, -0x64

    iput-wide v0, v6, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 611
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 612
    .local v7, lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    aget v0, v9, v5

    iput v0, v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    .line 613
    aget v0, v9, v8

    iput v0, v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    .line 614
    iput-boolean v5, v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;->isDragging:Z

    .line 615
    iput-boolean v8, v7, Lcom/miui/home/launcher/CellLayout$LayoutParams;->dropped:Z

    .line 616
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_5

    .line 617
    const/4 v0, -0x1

    invoke-virtual {p0, p2, v0, v7}, Lcom/miui/home/launcher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 623
    .end local v6           #info:Lcom/miui/home/launcher/ItemInfo;
    .end local v7           #lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->saveCurrentLayout()V

    .line 624
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->clearBackupLayout()V

    goto/16 :goto_0

    .line 619
    .restart local v6       #info:Lcom/miui/home/launcher/ItemInfo;
    .restart local v7       #lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 620
    invoke-virtual {p0, v7, p2, v5}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Lcom/miui/home/launcher/CellLayout$LayoutParams;Landroid/view/View;Z)V

    goto :goto_1
.end method

.method onDropAborted(Landroid/view/View;)V
    .locals 4
    .parameter "child"

    .prologue
    const/4 v3, 0x0

    .line 629
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mStayConfirm:Lcom/miui/home/launcher/CellLayout$StayConfirm;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 630
    if-eqz p1, :cond_0

    .line 631
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 632
    .local v0, params:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    iput-boolean v3, v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;->isDragging:Z

    .line 633
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->rollbackLayout()V

    .line 634
    invoke-virtual {p0, v0, p1, v3}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Lcom/miui/home/launcher/CellLayout$LayoutParams;Landroid/view/View;Z)V

    .line 636
    .end local v0           #params:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .parameter "ev"

    .prologue
    .line 225
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 226
    .local v1, action:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    .line 227
    .local v2, cellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;
    const/4 v11, 0x0

    .line 229
    .local v11, result:Z
    if-nez v1, :cond_9

    .line 230
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/home/launcher/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 231
    .local v7, frame:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/home/launcher/CellLayout;->mScrollX:I

    add-int v12, v14, v15

    .line 232
    .local v12, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/home/launcher/CellLayout;->mScrollY:I

    add-int v13, v14, v15

    .line 233
    .local v13, y:I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v5

    .line 235
    .local v5, count:I
    const/4 v6, 0x0

    .line 236
    .local v6, found:Z
    add-int/lit8 v8, v5, -0x1

    .local v8, i:I
    :goto_0
    if-ltz v8, :cond_1

    .line 237
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 239
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 240
    :cond_0
    invoke-virtual {v4, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 241
    invoke-virtual {v7, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 242
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 243
    .local v10, lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    iput-object v4, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 244
    iget v14, v10, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    iput v14, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    .line 245
    iget v14, v10, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    iput v14, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    .line 246
    iget v14, v10, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iput v14, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanX:I

    .line 247
    iget v14, v10, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellVSpan:I

    iput v14, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanY:I

    .line 248
    const/4 v6, 0x1

    .line 254
    .end local v4           #child:Landroid/view/View;
    .end local v10           #lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/miui/home/launcher/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 256
    if-nez v6, :cond_5

    .line 257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    .line 258
    .local v3, cellXY:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v3}, Lcom/miui/home/launcher/CellLayout;->pointToCell(II[I)V

    .line 260
    const/4 v14, 0x0

    iput-object v14, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 261
    const/4 v14, 0x0

    aget v14, v3, v14

    iput v14, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    .line 262
    const/4 v14, 0x1

    aget v14, v3, v14

    iput v14, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    .line 263
    const/4 v14, 0x1

    iput v14, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanX:I

    .line 264
    const/4 v14, 0x1

    iput v14, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanY:I

    .line 281
    .end local v3           #cellXY:[I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/CellLayout;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    move-object/from16 v16, v0

    if-eqz v6, :cond_8

    const-wide/16 v14, 0xc8

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v15}, Lcom/miui/home/launcher/OnLongClickAgent;->setEditingTimeout(J)V

    .line 292
    .end local v5           #count:I
    .end local v6           #found:Z
    .end local v7           #frame:Landroid/graphics/Rect;
    .end local v8           #i:I
    .end local v12           #x:I
    .end local v13           #y:I
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/home/launcher/CellLayout;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/miui/home/launcher/OnLongClickAgent;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 293
    const/4 v11, 0x1

    :cond_3
    move v14, v11

    .line 296
    :goto_4
    return v14

    .line 236
    .restart local v4       #child:Landroid/view/View;
    .restart local v5       #count:I
    .restart local v6       #found:Z
    .restart local v7       #frame:Landroid/graphics/Rect;
    .restart local v8       #i:I
    .restart local v12       #x:I
    .restart local v13       #y:I
    :cond_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 267
    .end local v4           #child:Landroid/view/View;
    :cond_5
    iget-object v14, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/home/launcher/ItemInfo;

    .line 268
    .local v9, info:Lcom/miui/home/launcher/ItemInfo;
    if-nez v9, :cond_6

    .line 270
    const/4 v14, 0x0

    goto :goto_4

    .line 274
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v14}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v14

    if-eqz v14, :cond_7

    iget v14, v9, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v15, 0x2

    if-eq v14, v15, :cond_7

    iget v14, v9, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v15, 0x3

    if-eq v14, v15, :cond_7

    iget v14, v9, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v15, 0x5

    if-eq v14, v15, :cond_7

    const/4 v11, 0x1

    :goto_5
    goto :goto_1

    :cond_7
    const/4 v11, 0x0

    goto :goto_5

    .line 281
    .end local v9           #info:Lcom/miui/home/launcher/ItemInfo;
    :cond_8
    const-wide/16 v14, 0x320

    goto :goto_2

    .line 284
    .end local v5           #count:I
    .end local v6           #found:Z
    .end local v7           #frame:Landroid/graphics/Rect;
    .end local v8           #i:I
    .end local v12           #x:I
    .end local v13           #y:I
    :cond_9
    const/4 v14, 0x1

    if-ne v1, v14, :cond_2

    .line 285
    const/4 v14, 0x0

    iput-object v14, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 286
    const/4 v14, -0x1

    iput v14, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    .line 287
    const/4 v14, -0x1

    iput v14, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    .line 288
    const/4 v14, 0x0

    iput v14, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanX:I

    .line 289
    const/4 v14, 0x0

    iput v14, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanY:I

    goto :goto_3
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v11

    .line 440
    .local v11, count:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v11, :cond_1

    .line 441
    invoke-virtual {p0, v12}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 442
    .local v8, child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 444
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    .line 446
    .local v13, lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    iget v9, v13, Lcom/miui/home/launcher/CellLayout$LayoutParams;->x:I

    .line 447
    .local v9, childLeft:I
    iget v10, v13, Lcom/miui/home/launcher/CellLayout$LayoutParams;->y:I

    .line 449
    .local v10, childTop:I
    iget v0, v13, Lcom/miui/home/launcher/CellLayout$LayoutParams;->width:I

    add-int/2addr v0, v9

    iget v1, v13, Lcom/miui/home/launcher/CellLayout$LayoutParams;->height:I

    add-int/2addr v1, v10

    invoke-virtual {v8, v9, v10, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 451
    iget-boolean v0, v13, Lcom/miui/home/launcher/CellLayout$LayoutParams;->dropped:Z

    if-eqz v0, :cond_0

    .line 452
    const/4 v0, 0x0

    iput-boolean v0, v13, Lcom/miui/home/launcher/CellLayout$LayoutParams;->dropped:Z

    .line 454
    iget-object v7, p0, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    .line 455
    .local v7, cellXY:[I
    invoke-virtual {p0, v7}, Lcom/miui/home/launcher/CellLayout;->getLocationOnScreen([I)V

    .line 456
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.home.drop"

    const/4 v3, 0x0

    aget v3, v7, v3

    add-int/2addr v3, v9

    iget v4, v13, Lcom/miui/home/launcher/CellLayout$LayoutParams;->width:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v7, v4

    add-int/2addr v4, v10

    iget v5, v13, Lcom/miui/home/launcher/CellLayout$LayoutParams;->height:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 440
    .end local v7           #cellXY:[I
    .end local v9           #childLeft:I
    .end local v10           #childTop:I
    .end local v13           #lp:Lcom/miui/home/launcher/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 462
    .end local v8           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 383
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 384
    .local v5, widthSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 386
    .local v6, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 387
    .local v2, heightSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 389
    .local v3, heightSpecSize:I
    if-eqz v5, :cond_0

    if-nez v2, :cond_1

    .line 390
    :cond_0
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 393
    :cond_1
    invoke-virtual {p0, v6, v3}, Lcom/miui/home/launcher/CellLayout;->setMeasuredDimension(II)V

    .line 395
    iget v7, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    if-gt v7, v11, :cond_2

    move v7, v8

    :goto_0
    iput v7, p0, Lcom/miui/home/launcher/CellLayout;->mWidthGap:I

    .line 400
    iget v7, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    if-gt v7, v11, :cond_3

    :goto_1
    iput v8, p0, Lcom/miui/home/launcher/CellLayout;->mHeightGap:I

    .line 405
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v1

    .line 406
    .local v1, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v1, :cond_4

    .line 407
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 408
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->measureChild(Landroid/view/View;)V

    .line 406
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 395
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v4           #i:I
    :cond_2
    iget v7, p0, Lcom/miui/home/launcher/CellLayout;->mPaddingLeft:I

    sub-int v7, v6, v7

    iget v9, p0, Lcom/miui/home/launcher/CellLayout;->mPaddingRight:I

    sub-int/2addr v7, v9

    iget v9, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    iget v10, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    mul-int/2addr v9, v10

    sub-int/2addr v7, v9

    iget v9, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    add-int/lit8 v9, v9, -0x1

    div-int/2addr v7, v9

    goto :goto_0

    .line 400
    :cond_3
    iget v7, p0, Lcom/miui/home/launcher/CellLayout;->mPaddingTop:I

    sub-int v7, v3, v7

    iget v8, p0, Lcom/miui/home/launcher/CellLayout;->mPaddingBottom:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    iget v9, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    mul-int/2addr v8, v9

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    add-int/lit8 v8, v8, -0x1

    div-int v8, v7, v8

    goto :goto_1

    .line 410
    .restart local v1       #count:I
    .restart local v4       #i:I
    :cond_4
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellLayout;->mDisableTouch:Z

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {v0}, Lcom/miui/home/launcher/OnLongClickAgent;->cancelCustomziedLongPress()V

    .line 306
    const/4 v0, 0x0

    .line 309
    :goto_0
    return v0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/OnLongClickAgent;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 309
    const/4 v0, 0x1

    goto :goto_0
.end method

.method pointToCell(II[I)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "result"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 329
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mPaddingLeft:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mWidthGap:I

    add-int/2addr v1, v2

    div-int/2addr v0, v1

    aput v0, p3, v3

    .line 330
    iget v0, p0, Lcom/miui/home/launcher/CellLayout;->mPaddingTop:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mCellHeight:I

    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mHeightGap:I

    add-int/2addr v1, v2

    div-int/2addr v0, v1

    aput v0, p3, v4

    .line 332
    aget v0, p3, v3

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mHCells:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, p3, v3

    .line 333
    aget v0, p3, v4

    iget v1, p0, Lcom/miui/home/launcher/CellLayout;->mVCells:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, p3, v4

    .line 334
    return-void
.end method

.method public preRemoveView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    if-ne v0, p1, :cond_0

    .line 1281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;

    .line 1283
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Lcom/miui/home/launcher/CellLayout$LayoutParams;Landroid/view/View;Z)V

    .line 1284
    invoke-direct {p0}, Lcom/miui/home/launcher/CellLayout;->backupLayout()V

    .line 1285
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 2

    .prologue
    .line 1250
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->onRemoveViews(II)V

    .line 1251
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1252
    return-void
.end method

.method public removeChild(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 1222
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    aget-object v1, v1, v2

    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    aget-object v0, v1, v2

    .line 1223
    .local v0, v:Landroid/view/View;
    sget-boolean v1, Lcom/miui/home/launcher/CellLayout;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1224
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 1225
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1232
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->onRemoveViews(II)V

    .line 1233
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1234
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1256
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/CellLayout;->onRemoveViews(II)V

    .line 1257
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1258
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1238
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/CellLayout;->onRemoveViews(II)V

    .line 1239
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 1240
    return-void
.end method

.method public removeViews(II)V
    .locals 0
    .parameter "start"
    .parameter "count"

    .prologue
    .line 1262
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->onRemoveViews(II)V

    .line 1263
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 1264
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 0
    .parameter "start"
    .parameter "count"

    .prologue
    .line 1244
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->onRemoveViews(II)V

    .line 1245
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    .line 1246
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 215
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 216
    if-eqz p1, :cond_0

    .line 217
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 218
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 219
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 221
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method setContainerId(I)V
    .locals 1
    .parameter "container"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iput p1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->container:I

    .line 173
    return-void
.end method

.method setDisableTouch(Z)V
    .locals 0
    .parameter "isDisable"

    .prologue
    .line 300
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellLayout;->mDisableTouch:Z

    .line 301
    return-void
.end method

.method public setEditMode(Z)V
    .locals 0
    .parameter "isEditing"

    .prologue
    .line 188
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/OnLongClickAgent;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 315
    return-void
.end method

.method setScreenId(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout;->mCellInfo:Lcom/miui/home/launcher/CellLayout$CellInfo;

    iput-wide p1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    .line 168
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1353
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1354
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1355
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1356
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1358
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_6

    .line 1359
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1360
    instance-of v6, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v6, :cond_1

    .line 1361
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 1362
    const-string v6, "["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1363
    iget-object v6, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1364
    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1365
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->cellX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->cellY:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v0, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1366
    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1358
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1367
    :cond_1
    instance-of v6, v0, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v6, :cond_2

    .line 1368
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1369
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1370
    :cond_2
    instance-of v6, v0, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v6, :cond_5

    .line 1371
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 1372
    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1373
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1374
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1376
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lt v0, v9, :cond_0

    .line 1379
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1380
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v9, :cond_4

    .line 1381
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1383
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 1385
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz v6, :cond_0

    .line 1386
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 1387
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getGadgetId()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 1391
    :cond_6
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1392
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1393
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v9, :cond_7

    .line 1394
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1396
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "home_screen{apps:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "widgets:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1398
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1399
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v9, :cond_8

    .line 1400
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1402
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gidgets:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "folders:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1404
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateCellOccupiedMarks(Landroid/view/View;Z)V
    .locals 1
    .parameter "cell"
    .parameter "remove"

    .prologue
    .line 465
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Lcom/miui/home/launcher/CellLayout$LayoutParams;Landroid/view/View;Z)V

    .line 466
    return-void
.end method

.method updateCellOccupiedMarks(Lcom/miui/home/launcher/CellLayout$LayoutParams;Landroid/view/View;Z)V
    .locals 4
    .parameter "params"
    .parameter "cell"
    .parameter "remove"

    .prologue
    .line 469
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mCellBackground:Landroid/widget/ImageView;

    if-eq p2, v2, :cond_4

    .line 470
    iget v2, p1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    iget v3, p1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v2, v3

    add-int/lit8 v0, v2, -0x1

    .local v0, x:I
    :goto_0
    iget v2, p1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellX:I

    if-lt v0, v2, :cond_4

    .line 471
    iget v2, p1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    iget v3, p1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, -0x1

    .local v1, y:I
    :goto_1
    iget v2, p1, Lcom/miui/home/launcher/CellLayout$LayoutParams;->cellY:I

    if-lt v1, v2, :cond_3

    .line 472
    if-eqz p3, :cond_1

    .line 477
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    if-ne p2, v2, :cond_0

    .line 478
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellNumber:I

    .line 479
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 471
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 483
    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    .line 484
    iget v2, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellNumber:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/miui/home/launcher/CellLayout;->mEmptyCellNumber:I

    .line 486
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;

    aget-object v2, v2, v0

    aput-object p2, v2, v1

    goto :goto_2

    .line 470
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 491
    .end local v0           #x:I
    .end local v1           #y:I
    :cond_4
    return-void
.end method

.method public widgetFrameToCell(II)[I
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x3

    .line 1093
    add-int/lit8 v2, p1, 0x2

    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellMeasureWidth:I

    div-int/2addr v2, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 1094
    .local v0, spanX:I
    add-int/lit8 v2, p2, -0x1

    iget v3, p0, Lcom/miui/home/launcher/CellLayout;->mWidgetCellMeasureHeight:I

    div-int/2addr v2, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 1096
    .local v1, spanY:I
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    return-object v2
.end method
