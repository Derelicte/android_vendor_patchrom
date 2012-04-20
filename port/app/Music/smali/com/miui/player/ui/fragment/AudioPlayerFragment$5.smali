.class Lcom/miui/player/ui/fragment/AudioPlayerFragment$5;
.super Ljava/lang/Object;
.source "AudioPlayerFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/fragment/AudioPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/fragment/AudioPlayerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1520
    iput-object p1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$5;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1534
    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 1535
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$5;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$5;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    invoke-virtual {v1}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->updateVisible(Z)V

    .line 1536
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1530
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1525
    return-void
.end method
