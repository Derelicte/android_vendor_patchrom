.class public Lcom/miui/gallery/ui/AlbumView;
.super Lcom/miui/gallery/ui/SlotViewWithTitle;
.source "AlbumView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/AlbumView$1;,
        Lcom/miui/gallery/ui/AlbumView$MyDataModelListener;,
        Lcom/miui/gallery/ui/AlbumView$ModelListener;,
        Lcom/miui/gallery/ui/AlbumView$Model;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/miui/gallery/app/GalleryActivity;

.field private mAlbumSetPath:Ljava/lang/String;

.field private mCacheThumbSize:I

.field private mDataWindow:Lcom/miui/gallery/ui/AlbumSlidingWindow;

.field private mIsActive:Z

.field private mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

.field private mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

.field private mVisibleEnd:I

.field private mVisibleStart:I


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SlotView$Spec;ILjava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "spec"
    .parameter "cacheThumbSize"
    .parameter "albumSetPath"

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/SlotViewWithTitle;-><init>(Lcom/miui/gallery/app/GalleryActivity;)V

    .line 33
    iput v0, p0, Lcom/miui/gallery/ui/AlbumView;->mVisibleStart:I

    .line 34
    iput v0, p0, Lcom/miui/gallery/ui/AlbumView;->mVisibleEnd:I

    .line 41
    iput-boolean v0, p0, Lcom/miui/gallery/ui/AlbumView;->mIsActive:Z

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumView;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    .line 60
    invoke-static {p4}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iput p3, p0, Lcom/miui/gallery/ui/AlbumView;->mCacheThumbSize:I

    .line 62
    invoke-virtual {p0, p2}, Lcom/miui/gallery/ui/AlbumView;->setSlotSpec(Lcom/miui/gallery/ui/SlotView$Spec;)V

    .line 63
    iput-object p2, p0, Lcom/miui/gallery/ui/AlbumView;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    .line 64
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumView;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    .line 65
    iput-object p4, p0, Lcom/miui/gallery/ui/AlbumView;->mAlbumSetPath:Ljava/lang/String;

    .line 66
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/AlbumView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/AlbumView;->updateVisibleRange(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/AlbumView;)Lcom/miui/gallery/app/GalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumView;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/AlbumView;ILcom/miui/gallery/ui/DisplayItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/AlbumView;->putSlotContent(ILcom/miui/gallery/ui/DisplayItem;)V

    return-void
.end method

.method private putSlotContent(ILcom/miui/gallery/ui/DisplayItem;)V
    .locals 5
    .parameter "slotIndex"
    .parameter "item"

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AlbumView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 92
    .local v1, rect:Landroid/graphics/Rect;
    new-instance v0, Lcom/miui/gallery/ui/PositionRepository$Position;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/miui/gallery/ui/PositionRepository$Position;-><init>(FFF)V

    .line 94
    .local v0, position:Lcom/miui/gallery/ui/PositionRepository$Position;
    invoke-virtual {p0, v0, v0, p2}, Lcom/miui/gallery/ui/AlbumView;->putDisplayItem(Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/DisplayItem;)V

    .line 95
    return-void
.end method

