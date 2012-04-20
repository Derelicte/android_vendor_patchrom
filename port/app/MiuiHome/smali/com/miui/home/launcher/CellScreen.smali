.class public Lcom/miui/home/launcher/CellScreen;
.super Landroid/widget/FrameLayout;
.source "CellScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/home/launcher/DragController$TouchTranslator;


# instance fields
.field private mAnimComplateListener:Landroid/view/animation/Animation$AnimationListener;

.field private mBackground:Landroid/widget/ImageView;

.field private mBackgroundContainer:Landroid/widget/FrameLayout;

.field private mBgCenterEnter:Landroid/view/animation/Animation;

.field private mBgCenterExit:Landroid/view/animation/Animation;

.field private mBgLeftEnter:Landroid/view/animation/Animation;

.field private mBgLeftExit:Landroid/view/animation/Animation;

.field private mBgRightEnter:Landroid/view/animation/Animation;

.field private mBgRightExit:Landroid/view/animation/Animation;

.field private mCellCenterEnter:Landroid/view/animation/Animation;

.field private mCellCenterExit:Landroid/view/animation/Animation;

.field private mCellLayout:Lcom/miui/home/launcher/CellLayout;

.field private mCellLeftEnter:Landroid/view/animation/Animation;

.field private mCellLeftExit:Landroid/view/animation/Animation;

.field private mCellOthersEnter:Landroid/view/animation/Animation;

.field private mCellRightEnter:Landroid/view/animation/Animation;

.field private mCellRightExit:Landroid/view/animation/Animation;

.field private mDeleteButton:Landroid/widget/ImageView;

.field private mDrawingCacheHolder:Landroid/graphics/Bitmap;

.field private mEditingPreview:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mInEditing:Z

.field private mIsEditingNewScreenMode:Z

.field private mMyCachePaint:Landroid/graphics/Paint;

.field private mNewButton:Landroid/widget/ImageView;

