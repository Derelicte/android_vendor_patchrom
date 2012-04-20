.class Lcom/miui/player/service/MediaPlaybackService$9;
.super Landroid/os/Handler;
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
    .line 2361
    iput-object p1, p0, Lcom/miui/player/service/MediaPlaybackService$9;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    .line 2364
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2380
    :cond_0
    :goto_0
    return-void

    .line 2366
    :pswitch_0
    new-instance v0, Lcom/miui/player/meta/AlbumInfo;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService$9;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v4}, Lcom/miui/player/service/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/player/service/MediaPlaybackService$9;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v5}, Lcom/miui/player/service/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/meta/AlbumInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/player/model/AlbumListAdapter;->removeCacheAlbum(Lcom/miui/player/meta/AlbumInfo;)Z

    .line 2367
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService$9;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    const-string v1, "meta_changed_album"

    invoke-virtual {v0, v1, v7}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2370
    :pswitch_1
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService$9;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    const-string v1, "meta_changed_lyric"

    invoke-virtual {v0, v1, v7}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2373
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 2374
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/Uri;

    .line 2375
    .local v6, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService$9;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v0, v6}, Lcom/miui/player/service/MediaPlaybackService;->requeryTrackInfo(Landroid/net/Uri;)V

    .line 2376
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService$9;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v0, v6}, Lcom/miui/player/service/MediaPlaybackService;->updateMiuiDBAfterID3Changed(Landroid/net/Uri;)V

    goto :goto_0

    .line 2364
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
