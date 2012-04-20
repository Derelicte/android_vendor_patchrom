.class Lcom/miui/home/launcher/Background$DimAnimator;
.super Ljava/lang/Object;
.source "Background.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Background;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DimAnimator"
.end annotation


# instance fields
.field private mCurAlpha:I

.field private mDrawableFrom:Landroid/graphics/drawable/Drawable;

.field private mDrawableTo:Landroid/graphics/drawable/Drawable;

.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/miui/home/launcher/Background;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/Background;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/miui/home/launcher/Background$DimAnimator;->this$0:Lcom/miui/home/launcher/Background;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/Background;Lcom/miui/home/launcher/Background$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Background$DimAnimator;-><init>(Lcom/miui/home/launcher/Background;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v2, 0xff

    .line 60
    iget v1, p0, Lcom/miui/home/launcher/Background$DimAnimator;->mCurAlpha:I

    add-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/miui/home/launcher/Background$DimAnimator;->mCurAlpha:I

    .line 61
    iget v1, p0, Lcom/miui/home/launcher/Background$DimAnimator;->mCurAlpha:I

    if-le v1, v2, :cond_5

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/miui/home/launcher/Background$DimAnimator;->mCurAlpha:I

    .line 62
    iget-object v1, p0, Lcom/miui/home/launcher/Background$DimAnimator;->mDrawableFrom:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/miui/home/launcher/Background$DimAnimator;->mDrawableFrom:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/miui/home/launcher/Background$DimAnimator;->mCurAlpha:I

    rsub-int v3, v3, 0xff

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/Background$DimAnimator;->mDrawableTo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/miui/home/launcher/Background$DimAnimator;->mDrawableTo:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/miui/home/launcher/Background$DimAnimator;->mCurAlpha:I

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/Background$DimAnimator;->this$0:Lcom/miui/home/launcher/Background;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Background;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 70
    .local v0, c:Landroid/graphics/Canvas;
    if-eqz v0, :cond_4

    .line 71
    const/4 v1, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 72
    iget-object v1, p0, Lcom/miui/home/launcher/Background$DimAnimator;->mDrawableFrom:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 73
    iget-object v1, p0, Lcom/miui/home/launcher/Background$DimAnimator;->mDrawableFrom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/Background$DimAnimator;->mDrawableTo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 76
    iget-object v1, p0, Lcom/miui/home/launcher/Background$DimAnimator;->mDrawableTo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 78
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/Background$DimAnimator;->this$0:Lcom/miui/home/launcher/Background;

    #getter for: Lcom/miui/home/launcher/Background;->mStatusbarBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/miui/home/launcher/Background;->access$000(Lcom/miui/home/launcher/Background;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 79
    iget-object v1, p0, Lcom/miui/home/launcher/Background$DimAnimator;->this$0:Lcom/miui/home/launcher/Background;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Background;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 82
    :cond_4
    iget v1, p0, Lcom/miui/home/launcher/Background$DimAnimator;->mCurAlpha:I

    if-ge v1, v2, :cond_6

    .line 83
    iget-object v1, p0, Lcom/miui/home/launcher/Background$DimAnimator;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5a

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    :goto_1
    return-void

    .line 61
    .end local v0           #c:Landroid/graphics/Canvas;
    :cond_5
    iget v1, p0, Lcom/miui/home/launcher/Background$DimAnimator;->mCurAlpha:I

    goto :goto_0

    .line 85
    .restart local v0       #c:Landroid/graphics/Canvas;
    :cond_6
    iput-object v4, p0, Lcom/miui/home/launcher/Background$DimAnimator;->mHandler:Landroid/os/Handler;

    .line 86
    iput-object v4, p0, Lcom/miui/home/launcher/Background$DimAnimator;->mDrawableFrom:Landroid/graphics/drawable/Drawable;

    .line 87
    iput-object v4, p0, Lcom/miui/home/launcher/Background$DimAnimator;->mDrawableTo:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public start(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/os/Handler;)V
    .locals 1
    .parameter "dFrom"
    .parameter "dTo"
    .parameter "h"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/home/launcher/Background$DimAnimator;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/Background$DimAnimator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 48
    :cond_0
    if-nez p3, :cond_1

    .line 56
    :goto_0
    return-void

    .line 51
    :cond_1
    iput-object p1, p0, Lcom/miui/home/launcher/Background$DimAnimator;->mDrawableFrom:Landroid/graphics/drawable/Drawable;

    .line 52
    iput-object p2, p0, Lcom/miui/home/launcher/Background$DimAnimator;->mDrawableTo:Landroid/graphics/drawable/Drawable;

    .line 53
    iput-object p3, p0, Lcom/miui/home/launcher/Background$DimAnimator;->mHandler:Landroid/os/Handler;

    .line 54
    iget-object v0, p0, Lcom/miui/home/launcher/Background$DimAnimator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/home/launcher/Background$DimAnimator;->mCurAlpha:I

    goto :goto_0
.end method
