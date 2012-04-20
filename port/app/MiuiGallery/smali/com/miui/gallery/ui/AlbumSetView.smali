.class public Lcom/miui/gallery/ui/AlbumSetView;
.super Lcom/miui/gallery/ui/SlotViewWithTitle;
.source "AlbumSetView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/AlbumSetView$1;,
        Lcom/miui/gallery/ui/AlbumSetView$MyCacheListener;,
        Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;,
        Lcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;,
        Lcom/miui/gallery/ui/AlbumSetView$ModelListener;,
        Lcom/miui/gallery/ui/AlbumSetView$Model;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/miui/gallery/app/GalleryActivity;

.field private mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

.field private final mLabelSpec:Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;

.field private final mRandom:Ljava/util/Random;

.field private final mSeed:J

.field private mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

.field private mVisibleEnd:I

.field private mVisibleStart:I


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SelectionDrawer;Lcom/miui/gallery/ui/SlotView$Spec;Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;)V
    .locals 2
    .parameter "activity"
    .parameter "drawer"
    .parameter "slotViewSpec"
    .parameter "labelSpec"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/SlotViewWithTitle;-><init>(Lcom/miui/gallery/app/GalleryActivity;)V

    .line 41
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumSetView;->mRandom:Ljava/util/Random;

    .line 42
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetView;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/ui/AlbumSetView;->mSeed:J

    .line 86
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumSetView;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    .line 87
    invoke-virtual {p0, p2}, Lcom/miui/gallery/ui/AlbumSetView;->setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V

    .line 88
    invoke-virtual {p0, p3}, Lcom/miui/gallery/ui/AlbumSetView;->setSlotSpec(Lcom/miui/gallery/ui/SlotView$Spec;)V

    .line 89
    iput-object p4, p0, Lcom/miui/gallery/ui/AlbumSetView;->mLabelSpec:Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;

    .line 90
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/AlbumSetView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/AlbumSetView;->updateVisibleRange(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/AlbumSetView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AlbumSetView;->updateViewVisibility(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/AlbumSetView;ILcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/AlbumSetView;->freeSlotContent(ILcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/AlbumSetView;ILcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/AlbumSetView;->putSlotContent(ILcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;)V

    return-void
.end method

.method private freeSlotContent(ILcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;)V
    .locals 5
    .parameter "index"
    .parameter "entry"

    .prologue
    .line 152
    if-nez p2, :cond_0

    .line 158
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p2, Lcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;->covers:[Lcom/miui/gallery/ui/CoverDisplayItem;

    .local v0, arr$:[Lcom/miui/gallery/ui/CoverDisplayItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 154
    .local v2, item:Lcom/miui/gallery/ui/DisplayItem;
    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/AlbumSetView;->removeDisplayItem(Lcom/miui/gallery/ui/DisplayItem;)V

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 156
    .end local v2           #item:Lcom/miui/gallery/ui/DisplayItem;
    :cond_1
    iget-object v4, p2, Lcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;->labelItem:Lcom/miui/gallery/ui/DisplayItem;

    invoke-virtual {p0, v4}, Lcom/miui/gallery/ui/AlbumSetView;->removeDisplayItem(Lcom/miui/gallery/ui/DisplayItem;)V

    .line 157
    iget-object v4, p2, Lcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;->bottomCover:Lcom/miui/gallery/ui/DisplayItem;

    invoke-virtual {p0, v4}, Lcom/miui/gallery/ui/AlbumSetView;->removeDisplayItem(Lcom/miui/gallery/ui/DisplayItem;)V

    goto :goto_0
.end method

.method private putSlotContent(ILcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;)V
    .locals 23
    .parameter "slotIndex"
    .parameter "entry"

    .prologue
    .line 116
    if-eqz p2, :cond_0

    const/16 v18, 0x1

    :goto_0
    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 117
    invoke-virtual/range {p0 .. p1}, Lcom/miui/gallery/ui/AlbumSetView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v14

    .line 119
    .local v14, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;->covers:[Lcom/miui/gallery/ui/CoverDisplayItem;

    .line 120
    .local v11, items:[Lcom/miui/gallery/ui/DisplayItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumSetView;->mRandom:Ljava/util/Random;

    move-object/from16 v18, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/gallery/ui/AlbumSetView;->mSeed:J

    move-wide/from16 v21, v0

    xor-long v19, v19, v21

    invoke-virtual/range {v18 .. v20}, Ljava/util/Random;->setSeed(J)V

    .line 122
    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    iget v0, v14, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v18, v18, v19

    div-int/lit8 v16, v18, 0x2

    .line 123
    .local v16, x:I
    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    add-int v18, v18, v19

    div-int/lit8 v17, v18, 0x2

    .line 124
    .local v17, y:I
    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v8, v18, v19

    .line 127
    .local v8, height:I
    new-instance v3, Lcom/miui/gallery/ui/PositionRepository$Position;

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v3, v0, v1, v2}, Lcom/miui/gallery/ui/PositionRepository$Position;-><init>(FFF)V

    .line 128
    .local v3, basePosition:Lcom/miui/gallery/ui/PositionRepository$Position;
    new-instance v4, Lcom/miui/gallery/ui/PositionRepository$Position;

    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumSetView;->mLabelSpec:Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;->albumSlotHeight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumSetView;->mLabelSpec:Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;->albumCoverHeight:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v4, v0, v1, v2}, Lcom/miui/gallery/ui/PositionRepository$Position;-><init>(FFF)V

    .line 132
    .local v4, bgposition:Lcom/miui/gallery/ui/PositionRepository$Position;
    new-instance v13, Lcom/miui/gallery/ui/PositionRepository$Position;

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v13, v0, v1, v2}, Lcom/miui/gallery/ui/PositionRepository$Position;-><init>(FFF)V

    .line 133
    .local v13, position:Lcom/miui/gallery/ui/PositionRepository$Position;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;->labelItem:Lcom/miui/gallery/ui/DisplayItem;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v13, v1}, Lcom/miui/gallery/ui/AlbumSetView;->putDisplayItem(Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/DisplayItem;)V

    .line 134
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;->bottomCover:Lcom/miui/gallery/ui/DisplayItem;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v4, v1}, Lcom/miui/gallery/ui/AlbumSetView;->putDisplayItem(Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/DisplayItem;)V

    .line 136
    const/4 v9, 0x0

    .local v9, i:I
    array-length v12, v11

    .local v12, n:I
    :goto_1
    if-ge v9, v12, :cond_1

    .line 137
    aget-object v10, v11, v9

    .line 139
    .local v10, item:Lcom/miui/gallery/ui/DisplayItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumSetView;->mLabelSpec:Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;->albumSlotWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumSetView;->mLabelSpec:Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;->albumCoverWidth:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/AlbumSetView;->mLabelSpec:Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;->albumCoverGap:I

    move/from16 v19, v0

    mul-int v19, v19, v9

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v5, v0

    .line 141
    .local v5, dx:F
    const/4 v6, 0x0

    .line 142
    .local v6, dy:F
    const/4 v7, 0x0

    .line 143
    .local v7, dz:F
    const/4 v15, 0x0

    .line 145
    .local v15, theta:F
    new-instance v13, Lcom/miui/gallery/ui/PositionRepository$Position;

    .end local v13           #position:Lcom/miui/gallery/ui/PositionRepository$Position;
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v18, v18, v5

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v19, v19, v6

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v13, v0, v1, v7}, Lcom/miui/gallery/ui/PositionRepository$Position;-><init>(FFF)V

    .line 146
    .restart local v13       #position:Lcom/miui/gallery/ui/PositionRepository$Position;
    iput v15, v13, Lcom/miui/gallery/ui/PositionRepository$Position;->theta:F

    .line 147
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v3, v10}, Lcom/miui/gallery/ui/AlbumSetView;->putDisplayItem(Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/DisplayItem;)V

    .line 136
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 116
    .end local v3           #basePosition:Lcom/miui/gallery/ui/PositionRepository$Position;
    .end local v4           #bgposition:Lcom/miui/gallery/ui/PositionRepository$Position;
    .end local v5           #dx:F
    .end local v6           #dy:F
    .end local v7           #dz:F
    .end local v8           #height:I
    .end local v9           #i:I
    .end local v10           #item:Lcom/miui/gallery/ui/DisplayItem;
    .end local v11           #items:[Lcom/miui/gallery/ui/DisplayItem;
    .end local v12           #n:I
    .end local v13           #position:Lcom/miui/gallery/ui/PositionRepository$Position;
    .end local v14           #rect:Landroid/graphics/Rect;
    .end local v15           #theta:F
    .end local v16           #x:I
    .end local v17           #y:I
    :cond_0
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 149
    .restart local v3       #basePosition:Lcom/miui/gallery/ui/PositionRepository$Position;
    .restart local v4       #bgposition:Lcom/miui/gallery/ui/PositionRepository$Position;
    .restart local v8       #height:I
    .restart local v9       #i:I
    .restart local v11       #items:[Lcom/miui/gallery/ui/DisplayItem;
    .restart local v12       #n:I
    .restart local v13       #position:Lcom/miui/gallery/ui/PositionRepository$Position;
    .restart local v14       #rect:Landroid/graphics/Rect;
    .restart local v16       #x:I
    .restart local v17       #y:I
    :cond_1
    return-void
