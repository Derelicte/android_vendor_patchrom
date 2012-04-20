.class Lcom/miui/gallery/app/MoviePlayer$AudioBecomingNoisyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MoviePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioBecomingNoisyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/MoviePlayer;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/app/MoviePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/miui/gallery/app/MoviePlayer$AudioBecomingNoisyReceiver;->this$0:Lcom/miui/gallery/app/MoviePlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/app/MoviePlayer;Lcom/miui/gallery/app/MoviePlayer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/MoviePlayer$AudioBecomingNoisyReceiver;-><init>(Lcom/miui/gallery/app/MoviePlayer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer$AudioBecomingNoisyReceiver;->this$0:Lcom/miui/gallery/app/MoviePlayer;

    #getter for: Lcom/miui/gallery/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/miui/gallery/app/MoviePlayer;->access$000(Lcom/miui/gallery/app/MoviePlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer$AudioBecomingNoisyReceiver;->this$0:Lcom/miui/gallery/app/MoviePlayer;

    #calls: Lcom/miui/gallery/app/MoviePlayer;->pauseVideo()V
    invoke-static {v0}, Lcom/miui/gallery/app/MoviePlayer;->access$900(Lcom/miui/gallery/app/MoviePlayer;)V

    .line 401
    :cond_0
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    .line 390
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer$AudioBecomingNoisyReceiver;->this$0:Lcom/miui/gallery/app/MoviePlayer;

    #getter for: Lcom/miui/gallery/app/MoviePlayer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/gallery/app/MoviePlayer;->access$800(Lcom/miui/gallery/app/MoviePlayer;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 392
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/miui/gallery/app/MoviePlayer$AudioBecomingNoisyReceiver;->this$0:Lcom/miui/gallery/app/MoviePlayer;

    #getter for: Lcom/miui/gallery/app/MoviePlayer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/gallery/app/MoviePlayer;->access$800(Lcom/miui/gallery/app/MoviePlayer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 396
    return-void
.end method
