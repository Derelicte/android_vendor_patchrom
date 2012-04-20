.class Lcom/miui/player/ui/fragment/AudioPlayerFragment$OnInternalIndexerClick;
.super Ljava/lang/Object;
.source "AudioPlayerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/fragment/AudioPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnInternalIndexerClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/fragment/AudioPlayerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 552
    iput-object p1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$OnInternalIndexerClick;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 556
    iget-object v3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$OnInternalIndexerClick;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-boolean v3, v3, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mIsAnimationPlaying:Z

    if-eqz v3, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    iget-object v3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$OnInternalIndexerClick;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-object v3, v3, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mToolBarController:Lcom/miui/player/ui/controller/ToolBarController;

    invoke-virtual {v3}, Lcom/miui/player/ui/controller/ToolBarController;->hideDetailInfo()Z

    move-result v3

    if-nez v3, :cond_0

    .line 564
    iget-object v3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$OnInternalIndexerClick;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    invoke-virtual {v3}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->getNextIndexerWhenInternalClick()I

    move-result v1

    .line 565
    .local v1, newIndexer:I
    iget-object v3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$OnInternalIndexerClick;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-object v3, v3, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mControllers:[Lcom/miui/player/ui/controller/MediaPlaybackController;

    iget-object v4, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$OnInternalIndexerClick;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget v4, v4, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActiveIndexer:I

    aget-object v0, v3, v4

    .line 566
    .local v0, current:Lcom/miui/player/ui/controller/MediaPlaybackController;
    iget-object v3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$OnInternalIndexerClick;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-object v3, v3, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mControllers:[Lcom/miui/player/ui/controller/MediaPlaybackController;

    aget-object v2, v3, v1

    .line 567
    .local v2, next:Lcom/miui/player/ui/controller/MediaPlaybackController;
    if-eq v0, v2, :cond_2

    .line 568
    new-instance v3, Lcom/miui/player/ui/fragment/AudioPlayerFragment$OnInternalIndexerClick$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/miui/player/ui/fragment/AudioPlayerFragment$OnInternalIndexerClick$1;-><init>(Lcom/miui/player/ui/fragment/AudioPlayerFragment$OnInternalIndexerClick;ILcom/miui/player/ui/controller/MediaPlaybackController;)V

    invoke-virtual {v0, v3}, Lcom/miui/player/ui/controller/MediaPlaybackController;->startLeaveAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    .line 587
    :cond_2
    iget-object v3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$OnInternalIndexerClick;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->setAnimationPlaying(Z)V

    goto :goto_0
.end method
