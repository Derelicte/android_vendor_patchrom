.class Lcom/miui/player/util/SongListCache$SongListLoadRunnable;
.super Ljava/lang/Object;
.source "SongListCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/util/SongListCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SongListLoadRunnable"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/player/util/SongListCache;


# direct methods
.method public constructor <init>(Lcom/miui/player/util/SongListCache;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "url"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/miui/player/util/SongListCache$SongListLoadRunnable;->this$0:Lcom/miui/player/util/SongListCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p3, p0, Lcom/miui/player/util/SongListCache$SongListLoadRunnable;->mUrl:Ljava/lang/String;

    .line 152
    iput-object p2, p0, Lcom/miui/player/util/SongListCache$SongListLoadRunnable;->mContext:Landroid/content/Context;

    .line 153
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 157
    iget-object v2, p0, Lcom/miui/player/util/SongListCache$SongListLoadRunnable;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/player/util/SongListCache$SongListLoadRunnable;->mUrl:Ljava/lang/String;

    const-string v4, "baidu"

    invoke-static {v2, v3, v4}, Lcom/miui/player/network/OnlineMusicProxy;->findSongsWithRawUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    move-result-object v1

    .line 160
    .local v1, songList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;
    iget-object v2, p0, Lcom/miui/player/util/SongListCache$SongListLoadRunnable;->this$0:Lcom/miui/player/util/SongListCache;

    iget-object v2, v2, Lcom/miui/player/util/SongListCache;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 161
    .local v0, msg:Landroid/os/Message;
    new-instance v2, Lcom/miui/player/util/SongListCache$SongListResult;

    iget-object v3, p0, Lcom/miui/player/util/SongListCache$SongListLoadRunnable;->mUrl:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/miui/player/util/SongListCache$SongListResult;-><init>(Ljava/lang/String;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;)V

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 162
    iget-object v2, p0, Lcom/miui/player/util/SongListCache$SongListLoadRunnable;->this$0:Lcom/miui/player/util/SongListCache;

    iget-object v2, v2, Lcom/miui/player/util/SongListCache;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 163
    return-void
.end method