.end method

.method private updateViewVisibility(I)V
    .locals 6
    .parameter "size"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 220
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetView;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 221
    .local v0, activity:Landroid/app/Activity;
    const v3, 0x7f0b0011

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 222
    .local v1, albumSetView:Landroid/view/View;
    const v3, 0x7f0b0012

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 223
    .local v2, noRecentView:Landroid/view/View;
    if-nez p1, :cond_0

    .line 224
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 225
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 230
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 228
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private declared-synchronized updateVisibleRange(II)V
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetView;->mVisibleStart:I

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetView;->mVisibleEnd:I

    if-ne p2, v2, :cond_0

    .line 181
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    invoke-virtual {v2, p1, p2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->setActiveWindow(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :goto_0
    monitor-exit p0

    return-void

    .line 184
    :cond_0
    :try_start_1
    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetView;->mVisibleEnd:I

    if-ge p1, v2, :cond_1

    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetView;->mVisibleStart:I

    if-lt v2, p2, :cond_3

    .line 185
    :cond_1
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetView;->mVisibleStart:I

    .local v0, i:I
    iget v1, p0, Lcom/miui/gallery/ui/AlbumSetView;->mVisibleEnd:I

    .local v1, n:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 186
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->get(I)Lcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/AlbumSetView;->freeSlotContent(ILcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;)V

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 188
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    invoke-virtual {v2, p1, p2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->setActiveWindow(II)V

    .line 189
    move v0, p1

    :goto_2
    if-ge v0, p2, :cond_7

    .line 190
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->get(I)Lcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/AlbumSetView;->putSlotContent(ILcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;)V

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 193
    .end local v0           #i:I
    .end local v1           #n:I
    :cond_3
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetView;->mVisibleStart:I

    .restart local v0       #i:I
    :goto_3
    if-ge v0, p1, :cond_4

    .line 194
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->get(I)Lcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/AlbumSetView;->freeSlotContent(ILcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;)V

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 196
    :cond_4
    move v0, p2

    iget v1, p0, Lcom/miui/gallery/ui/AlbumSetView;->mVisibleEnd:I

    .restart local v1       #n:I
    :goto_4
    if-ge v0, v1, :cond_5

    .line 197
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->get(I)Lcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/AlbumSetView;->freeSlotContent(ILcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;)V

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 199
    :cond_5
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    invoke-virtual {v2, p1, p2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->setActiveWindow(II)V

    .line 200
    move v0, p1

    iget v1, p0, Lcom/miui/gallery/ui/AlbumSetView;->mVisibleStart:I

    :goto_5
    if-ge v0, v1, :cond_6

    .line 201
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->get(I)Lcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/AlbumSetView;->putSlotContent(ILcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;)V

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 203
    :cond_6
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetView;->mVisibleEnd:I

    :goto_6
    if-ge v0, p2, :cond_7

    .line 204
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->get(I)Lcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/AlbumSetView;->putSlotContent(ILcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;)V

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 207
    :cond_7
    iput p1, p0, Lcom/miui/gallery/ui/AlbumSetView;->mVisibleStart:I

    .line 208
    iput p2, p0, Lcom/miui/gallery/ui/AlbumSetView;->mVisibleEnd:I

    .line 210
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumSetView;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 179
    .end local v0           #i:I
    .end local v1           #n:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public changeShowType(I)V
    .locals 1
    .parameter "showType"

    .prologue
    const/4 v0, 0x0

    .line 284
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AlbumSetView;->setScrollPosition(I)V

    .line 285
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AlbumSetView;->setSlotCount(I)Z

    .line 286
    invoke-direct {p0, v0, v0}, Lcom/miui/gallery/ui/AlbumSetView;->updateVisibleRange(II)V

    .line 287
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->changeShowType(I)V

    .line 288
    return-void
.end method

.method public onLayoutChanged(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumSetView;->getVisibleStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumSetView;->getVisibleEnd()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/ui/AlbumSetView;->updateVisibleRange(II)V

    .line 167
    return-void
.end method

.method public onScrollPositionChanged(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/SlotViewWithTitle;->onScrollPositionChanged(I)V

    .line 172
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumSetView;->getVisibleStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumSetView;->getVisibleEnd()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/ui/AlbumSetView;->updateVisibleRange(II)V

    .line 173
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 263
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetView;->mVisibleStart:I

    .local v0, i:I
    iget v1, p0, Lcom/miui/gallery/ui/AlbumSetView;->mVisibleEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 264
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->get(I)Lcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/AlbumSetView;->freeSlotContent(ILcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;)V

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->pause()V

    .line 267
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumSetView;->pause()V

    .line 278
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumSetView;->resume()V

    .line 279
    return-void
.end method

.method protected render(Lcom/miui/gallery/ui/GLCanvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetView;->mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SelectionDrawer;->prepareDrawing()V

    .line 216
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/SlotViewWithTitle;->render(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 217
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 270
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->resume()V

    .line 271
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetView;->mVisibleStart:I

    .local v0, i:I
    iget v1, p0, Lcom/miui/gallery/ui/AlbumSetView;->mVisibleEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 272
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->get(I)Lcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/AlbumSetView;->putSlotContent(ILcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;)V

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_0
    return-void
.end method

.method public setModel(Lcom/miui/gallery/ui/AlbumSetView$Model;I)V
    .locals 8
    .parameter "model"
    .parameter "albumSetShowType"

    .prologue
    const/4 v7, 0x0

    .line 100
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, v7}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->setListener(Lcom/miui/gallery/ui/AlbumSetSlidingWindow$Listener;)V

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AlbumSetView;->setSlotCount(I)Z

    .line 103
    iput-object v7, p0, Lcom/miui/gallery/ui/AlbumSetView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    .line 105
    :cond_0
    if-eqz p1, :cond_1

    .line 106
    new-instance v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetView;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetView;->mLabelSpec:Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;

    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumSetView;->mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

    const/16 v5, 0x20

    move-object v4, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/AlbumSetView$LabelSpec;Lcom/miui/gallery/ui/SelectionDrawer;Lcom/miui/gallery/ui/AlbumSetView$Model;II)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumSetView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    .line 108
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    new-instance v1, Lcom/miui/gallery/ui/AlbumSetView$MyCacheListener;

    invoke-direct {v1, p0, v7}, Lcom/miui/gallery/ui/AlbumSetView$MyCacheListener;-><init>(Lcom/miui/gallery/ui/AlbumSetView;Lcom/miui/gallery/ui/AlbumSetView$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->setListener(Lcom/miui/gallery/ui/AlbumSetSlidingWindow$Listener;)V

    .line 109
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AlbumSetView;->setSlotCount(I)Z

    .line 110
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumSetView;->getVisibleStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumSetView;->getVisibleEnd()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/ui/AlbumSetView;->updateVisibleRange(II)V

    .line 112
    :cond_1
    return-void
.end method

.method public setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V
    .locals 1
    .parameter "drawer"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumSetView;->mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

    .line 94
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow;->setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V

    .line 97
    :cond_0
    return-void
.end method
