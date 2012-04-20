.class Lcom/miui/player/ui/controller/DownloadIndicator$OnDownloadClickLitener;
.super Ljava/lang/Object;
.source "DownloadIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/controller/DownloadIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnDownloadClickLitener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/controller/DownloadIndicator;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/controller/DownloadIndicator;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/miui/player/ui/controller/DownloadIndicator$OnDownloadClickLitener;->this$0:Lcom/miui/player/ui/controller/DownloadIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 105
    new-instance v1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    invoke-direct {v1}, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;-><init>()V

    .line 106
    .local v1, songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 108
    .local v0, service:Lcom/miui/player/service/IMediaPlaybackService;
    if-eqz v0, :cond_0

    .line 109
    :try_start_0
    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getOnlineId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Id:Ljava/lang/String;

    .line 110
    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Artist:Ljava/lang/String;

    .line 111
    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Name:Ljava/lang/String;

    .line 112
    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Album:Ljava/lang/String;

    .line 114
    iget-object v2, v1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/miui/player/ui/controller/DownloadIndicator$OnDownloadClickLitener;->this$0:Lcom/miui/player/ui/controller/DownloadIndicator;

    iget-object v2, v2, Lcom/miui/player/ui/controller/DownloadIndicator;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/miui/player/ui/controller/DownloadIndicator$OnDownloadClickLitener$1;

    invoke-direct {v3, p0}, Lcom/miui/player/ui/controller/DownloadIndicator$OnDownloadClickLitener$1;-><init>(Lcom/miui/player/ui/controller/DownloadIndicator$OnDownloadClickLitener;)V

    invoke-static {v2, v1, v3}, Lcom/miui/player/network/MP3Downloader;->startOnUIThread(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v2

    goto :goto_0
.end method
