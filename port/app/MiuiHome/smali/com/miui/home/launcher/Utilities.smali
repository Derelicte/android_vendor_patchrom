.class final Lcom/miui/home/launcher/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/Utilities$BubbleText;
    }
.end annotation


# static fields
.field private static final sBlurPaint:Landroid/graphics/Paint;

.field private static final sBounds:Landroid/graphics/Rect;

.field private static final sCanvas:Landroid/graphics/Canvas;

.field static sColorIndex:I

.field static sColors:[I

.field static sDensity:F

.field static sDensityDpi:I

.field private static final sDisabledPaint:Landroid/graphics/Paint;

.field private static final sGlowColorFocusedPaint:Landroid/graphics/Paint;

.field private static final sGlowColorPressedPaint:Landroid/graphics/Paint;

.field private static sIconHeight:I

.field private static sIconWidth:I

.field private static final sOldBounds:Landroid/graphics/Rect;

.field private static final sPaint:Landroid/graphics/Paint;

.field private static sSystemResource:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v0, 0x5a

    .line 57
    sput v0, Lcom/miui/home/launcher/Utilities;->sIconWidth:I

    .line 58
    sput v0, Lcom/miui/home/launcher/Utilities;->sIconHeight:I

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/Utilities;->sPaint:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/Utilities;->sBounds:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 70
    sget-object v0, Lcom/miui/home/launcher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 95
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/home/launcher/Utilities;->sColors:[I

    .line 96
    const/4 v0, 0x0

    sput v0, Lcom/miui/home/launcher/Utilities;->sColorIndex:I

    .line 405
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/Utilities;->sSystemResource:Landroid/content/res/Resources;

    .line 406
    sget-object v0, Lcom/miui/home/launcher/Utilities;->sSystemResource:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v0, Lcom/miui/home/launcher/Utilities;->sDensityDpi:I

    .line 407
    sget-object v0, Lcom/miui/home/launcher/Utilities;->sSystemResource:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/miui/home/launcher/Utilities;->sDensity:F

    return-void

    .line 95
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    return-void
.end method

.method static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 16
    .parameter "icon"
    .parameter "context"

    .prologue
    .line 103
    move-object/from16 v0, p0

    instance-of v12, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v12, :cond_0

    sget v12, Lcom/miui/home/launcher/Utilities;->sIconWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    if-ne v12, v13, :cond_0

    sget v12, Lcom/miui/home/launcher/Utilities;->sIconHeight:I

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    if-ne v12, v13, :cond_0

    .line 106
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 172
    :goto_0
    return-object v1

    .line 109
    .restart local p0
    :cond_0
    sget-object v13, Lcom/miui/home/launcher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v13

    .line 110
    :try_start_0
    sget v12, Lcom/miui/home/launcher/Utilities;->sIconWidth:I

    const/4 v14, -0x1

    if-ne v12, v14, :cond_1

    .line 111
    invoke-static/range {p1 .. p1}, Lcom/miui/home/launcher/Utilities;->initStatics(Landroid/content/Context;)V

    .line 114
    :cond_1
    sget v11, Lcom/miui/home/launcher/Utilities;->sIconWidth:I

    .line 115
    .local v11, width:I
    sget v4, Lcom/miui/home/launcher/Utilities;->sIconHeight:I

    .line 117
    .local v4, height:I
    move-object/from16 v0, p0

    instance-of v12, v0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v12, :cond_5

    .line 118
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v6, v0

    .line 119
    .local v6, painter:Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v6, v11}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 120
    invoke-virtual {v6, v4}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 129
    .end local v6           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 130
    .local v9, sourceWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 132
    .local v8, sourceHeight:I
    if-lez v9, :cond_4

    if-lez v9, :cond_4

    .line 134
    if-lt v11, v9, :cond_3

    if-ge v4, v8, :cond_7

    .line 136
    :cond_3
    int-to-float v12, v9

    int-to-float v14, v8

    div-float v7, v12, v14

    .line 137
    .local v7, ratio:F
    if-le v9, v8, :cond_6

    .line 138
    int-to-float v12, v11

    div-float/2addr v12, v7

    float-to-int v4, v12

    .line 150
    .end local v7           #ratio:F
    :cond_4
    :goto_2
    sget v12, Lcom/miui/home/launcher/Utilities;->sIconWidth:I

    sget v14, Lcom/miui/home/launcher/Utilities;->sIconHeight:I

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 152
    .local v1, bitmap:Landroid/graphics/Bitmap;
    sget-object v3, Lcom/miui/home/launcher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 153
    .local v3, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 155
    sget v12, Lcom/miui/home/launcher/Utilities;->sIconWidth:I

    sub-int/2addr v12, v11

    div-int/lit8 v5, v12, 0x2

    .line 156
    .local v5, left:I
    sget v12, Lcom/miui/home/launcher/Utilities;->sIconHeight:I

    sub-int/2addr v12, v4

    div-int/lit8 v10, v12, 0x2

    .line 167
    .local v10, top:I
    sget-object v12, Lcom/miui/home/launcher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 168
    add-int v12, v5, v11

    add-int v14, v10, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v10, v12, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 169
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 170
    sget-object v12, Lcom/miui/home/launcher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 172
    monitor-exit v13

    goto :goto_0

    .line 173
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v4           #height:I
    .end local v5           #left:I
    .end local v8           #sourceHeight:I
    .end local v9           #sourceWidth:I
    .end local v10           #top:I
    .end local v11           #width:I
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 121
    .restart local v4       #height:I
    .restart local v11       #width:I
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    instance-of v12, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v12, :cond_2

    .line 123
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    .line 124
    .local v2, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 125
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v12

    sget v14, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    if-eq v12, v14, :cond_2

    .line 126
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 139
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v7       #ratio:F
    .restart local v8       #sourceHeight:I
    .restart local v9       #sourceWidth:I
    :cond_6
    if-le v8, v9, :cond_4

    .line 140
    int-to-float v12, v4

    mul-float/2addr v12, v7

    float-to-int v11, v12

    goto :goto_2

    .line 142
    .end local v7           #ratio:F
    :cond_7
    if-ge v9, v11, :cond_4

    if-ge v8, v4, :cond_4

    .line 144
    move v11, v9

    .line 145
    move v4, v8

    goto :goto_2
.end method

.method static getDipPixelSize(I)I
    .locals 2
    .parameter "dip"

    .prologue
    .line 409
    int-to-float v0, p0

    sget v1, Lcom/miui/home/launcher/Utilities;->sDensity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static initStatics(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/16 v9, 0x1e

    const/4 v8, 0x0

    .line 242
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 243
    .local v3, resources:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 244
    .local v2, metrics:Landroid/util/DisplayMetrics;
    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 246
    .local v1, density:F
    sget-object v4, Lcom/miui/home/launcher/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/BlurMaskFilter;

    const/high16 v6, 0x40a0

    mul-float/2addr v6, v1

    sget-object v7, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v5, v6, v7}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 247
    sget-object v4, Lcom/miui/home/launcher/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    const/16 v5, -0x3d00

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 248
    sget-object v4, Lcom/miui/home/launcher/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    invoke-static {v8, v9}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 249
    sget-object v4, Lcom/miui/home/launcher/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    const/16 v5, -0x7200

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    sget-object v4, Lcom/miui/home/launcher/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    invoke-static {v8, v9}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 252
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 253
    .local v0, cm:Landroid/graphics/ColorMatrix;
    const v4, 0x3e4ccccd

    invoke-virtual {v0, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 254
    sget-object v4, Lcom/miui/home/launcher/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 255
    sget-object v4, Lcom/miui/home/launcher/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    const/16 v5, 0x88

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 256
    return-void
.end method

.method static resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bitmap"
    .parameter "context"

    .prologue
    .line 212
    sget-object v1, Lcom/miui/home/launcher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v1

    .line 213
    :try_start_0
    sget v0, Lcom/miui/home/launcher/Utilities;->sIconWidth:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 214
    invoke-static {p1}, Lcom/miui/home/launcher/Utilities;->initStatics(Landroid/content/Context;)V

    .line 217
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget v2, Lcom/miui/home/launcher/Utilities;->sIconWidth:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget v2, Lcom/miui/home/launcher/Utilities;->sIconHeight:I

    if-ne v0, v2, :cond_1

    .line 218
    monitor-exit v1

    .line 220
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v0, p1}, Lcom/miui/home/launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    .end local p0
    monitor-exit v1

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static roundToPow2(I)I
    .locals 3
    .parameter "n"

    .prologue
    .line 373
    move v1, p0

    .line 374
    .local v1, orig:I
    shr-int/lit8 p0, p0, 0x1

    .line 375
    const/high16 v0, 0x800

    .line 376
    .local v0, mask:I
    :goto_0
    if-eqz v0, :cond_0

    and-int v2, p0, v0

    if-nez v2, :cond_0

    .line 377
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 380
    or-int/2addr p0, v0

    .line 381
    shr-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 383
    :cond_1
    add-int/lit8 p0, p0, 0x1

    .line 384
    if-eq p0, v1, :cond_2

    .line 385
    shl-int/lit8 p0, p0, 0x1

    .line 387
    :cond_2
    return p0
.end method
