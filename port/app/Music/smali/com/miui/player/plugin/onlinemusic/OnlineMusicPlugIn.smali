.class public interface abstract Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;
.super Ljava/lang/Object;
.source "OnlineMusicPlugIn.java"

# interfaces
.implements Lcom/miui/player/plugin/base/PlugInInterface;


# virtual methods
.method public abstract findSongsWithRawUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;
.end method

.method public abstract getSearchSongUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSongCategoryList(Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;
.end method

.method public abstract getSongCategoryUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSongInfo(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;
.end method

.method public abstract getSongInfo(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;I)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;
.end method

.method public abstract guessYouLikeFromSong(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;
.end method
