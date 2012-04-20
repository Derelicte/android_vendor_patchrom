.class public Lcom/miui/player/service/LyricManager;
.super Ljava/lang/Object;
.source "LyricManager.java"


# instance fields
.field private mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

.field private mLyricStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/service/LyricManager;->mLyricStatus:I

    .line 33
    return-void
.end method

.method public static download(Landroid/content/Context;Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)I
    .locals 2
    .parameter "context"
    .parameter "searchInfo"
    .parameter "runnable"

    .prologue
    const/4 v0, 0x2

    .line 115
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 119
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/common/util/Network;->isActive(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 120
    const/4 v0, 0x5

    goto :goto_0

    .line 122
    :cond_2
    invoke-static {p0}, Lcom/xiaomi/common/util/Network;->isWifi(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "other_connect_lyric"

    invoke-static {p0, v1}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 124
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/miui/player/network/LyricDownloader;->download(Landroid/content/Context;Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 128
    :cond_4
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public static saveLyricFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/player/plugin/onlinelyric/LyricContent;)Z
    .locals 4
    .parameter "context"
    .parameter "title"
    .parameter "artist"
    .parameter "content"

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v2

    .line 136
    :cond_1
    const-string v3, "lyric"

    invoke-static {p1, p2, v3}, Lcom/miui/player/meta/MetaManager;->getMetaFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, path:Ljava/lang/String;
    :try_start_0
    const-string v3, "lyric"

    invoke-static {p0, v3}, Lcom/miui/player/meta/MetaManager;->makeDirIfNotExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    invoke-interface {p3, v1}, Lcom/miui/player/plugin/onlinelyric/LyricContent;->persist(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getStringArr()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/player/service/LyricManager;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/service/LyricManager;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    invoke-virtual {v0}, Lcom/miui/player/meta/LyricParser$Lyric;->getStringArr()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTimeArr()[I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/player/service/LyricManager;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/service/LyricManager;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    invoke-virtual {v0}, Lcom/miui/player/meta/LyricParser$Lyric;->getTimeArr()[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccess()Z
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Lcom/miui/player/service/LyricManager;->mLyricStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycleContent()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/player/service/LyricManager;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/miui/player/service/LyricManager;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    invoke-virtual {v0}, Lcom/miui/player/meta/LyricParser$Lyric;->recycleContent()V

    .line 55
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/service/LyricManager;->mLyricStatus:I

    .line 37
    return-void
.end method

.method public status()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/miui/player/service/LyricManager;->mLyricStatus:I

    return v0
.end method

.method public updateLyricStatus(Lcom/miui/player/service/MediaPlaybackService;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .parameter "service"
    .parameter "callback"
    .parameter "needLyric"
    .parameter "trackName"
    .parameter "albumName"
    .parameter "artistName"
    .parameter "reset"

    .prologue
    .line 63
    const-string v2, "display_lyric"

    invoke-static {p1, v2}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    const/4 v2, 0x1

    iput v2, p0, Lcom/miui/player/service/LyricManager;->mLyricStatus:I

    .line 65
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/player/service/LyricManager;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    .line 66
    const/4 v2, 0x0

    .line 110
    :goto_0
    return v2

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/miui/player/service/MediaPlaybackService;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    if-nez p7, :cond_1

    iget v2, p0, Lcom/miui/player/service/LyricManager;->mLyricStatus:I

    if-eqz v2, :cond_1

    .line 70
    const/4 v2, 0x0

    goto :goto_0

    .line 73
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/player/service/LyricManager;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    .line 75
    const/4 v2, 0x2

    iput v2, p0, Lcom/miui/player/service/LyricManager;->mLyricStatus:I

    .line 76
    const/4 v2, 0x0

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p1}, Lcom/miui/player/service/MediaPlaybackService;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, p6, v2}, Lcom/miui/player/meta/MetaManager;->getLyricFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 80
    .local v0, lyricFile:Ljava/io/File;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 81
    if-nez p7, :cond_3

    iget-object v2, p0, Lcom/miui/player/service/LyricManager;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/player/service/LyricManager;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    invoke-virtual {v2}, Lcom/miui/player/meta/LyricParser$Lyric;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/player/service/LyricManager;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    invoke-virtual {v2}, Lcom/miui/player/meta/LyricParser$Lyric;->getOpenTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    .line 84
    :cond_3
    invoke-static {v0}, Lcom/miui/player/meta/LyricParser;->parseLyric(Ljava/io/File;)Lcom/miui/player/meta/LyricParser$Lyric;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/service/LyricManager;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 86
    iget-object v2, p0, Lcom/miui/player/service/LyricManager;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-nez v2, :cond_4

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 88
    const/4 v2, 0x2

    iput v2, p0, Lcom/miui/player/service/LyricManager;->mLyricStatus:I

    .line 95
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/miui/player/service/LyricManager;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-eqz v2, :cond_7

    .line 96
    const/4 v2, 0x3

    iput v2, p0, Lcom/miui/player/service/LyricManager;->mLyricStatus:I

    .line 110
    :cond_5
    :goto_2
    iget v2, p0, Lcom/miui/player/service/LyricManager;->mLyricStatus:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_a

    if-eqz p3, :cond_a

    const/4 v2, 0x1

    goto :goto_0

    .line 92
    :cond_6
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/player/service/LyricManager;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    goto :goto_1

    .line 97
    :cond_7
    iget v2, p0, Lcom/miui/player/service/LyricManager;->mLyricStatus:I

    if-nez v2, :cond_9

    .line 98
    invoke-virtual {p1}, Lcom/miui/player/service/MediaPlaybackService;->isBuffering()Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez p7, :cond_8

    .line 99
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 101
    :cond_8
    const/4 v2, 0x1

    iput v2, p0, Lcom/miui/player/service/LyricManager;->mLyricStatus:I

    .line 102
    invoke-virtual {p1}, Lcom/miui/player/service/MediaPlaybackService;->needSearch()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 103
    new-instance v1, Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;

    invoke-virtual {p1}, Lcom/miui/player/service/MediaPlaybackService;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p4, p6, p5, v2}, Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .local v1, searchInfo:Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;
    invoke-virtual {p1}, Lcom/miui/player/service/MediaPlaybackService;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2, v1, p2}, Lcom/miui/player/service/LyricManager;->download(Landroid/content/Context;Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)I

    move-result v2

    iput v2, p0, Lcom/miui/player/service/LyricManager;->mLyricStatus:I

    goto :goto_2

    .line 106
    .end local v1           #searchInfo:Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;
    :cond_9
    iget v2, p0, Lcom/miui/player/service/LyricManager;->mLyricStatus:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    if-eqz p3, :cond_5

    .line 107
    const/4 v2, 0x2

    iput v2, p0, Lcom/miui/player/service/LyricManager;->mLyricStatus:I

    goto :goto_2

    .line 110
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_0
.end method
