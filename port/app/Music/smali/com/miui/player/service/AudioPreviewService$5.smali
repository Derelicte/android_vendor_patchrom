.class Lcom/miui/player/service/AudioPreviewService$5;
.super Landroid/content/BroadcastReceiver;
.source "AudioPreviewService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/AudioPreviewService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/service/AudioPreviewService;


# direct methods
.method constructor <init>(Lcom/miui/player/service/AudioPreviewService;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/miui/player/service/AudioPreviewService$5;->this$0:Lcom/miui/player/service/AudioPreviewService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 374
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, action:Ljava/lang/String;
    const-string v1, "oneshot_play"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 376
    iget-object v1, p0, Lcom/miui/player/service/AudioPreviewService$5;->this$0:Lcom/miui/player/service/AudioPreviewService;

    invoke-virtual {v1}, Lcom/miui/player/service/AudioPreviewService;->start()V

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    const-string v1, "oneshot_pause"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 378
    iget-object v1, p0, Lcom/miui/player/service/AudioPreviewService$5;->this$0:Lcom/miui/player/service/AudioPreviewService;

    invoke-virtual {v1}, Lcom/miui/player/service/AudioPreviewService;->pause()V

    goto :goto_0

    .line 379
    :cond_2
    const-string v1, "oneshot_togglepause"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 380
    iget-object v1, p0, Lcom/miui/player/service/AudioPreviewService$5;->this$0:Lcom/miui/player/service/AudioPreviewService;

    invoke-virtual {v1}, Lcom/miui/player/service/AudioPreviewService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 381
    iget-object v1, p0, Lcom/miui/player/service/AudioPreviewService$5;->this$0:Lcom/miui/player/service/AudioPreviewService;

    invoke-virtual {v1}, Lcom/miui/player/service/AudioPreviewService;->pause()V

    goto :goto_0

    .line 383
    :cond_3
    iget-object v1, p0, Lcom/miui/player/service/AudioPreviewService$5;->this$0:Lcom/miui/player/service/AudioPreviewService;

    invoke-virtual {v1}, Lcom/miui/player/service/AudioPreviewService;->start()V

    goto :goto_0

    .line 385
    :cond_4
    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/miui/player/service/AudioPreviewService$5;->this$0:Lcom/miui/player/service/AudioPreviewService;

    invoke-virtual {v1}, Lcom/miui/player/service/AudioPreviewService;->pause()V

    goto :goto_0
.end method
