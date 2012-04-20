.class Lcom/miui/home/launcher/gadget/Player$3;
.super Landroid/content/BroadcastReceiver;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/gadget/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mFadeAnimation:Lcom/miui/home/launcher/gadget/Player$FadeAnimation;

.field final synthetic this$0:Lcom/miui/home/launcher/gadget/Player;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/gadget/Player;)V
    .locals 3
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 510
    new-instance v0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #getter for: Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/miui/home/launcher/gadget/Player;->access$1400(Lcom/miui/home/launcher/gadget/Player;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/gadget/Player$FadeAnimation;-><init>(Lcom/miui/home/launcher/gadget/Player;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player$3;->mFadeAnimation:Lcom/miui/home/launcher/gadget/Player$FadeAnimation;

    return-void
.end method

.method private isTrackEqual(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    .line 512
    const-string v2, "track"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 513
    .local v1, trackNameStr:Ljava/lang/String;
    const-string v2, "artist"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, artistNameStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #getter for: Lcom/miui/home/launcher/gadget/Player;->mTrackNameStr:Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/home/launcher/gadget/Player;->access$1500(Lcom/miui/home/launcher/gadget/Player;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #getter for: Lcom/miui/home/launcher/gadget/Player;->mTrackNameStr:Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/home/launcher/gadget/Player;->access$1500(Lcom/miui/home/launcher/gadget/Player;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #getter for: Lcom/miui/home/launcher/gadget/Player;->mArtistNameStr:Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/home/launcher/gadget/Player;->access$1600(Lcom/miui/home/launcher/gadget/Player;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 519
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    const-string v7, "track"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/miui/home/launcher/gadget/Player;->checkException(Ljava/lang/String;)Z
    invoke-static {v4, v7}, Lcom/miui/home/launcher/gadget/Player;->access$1700(Lcom/miui/home/launcher/gadget/Player;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    const-string v4, "oneshot"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 524
    .local v2, isOneShot:Z
    if-nez v2, :cond_0

    .line 528
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, action:Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/gadget/Player$3;->isTrackEqual(Landroid/content/Intent;)Z

    move-result v3

    .line 530
    .local v3, isTrackEqual:Z
    const-string v4, "com.miui.player.metachanged"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 531
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #calls: Lcom/miui/home/launcher/gadget/Player;->updateSongStatus(Landroid/content/Intent;)V
    invoke-static {v4, p2}, Lcom/miui/home/launcher/gadget/Player;->access$1800(Lcom/miui/home/launcher/gadget/Player;Landroid/content/Intent;)V

    .line 532
    const-string v4, "other"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, extra:Ljava/lang/String;
    const-string v4, "meta_changed_track"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 534
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #calls: Lcom/miui/home/launcher/gadget/Player;->updateTrack(Landroid/content/Intent;)V
    invoke-static {v4, p2}, Lcom/miui/home/launcher/gadget/Player;->access$1900(Lcom/miui/home/launcher/gadget/Player;Landroid/content/Intent;)V

    .line 535
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #getter for: Lcom/miui/home/launcher/gadget/Player;->mAlbumHelper:Lcom/miui/home/launcher/gadget/Player$AlbumHelper;
    invoke-static {v4}, Lcom/miui/home/launcher/gadget/Player;->access$2000(Lcom/miui/home/launcher/gadget/Player;)Lcom/miui/home/launcher/gadget/Player$AlbumHelper;

    move-result-object v7

    if-nez v3, :cond_4

    move v4, v5

    :goto_1
    #calls: Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->updateAlbumStatus(Landroid/content/Intent;Z)V
    invoke-static {v7, p2, v4}, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->access$2100(Lcom/miui/home/launcher/gadget/Player$AlbumHelper;Landroid/content/Intent;Z)V

    .line 536
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #getter for: Lcom/miui/home/launcher/gadget/Player;->mLyricScrollHelper:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;
    invoke-static {v4}, Lcom/miui/home/launcher/gadget/Player;->access$2200(Lcom/miui/home/launcher/gadget/Player;)Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    move-result-object v4

    if-nez v3, :cond_2

    move v6, v5

    :cond_2
    #calls: Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->updateLyricStatus(Landroid/content/Intent;Z)V
    invoke-static {v4, p2, v6}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->access$2300(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;Landroid/content/Intent;Z)V

    .line 551
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #getter for: Lcom/miui/home/launcher/gadget/Player;->mIsResume:Z
    invoke-static {v4}, Lcom/miui/home/launcher/gadget/Player;->access$2500(Lcom/miui/home/launcher/gadget/Player;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 552
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player$3;->mFadeAnimation:Lcom/miui/home/launcher/gadget/Player$FadeAnimation;

    invoke-virtual {v4}, Lcom/miui/home/launcher/gadget/Player$FadeAnimation;->prepareUpdate()V

    goto :goto_0

    :cond_4
    move v4, v6

    .line 535
    goto :goto_1

    .line 537
    :cond_5
    if-eqz v3, :cond_0

    .line 538
    const-string v4, "meta_changed_buffer"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 539
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #calls: Lcom/miui/home/launcher/gadget/Player;->updateBufferedProgress(Landroid/content/Intent;)V
    invoke-static {v4, p2}, Lcom/miui/home/launcher/gadget/Player;->access$2400(Lcom/miui/home/launcher/gadget/Player;Landroid/content/Intent;)V

    .line 540
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #getter for: Lcom/miui/home/launcher/gadget/Player;->mLyricScrollHelper:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;
    invoke-static {v4}, Lcom/miui/home/launcher/gadget/Player;->access$2200(Lcom/miui/home/launcher/gadget/Player;)Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    move-result-object v4

    #calls: Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->updateLyricStatus(Landroid/content/Intent;Z)V
    invoke-static {v4, p2, v6}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->access$2300(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;Landroid/content/Intent;Z)V

    goto :goto_0

    .line 542
    :cond_6
    const-string v4, "meta_changed_album"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 543
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #getter for: Lcom/miui/home/launcher/gadget/Player;->mAlbumHelper:Lcom/miui/home/launcher/gadget/Player$AlbumHelper;
    invoke-static {v4}, Lcom/miui/home/launcher/gadget/Player;->access$2000(Lcom/miui/home/launcher/gadget/Player;)Lcom/miui/home/launcher/gadget/Player$AlbumHelper;

    move-result-object v4

    #calls: Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->updateAlbumStatus(Landroid/content/Intent;Z)V
    invoke-static {v4, p2, v5}, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->access$2100(Lcom/miui/home/launcher/gadget/Player$AlbumHelper;Landroid/content/Intent;Z)V

    goto :goto_2

    .line 544
    :cond_7
    const-string v4, "meta_changed_lyric"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 545
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #getter for: Lcom/miui/home/launcher/gadget/Player;->mLyricScrollHelper:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;
    invoke-static {v4}, Lcom/miui/home/launcher/gadget/Player;->access$2200(Lcom/miui/home/launcher/gadget/Player;)Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    move-result-object v4

    #calls: Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->updateLyricStatus(Landroid/content/Intent;Z)V
    invoke-static {v4, p2, v5}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->access$2300(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;Landroid/content/Intent;Z)V

    goto :goto_2

    .line 554
    :cond_8
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #getter for: Lcom/miui/home/launcher/gadget/Player;->mAlbumHelper:Lcom/miui/home/launcher/gadget/Player$AlbumHelper;
    invoke-static {v4}, Lcom/miui/home/launcher/gadget/Player;->access$2000(Lcom/miui/home/launcher/gadget/Player;)Lcom/miui/home/launcher/gadget/Player$AlbumHelper;

    move-result-object v4

    #calls: Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->setTrackChange(Z)V
    invoke-static {v4, v5}, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->access$2600(Lcom/miui/home/launcher/gadget/Player$AlbumHelper;Z)V

    goto/16 :goto_0

    .line 556
    .end local v1           #extra:Ljava/lang/String;
    :cond_9
    if-eqz v3, :cond_0

    .line 557
    const-string v4, "com.miui.player.playstatechanged"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "com.miui.player.playbackcomplete"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 559
    :cond_a
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #calls: Lcom/miui/home/launcher/gadget/Player;->updateSongStatus(Landroid/content/Intent;)V
    invoke-static {v4, p2}, Lcom/miui/home/launcher/gadget/Player;->access$1800(Lcom/miui/home/launcher/gadget/Player;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 560
    :cond_b
    const-string v4, "com.miui.player.refreshprogress"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 561
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #calls: Lcom/miui/home/launcher/gadget/Player;->updateBufferedProgress(Landroid/content/Intent;)V
    invoke-static {v4, p2}, Lcom/miui/home/launcher/gadget/Player;->access$2400(Lcom/miui/home/launcher/gadget/Player;Landroid/content/Intent;)V

    .line 562
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #calls: Lcom/miui/home/launcher/gadget/Player;->updateSongStatus(Landroid/content/Intent;)V
    invoke-static {v4, p2}, Lcom/miui/home/launcher/gadget/Player;->access$1800(Lcom/miui/home/launcher/gadget/Player;Landroid/content/Intent;)V

    .line 563
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player$3;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #calls: Lcom/miui/home/launcher/gadget/Player;->updateLyricAndTime()V
    invoke-static {v4}, Lcom/miui/home/launcher/gadget/Player;->access$1200(Lcom/miui/home/launcher/gadget/Player;)V

    goto/16 :goto_0
.end method
