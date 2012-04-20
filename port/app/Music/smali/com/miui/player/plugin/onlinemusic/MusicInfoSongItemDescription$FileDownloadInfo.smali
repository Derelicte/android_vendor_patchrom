.class public Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription$FileDownloadInfo;
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
    name = "FileDownloadInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x24f129ed22a814cbL


# instance fields
.field public AlbumUrl:Ljava/lang/String;

.field public DownloadingStatus:I

.field public FileExtension:Ljava/lang/String;

.field public FileSizeBytes:I

.field public LocalPath:Ljava/lang/String;

.field public LyricUrl:Ljava/lang/String;

.field public WebUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
