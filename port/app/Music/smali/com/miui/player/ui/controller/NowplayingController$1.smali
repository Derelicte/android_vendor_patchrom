.class Lcom/miui/player/ui/controller/NowplayingController$1;
.super Ljava/lang/Object;
.source "NowplayingController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/controller/NowplayingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/controller/NowplayingController;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/controller/NowplayingController;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/miui/player/ui/controller/NowplayingController$1;->this$0:Lcom/miui/player/ui/controller/NowplayingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/miui/player/ui/controller/NowplayingController$1;->this$0:Lcom/miui/player/ui/controller/NowplayingController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/NowplayingController;->setNowplayingInfo()V

    .line 262
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 257
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 253
    return-void
.end method
