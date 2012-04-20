.class final Lcom/miui/player/network/MP3Downloader$1;
.super Landroid/os/AsyncTask;
.source "MP3Downloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/network/MP3Downloader;->startOnUIThread(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$runOnStartDownload:Ljava/lang/Runnable;

.field final synthetic val$songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/miui/player/network/MP3Downloader$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/player/network/MP3Downloader$1;->val$songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    iput-object p3, p0, Lcom/miui/player/network/MP3Downloader$1;->val$runOnStartDownload:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;
    .locals 3
    .parameter "params"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/player/network/MP3Downloader$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/player/network/MP3Downloader$1;->val$songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    const-string v2, "baidu"

    invoke-static {v0, v1, v2}, Lcom/miui/player/network/OnlineMusicProxy;->getSongInfo(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/network/MP3Downloader$1;->doInBackground([Ljava/lang/Void;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 53
    if-eqz p1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/miui/player/network/MP3Downloader$1;->val$context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/player/network/MP3Downloader;->startOnUIThread(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/miui/player/network/MP3Downloader$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/common/util/Network;->isActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/miui/player/network/MP3Downloader$1;->val$context:Landroid/content/Context;

    const v1, 0x7f080006

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 62
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/player/network/MP3Downloader$1;->val$runOnStartDownload:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/miui/player/network/MP3Downloader$1;->val$runOnStartDownload:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 65
    :cond_1
    return-void

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/miui/player/network/MP3Downloader$1;->val$context:Landroid/content/Context;

    const v1, 0x7f080005

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    check-cast p1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/network/MP3Downloader$1;->onPostExecute(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;)V

    return-void
.end method
