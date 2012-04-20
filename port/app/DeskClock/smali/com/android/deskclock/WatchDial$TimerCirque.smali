.class Lcom/android/deskclock/WatchDial$TimerCirque;
.super Landroid/widget/ImageView;
.source "WatchDial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/WatchDial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimerCirque"
.end annotation


# instance fields
.field private final TIMERCIRQUE_RADIUSOUTER:D

.field private final TIMERCIRQUE_STARTX:I

.field private final TIMERCIRQUE_STARTY:I

.field private final TIMERCIRQUE_WIDTH:D

.field private final TIMERMASK_DEGREEOFFSET:D

.field private final TIMERMASK_RADIUS:D

.field private final TIMERMASK_STARTX:D

.field private final TIMERMASK_STARTY:D

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCirque:Landroid/graphics/Bitmap;

.field private mDegrees:D

.field private mPaint:Landroid/graphics/Paint;

.field private mResult:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/android/deskclock/WatchDial;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/WatchDial;Landroid/content/Context;)V
    .locals 8
    .parameter
    .parameter "context"

    .prologue
    const/4 v7, -0x2

    const-wide/high16 v5, 0x4000

    .line 210
    iput-object p1, p0, Lcom/android/deskclock/WatchDial$TimerCirque;->this$0:Lcom/android/deskclock/WatchDial;

    .line 211
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 209
    const-wide/high16 v1, 0x4004

    iput-wide v1, p0, Lcom/android/deskclock/WatchDial$TimerCirque;->TIMERMASK_DEGREEOFFSET:D

    .line 212
    #getter for: Lcom/android/deskclock/WatchDial;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/deskclock/WatchDial;->access$000(Lcom/android/deskclock/WatchDial;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, p0, Lcom/android/deskclock/WatchDial$TimerCirque;->TIMERCIRQUE_RADIUSOUTER:D

    .line 213
    #getter for: Lcom/android/deskclock/WatchDial;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/deskclock/WatchDial;->access$000(Lcom/android/deskclock/WatchDial;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, p0, Lcom/android/deskclock/WatchDial$TimerCirque;->TIMERCIRQUE_WIDTH:D

    .line 214
    iget-wide v1, p0, Lcom/android/deskclock/WatchDial$TimerCirque;->TIMERCIRQUE_RADIUSOUTER:D

    iget-wide v3, p0, Lcom/android/deskclock/WatchDial$TimerCirque;->TIMERCIRQUE_WIDTH:D

    div-double/2addr v3, v5

    sub-double/2addr v1, v3

    iput-wide v1, p0, Lcom/android/deskclock/WatchDial$TimerCirque;->TIMERMASK_RADIUS:D

    .line 215
    #getter for: Lcom/android/deskclock/WatchDial;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/deskclock/WatchDial;->access$000(Lcom/android/deskclock/WatchDial;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/deskclock/WatchDial$TimerCirque;->TIMERCIRQUE_STARTX:I

    .line 216
    #getter for: Lcom/android/deskclock/WatchDial;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/deskclock/WatchDial;->access$000(Lcom/android/deskclock/WatchDial;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/deskclock/WatchDial$TimerCirque;->TIMERCIRQUE_STARTY:I

    .line 217
    iget-wide v1, p0, Lcom/android/deskclock/WatchDial$TimerCirque;->TIMERCIRQUE_WIDTH:D

    div-double/2addr v1, v5

    iput-wide v1, p0, Lcom/android/deskclock/WatchDial$TimerCirque;->TIMERMASK_STARTX:D

    .line 218
    iget-wide v1, p0, Lcom/android/deskclock/WatchDial$TimerCirque;->TIMERCIRQUE_WIDTH:D

    div-double/2addr v1, v5

    iput-wide v1, p0, Lcom/android/deskclock/WatchDial$TimerCirque;->TIMERMASK_STARTY:D

    .line 220
    invoke-virtual {p0}, Lcom/android/deskclock/WatchDial$TimerCirque;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008c

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/WatchDial$TimerCirque;->mCirque:Landroid/graphics/Bitmap;

    .line 221
    iget-object v1, p0, Lcom/android/deskclock/WatchDial$TimerCirque;->mCirque:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/android/deskclock/WatchDial$TimerCirque;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 222
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 224
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/android/deskclock/WatchDial$TimerCirque;->TIMERCIRQUE_STARTX:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 225
    iget v1, p0, Lcom/android/deskclock/WatchDial$TimerCirque;->TIMERCIRQUE_STARTY:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 226
    iget-object v1, p0, Lcom/android/deskclock/WatchDial$TimerCirque;->mCirque:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/deskclock/WatchDial$TimerCirque;->mCirque:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/WatchDial$TimerCirque;->mResult:Landroid/graphics/Bitmap;

    .line 227
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/deskclock/WatchDial$TimerCirque;->mResult:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/deskclock/WatchDial$TimerCirque;->mCanvas:Landroid/graphics/Canvas;

    .line 228
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/deskclock/WatchDial$TimerCirque;->mPaint:Landroid/graphics/Paint;

    .line 229
    invoke-virtual {p0, v0}, Lcom/android/deskclock/WatchDial$TimerCirque;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    return-void
