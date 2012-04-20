.class public Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;
.super Ljava/lang/Object;
.source "MusicInfoSongItemDescription.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription$FileDownloadInfo;,
        Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription$SongCandidateItem;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3569496adcbb2840L


# instance fields
.field public Provider:Ljava/lang/String;

.field public SongCandidates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription$SongCandidateItem;",
            ">;"
        }
    .end annotation
.end field

.field public SongInfo:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;


# direct methods
.method public constructor <init>(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;)V
    .locals 1
    .parameter "songInfo"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;->SongCandidates:Ljava/util/ArrayList;

    .line 44
    iput-object p1, p0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;->SongInfo:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    .line 45
    return-void
.end method
