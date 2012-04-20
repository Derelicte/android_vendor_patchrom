.class public Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;
.super Ljava/lang/Object;
.source "AlbumDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/network/AlbumDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetaDownloadInfo"
.end annotation


# instance fields
.field public final mAlbumName:Ljava/lang/String;

.field public final mArtistName:Ljava/lang/String;

.field public final mTrackName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "trackName"
    .parameter "albumName"
    .parameter "artistName"

    .prologue
    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    if-eqz p2, :cond_0

    .end local p2
    :goto_0
    iput-object p2, p0, Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;->mAlbumName:Ljava/lang/String;

    .line 323
    if-eqz p1, :cond_1

    .end local p1
    :goto_1
    iput-object p1, p0, Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;->mTrackName:Ljava/lang/String;

    .line 324
    if-eqz p3, :cond_2

    .end local p3
    :goto_2
    iput-object p3, p0, Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;->mArtistName:Ljava/lang/String;

    .line 325
    return-void

    .line 322
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_0
    const-string p2, ""

    goto :goto_0

    .line 323
    .end local p2
    :cond_1
    const-string p1, ""

    goto :goto_1

    .line 324
    .end local p1
    :cond_2
    const-string p3, ""

    goto :goto_2
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;->mArtistName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;->mTrackName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;->mAlbumName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
