.class public Lcom/miui/player/network/MP3Downloader;
.super Ljava/lang/Object;
.source "MP3Downloader.java"


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 175
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "online_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/player/network/MP3Downloader;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static correctId3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "appointName"
    .parameter "details"

    .prologue
    .line 158
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 160
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 161
    .local v3, json:Lorg/json/JSONObject;
    const-string v5, "album"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, album:Ljava/lang/String;
    const-string v5, "artist"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, artist:Ljava/lang/String;
    const-string v5, "track"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, track:Ljava/lang/String;
    const-string v5, "mp3"

    invoke-static {p1, v5}, Lcom/miui/player/meta/MetaManager;->getMetaFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 166
    .local v2, file:Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 167
    invoke-static {p0, v2, v4, v1, v0}, Lcom/miui/player/meta/MediaFileManager;->correctID3(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v0           #album:Ljava/lang/String;
    .end local v1           #artist:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #json:Lorg/json/JSONObject;
    .end local v4           #track:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private static getCandidateInfo(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;)Ljava/util/ArrayList;
    .locals 5
    .parameter "dsp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    const/4 v3, 0x0

    .line 143
    .local v3, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_2

    iget-object v4, p0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;->SongCandidates:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;->SongCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 144
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;->SongCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    .local v1, candidateUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;->SongCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription$SongCandidateItem;

    .line 146
    .local v0, candidate:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription$SongCandidateItem;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription$SongCandidateItem;->MusicUrl:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 147
    iget-object v4, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription$SongCandidateItem;->MusicUrl:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    .end local v0           #candidate:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription$SongCandidateItem;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    move-object v3, v1

    .line 154
    .end local v1           #candidateUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    return-object v3

    .line 151
    .restart local v1       #candidateUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static getDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "id"
    .parameter "tr"
    .parameter "ar"
    .parameter "al"

    .prologue
    .line 128
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 130
    .local v0, details:Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "online_id"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string v1, "album"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string v1, "artist"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v1, "track"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 134
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getRemoteMediaInfo(Landroid/content/Context;J)Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;
    .locals 16
    .parameter "context"
    .parameter "audioId"

    .prologue
    .line 184
    invoke-static/range {p1 .. p2}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 185
    const/4 v13, 0x0

    .line 216
    :cond_0
    :goto_0
    return-object v13

    .line 188
    :cond_1
    const/4 v11, 0x0

    .line 189
    .local v11, cursor:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 192
    .local v13, info:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;
    :try_start_0
    sget-object v2, Lcom/miui/player/provider/PlayerStore$MiuiNowPlayingAudio;->EXTERNAL_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 194
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/miui/player/network/MP3Downloader;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 195
    if-nez v11, :cond_2

    .line 196
    const/4 v13, 0x0

    .line 211
    .end local v13           #info:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;
    if-eqz v11, :cond_0

    .line 212
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 197
    .restart local v13       #info:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;
    :cond_2
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 198
    const/4 v13, 0x0

    .line 211
    .end local v13           #info:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;
    if-eqz v11, :cond_0

    .line 212
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 201
    .restart local v13       #info:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;
    :cond_3
    const/4 v2, 0x1

    :try_start_2
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 202
    .local v14, onlineId:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 203
    .local v15, title:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 204
    .local v10, artist:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 205
    .local v8, album:Ljava/lang/String;
    const-string v2, "mp3"

    invoke-static {v15, v10, v2}, Lcom/miui/player/meta/MetaManager;->getMetaFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 206
    .local v9, appointName:Ljava/lang/String;
    invoke-static {v14, v15, v10, v8}, Lcom/miui/player/network/MP3Downloader;->getDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 208
    .local v12, details:Ljava/lang/String;
    new-instance v13, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;

    .end local v13           #info:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;
    const/4 v2, 0x0

    invoke-direct {v13, v14, v9, v12, v2}, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    .restart local v13       #info:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;
    if-eqz v11, :cond_0

    .line 212
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 211
    .end local v3           #uri:Landroid/net/Uri;
    .end local v8           #album:Ljava/lang/String;
    .end local v9           #appointName:Ljava/lang/String;
    .end local v10           #artist:Ljava/lang/String;
    .end local v12           #details:Ljava/lang/String;
    .end local v13           #info:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;
    .end local v14           #onlineId:Ljava/lang/String;
    .end local v15           #title:Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_4

    .line 212
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method

.method public static requestCandidateUrls(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter "context"
    .parameter "onlineId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    invoke-direct {v1}, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;-><init>()V

    .line 113
    .local v1, songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    iput-object p1, v1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Id:Ljava/lang/String;

    .line 115
    const-string v2, "baidu"

    invoke-static {p0, v1, v2}, Lcom/miui/player/network/OnlineMusicProxy;->getSongInfo(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;

    move-result-object v0

    .line 118
    .local v0, dsp:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;
    invoke-static {v0}, Lcom/miui/player/network/MP3Downloader;->getCandidateInfo(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method public static startOnUIThread(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;)Z
    .locals 16
    .parameter "context"
    .parameter "item"

    .prologue
    .line 73
    invoke-static {}, Lcom/miui/player/util/Utils;->isExternalStorageMounted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    const/4 v1, 0x0

    .line 103
    :goto_0
    return v1

    .line 77
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/miui/player/network/MP3Downloader;->getCandidateInfo(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;)Ljava/util/ArrayList;

    move-result-object v15

    .line 78
    .local v15, urlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v15, :cond_1

    .line 79
    const v1, 0x7f080006

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 80
    const/4 v1, 0x0

    goto :goto_0

    .line 83
    :cond_1
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;->SongInfo:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    .line 84
    .local v12, songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    iget-object v13, v12, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Name:Ljava/lang/String;

    .line 85
    .local v13, tr:Ljava/lang/String;
    iget-object v1, v12, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Artist:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v9, v12, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Artist:Ljava/lang/String;

    .line 86
    .local v9, ar:Ljava/lang/String;
    :goto_1
    iget-object v1, v12, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Album:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v8, v12, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Album:Ljava/lang/String;

    .line 88
    .local v8, al:Ljava/lang/String;
    :goto_2
    const-string v1, "mp3"

    invoke-static {v13, v9, v1}, Lcom/miui/player/meta/MetaManager;->getMetaFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, appointName:Ljava/lang/String;
    if-nez v5, :cond_4

    .line 90
    const/4 v1, 0x0

    goto :goto_0

    .line 85
    .end local v5           #appointName:Ljava/lang/String;
    .end local v8           #al:Ljava/lang/String;
    .end local v9           #ar:Ljava/lang/String;
    :cond_2
    const-string v9, ""

    goto :goto_1

    .line 86
    .restart local v9       #ar:Ljava/lang/String;
    :cond_3
    const-string v8, ""

    goto :goto_2

    .line 93
    .restart local v5       #appointName:Ljava/lang/String;
    .restart local v8       #al:Ljava/lang/String;
    :cond_4
    const-string v1, "mp3"

    invoke-static {v1}, Lcom/miui/player/meta/MetaManager;->getMetaDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 94
    .local v11, dir:Ljava/io/File;
    if-nez v11, :cond_5

    .line 95
    const/4 v1, 0x0

    goto :goto_0

    .line 98
    :cond_5
    iget-object v1, v12, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Id:Ljava/lang/String;

    invoke-static {v1, v13, v9, v8}, Lcom/miui/player/network/MP3Downloader;->getDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 100
    .local v10, details:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v12, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Id:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x1

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v15, v1, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/miui/player/network/DownloadProvider;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/net/Uri;

    move-result-object v14

    .line 103
    .local v14, uri:Landroid/net/Uri;
    if-eqz v14, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static startOnUIThread(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;Ljava/lang/Runnable;)Z
    .locals 2
    .parameter "context"
    .parameter "songItem"
    .parameter "runOnStartDownload"

    .prologue
    const/4 v0, 0x0

    .line 36
    if-nez p1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    invoke-static {}, Lcom/miui/player/util/Utils;->isExternalStorageMounted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    new-instance v1, Lcom/miui/player/network/MP3Downloader$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/player/network/MP3Downloader$1;-><init>(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;Ljava/lang/Runnable;)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/miui/player/network/MP3Downloader$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 69
    const/4 v0, 0x1

    goto :goto_0
.end method
