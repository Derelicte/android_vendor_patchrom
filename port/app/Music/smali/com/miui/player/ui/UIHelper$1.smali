.class final Lcom/miui/player/ui/UIHelper$1;
.super Ljava/lang/Object;
.source "UIHelper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/UIHelper;->addSubsequentAnimation(Landroid/view/animation/Animation;Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$l:Landroid/view/animation/Animation$AnimationListener;

.field final synthetic val$second:Landroid/view/animation/Animation;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/animation/Animation$AnimationListener;Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/miui/player/ui/UIHelper$1;->val$l:Landroid/view/animation/Animation$AnimationListener;

    iput-object p2, p0, Lcom/miui/player/ui/UIHelper$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/miui/player/ui/UIHelper$1;->val$second:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/miui/player/ui/UIHelper$1;->val$l:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/miui/player/ui/UIHelper$1;->val$l:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/UIHelper$1;->val$view:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/player/ui/UIHelper$1;->val$second:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/miui/player/ui/UIHelper$1;->val$view:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/player/ui/UIHelper$1;->val$second:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 466
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/miui/player/ui/UIHelper$1;->val$l:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/miui/player/ui/UIHelper$1;->val$l:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    .line 455
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/miui/player/ui/UIHelper$1;->val$l:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/miui/player/ui/UIHelper$1;->val$l:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 448
    :cond_0
    return-void
.end method
