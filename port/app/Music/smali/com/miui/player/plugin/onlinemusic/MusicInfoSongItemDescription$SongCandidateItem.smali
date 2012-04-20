.class public Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription$SongCandidateItem;
.super Ljava/lang/Object;
.source "MusicInfoSongItemDescription.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SongCandidateItem"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x22195bd1f33f1a4fL


# instance fields
.field public AlbumThumbnailUrl:Ljava/lang/String;

.field public Genre:Ljava/lang/String;

.field public Language:Ljava/lang/String;

.field public LrcUrl:Ljava/lang/String;

.field public MusicUrl:Ljava/lang/String;

.field public Producer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