.method private declared-synchronized updateVisibleRange(II)V
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lcom/miui/gallery/ui/AlbumView;->mVisibleStart:I

    if-ne p1, v3, :cond_0

    iget v3, p0, Lcom/miui/gallery/ui/AlbumView;->mVisibleEnd:I

    if-ne p2, v3, :cond_0

    .line 101
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    invoke-virtual {v3, p1, p2}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->setActiveWindow(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :goto_0
    monitor-exit p0

    return-void

    .line 105
    :cond_0
    :try_start_1
    iget-boolean v3, p0, Lcom/miui/gallery/ui/AlbumView;->mIsActive:Z

    if-nez v3, :cond_1

    .line 106
    iput p1, p0, Lcom/miui/gallery/ui/AlbumView;->mVisibleStart:I

    .line 107
    iput p2, p0, Lcom/miui/gallery/ui/AlbumView;->mVisibleEnd:I

    .line 108
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    invoke-virtual {v3, p1, p2}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->setActiveWindow(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 112
    :cond_1
    :try_start_2
    iget v3, p0, Lcom/miui/gallery/ui/AlbumView;->mVisibleEnd:I

    if-ge p1, v3, :cond_2

    iget v3, p0, Lcom/miui/gallery/ui/AlbumView;->mVisibleStart:I

    if-lt v3, p2, :cond_5

    .line 113
    :cond_2
    iget v0, p0, Lcom/miui/gallery/ui/AlbumView;->mVisibleStart:I

    .local v0, i:I
    iget v2, p0, Lcom/miui/gallery/ui/AlbumView;->mVisibleEnd:I

    .local v2, n:I
    :goto_1
    if-ge v0, v2, :cond_4

    .line 114
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    invoke-virtual {v3, v0}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->get(I)Lcom/miui/gallery/ui/DisplayItem;

    move-result-object v1

    .line 115
    .local v1, item:Lcom/miui/gallery/ui/DisplayItem;
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/AlbumView;->removeDisplayItem(Lcom/miui/gallery/ui/DisplayItem;)V

    .line 113
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 117
    .end local v1           #item:Lcom/miui/gallery/ui/DisplayItem;
    :cond_4
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    invoke-virtual {v3, p1, p2}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->setActiveWindow(II)V

    .line 118
    move v0, p1

    :goto_2
    if-ge v0, p2, :cond_b

    .line 119
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    invoke-virtual {v3, v0}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->get(I)Lcom/miui/gallery/ui/DisplayItem;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/miui/gallery/ui/AlbumView;->putSlotContent(ILcom/miui/gallery/ui/DisplayItem;)V

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 122
    .end local v0           #i:I
    .end local v2           #n:I
    :cond_5
    iget v0, p0, Lcom/miui/gallery/ui/AlbumView;->mVisibleStart:I

    .restart local v0       #i:I
    :goto_3
    if-ge v0, p1, :cond_7

    .line 123
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    invoke-virtual {v3, v0}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->get(I)Lcom/miui/gallery/ui/DisplayItem;

    move-result-object v1

    .line 124
    .restart local v1       #item:Lcom/miui/gallery/ui/DisplayItem;
    if-eqz v1, :cond_6

    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/AlbumView;->removeDisplayItem(Lcom/miui/gallery/ui/DisplayItem;)V

    .line 122
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 126
    .end local v1           #item:Lcom/miui/gallery/ui/DisplayItem;
    :cond_7
    move v0, p2

    iget v2, p0, Lcom/miui/gallery/ui/AlbumView;->mVisibleEnd:I

    .restart local v2       #n:I
    :goto_4
    if-ge v0, v2, :cond_9

    .line 127
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    invoke-virtual {v3, v0}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->get(I)Lcom/miui/gallery/ui/DisplayItem;

    move-result-object v1

    .line 128
    .restart local v1       #item:Lcom/miui/gallery/ui/DisplayItem;
    if-eqz v1, :cond_8

    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/AlbumView;->removeDisplayItem(Lcom/miui/gallery/ui/DisplayItem;)V

    .line 126
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 130
    .end local v1           #item:Lcom/miui/gallery/ui/DisplayItem;
    :cond_9
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    invoke-virtual {v3, p1, p2}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->setActiveWindow(II)V

    .line 131
    move v0, p1

    iget v2, p0, Lcom/miui/gallery/ui/AlbumView;->mVisibleStart:I

    :goto_5
    if-ge v0, v2, :cond_a

    .line 132
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    invoke-virtual {v3, v0}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->get(I)Lcom/miui/gallery/ui/DisplayItem;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/miui/gallery/ui/AlbumView;->putSlotContent(ILcom/miui/gallery/ui/DisplayItem;)V

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 134
    :cond_a
    iget v0, p0, Lcom/miui/gallery/ui/AlbumView;->mVisibleEnd:I

    :goto_6
    if-ge v0, p2, :cond_b

    .line 135
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    invoke-virtual {v3, v0}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->get(I)Lcom/miui/gallery/ui/DisplayItem;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/miui/gallery/ui/AlbumView;->putSlotContent(ILcom/miui/gallery/ui/DisplayItem;)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 139
    :cond_b
    iput p1, p0, Lcom/miui/gallery/ui/AlbumView;->mVisibleStart:I

    .line 140
    iput p2, p0, Lcom/miui/gallery/ui/AlbumView;->mVisibleEnd:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method protected onLayoutChanged(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumView;->getVisibleStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumView;->getVisibleEnd()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/ui/AlbumView;->updateVisibleRange(II)V

    .line 147
    return-void
.end method

.method protected onScrollPositionChanged(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/SlotViewWithTitle;->onScrollPositionChanged(I)V

    .line 152
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumView;->getVisibleStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumView;->getVisibleEnd()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/ui/AlbumView;->updateVisibleRange(II)V

    .line 153
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 199
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/gallery/ui/AlbumView;->mIsActive:Z

    .line 200
    iget v0, p0, Lcom/miui/gallery/ui/AlbumView;->mVisibleStart:I

    .local v0, i:I
    iget v1, p0, Lcom/miui/gallery/ui/AlbumView;->mVisibleEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 201
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->get(I)Lcom/miui/gallery/ui/DisplayItem;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/AlbumView;->removeDisplayItem(Lcom/miui/gallery/ui/DisplayItem;)V

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->pause()V

    .line 204
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumView;->pause()V

    .line 208
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumView;->resume()V

    .line 209
    return-void
.end method

.method protected render(Lcom/miui/gallery/ui/GLCanvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumView;->mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SelectionDrawer;->prepareDrawing()V

    .line 158
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/SlotViewWithTitle;->render(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 159
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 191
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/gallery/ui/AlbumView;->mIsActive:Z

    .line 192
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->resume()V

    .line 193
    iget v0, p0, Lcom/miui/gallery/ui/AlbumView;->mVisibleStart:I

    .local v0, i:I
    iget v1, p0, Lcom/miui/gallery/ui/AlbumView;->mVisibleEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 194
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->get(I)Lcom/miui/gallery/ui/DisplayItem;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/AlbumView;->putSlotContent(ILcom/miui/gallery/ui/DisplayItem;)V

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_0
    return-void
.end method

.method public setModel(Lcom/miui/gallery/ui/AlbumView$Model;)V
    .locals 8
    .parameter "model"

    .prologue
    const/4 v7, 0x0

    .line 74
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    invoke-virtual {v0, v7}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->setListener(Lcom/miui/gallery/ui/AlbumSlidingWindow$Listener;)V

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AlbumView;->setSlotCount(I)Z

    .line 77
    iput-object v7, p0, Lcom/miui/gallery/ui/AlbumView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    .line 79
    :cond_0
    if-eqz p1, :cond_1

    .line 80
    new-instance v0, Lcom/miui/gallery/ui/AlbumSlidingWindow;

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumView;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    const/16 v3, 0x40

    iget v4, p0, Lcom/miui/gallery/ui/AlbumView;->mCacheThumbSize:I

    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumView;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumView;->mAlbumSetPath:Ljava/lang/String;

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/ui/AlbumSlidingWindow;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/AlbumView$Model;IILcom/miui/gallery/ui/SlotView$Spec;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    .line 83
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumView;->mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V

    .line 84
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    new-instance v1, Lcom/miui/gallery/ui/AlbumView$MyDataModelListener;

    invoke-direct {v1, p0, v7}, Lcom/miui/gallery/ui/AlbumView$MyDataModelListener;-><init>(Lcom/miui/gallery/ui/AlbumView;Lcom/miui/gallery/ui/AlbumView$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->setListener(Lcom/miui/gallery/ui/AlbumSlidingWindow$Listener;)V

    .line 85
    invoke-interface {p1}, Lcom/miui/gallery/ui/AlbumView$Model;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AlbumView;->setSlotCount(I)Z

    .line 86
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumView;->getVisibleStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumView;->getVisibleEnd()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/ui/AlbumView;->updateVisibleRange(II)V

    .line 88
    :cond_1
    return-void
.end method

.method public setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V
    .locals 1
    .parameter "drawer"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumView;->mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

    .line 70
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumView;->mDataWindow:Lcom/miui/gallery/ui/AlbumSlidingWindow;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/AlbumSlidingWindow;->setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V

    .line 71
    :cond_0
    return-void
.end method
