.class public Lcom/miui/player/network/OnlineMusicProxy;
.super Ljava/lang/Object;
.source "OnlineMusicProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findSongsWithRawUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;
    .locals 2
    .parameter "context"
    .parameter "url"
    .parameter "provider"

    .prologue
    .line 55
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicProxy;->getPlugIn(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;

    move-result-object v0

    .line 56
    .local v0, omp:Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;
    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0, p1, p2}, Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;->findSongsWithRawUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    move-result-object v1

    .line 60
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getPlugIn(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;
    .locals 3
    .parameter "context"

    .prologue
    .line 82
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/miui/player/plugin/PlugInManager;->instance(Landroid/content/Context;I)Lcom/miui/player/plugin/PlugInManager;

    move-result-object v1

    .line 83
    .local v1, pim:Lcom/miui/player/plugin/PlugInManager;
    invoke-virtual {v1, p0}, Lcom/miui/player/plugin/PlugInManager;->getPlugInInterface(Landroid/content/Context;)Lcom/miui/player/plugin/base/PlugInInterface;

    move-result-object v0

    .line 84
    .local v0, pii:Lcom/miui/player/plugin/base/PlugInInterface;
    instance-of v2, v0, Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;

    if-eqz v2, :cond_0

    .line 85
    check-cast v0, Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;

    .line 88
    .end local v0           #pii:Lcom/miui/player/plugin/base/PlugInInterface;
    :goto_0
    return-object v0

    .restart local v0       #pii:Lcom/miui/player/plugin/base/PlugInInterface;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSearchSongUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "query"
    .parameter "provider"

    .prologue
    .line 37
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicProxy;->getPlugIn(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;

    move-result-object v0

    .line 38
    .local v0, omp:Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;
    if-eqz v0, :cond_0

    .line 39
    invoke-interface {v0, p1, p2}, Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;->getSearchSongUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSongCategoryList(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;
    .locals 2
    .parameter "context"
    .parameter "provider"

    .prologue
    .line 73
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicProxy;->getPlugIn(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;

    move-result-object v0

    .line 74
    .local v0, omp:Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;
    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0, p1}, Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;->getSongCategoryList(Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

    move-result-object v1

    .line 78
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSongInfo(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;
    .locals 2
    .parameter "context"
    .parameter "songItem"
    .parameter "provider"

    .prologue
    .line 18
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicProxy;->getPlugIn(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;

    move-result-object v0

    .line 19
    .local v0, omp:Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;
    if-eqz v0, :cond_0

    .line 20
    invoke-interface {v0, p1, p2}, Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;->getSongInfo(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;

    move-result-object v1

    .line 23
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
