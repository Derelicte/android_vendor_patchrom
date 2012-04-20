.class Lcom/miui/player/model/AlbumListAdapter$AlbumDrawableWorker;
.super Ljava/lang/Object;
.source "AlbumListAdapter.java"

# interfaces
.implements Lcom/miui/player/model/AsyncDrawableProvider$AsyncDrawableWorker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/AlbumListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlbumDrawableWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/player/model/AsyncDrawableProvider$AsyncDrawableWorker",
        "<",
        "Lcom/miui/player/meta/AlbumInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAlbumHeight:I

.field private final mAlbumWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput p1, p0, Lcom/miui/player/model/AlbumListAdapter$AlbumDrawableWorker;->mAlbumWidth:I

    .line 234
    iput p2, p0, Lcom/miui/player/model/AlbumListAdapter$AlbumDrawableWorker;->mAlbumHeight:I

    .line 235
    return-void
.end method


# virtual methods
.method public asKey(Lcom/miui/player/meta/AlbumInfo;)Ljava/lang/String;
    .locals 4
    .parameter "key"

    .prologue
    .line 239
    iget-object v1, p1, Lcom/miui/player/meta/AlbumInfo;->mAlbumName:Ljava/lang/String;

    iget-object v2, p1, Lcom/miui/player/meta/AlbumInfo;->mArtistName:Ljava/lang/String;

    const-string v3, "album"

    invoke-static {v1, v2, v3}, Lcom/miui/player/meta/MetaManager;->getMetaFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, keyStr:Ljava/lang/String;
    return-object v0
.end method

.method public bridge synthetic asKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 228
    check-cast p1, Lcom/miui/player/meta/AlbumInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/model/AlbumListAdapter$AlbumDrawableWorker;->asKey(Lcom/miui/player/meta/AlbumInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(Landroid/content/Context;Lcom/miui/player/meta/AlbumInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "context"
    .parameter "key"
    .parameter "fromFile"

    .prologue
    .line 249
    iget-wide v1, p2, Lcom/miui/player/meta/AlbumInfo;->mAlbumId:J

    iget-object v3, p2, Lcom/miui/player/meta/AlbumInfo;->mAlbumName:Ljava/lang/String;

    iget-object v4, p2, Lcom/miui/player/meta/AlbumInfo;->mArtistName:Ljava/lang/String;

    iget-object v0, p2, Lcom/miui/player/meta/AlbumInfo;->mAlbumArt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v5, 0x1

    :goto_0
    iget v6, p0, Lcom/miui/player/model/AlbumListAdapter$AlbumDrawableWorker;->mAlbumWidth:I

    iget v7, p0, Lcom/miui/player/model/AlbumListAdapter$AlbumDrawableWorker;->mAlbumHeight:I

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/miui/player/meta/AlbumManager;->getArtworkQuick(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZII)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getDrawable(Landroid/content/Context;Ljava/lang/Object;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 228
    check-cast p2, Lcom/miui/player/meta/AlbumInfo;

    .end local p2
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/player/model/AlbumListAdapter$AlbumDrawableWorker;->getDrawable(Landroid/content/Context;Lcom/miui/player/meta/AlbumInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
