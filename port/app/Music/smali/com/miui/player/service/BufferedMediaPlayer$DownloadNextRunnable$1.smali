.class Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$1;
.super Ljava/lang/Object;
.source "BufferedMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;


# direct methods
.method constructor <init>(Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;)V
    .locals 0
    .parameter

    .prologue
    .line 1141
    iput-object p1, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$1;->this$0:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$1;->this$0:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    iget-object v0, v0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mNextInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;

    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$1;->this$0:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    iget-object v1, v1, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$1;->this$0:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    iget-object v2, v2, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mNextInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;

    iget-object v2, v2, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/player/network/MP3Downloader;->requestCandidateUrls(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mCandidateUrls:Ljava/util/ArrayList;

    .line 1146
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$1;->this$0:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    iget-object v0, v0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mRunnableList:Lcom/miui/player/service/RunnableList;

    sget-object v1, Lcom/miui/player/service/BufferedMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$TryNextRunnable;

    iget-object v3, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$1;->this$0:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    invoke-direct {v2, v3}, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$TryNextRunnable;-><init>(Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;)V

    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/miui/player/service/RunnableList;->add(Ljava/lang/String;Lcom/miui/player/service/RunnableList$RemovableRunnable;J)V

    .line 1147
    return-void
.end method
