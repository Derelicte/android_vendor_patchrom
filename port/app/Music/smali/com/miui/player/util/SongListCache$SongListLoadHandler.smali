.class Lcom/miui/player/util/SongListCache$SongListLoadHandler;
.super Landroid/os/Handler;
.source "SongListCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/util/SongListCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SongListLoadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/util/SongListCache;


# direct methods
.method constructor <init>(Lcom/miui/player/util/SongListCache;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/miui/player/util/SongListCache$SongListLoadHandler;->this$0:Lcom/miui/player/util/SongListCache;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 180
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 181
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/player/util/SongListCache$SongListResult;

    .line 182
    .local v0, result:Lcom/miui/player/util/SongListCache$SongListResult;
    iget-object v1, p0, Lcom/miui/player/util/SongListCache$SongListLoadHandler;->this$0:Lcom/miui/player/util/SongListCache;

    iget-object v2, v0, Lcom/miui/player/util/SongListCache$SongListResult;->url:Ljava/lang/String;

    iget-object v3, v0, Lcom/miui/player/util/SongListCache$SongListResult;->songList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    invoke-virtual {v1, v2, v3}, Lcom/miui/player/util/SongListCache;->handleLoadResult(Ljava/lang/String;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;)V

    .line 184
    .end local v0           #result:Lcom/miui/player/util/SongListCache$SongListResult;
    :cond_0
    return-void
.end method
