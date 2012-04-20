.class Lcom/miui/gallery/app/MoviePlayer$1;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/MoviePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/miui/gallery/app/MoviePlayer$1;->this$0:Lcom/miui/gallery/app/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer$1;->this$0:Lcom/miui/gallery/app/MoviePlayer;

    #getter for: Lcom/miui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/miui/gallery/app/MoviePlayer;->access$000(Lcom/miui/gallery/app/MoviePlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer$1;->this$0:Lcom/miui/gallery/app/MoviePlayer;

    #getter for: Lcom/miui/gallery/app/MoviePlayer;->mController:Lcom/miui/gallery/app/ControllerOverlay;
    invoke-static {v0}, Lcom/miui/gallery/app/MoviePlayer;->access$100(Lcom/miui/gallery/app/MoviePlayer;)Lcom/miui/gallery/app/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/app/ControllerOverlay;->showPlaying()V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer$1;->this$0:Lcom/miui/gallery/app/MoviePlayer;

    #getter for: Lcom/miui/gallery/app/MoviePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/gallery/app/MoviePlayer;->access$300(Lcom/miui/gallery/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/app/MoviePlayer$1;->this$0:Lcom/miui/gallery/app/MoviePlayer;

    #getter for: Lcom/miui/gallery/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/miui/gallery/app/MoviePlayer;->access$200(Lcom/miui/gallery/app/MoviePlayer;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
