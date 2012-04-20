.class abstract Lcom/miui/gallery/ui/UploadedTexture;
.super Lcom/miui/gallery/ui/BasicTexture;
.source "UploadedTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/UploadedTexture$1;,
        Lcom/miui/gallery/ui/UploadedTexture$BorderKey;
    }
.end annotation


# static fields
.field private static sBorderKey:Lcom/miui/gallery/ui/UploadedTexture$BorderKey;

.field private static sBorderLines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/miui/gallery/ui/UploadedTexture$BorderKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field static sCropRect:[F

.field static sTextureId:[I

.field private static sUploadedCount:I


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field private mBorder:I

.field private mContentValid:Z

.field private mOpaque:Z

.field private mThrottled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/gallery/ui/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    .line 49
    new-instance v0, Lcom/miui/gallery/ui/UploadedTexture$BorderKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/UploadedTexture$BorderKey;-><init>(Lcom/miui/gallery/ui/UploadedTexture$1;)V

    sput-object v0, Lcom/miui/gallery/ui/UploadedTexture;->sBorderKey:Lcom/miui/gallery/ui/UploadedTexture$BorderKey;

    .line 203
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/gallery/ui/UploadedTexture;->sTextureId:[I

    .line 204
    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/miui/gallery/ui/UploadedTexture;->sCropRect:[F

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/UploadedTexture;-><init>(Z)V

    .line 64
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 3
    .parameter "hasBorder"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2, v2}, Lcom/miui/gallery/ui/BasicTexture;-><init>(Lcom/miui/gallery/ui/GLCanvas;II)V

    .line 53
    iput-boolean v1, p0, Lcom/miui/gallery/ui/UploadedTexture;->mContentValid:Z

    .line 54
    iput-boolean v1, p0, Lcom/miui/gallery/ui/UploadedTexture;->mOpaque:Z

    .line 55
    iput-boolean v2, p0, Lcom/miui/gallery/ui/UploadedTexture;->mThrottled:Z

    .line 68
    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/UploadedTexture;->setBorder(Z)V

    .line 70
    iput v1, p0, Lcom/miui/gallery/ui/UploadedTexture;->mBorder:I

    .line 72
    :cond_0
    return-void
.end method

.method private freeBitmap()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/miui/gallery/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 141
    iget-object v0, p0, Lcom/miui/gallery/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/UploadedTexture;->onFreeBitmap(Landroid/graphics/Bitmap;)V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 143
    return-void

    .line 140
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 124
    iget-object v2, p0, Lcom/miui/gallery/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/miui/gallery/ui/UploadedTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 126
    iget-object v2, p0, Lcom/miui/gallery/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/miui/gallery/ui/UploadedTexture;->mBorder:I

    mul-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 127
    .local v1, w:I
    iget-object v2, p0, Lcom/miui/gallery/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/miui/gallery/ui/UploadedTexture;->mBorder:I

    mul-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 128
    .local v0, h:I
    iget v2, p0, Lcom/miui/gallery/ui/UploadedTexture;->mWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 129
    invoke-virtual {p0, v1, v0}, Lcom/miui/gallery/ui/UploadedTexture;->setSize(II)V

    .line 136
    .end local v0           #h:I
    .end local v1           #w:I
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-object v2

    .line 130
    .restart local v0       #h:I
    .restart local v1       #w:I
    :cond_1
    iget v2, p0, Lcom/miui/gallery/ui/UploadedTexture;->mWidth:I

    if-ne v2, v1, :cond_2

    iget v2, p0, Lcom/miui/gallery/ui/UploadedTexture;->mHeight:I

    if-eq v2, v0, :cond_0

    .line 131
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "cannot change size: this = %s, orig = %sx%s, new = %sx%s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/miui/gallery/ui/UploadedTexture;->mWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Lcom/miui/gallery/ui/UploadedTexture;->mHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "vertical"
    .parameter "config"
    .parameter "length"

    .prologue
    const/4 v3, 0x1

    .line 109
    sget-object v1, Lcom/miui/gallery/ui/UploadedTexture;->sBorderKey:Lcom/miui/gallery/ui/UploadedTexture$BorderKey;

    .line 110
    .local v1, key:Lcom/miui/gallery/ui/UploadedTexture$BorderKey;
    iput-boolean p0, v1, Lcom/miui/gallery/ui/UploadedTexture$BorderKey;->vertical:Z

    .line 111
    iput-object p1, v1, Lcom/miui/gallery/ui/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    .line 112
    iput p2, v1, Lcom/miui/gallery/ui/UploadedTexture$BorderKey;->length:I

    .line 113
    sget-object v2, Lcom/miui/gallery/ui/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 114
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 115
    if-eqz p0, :cond_1

    invoke-static {v3, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    :goto_0
    sget-object v2, Lcom/miui/gallery/ui/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/UploadedTexture$BorderKey;->clone()Lcom/miui/gallery/ui/UploadedTexture$BorderKey;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_0
    return-object v0

    .line 115
    :cond_1
    invoke-static {p2, v3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static resetUploadLimit()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    sput v0, Lcom/miui/gallery/ui/UploadedTexture;->sUploadedCount:I

    .line 197
    return-void
.end method

.method public static uploadLimitReached()Z
    .locals 2

    .prologue
    .line 200
    sget v0, Lcom/miui/gallery/ui/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private uploadToCanvas(Lcom/miui/gallery/ui/GLCanvas;)V
    .locals 27
    .parameter "canvas"

    .prologue
    .line 207
    invoke-interface/range {p1 .. p1}, Lcom/miui/gallery/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v1

    .line 209
    .local v1, gl:Ljavax/microedition/khronos/opengles/GL11;
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/ui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    .line 210
    .local v14, bitmap:Landroid/graphics/Bitmap;
    if-eqz v14, :cond_6

    .line 212
    :try_start_0
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    .line 213
    .local v23, bWidth:I
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    .line 214
    .local v22, bHeight:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/ui/UploadedTexture;->mBorder:I

    mul-int/lit8 v2, v2, 0x2

    add-int v26, v23, v2

    .line 215
    .local v26, width:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/ui/UploadedTexture;->mBorder:I

    mul-int/lit8 v2, v2, 0x2

    add-int v25, v22, v2

    .line 216
    .local v25, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/UploadedTexture;->getTextureWidth()I

    move-result v5

    .line 217
    .local v5, texWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/UploadedTexture;->getTextureHeight()I

    move-result v6

    .line 222
    .local v6, texHeight:I
    sget-object v2, Lcom/miui/gallery/ui/UploadedTexture;->sCropRect:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/miui/gallery/ui/UploadedTexture;->mBorder:I

    int-to-float v7, v7

    aput v7, v2, v3

    .line 223
    sget-object v2, Lcom/miui/gallery/ui/UploadedTexture;->sCropRect:[F

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/miui/gallery/ui/UploadedTexture;->mBorder:I

    add-int v7, v7, v22

    int-to-float v7, v7

    aput v7, v2, v3

    .line 224
    sget-object v2, Lcom/miui/gallery/ui/UploadedTexture;->sCropRect:[F

    const/4 v3, 0x2

    move/from16 v0, v23

    int-to-float v7, v0

    aput v7, v2, v3

    .line 225
    sget-object v2, Lcom/miui/gallery/ui/UploadedTexture;->sCropRect:[F

    const/4 v3, 0x3

    move/from16 v0, v22

    neg-int v7, v0

    int-to-float v7, v7

    aput v7, v2, v3

    .line 228
    const/4 v2, 0x1

    sget-object v3, Lcom/miui/gallery/ui/UploadedTexture;->sTextureId:[I

    const/4 v7, 0x0

    invoke-interface {v1, v2, v3, v7}, Ljavax/microedition/khronos/opengles/GL11;->glGenTextures(I[II)V

    .line 229
    const/16 v2, 0xde1

    sget-object v3, Lcom/miui/gallery/ui/UploadedTexture;->sTextureId:[I

    const/4 v7, 0x0

    aget v3, v3, v7

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 230
    const/16 v2, 0xde1

    const v3, 0x8b9d

    sget-object v7, Lcom/miui/gallery/ui/UploadedTexture;->sCropRect:[F

    const/4 v8, 0x0

    invoke-interface {v1, v2, v3, v7, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    .line 232
    const/16 v2, 0xde1

    const/16 v3, 0x2802

    const v7, 0x812f

    invoke-interface {v1, v2, v3, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 234
    const/16 v2, 0xde1

    const/16 v3, 0x2803

    const v7, 0x812f

    invoke-interface {v1, v2, v3, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 236
    const/16 v2, 0xde1

    const/16 v3, 0x2801

    const v7, 0x46180400

    invoke-interface {v1, v2, v3, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 238
    const/16 v2, 0xde1

    const/16 v3, 0x2800

    const v7, 0x46180400

    invoke-interface {v1, v2, v3, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 241
    move/from16 v0, v23

    if-ne v0, v5, :cond_2

    move/from16 v0, v22

    if-ne v0, v6, :cond_2

    .line 242
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v3, v14, v7}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/ui/UploadedTexture;->freeBitmap()V

    .line 286
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/miui/gallery/ui/UploadedTexture;->setAssociatedCanvas(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 287
    sget-object v2, Lcom/miui/gallery/ui/UploadedTexture;->sTextureId:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/miui/gallery/ui/UploadedTexture;->mId:I

    .line 288
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/miui/gallery/ui/UploadedTexture;->mState:I

    .line 289
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/miui/gallery/ui/UploadedTexture;->mContentValid:Z

    .line 294
    return-void

    .line 244
    :cond_2
    :try_start_1
    invoke-static {v14}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v4

    .line 245
    .local v4, format:I
    invoke-static {v14}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v9

    .line 246
    .local v9, type:I
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v24

    .line 248
    .local v24, config:Landroid/graphics/Bitmap$Config;
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move v8, v4

    invoke-interface/range {v1 .. v10}, Ljavax/microedition/khronos/opengles/GL11;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 250
    const/16 v10, 0xde1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/miui/gallery/ui/UploadedTexture;->mBorder:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/gallery/ui/UploadedTexture;->mBorder:I

    move v15, v4

    move/from16 v16, v9

    invoke-static/range {v10 .. v16}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 253
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/ui/UploadedTexture;->mBorder:I

    if-lez v2, :cond_3

    .line 255
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-static {v2, v0, v6}, Lcom/miui/gallery/ui/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 256
    .local v19, line:Landroid/graphics/Bitmap;
    const/16 v15, 0xde1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v20, v4

    move/from16 v21, v9

    invoke-static/range {v15 .. v21}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 260
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-static {v2, v0, v5}, Lcom/miui/gallery/ui/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 261
    const/16 v15, 0xde1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v20, v4

    move/from16 v21, v9

    invoke-static/range {v15 .. v21}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 266
    .end local v19           #line:Landroid/graphics/Bitmap;
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/ui/UploadedTexture;->mBorder:I

    add-int v2, v2, v23

    if-ge v2, v5, :cond_4

    .line 267
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-static {v2, v0, v6}, Lcom/miui/gallery/ui/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 268
    .restart local v19       #line:Landroid/graphics/Bitmap;
    const/16 v15, 0xde1

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/ui/UploadedTexture;->mBorder:I

    add-int v17, v2, v23

    const/16 v18, 0x0

    move/from16 v20, v4

    move/from16 v21, v9

    invoke-static/range {v15 .. v21}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 273
    .end local v19           #line:Landroid/graphics/Bitmap;
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/ui/UploadedTexture;->mBorder:I

    add-int v2, v2, v22

    if-ge v2, v6, :cond_0

    .line 274
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-static {v2, v0, v5}, Lcom/miui/gallery/ui/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 275
    .restart local v19       #line:Landroid/graphics/Bitmap;
    const/16 v15, 0xde1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/ui/UploadedTexture;->mBorder:I

    add-int v18, v2, v22

    move/from16 v20, v4

    move/from16 v21, v9

    invoke-static/range {v15 .. v21}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 283
    .end local v4           #format:I
    .end local v5           #texWidth:I
    .end local v6           #texHeight:I
    .end local v9           #type:I
    .end local v19           #line:Landroid/graphics/Bitmap;
    .end local v22           #bHeight:I
    .end local v23           #bWidth:I
    .end local v24           #config:Landroid/graphics/Bitmap$Config;
    .end local v25           #height:I
    .end local v26           #width:I
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/ui/UploadedTexture;->freeBitmap()V

    :cond_5
    throw v2

    .line 291
    :cond_6
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/miui/gallery/ui/UploadedTexture;->mState:I

    .line 292
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Texture load fail, no bitmap"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    .prologue
    .line 153
    iget v0, p0, Lcom/miui/gallery/ui/UploadedTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/ui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 154
    :cond_0
    iget v0, p0, Lcom/miui/gallery/ui/UploadedTexture;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 147
    iget v0, p0, Lcom/miui/gallery/ui/UploadedTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/ui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 148
    :cond_0
    iget v0, p0, Lcom/miui/gallery/ui/UploadedTexture;->mWidth:I

    return v0
.end method

.method protected invalidateContent()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/miui/gallery/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/ui/UploadedTexture;->freeBitmap()V

    .line 163
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/UploadedTexture;->mContentValid:Z

    .line 164
    return-void
.end method

.method public isContentValid(Lcom/miui/gallery/ui/GLCanvas;)Z
    .locals 1
    .parameter "canvas"

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/UploadedTexture;->isLoaded(Lcom/miui/gallery/ui/GLCanvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/ui/UploadedTexture;->mContentValid:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/miui/gallery/ui/UploadedTexture;->mOpaque:Z

    return v0
.end method

.method protected onBind(Lcom/miui/gallery/ui/GLCanvas;)Z
    .locals 1
    .parameter "canvas"

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/UploadedTexture;->updateContent(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 299
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/UploadedTexture;->isContentValid(Lcom/miui/gallery/ui/GLCanvas;)Z

    move-result v0

    return v0
.end method

.method protected abstract onFreeBitmap(Landroid/graphics/Bitmap;)V
.end method

.method protected abstract onGetBitmap()Landroid/graphics/Bitmap;
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 312
    invoke-super {p0}, Lcom/miui/gallery/ui/BasicTexture;->recycle()V

    .line 313
    iget-object v0, p0, Lcom/miui/gallery/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/ui/UploadedTexture;->freeBitmap()V

    .line 314
    :cond_0
    return-void
.end method

.method public setOpaque(Z)V
    .locals 0
    .parameter "isOpaque"

    .prologue
    .line 303
    iput-boolean p1, p0, Lcom/miui/gallery/ui/UploadedTexture;->mOpaque:Z

    .line 304
    return-void
.end method

.method protected setThrottled(Z)V
    .locals 0
    .parameter "throttled"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/miui/gallery/ui/UploadedTexture;->mThrottled:Z

    .line 105
    return-void
.end method

.method public updateContent(Lcom/miui/gallery/ui/GLCanvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/16 v0, 0xde1

    .line 178
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/UploadedTexture;->isLoaded(Lcom/miui/gallery/ui/GLCanvas;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 179
    iget-boolean v0, p0, Lcom/miui/gallery/ui/UploadedTexture;->mThrottled:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/miui/gallery/ui/UploadedTexture;->sUploadedCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miui/gallery/ui/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/UploadedTexture;->uploadToCanvas(Lcom/miui/gallery/ui/GLCanvas;)V

    goto :goto_0

    .line 183
    :cond_2
    iget-boolean v1, p0, Lcom/miui/gallery/ui/UploadedTexture;->mContentValid:Z

    if-nez v1, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/miui/gallery/ui/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 185
    .local v4, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v5

    .line 186
    .local v5, format:I
    invoke-static {v4}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v6

    .line 187
    .local v6, type:I
    invoke-interface {p1}, Lcom/miui/gallery/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/ui/UploadedTexture;->mId:I

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 188
    const/4 v1, 0x0

    iget v2, p0, Lcom/miui/gallery/ui/UploadedTexture;->mBorder:I

    iget v3, p0, Lcom/miui/gallery/ui/UploadedTexture;->mBorder:I

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 190
    invoke-direct {p0}, Lcom/miui/gallery/ui/UploadedTexture;->freeBitmap()V

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/UploadedTexture;->mContentValid:Z

    goto :goto_0
.end method
