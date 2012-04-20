.class public abstract Lcom/miui/gallery/ui/AbstractDisplayItem;
.super Lcom/miui/gallery/ui/CoverDisplayItem;
.source "AbstractDisplayItem.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field protected mFrameManager:Lcom/miui/gallery/ui/FrameBitmapManager;

.field private mImageRequested:Z

.field protected final mMediaItem:Lcom/miui/gallery/data/MediaItem;

.field private mRecycling:Z

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/miui/gallery/data/MediaItem;)V
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/CoverDisplayItem;-><init>(Lcom/miui/gallery/data/MediaItem;)V

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mState:I

    .line 38
    iput-boolean v1, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mImageRequested:Z

    .line 39
    iput-boolean v1, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mRecycling:Z

    .line 47
    iput-object p1, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    .line 48
    if-nez p1, :cond_0

    const/16 v0, 0x10

    iput v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mState:I

    .line 49
    :cond_0
    return-void
.end method

.method private cropImage()V
    .locals 17

    .prologue
    .line 131
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v14, :cond_0

    .line 192
    :goto_0
    return-void

    .line 134
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    .line 135
    .local v12, tmpBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 136
    .local v11, srcWidth:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 138
    .local v9, srcHeight:I
    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;

    iget v14, v14, Lcom/miui/gallery/ui/DisplayItem$CropDimension;->cropHeight:I

    if-eqz v14, :cond_1

    const/4 v14, 0x1

    :goto_1
    const-string v15, "wrong dimension"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 139
    int-to-float v14, v11

    int-to-float v15, v9

    div-float v10, v14, v15

    .line 140
    .local v10, srcRatio:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;

    iget v14, v14, Lcom/miui/gallery/ui/DisplayItem$CropDimension;->cropWidth:I

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;

    iget v15, v15, Lcom/miui/gallery/ui/DisplayItem$CropDimension;->cropHeight:I

    int-to-float v15, v15

    div-float v3, v14, v15

    .line 142
    .local v3, cropRatio:F
    const/4 v13, 0x0

    .line 143
    .local v13, widthSmaller:Z
    const/4 v4, 0x0

    .line 144
    .local v4, minSrcSize:I
    cmpg-float v14, v10, v3

    if-gez v14, :cond_2

    .line 145
    const/4 v13, 0x1

    .line 146
    move v4, v11

    .line 152
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;

    iget v2, v14, Lcom/miui/gallery/ui/DisplayItem$CropDimension;->cropWidth:I

    .line 153
    .local v2, coverWidth:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;

    iget v1, v14, Lcom/miui/gallery/ui/DisplayItem$CropDimension;->cropHeight:I

    .line 154
    .local v1, coverHeight:I
    const/4 v8, 0x0

    .line 155
    .local v8, scale:F
    const/4 v6, 0x0

    .line 156
    .local v6, realCropX:I
    const/4 v7, 0x0

    .line 159
    .local v7, realCropY:I
    if-eqz v13, :cond_3

    .line 160
    int-to-float v14, v2

    int-to-float v15, v4

    div-float v8, v14, v15

    .line 165
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v15, 0x1

    invoke-static {v14, v8, v15}, Lcom/miui/gallery/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 167
    .local v5, newSrcMap:Landroid/graphics/Bitmap;
    if-eqz v13, :cond_6

    .line 168
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    if-le v1, v14, :cond_4

    .line 169
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 138
    .end local v1           #coverHeight:I
    .end local v2           #coverWidth:I
    .end local v3           #cropRatio:F
    .end local v4           #minSrcSize:I
    .end local v5           #newSrcMap:Landroid/graphics/Bitmap;
    .end local v6           #realCropX:I
    .end local v7           #realCropY:I
    .end local v8           #scale:F
    .end local v10           #srcRatio:F
    .end local v13           #widthSmaller:Z
    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    .line 148
    .restart local v3       #cropRatio:F
    .restart local v4       #minSrcSize:I
    .restart local v10       #srcRatio:F
    .restart local v13       #widthSmaller:Z
    :cond_2
    const/4 v13, 0x0

    .line 149
    move v4, v9

    goto :goto_2

    .line 162
    .restart local v1       #coverHeight:I
    .restart local v2       #coverWidth:I
    .restart local v6       #realCropX:I
    .restart local v7       #realCropY:I
    .restart local v8       #scale:F
    :cond_3
    int-to-float v14, v1

    int-to-float v15, v4

    div-float v8, v14, v15

    goto :goto_3

    .line 173
    .restart local v5       #newSrcMap:Landroid/graphics/Bitmap;
    :cond_4
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    sub-int/2addr v14, v1

    div-int/lit8 v7, v14, 0x2

    .line 174
    const/4 v14, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-static {v5, v14, v7, v15, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 187
    :goto_4
    if-eq v5, v12, :cond_5

    .line 188
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 191
    :cond_5
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 177
    :cond_6
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    if-le v2, v14, :cond_7

    .line 178
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 181
    :cond_7
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    sub-int/2addr v14, v2

    div-int/lit8 v6, v14, 0x2

    .line 182
    const/4 v14, 0x0

    invoke-static {v5, v6, v14, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v12

    goto :goto_4
.end method

.method private inState(I)Z
    .locals 1
    .parameter "states"

    .prologue
    .line 125
    iget v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mState:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelImageRequest()V
    .locals 2

    .prologue
    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mImageRequested:Z

    .line 105
    iget v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 106
    const/16 v0, 0x8

    iput v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mState:I

    .line 107
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AbstractDisplayItem;->cancelLoadBitmap()V

    .line 109
    :cond_0
    return-void
.end method

.method protected abstract cancelLoadBitmap()V
.end method

.method public getIdentity()J
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaItem;->getRotation()I

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequestInProgress()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mImageRequested:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AbstractDisplayItem;->inState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onBitmapAvailable(Landroid/graphics/Bitmap;)V
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 112
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AbstractDisplayItem;->inState(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mRecycling:Z

    .line 116
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AbstractDisplayItem;->cancelImageRequest()V

    goto :goto_0
.end method

.method public requestImage()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 96
    iput-boolean v1, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mImageRequested:Z

    .line 97
    iget v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mState:I

    if-ne v0, v1, :cond_0

    .line 98
    const/4 v0, 0x4

    iput v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mState:I

    .line 99
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AbstractDisplayItem;->startLoadBitmap()V

    .line 101
    :cond_0
    return-void
.end method

.method protected abstract startLoadBitmap()V
.end method

.method protected updateImage(Landroid/graphics/Bitmap;Z)V
    .locals 5
    .parameter "bitmap"
    .parameter "isCancelled"

    .prologue
    const/4 v2, 0x1

    .line 52
    iget-boolean v3, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mRecycling:Z

    if-eqz v3, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    .line 57
    iput v2, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mState:I

    .line 58
    iget-boolean v3, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mImageRequested:Z

    if-eqz v3, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AbstractDisplayItem;->requestImage()V

    goto :goto_0

    .line 65
    :cond_2
    iput-object p1, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    .line 67
    iget-object v3, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    .line 68
    iget-object v3, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v3}, Lcom/miui/gallery/data/MediaItem;->getRotation()I

    move-result v0

    .line 69
    .local v0, rotation:I
    div-int/lit8 v3, v0, 0x5a

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v2, :cond_5

    .line 70
    .local v2, vertical:Z
    :goto_1
    if-eqz v2, :cond_3

    .line 71
    iget-object v3, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;

    iget v1, v3, Lcom/miui/gallery/ui/DisplayItem$CropDimension;->cropHeight:I

    .line 72
    .local v1, tmp:I
    iget-object v3, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;

    iget-object v4, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;

    iget v4, v4, Lcom/miui/gallery/ui/DisplayItem$CropDimension;->cropWidth:I

    iput v4, v3, Lcom/miui/gallery/ui/DisplayItem$CropDimension;->cropHeight:I

    .line 73
    iget-object v3, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;

    iput v1, v3, Lcom/miui/gallery/ui/DisplayItem$CropDimension;->cropWidth:I

    .line 75
    .end local v1           #tmp:I
    :cond_3
    invoke-direct {p0}, Lcom/miui/gallery/ui/AbstractDisplayItem;->cropImage()V

    .line 78
    .end local v0           #rotation:I
    .end local v2           #vertical:Z
    :cond_4
    if-nez p1, :cond_6

    const/16 v3, 0x10

    :goto_2
    iput v3, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mState:I

    .line 79
    iget-object v3, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v3}, Lcom/miui/gallery/ui/AbstractDisplayItem;->onBitmapAvailable(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 69
    .restart local v0       #rotation:I
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 78
    .end local v0           #rotation:I
    :cond_6
    const/4 v3, 0x2

    goto :goto_2
.end method
