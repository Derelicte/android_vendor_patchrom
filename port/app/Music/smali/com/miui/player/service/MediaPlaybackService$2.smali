.class Lcom/miui/player/service/MediaPlaybackService$2;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/service/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/miui/player/service/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 260
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, action:Ljava/lang/String;
    const-string v2, "command"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, cmd:Ljava/lang/String;
    sget-object v2, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    const-string v3, "mIntentReceiver.onReceive action=%s, cmd=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    invoke-static {v2, v3, v4}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    const-string v2, "next"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.miui.player.musicservicecommand.next"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 264
    :cond_0
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v2, v6}, Lcom/miui/player/service/MediaPlaybackService;->next(Z)V

    .line 293
    :cond_1
    :goto_0
    return-void

    .line 265
    :cond_2
    const-string v2, "previous"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.miui.player.musicservicecommand.previous"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 266
    :cond_3
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/miui/player/service/MediaPlaybackService;->prev()V

    goto :goto_0

    .line 267
    :cond_4
    const-string v2, "togglepause"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "com.miui.player.musicservicecommand.togglepause"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 268
    :cond_5
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/miui/player/service/MediaPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 269
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/miui/player/service/MediaPlaybackService;->pause()V

    goto :goto_0

    .line 271
    :cond_6
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/miui/player/service/MediaPlaybackService;->play()V

    goto :goto_0

    .line 273
    :cond_7
    const-string v2, "pause"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "com.miui.player.musicservicecommand.pause"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 274
    :cond_8
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/miui/player/service/MediaPlaybackService;->pause()V

    goto :goto_0

    .line 275
    :cond_9
    const-string v2, "play"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 276
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/miui/player/service/MediaPlaybackService;->play()V

    goto :goto_0

    .line 277
    :cond_a
    const-string v2, "stop"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 278
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/miui/player/service/MediaPlaybackService;->pause()V

    .line 279
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/miui/player/service/MediaPlaybackService;->seek(J)J

    goto :goto_0

    .line 280
    :cond_b
    const-string v2, "com.miui.player.musicservicecommand.update_meta"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 281
    const-string v2, "lyric"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 282
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    const-string v3, "meta_changed_lyric"

    invoke-virtual {v2, v3, v6}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 283
    :cond_c
    const-string v2, "album"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 284
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    const-string v3, "meta_changed_album"

    invoke-virtual {v2, v3, v6}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 285
    :cond_d
    const-string v2, "track"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    const-string v3, "meta_changed_track"

    invoke-virtual {v2, v3, v6}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 288
    :cond_e
    const-string v2, "com.miui.player.updateshake"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 289
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-object v2, v2, Lcom/miui/player/service/MediaPlaybackService;->mShakeListener:Lcom/miui/player/service/ShakeListener;

    invoke-virtual {v2}, Lcom/miui/player/service/ShakeListener;->onUpdatePref()V

    goto/16 :goto_0

    .line 290
    :cond_f
    const-string v2, "com.miui.player.musicservicecommand.quit"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 291
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/miui/player/service/MediaPlaybackService;->quit()V

    goto/16 :goto_0
.end method