.end method


# virtual methods
.method public drawCirque()V
    .locals 26

    .prologue
    .line 233
    const-wide v2, 0x4076800000000000L

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->mDegrees:D

    sub-double/2addr v2, v4

    const-wide v4, 0x4076300000000000L

    mul-double/2addr v2, v4

    const-wide v4, 0x4076800000000000L

    div-double v8, v2, v4

    .line 234
    .local v8, endDegrees:D
    const-wide v14, -0x3faa200000000000L

    .line 235
    .local v14, startDegrees:D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->mResult:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->mPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->TIMERCIRQUE_WIDTH:D

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->mCanvas:Landroid/graphics/Canvas;

    new-instance v3, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->TIMERMASK_STARTX:D

    double-to-float v4, v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->TIMERMASK_STARTY:D

    double-to-float v5, v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->TIMERMASK_STARTX:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->TIMERMASK_RADIUS:D

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000

    mul-double v20, v20, v22

    add-double v6, v6, v20

    double-to-float v6, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->TIMERMASK_STARTY:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->TIMERMASK_RADIUS:D

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4000

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v7, v0

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    double-to-float v4, v14

    double-to-float v5, v8

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 245
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->TIMERCIRQUE_RADIUSOUTER:D

    const-wide v4, -0x3fa8e00000000000L

    invoke-static {v4, v5}, Lcom/android/deskclock/Util;->getRadianWithDegree(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->TIMERMASK_RADIUS:D

    mul-double/2addr v4, v6

    add-double v16, v2, v4

    .line 247
    .local v16, startX:D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->TIMERCIRQUE_RADIUSOUTER:D

    const-wide v4, -0x3fa8e00000000000L

    invoke-static {v4, v5}, Lcom/android/deskclock/Util;->getRadianWithDegree(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->TIMERMASK_RADIUS:D

    mul-double/2addr v4, v6

    sub-double v18, v2, v4

    .line 249
    .local v18, startY:D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->TIMERCIRQUE_RADIUSOUTER:D

    const-wide/high16 v4, 0x4004

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Lcom/android/deskclock/Util;->getRadianWithDegree(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->TIMERMASK_RADIUS:D

    mul-double/2addr v4, v6

    add-double v10, v2, v4

    .line 251
    .local v10, endX:D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->TIMERCIRQUE_RADIUSOUTER:D

    const-wide/high16 v4, 0x4004

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Lcom/android/deskclock/Util;->getRadianWithDegree(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->TIMERMASK_RADIUS:D

    mul-double/2addr v4, v6

    sub-double v12, v2, v4

    .line 253
    .local v12, endY:D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->mCanvas:Landroid/graphics/Canvas;

    move-wide/from16 v0, v18

    double-to-float v3, v0

    move-wide/from16 v0, v16

    double-to-float v4, v0

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->TIMERCIRQUE_WIDTH:D

    const-wide/high16 v20, 0x4000

    div-double v5, v5, v20

    double-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->mCanvas:Landroid/graphics/Canvas;

    double-to-float v3, v10

    double-to-float v4, v12

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->TIMERCIRQUE_WIDTH:D

    const-wide/high16 v20, 0x4000

    div-double v5, v5, v20

    double-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->mCirque:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/deskclock/WatchDial$TimerCirque;->mResult:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/deskclock/WatchDial$TimerCirque;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 259
    return-void
.end method

.method public setDegrees(D)V
    .locals 0
    .parameter "degree"

    .prologue
    .line 262
    iput-wide p1, p0, Lcom/android/deskclock/WatchDial$TimerCirque;->mDegrees:D

    .line 263
    return-void
.end method
