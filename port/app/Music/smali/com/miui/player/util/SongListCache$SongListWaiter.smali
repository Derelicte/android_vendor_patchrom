.class public interface abstract Lcom/miui/player/util/SongListCache$SongListWaiter;
.super Ljava/lang/Object;
.source "SongListCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/util/SongListCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SongListWaiter"
.end annotation


# virtual methods
.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract isCacheEnable()Z
.end method

.method public abstract onRequestCompleted(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;)V
.end method