.field private mTranslateXY:[F

.field private mWorkspacePreview:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput-boolean v0, p0, Lcom/miui/home/launcher/CellScreen;->mInEditing:Z

    .line 49
    iput-boolean v0, p0, Lcom/miui/home/launcher/CellScreen;->mIsEditingNewScreenMode:Z

    .line 51
    iput-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mMyCachePaint:Landroid/graphics/Paint;

    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mTranslateXY:[F

    .line 159
    new-instance v0, Lcom/miui/home/launcher/CellScreen$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/CellScreen$1;-><init>(Lcom/miui/home/launcher/CellScreen;)V

    iput-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mAnimComplateListener:Landroid/view/animation/Animation$AnimationListener;

    .line 328
    iput-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mWorkspacePreview:Ljava/lang/ref/SoftReference;

    .line 329
    iput-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mEditingPreview:Ljava/lang/ref/SoftReference;

    .line 368
    iput-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mDrawingCacheHolder:Landroid/graphics/Bitmap;

    .line 55
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/CellScreen;->setDrawingCacheEnabled(Z)V

    .line 56
    invoke-virtual {p0, v2, v1}, Lcom/miui/home/launcher/CellScreen;->setLayerType(ILandroid/graphics/Paint;)V

    .line 57
    invoke-static {}, Lcom/miui/home/launcher/Launcher;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mMyCachePaint:Landroid/graphics/Paint;

    .line 59
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mMyCachePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 61
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/CellScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellScreen;->mInEditing:Z

    return v0
.end method

.method private translateTouchX(F)F
    .locals 3
    .parameter "x"

    .prologue
    .line 101
    const v0, 0x3f9e1a4f

    mul-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e70d278

    mul-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private translateTouchY(F)F
    .locals 3
    .parameter "y"

    .prologue
    .line 104
    const v0, 0x3f9e1a4f

    mul-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e70d278

    mul-float/2addr v1, v2

    const/high16 v2, 0x4040

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public destroyDrawingCache()V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 131
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellScreen;->mInEditing:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mTranslateXY:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    aput v1, v0, v3

    .line 133
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mTranslateXY:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aput v1, v0, v4

    .line 134
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mTranslateXY:[F

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellScreen;->translateTouch([F)V

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mTranslateXY:[F

    aget v3, v0, v3

    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mTranslateXY:[F

    aget v4, v0, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/view/MotionEvent;->addBatch(JFFFFI)V

    .line 138
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getCellLayout()Lcom/miui/home/launcher/CellLayout;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    return-object v0
.end method

.method public getDrawingCache(Z)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "autoScale"

    .prologue
    .line 372
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mDrawingCacheHolder:Landroid/graphics/Bitmap;

    .line 373
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mDrawingCacheHolder:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTag(I)Ljava/lang/Object;
    .locals 2
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    .line 344
    const v1, 0x7f070002

    if-ne p1, v1, :cond_2

    .line 345
    iget-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mWorkspacePreview:Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-object v0

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mWorkspacePreview:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 346
    :cond_2
    const v1, 0x7f070003

    if-ne p1, v1, :cond_3

    .line 347
    iget-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mEditingPreview:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mEditingPreview:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 349
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 1
    .parameter "location"
    .parameter "dirty"

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->updateVision()V

    .line 356
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public isEditingNewScreenMode()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellScreen;->mIsEditingNewScreenMode:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 150
    .local v0, vp:Landroid/view/ViewParent;
    instance-of v1, v0, Lcom/miui/home/launcher/Workspace;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mDeleteButton:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_1

    .line 152
    check-cast v0, Lcom/miui/home/launcher/Workspace;

    .end local v0           #vp:Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->deleteScreen(J)V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 153
    .restart local v0       #vp:Landroid/view/ViewParent;
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mNewButton:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_0

    .line 154
    check-cast v0, Lcom/miui/home/launcher/Workspace;

    .end local v0           #vp:Landroid/view/ViewParent;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->insertNewScreen(I)V

    goto :goto_0
.end method

.method onDragEnter(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->onDragEnter(Lcom/miui/home/launcher/DropTarget$DragObject;)V

    .line 305
    return-void
.end method

.method onDragExit(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->isEditingNewScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mNewButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->onDragExit(Lcom/miui/home/launcher/DropTarget$DragObject;)V

    .line 312
    return-void
.end method

.method onDragOver(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->isEditingNewScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mNewButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 321
    :goto_0
    return-void

    .line 318
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellScreen;->translateTouch(Lcom/miui/home/launcher/DropTarget$DragObject;)V

    .line 319
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->onDragOver(Lcom/miui/home/launcher/DropTarget$DragObject;)V

    goto :goto_0
.end method

.method onDrop(Lcom/miui/home/launcher/DropTarget$DragObject;Landroid/view/View;)Z
    .locals 1
    .parameter "d"
    .parameter "v"

    .prologue
    .line 324
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellScreen;->translateTouch(Lcom/miui/home/launcher/DropTarget$DragObject;)V

    .line 325
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/CellLayout;->onDrop(Lcom/miui/home/launcher/DropTarget$DragObject;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method onEditingAnimationEnterEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 211
    invoke-static {}, Lcom/miui/home/launcher/Launcher;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mMyCachePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v2, v0}, Lcom/miui/home/launcher/CellScreen;->setLayerType(ILandroid/graphics/Paint;)V

    .line 213
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/CellScreen;->setDrawingCacheEnabled(Z)V

    .line 214
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mBackgroundContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setDrawingCacheEnabled(Z)V

    .line 215
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setDrawingCacheEnabled(Z)V

    .line 217
    :cond_0
    return-void
.end method

.method onEditingAnimationEnterStart()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 198
    invoke-static {}, Lcom/miui/home/launcher/Launcher;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0, v2, v3}, Lcom/miui/home/launcher/CellScreen;->setLayerType(ILandroid/graphics/Paint;)V

    .line 208
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-virtual {p0, v1, v3}, Lcom/miui/home/launcher/CellScreen;->setLayerType(ILandroid/graphics/Paint;)V

    .line 202
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/CellScreen;->setDrawingCacheEnabled(Z)V

    .line 203
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mBackgroundContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setDrawingCacheEnabled(Z)V

    .line 204
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setDrawingCacheEnabled(Z)V

    .line 205
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mBackgroundContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    .line 206
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method onEditingAnimationExitEnd(Z)V
    .locals 3
    .parameter "isCenter"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 231
    if-nez p1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->clearAnimation()V

    .line 234
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Launcher;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/CellScreen;->setDrawingCacheEnabled(Z)V

    .line 236
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mBackgroundContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setDrawingCacheEnabled(Z)V

    .line 237
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setDrawingCacheEnabled(Z)V

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/miui/home/launcher/CellScreen;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method onEditingAnimationExitStart()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 220
    invoke-static {}, Lcom/miui/home/launcher/Launcher;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/CellScreen;->setLayerType(ILandroid/graphics/Paint;)V

    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellScreen;->setDrawingCacheEnabled(Z)V

    .line 223
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mBackgroundContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setDrawingCacheEnabled(Z)V

    .line 224
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setDrawingCacheEnabled(Z)V

    .line 225
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mBackgroundContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    .line 226
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    .line 228
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 65
    const v0, 0x7f07000e

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    .line 66
    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mBackgroundContainer:Landroid/widget/FrameLayout;

    .line 67
    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mBackground:Landroid/widget/ImageView;

    .line 68
    const v0, 0x7f07000c

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mDeleteButton:Landroid/widget/ImageView;

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v0, 0x7f07000d

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/CellScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mNewButton:Landroid/widget/ImageView;

    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mNewButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellCenterEnter:Landroid/view/animation/Animation;

    .line 73
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040007

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellCenterExit:Landroid/view/animation/Animation;

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellCenterExit:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mAnimComplateListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 75
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040008

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLeftEnter:Landroid/view/animation/Animation;

    .line 76
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040009

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLeftExit:Landroid/view/animation/Animation;

    .line 77
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellRightEnter:Landroid/view/animation/Animation;

    .line 78
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellRightExit:Landroid/view/animation/Animation;

    .line 79
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellOthersEnter:Landroid/view/animation/Animation;

    .line 80
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f04

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mBgCenterEnter:Landroid/view/animation/Animation;

    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mBgCenterEnter:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mAnimComplateListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 82
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mBgCenterExit:Landroid/view/animation/Animation;

    .line 83
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mBgLeftEnter:Landroid/view/animation/Animation;

    .line 84
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mBgLeftExit:Landroid/view/animation/Animation;

    .line 85
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040004

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mBgRightEnter:Landroid/view/animation/Animation;

    .line 86
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040005

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mBgRightExit:Landroid/view/animation/Animation;

    .line 87
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mFadeIn:Landroid/view/animation/Animation;

    .line 88
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040011

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mFadeOut:Landroid/view/animation/Animation;

    .line 89
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 143
    iget-object v2, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    iget-boolean v0, p0, Lcom/miui/home/launcher/CellScreen;->mInEditing:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->isEditingNewScreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/CellLayout;->setDisableTouch(Z)V

    .line 144
    return v1

    :cond_1
    move v0, v1

    .line 143
    goto :goto_0
.end method

.method onQuickEditingModeChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 244
    invoke-static {}, Lcom/miui/home/launcher/Launcher;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/CellScreen;->setLayerType(ILandroid/graphics/Paint;)V

    .line 247
    :cond_0
    return-void

    .line 245
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setEditMode(ZI)V
    .locals 2
    .parameter "isEditing"
    .parameter "curDist"

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/miui/home/launcher/CellScreen;->mInEditing:Z

    .line 251
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->setEditMode(Z)V

    .line 252
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    .line 253
    iget-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mBackgroundContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 254
    if-eqz p1, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->onEditingAnimationEnterStart()V

    .line 259
    :goto_1
    packed-switch p2, :pswitch_data_0

    .line 283
    if-eqz p1, :cond_6

    .line 284
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mCellOthersEnter:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 290
    :goto_2
    return-void

    .line 253
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->onEditingAnimationExitStart()V

    goto :goto_1

    .line 261
    :pswitch_0
    iget-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellCenterEnter:Landroid/view/animation/Animation;

    :goto_3
    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/CellLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 262
    iget-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mBackgroundContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mBgCenterEnter:Landroid/view/animation/Animation;

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellCenterExit:Landroid/view/animation/Animation;

    goto :goto_3

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mBgCenterExit:Landroid/view/animation/Animation;

    goto :goto_4

    .line 265
    :pswitch_1
    if-eqz p1, :cond_4

    .line 266
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mCellOthersEnter:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 267
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mBackgroundContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mBgLeftEnter:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 269
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mCellLeftExit:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 270
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mBackgroundContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mBgLeftExit:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 274
    :pswitch_2
    if-eqz p1, :cond_5

    .line 275
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mCellOthersEnter:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 276
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mBackgroundContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mBgRightEnter:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 278
    :cond_5
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mCellRightExit:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 279
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mBackgroundContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mBgRightExit:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 286
    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->clearAnimation()V

    goto :goto_2

    .line 259
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setEditingNewScreenMode()V
    .locals 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mBackground:Landroid/widget/ImageView;

    const v1, 0x7f02001a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 298
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mNewButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/CellLayout;->setScreenId(J)V

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/CellScreen;->mIsEditingNewScreenMode:Z

    .line 301
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 182
    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .locals 2
    .parameter "key"
    .parameter "tag"

    .prologue
    const/4 v0, 0x0

    .line 333
    const v1, 0x7f070002

    if-ne p1, v1, :cond_1

    .line 334
    if-nez p2, :cond_0

    :goto_0
    iput-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mWorkspacePreview:Ljava/lang/ref/SoftReference;

    .line 340
    :goto_1
    return-void

    .line 334
    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 335
    :cond_1
    const v1, 0x7f070003

    if-ne p1, v1, :cond_3

    .line 336
    if-nez p2, :cond_2

    :goto_2
    iput-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mEditingPreview:Ljava/lang/ref/SoftReference;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    .line 338
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public translatePosition(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "pos"

    .prologue
    const v2, 0x3e42f838

    .line 115
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellScreen;->mInEditing:Z

    if-eqz v0, :cond_0

    .line 116
    const v0, 0x3f4f41f2

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 117
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    shr-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shr-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 120
    :cond_0
    return-void
.end method

.method translateTouch(Lcom/miui/home/launcher/DropTarget$DragObject;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellScreen;->mInEditing:Z

    if-eqz v0, :cond_0

    .line 124
    iget v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->x:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/CellScreen;->translateTouchX(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->x:I

    .line 125
    iget v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->y:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/CellScreen;->translateTouchY(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Lcom/miui/home/launcher/DropTarget$DragObject;->y:I

    .line 127
    :cond_0
    return-void
.end method

.method public translateTouch([F)V
    .locals 3
    .parameter "translateXY"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 108
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellScreen;->mInEditing:Z

    if-eqz v0, :cond_0

    .line 109
    aget v0, p1, v1

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/CellScreen;->translateTouchX(F)F

    move-result v0

    aput v0, p1, v1

    .line 110
    aget v0, p1, v2

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/CellScreen;->translateTouchY(F)F

    move-result v0

    aput v0, p1, v2

    .line 112
    :cond_0
    return-void
.end method

.method public updateLayout()V
    .locals 2

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/miui/home/launcher/CellScreen;->mInEditing:Z

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->isEditingNewScreenMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mDeleteButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mDeleteButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 194
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->clearCellBackground()V

    .line 195
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mDeleteButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen;->mDeleteButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/home/launcher/CellScreen;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method updateVision()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 360
    const v0, 0x7f070004

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/CellScreen;->setTag(ILjava/lang/Object;)V

    .line 361
    const v0, 0x7f070005

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/CellScreen;->setTag(ILjava/lang/Object;)V

    .line 362
    return-void
.end method
