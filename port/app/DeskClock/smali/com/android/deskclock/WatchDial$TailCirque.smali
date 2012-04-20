.class Lcom/android/deskclock/WatchDial$TailCirque;
.super Landroid/widget/ImageView;
.source "WatchDial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/WatchDial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TailCirque"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/WatchDial$TailCirque$JustifyThread;,
        Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;
    }
.end annotation


# instance fields
.field private final CENTER_X:I

.field private final CENTER_Y:I

.field private final DEGREES_OFFSET:I

.field private final GRADIENT_COLOR_BACKWARD:[I

.field private final GRADIENT_COLOR_FORWARD:[I

.field private final MAX_CHANGE_DIRECTION_DIFFER:I

.field private final MAX_DIFFER:I

.field private final RADIUS:I

.field private final TAILCIRQUE_STARTX:I

.field private final TAILCIRQUE_STARTY:I

.field private mCircleThread:Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;

.field private mColorOffset:[F

.field private mComposeShader:Landroid/graphics/ComposeShader;

.field private mEndDegrees:D

.field private mGradient:Landroid/graphics/SweepGradient;

.field private mIsForward:Z

.field private mJustifyThread:Lcom/android/deskclock/WatchDial$TailCirque$JustifyThread;

.field private mPaint:Landroid/graphics/Paint;

.field private mStartDegrees:D

.field private mTailBitmap:Landroid/graphics/Bitmap;

.field private mTailShader:Landroid/graphics/BitmapShader;

.field final synthetic this$0:Lcom/android/deskclock/WatchDial;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/WatchDial;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter "context"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 291
    iput-object p1, p0, Lcom/android/deskclock/WatchDial$TailCirque;->this$0:Lcom/android/deskclock/WatchDial;

    .line 292
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 280
    const/16 v1, 0x5a

    iput v1, p0, Lcom/android/deskclock/WatchDial$TailCirque;->DEGREES_OFFSET:I

    .line 286
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/deskclock/WatchDial$TailCirque;->GRADIENT_COLOR_FORWARD:[I

    .line 287
    new-array v1, v4, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/deskclock/WatchDial$TailCirque;->GRADIENT_COLOR_BACKWARD:[I

    .line 288
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/deskclock/WatchDial$TailCirque;->MAX_DIFFER:I

    .line 289
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/deskclock/WatchDial$TailCirque;->MAX_CHANGE_DIRECTION_DIFFER:I

    .line 293
    #getter for: Lcom/android/deskclock/WatchDial;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/deskclock/WatchDial;->access$000(Lcom/android/deskclock/WatchDial;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/deskclock/WatchDial$TailCirque;->TAILCIRQUE_STARTX:I

    .line 294
    #getter for: Lcom/android/deskclock/WatchDial;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/deskclock/WatchDial;->access$000(Lcom/android/deskclock/WatchDial;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/deskclock/WatchDial$TailCirque;->TAILCIRQUE_STARTY:I

    .line 295
    #getter for: Lcom/android/deskclock/WatchDial;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/deskclock/WatchDial;->access$000(Lcom/android/deskclock/WatchDial;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/deskclock/WatchDial$TailCirque;->CENTER_X:I

    .line 296
    #getter for: Lcom/android/deskclock/WatchDial;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/deskclock/WatchDial;->access$000(Lcom/android/deskclock/WatchDial;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/deskclock/WatchDial$TailCirque;->CENTER_Y:I

    .line 297
    #getter for: Lcom/android/deskclock/WatchDial;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/deskclock/WatchDial;->access$000(Lcom/android/deskclock/WatchDial;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/deskclock/WatchDial$TailCirque;->RADIUS:I

    .line 299
    iput-boolean v3, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mIsForward:Z

    .line 300
    new-array v1, v4, [F

    iput-object v1, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mColorOffset:[F

    .line 301
    iget-object v1, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mColorOffset:[F

    const/high16 v2, 0x3f80

    aput v2, v1, v3

    .line 302
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mPaint:Landroid/graphics/Paint;

    .line 303
    invoke-virtual {p0}, Lcom/android/deskclock/WatchDial$TailCirque;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020074

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mTailBitmap:Landroid/graphics/Bitmap;

    .line 304
    new-instance v1, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mTailBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mTailShader:Landroid/graphics/BitmapShader;

    .line 306
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mTailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mTailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 308
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/android/deskclock/WatchDial$TailCirque;->TAILCIRQUE_STARTX:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 309
    iget v1, p0, Lcom/android/deskclock/WatchDial$TailCirque;->TAILCIRQUE_STARTY:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 310
    invoke-virtual {p0, v0}, Lcom/android/deskclock/WatchDial$TailCirque;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    return-void

    .line 286
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0x0t
    .end array-data

    .line 287
    :array_1
    .array-data 0x4
        0xfft 0xfft 0xfft 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/deskclock/WatchDial$TailCirque;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 267
    iget-wide v0, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mStartDegrees:D

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/deskclock/WatchDial$TailCirque;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 267
    iput-wide p1, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mStartDegrees:D

    return-wide p1
.end method

.method static synthetic access$118(Lcom/android/deskclock/WatchDial$TailCirque;D)D
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 267
    iget-wide v0, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mStartDegrees:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mStartDegrees:D

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/deskclock/WatchDial$TailCirque;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 267
    iget-wide v0, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mEndDegrees:D

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/deskclock/WatchDial$TailCirque;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 267
    iput-wide p1, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mEndDegrees:D

    return-wide p1
.end method

.method static synthetic access$218(Lcom/android/deskclock/WatchDial$TailCirque;D)D
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 267
    iget-wide v0, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mEndDegrees:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mEndDegrees:D

    return-wide v0
.end method

.method static synthetic access$226(Lcom/android/deskclock/WatchDial$TailCirque;D)D
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 267
    iget-wide v0, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mEndDegrees:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mEndDegrees:D

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/deskclock/WatchDial$TailCirque;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mIsForward:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/deskclock/WatchDial$TailCirque;Lcom/android/deskclock/WatchDial$TailCirque$JustifyThread;)Lcom/android/deskclock/WatchDial$TailCirque$JustifyThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mJustifyThread:Lcom/android/deskclock/WatchDial$TailCirque$JustifyThread;

    return-object p1
.end method


# virtual methods
.method public getDiffer()D
    .locals 4

    .prologue
    .line 360
    iget-wide v0, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mStartDegrees:D

    iget-wide v2, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mEndDegrees:D

    invoke-static {v0, v1, v2, v3}, Lcom/android/deskclock/Util;->getDifferWithDegrees(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const-wide/high16 v10, 0x4059

    const-wide v8, 0x4076800000000000L

    .line 315
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 316
    .local v3, matrix:Landroid/graphics/Matrix;
    iget-boolean v4, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mIsForward:Z

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/android/deskclock/WatchDial$TailCirque;->GRADIENT_COLOR_FORWARD:[I

    .line 317
    .local v0, colors:[I
    :goto_0
    iget-wide v4, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mStartDegrees:D

    iget-wide v6, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mEndDegrees:D

    invoke-static {v4, v5, v6, v7}, Lcom/android/deskclock/Util;->getDifferWithDegrees(DD)D

    move-result-wide v1

    .line 318
    .local v1, differ:D
    iget-boolean v4, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mIsForward:Z

    if-eqz v4, :cond_2

    cmpl-double v4, v1, v10

    if-lez v4, :cond_2

    .line 319
    iget-wide v4, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mStartDegrees:D

    sub-double/2addr v4, v10

    iput-wide v4, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mEndDegrees:D

    .line 320
    iget-wide v4, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mEndDegrees:D

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 321
    iget-wide v4, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mEndDegrees:D

    add-double/2addr v4, v8

    iput-wide v4, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mEndDegrees:D

    .line 329
    :cond_0
    :goto_1
    iget-boolean v4, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mIsForward:Z

    if-eqz v4, :cond_3

    .line 330
    iget-object v4, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mColorOffset:[F

    const-wide/high16 v5, 0x3ff0

    div-double v7, v1, v8

    sub-double/2addr v5, v7

    double-to-float v5, v5

    aput v5, v4, v12

    .line 331
    iget-object v4, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mColorOffset:[F

    const/high16 v5, 0x3f80

    aput v5, v4, v13

    .line 336
    :goto_2
    const-wide v4, -0x3fa9800000000000L

    iget-wide v6, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mStartDegrees:D

    add-double/2addr v4, v6

    double-to-float v4, v4

    iget v5, p0, Lcom/android/deskclock/WatchDial$TailCirque;->CENTER_X:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/deskclock/WatchDial$TailCirque;->CENTER_Y:I

    int-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 337
    new-instance v4, Landroid/graphics/SweepGradient;

    iget v5, p0, Lcom/android/deskclock/WatchDial$TailCirque;->CENTER_X:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/deskclock/WatchDial$TailCirque;->CENTER_Y:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mColorOffset:[F

    invoke-direct {v4, v5, v6, v0, v7}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    iput-object v4, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mGradient:Landroid/graphics/SweepGradient;

    .line 338
    iget-object v4, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mGradient:Landroid/graphics/SweepGradient;

    invoke-virtual {v4, v3}, Landroid/graphics/SweepGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 339
    new-instance v4, Landroid/graphics/ComposeShader;

    iget-object v5, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mTailShader:Landroid/graphics/BitmapShader;

    iget-object v6, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mGradient:Landroid/graphics/SweepGradient;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6, v7}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    iput-object v4, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mComposeShader:Landroid/graphics/ComposeShader;

    .line 340
    iget-object v4, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mComposeShader:Landroid/graphics/ComposeShader;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 341
    iget v4, p0, Lcom/android/deskclock/WatchDial$TailCirque;->CENTER_X:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/deskclock/WatchDial$TailCirque;->CENTER_Y:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/deskclock/WatchDial$TailCirque;->RADIUS:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 342
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 343
    return-void

    .line 316
    .end local v0           #colors:[I
    .end local v1           #differ:D
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/WatchDial$TailCirque;->GRADIENT_COLOR_BACKWARD:[I

    goto/16 :goto_0

    .line 323
    .restart local v0       #colors:[I
    .restart local v1       #differ:D
    :cond_2
    iget-boolean v4, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mIsForward:Z

    if-nez v4, :cond_0

    cmpl-double v4, v1, v10

    if-lez v4, :cond_0

    .line 324
    iget-wide v4, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mStartDegrees:D

    add-double/2addr v4, v10

    iput-wide v4, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mEndDegrees:D

    .line 325
    iget-wide v4, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mEndDegrees:D

    cmpl-double v4, v4, v8

    if-ltz v4, :cond_0

    .line 326
    iget-wide v4, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mEndDegrees:D

    sub-double/2addr v4, v8

    iput-wide v4, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mEndDegrees:D

    goto :goto_1

    .line 333
    :cond_3
    iget-object v4, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mColorOffset:[F

    const/4 v5, 0x0

    aput v5, v4, v12

    .line 334
    iget-object v4, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mColorOffset:[F

    div-double v5, v1, v8

    double-to-float v5, v5

    aput v5, v4, v13

    goto :goto_2
.end method

.method public setEndDegree(D)V
    .locals 0
    .parameter "degree"

    .prologue
    .line 356
    iput-wide p1, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mEndDegrees:D

    .line 357
    return-void
.end method

.method public setIsForward(Z)V
    .locals 4
    .parameter "isForward"

    .prologue
    .line 346
    iget-wide v0, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mStartDegrees:D

    iget-wide v2, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mEndDegrees:D

    invoke-static {v0, v1, v2, v3}, Lcom/android/deskclock/Util;->getDifferWithDegrees(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 347
    iput-boolean p1, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mIsForward:Z

    .line 349
    :cond_0
    return-void
.end method

.method public setStartDegree(D)V
    .locals 0
    .parameter "degree"

    .prologue
    .line 352
    iput-wide p1, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mStartDegrees:D

    .line 353
    return-void
.end method

.method public startCircleThread()V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mCircleThread:Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mCircleThread:Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;

    invoke-virtual {v0}, Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 406
    :cond_0
    new-instance v0, Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;-><init>(Lcom/android/deskclock/WatchDial$TailCirque;Z)V

    iput-object v0, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mCircleThread:Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;

    .line 407
    iget-object v0, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mCircleThread:Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;

    invoke-virtual {v0}, Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;->start()V

    .line 409
    :cond_1
    return-void
.end method

.method public startJustify()V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mJustifyThread:Lcom/android/deskclock/WatchDial$TailCirque$JustifyThread;

    if-nez v0, :cond_0

    .line 464
    new-instance v0, Lcom/android/deskclock/WatchDial$TailCirque$JustifyThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/WatchDial$TailCirque$JustifyThread;-><init>(Lcom/android/deskclock/WatchDial$TailCirque;Lcom/android/deskclock/WatchDial$1;)V

    iput-object v0, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mJustifyThread:Lcom/android/deskclock/WatchDial$TailCirque$JustifyThread;

    .line 465
    iget-object v0, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mJustifyThread:Lcom/android/deskclock/WatchDial$TailCirque$JustifyThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/deskclock/WatchDial$TailCirque$JustifyThread;->setFlag(Z)V

    .line 466
    iget-object v0, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mJustifyThread:Lcom/android/deskclock/WatchDial$TailCirque$JustifyThread;

    invoke-virtual {v0}, Lcom/android/deskclock/WatchDial$TailCirque$JustifyThread;->start()V

    .line 468
    :cond_0
    return-void
.end method

.method public stopCircleThread()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 412
    iget-object v1, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mCircleThread:Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mCircleThread:Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;

    invoke-virtual {v1}, Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mCircleThread:Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;

    const/4 v2, 0x0

    #setter for: Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;->mFlag:Z
    invoke-static {v1, v2}, Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;->access$302(Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;Z)Z

    .line 415
    :try_start_0
    iget-object v1, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mCircleThread:Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;

    invoke-virtual {v1}, Lcom/android/deskclock/WatchDial$TailCirque$CircleThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :goto_0
    iput-wide v3, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mStartDegrees:D

    .line 420
    iput-wide v3, p0, Lcom/android/deskclock/WatchDial$TailCirque;->mEndDegrees:D

    .line 422
    :cond_0
    return-void

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "Error when stop thread"

    invoke-static {v1, v0}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
