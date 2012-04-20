.class Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$RecycleAnimListener;
.super Ljava/lang/Object;
.source "HistoryBrowserController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RecycleAnimListener"
.end annotation


# instance fields
.field private final mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private final mImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "iv"
    .parameter "dft"

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p1, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$RecycleAnimListener;->mImageView:Landroid/widget/ImageView;

    .line 234
    iput-object p2, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$RecycleAnimListener;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 235
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$RecycleAnimListener;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/player/ui/controller/HistoryBrowserController$NowplayingFrame$RecycleAnimListener;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/xiaomi/common/util/BitmapHelper;->recycleImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 248
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 243
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 239
    return-void
.end method
