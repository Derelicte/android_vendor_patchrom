.class Lcom/miui/player/ui/fragment/AudioPlayerFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "AudioPlayerFragment.java"


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
    .line 342
    iput-object p1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$2;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 345
    iget-object v3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$2;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-object v3, v3, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    if-nez v3, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.miui.player.metachanged"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 351
    const-string v3, "other"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, extra:Ljava/lang/String;
    const/4 v2, 0x0

    .line 353
    .local v2, flag:I
    if-eqz v1, :cond_2

    const-string v3, "meta_changed_track"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 354
    :cond_2
    const/4 v2, 0x3

    .line 355
    iget-object v3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$2;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    #getter for: Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mDownloadIndicator:Lcom/miui/player/ui/controller/DownloadIndicator;
    invoke-static {v3}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->access$000(Lcom/miui/player/ui/fragment/AudioPlayerFragment;)Lcom/miui/player/ui/controller/DownloadIndicator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/player/ui/controller/DownloadIndicator;->downloadRefresh()V

    .line 362
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$2;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    invoke-virtual {v3, v2}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->updateTrackInfo(I)V

    .line 363
    iget-object v3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$2;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-object v3, v3, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mToolBarController:Lcom/miui/player/ui/controller/ToolBarController;

    invoke-virtual {v3}, Lcom/miui/player/ui/controller/ToolBarController;->hideDetailInfo()Z

    .line 376
    .end local v1           #extra:Ljava/lang/String;
    .end local v2           #flag:I
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$2;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-object v3, v3, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mToolBarController:Lcom/miui/player/ui/controller/ToolBarController;

    invoke-virtual {v3}, Lcom/miui/player/ui/controller/ToolBarController;->refresh()V

    .line 377
    iget-object v3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$2;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    invoke-virtual {v3}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 378
    iget-object v3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$2;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-object v4, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$2;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    invoke-virtual {v4}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->refreshNow()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->queueNextRefresh(J)V

    goto :goto_0

    .line 356
    .restart local v1       #extra:Ljava/lang/String;
    .restart local v2       #flag:I
    :cond_5
    const-string v3, "meta_changed_album"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 357
    const/4 v2, 0x2

    goto :goto_1

    .line 358
    :cond_6
    const-string v3, "meta_changed_lyric"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 359
    const/4 v2, 0x1

    goto :goto_1

    .line 364
    .end local v1           #extra:Ljava/lang/String;
    .end local v2           #flag:I
    :cond_7
    const-string v3, "com.miui.player.playbackcomplete"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 365
    iget-object v3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$2;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-object v3, v3, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mPlayerCommonController:Lcom/miui/player/ui/controller/PlayerCommonController;

    invoke-virtual {v3}, Lcom/miui/player/ui/controller/PlayerCommonController;->refresh()V

    goto :goto_2

    .line 366
    :cond_8
    const-string v3, "com.miui.player.playstatechanged"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 367
    iget-object v3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$2;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-object v3, v3, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mPlayerCommonController:Lcom/miui/player/ui/controller/PlayerCommonController;

    invoke-virtual {v3}, Lcom/miui/player/ui/controller/PlayerCommonController;->refresh()V

    goto :goto_2

    .line 368
    :cond_9
    const-string v3, "com.miui.player.queuechanged"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 369
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->isMusicLoaded()Z

    move-result v3

    if-nez v3, :cond_4

    .line 371
    iget-object v3, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$2;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    iget-object v3, v3, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->mActivity:Lcom/miui/player/ui/base/TemplateListActivity;

    invoke-virtual {v3}, Lcom/miui/player/ui/base/TemplateListActivity;->finish()V

    goto/16 :goto_0
.end method
