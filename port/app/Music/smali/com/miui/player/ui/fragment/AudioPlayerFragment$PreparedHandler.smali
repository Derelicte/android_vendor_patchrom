.class Lcom/miui/player/ui/fragment/AudioPlayerFragment$PreparedHandler;
.super Landroid/os/Handler;
.source "AudioPlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/fragment/AudioPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreparedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/fragment/AudioPlayerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$PreparedHandler;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 474
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_1

    .line 475
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$PreparedHandler;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    invoke-virtual {v0}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$PreparedHandler;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->updateTrackInfo(I)V

    .line 477
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$PreparedHandler;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-object v1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$PreparedHandler;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    invoke-virtual {v1}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->refreshNow()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->queueNextRefresh(J)V

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 480
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$PreparedHandler;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-object v0, v0, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    invoke-virtual {v0, v2}, Lmiui/widget/SpectrumVisualizer;->enableUpdate(Z)V

    goto :goto_0
.end method
