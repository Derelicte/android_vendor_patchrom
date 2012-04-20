.class public Lcom/miui/gallery/ui/HomeCameraView;
.super Lcom/miui/gallery/ui/AbstractHomeSlotView;
.source "HomeCameraView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/HomeCameraView$Model;
    }
.end annotation


# instance fields
.field private mSpec:Lcom/miui/gallery/ui/SlotView$Spec;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SelectionDrawer;Lcom/miui/gallery/ui/SlotView$Spec;)V
    .locals 0
    .parameter "activity"
    .parameter "drawer"
    .parameter "slotViewSpec"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/ui/AbstractHomeSlotView;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SelectionDrawer;Lcom/miui/gallery/ui/SlotView$Spec;)V

    .line 26
    iput-object p3, p0, Lcom/miui/gallery/ui/HomeCameraView;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    .line 27
    return-void
.end method


# virtual methods
.method public canDisplayShowAllItem()Z
    .locals 4

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 69
    .local v0, result:Z
    iget-object v2, p0, Lcom/miui/gallery/ui/HomeCameraView;->mDataWindow:Lcom/miui/gallery/ui/HomeSlidingWindowBase;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->getSource()Lcom/miui/gallery/ui/HomeSlidingWindowBase$Model;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/gallery/ui/HomeSlidingWindowBase$Model;->getTotalMediaObjectCount()I

    move-result v1

    .line 70
    .local v1, totalMediaObjectCount:I
    const/16 v2, 0xb

    if-le v1, v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/miui/gallery/ui/HomeCameraView;->mDataWindow:Lcom/miui/gallery/ui/HomeSlidingWindowBase;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->size()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 75
    const/4 v0, 0x1

    .line 79
    :cond_0
    return v0
.end method

.method protected creatDataWindow(Lcom/miui/gallery/ui/HomeSlidingWindowBase$Model;)Lcom/miui/gallery/ui/HomeSlidingWindowBase;
    .locals 6
    .parameter "model"

    .prologue
    .line 60
    new-instance v0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;

    iget-object v1, p0, Lcom/miui/gallery/ui/HomeCameraView;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v2, p0, Lcom/miui/gallery/ui/HomeCameraView;->mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

    move-object v3, p1

    check-cast v3, Lcom/miui/gallery/ui/HomeCameraView$Model;

    const/16 v4, 0xb

    iget-object v5, p0, Lcom/miui/gallery/ui/HomeCameraView;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SelectionDrawer;Lcom/miui/gallery/ui/HomeCameraView$Model;ILcom/miui/gallery/ui/SlotView$Spec;)V

    return-object v0
.end method

.method protected freeSlotContent(Ljava/lang/Object;)V
    .locals 0
    .parameter "entry"

    .prologue
    .line 52
    if-nez p1, :cond_0

    .line 55
    .end local p1
    :goto_0
    return-void

    .line 54
    .restart local p1
    :cond_0
    check-cast p1, Lcom/miui/gallery/ui/DisplayItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/HomeCameraView;->removeDisplayItem(Lcom/miui/gallery/ui/DisplayItem;)V

    goto :goto_0
.end method

.method protected putSlotContent(ILjava/lang/Object;)V
    .locals 9
    .parameter "slotIndex"
    .parameter "entry"

    .prologue
    const/4 v8, 0x0

    .line 31
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/ui/AbstractHomeSlotView;->putSlotContent(ILjava/lang/Object;)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/HomeCameraView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 34
    .local v2, rect:Landroid/graphics/Rect;
    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    div-int/lit8 v3, v5, 0x2

    .line 35
    .local v3, x:I
    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    div-int/lit8 v4, v5, 0x2

    .line 36
    .local v4, y:I
    new-instance v1, Lcom/miui/gallery/ui/PositionRepository$Position;

    int-to-float v5, v3

    int-to-float v6, v4

    invoke-direct {v1, v5, v6, v8}, Lcom/miui/gallery/ui/PositionRepository$Position;-><init>(FFF)V

    .line 38
    .local v1, position:Lcom/miui/gallery/ui/PositionRepository$Position;
    instance-of v5, p2, Lcom/miui/gallery/ui/BitmapDisplayItem;

    if-eqz v5, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomeCameraView;->canDisplayShowAllItem()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 41
    new-instance v5, Lcom/miui/gallery/ui/PositionRepository$Position;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-direct {v5, v6, v7, v8}, Lcom/miui/gallery/ui/PositionRepository$Position;-><init>(FFF)V

    check-cast p2, Lcom/miui/gallery/ui/BitmapDisplayItem;

    .end local p2
    invoke-virtual {p0, v5, v1, p2}, Lcom/miui/gallery/ui/HomeCameraView;->putDisplayItem(Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/DisplayItem;)V

    .line 48
    :cond_0
    :goto_0
    return-void

    .restart local p2
    :cond_1
    move-object v0, p2

    .line 44
    check-cast v0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;

    .line 45
    .local v0, item:Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;
    if-eqz v0, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 46
    invoke-virtual {p0, v1, v1, v0}, Lcom/miui/gallery/ui/HomeCameraView;->putDisplayItem(Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/DisplayItem;)V

    goto :goto_0

    .line 45
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method
