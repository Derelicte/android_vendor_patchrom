.class Lcom/miui/gallery/picasasource/PicasaSource$EmptyAlbumSet;
.super Lcom/miui/gallery/data/MediaSet;
.source "PicasaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/picasasource/PicasaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyAlbumSet"
.end annotation


# direct methods
.method public constructor <init>(Lcom/miui/gallery/data/Path;J)V
    .locals 0
    .parameter "path"
    .parameter "version"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/data/MediaSet;-><init>(Lcom/miui/gallery/data/Path;J)V

    .line 62
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "picasa"

    return-object v0
.end method

.method public reload()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/miui/gallery/picasasource/PicasaSource$EmptyAlbumSet;->mDataVersion:J

    return-wide v0
.end method
