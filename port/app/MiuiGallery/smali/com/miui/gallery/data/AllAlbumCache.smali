.class public Lcom/miui/gallery/data/AllAlbumCache;
.super Lcom/miui/gallery/data/AlbumCacheBase;
.source "AllAlbumCache.java"


# direct methods
.method public constructor <init>(Lcom/miui/gallery/data/MediaSet;Landroid/content/Context;)V
    .locals 0
    .parameter "set"
    .parameter "context"

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/data/AlbumCacheBase;-><init>(Lcom/miui/gallery/data/MediaSet;Landroid/content/Context;)V

    .line 10
    return-void
.end method


# virtual methods
.method protected canDisplay(Lcom/miui/gallery/data/DBAlbum;)Z
    .locals 2
    .parameter "dbAlbum"

    .prologue
    const/4 v0, 0x1

    .line 14
    iget-object v1, p0, Lcom/miui/gallery/data/AllAlbumCache;->mPreferenceHelper:Lcom/miui/gallery/settings/PreferenceHelper;

    invoke-virtual {v1}, Lcom/miui/gallery/settings/PreferenceHelper;->isShowHidden()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBAlbum;->getIsHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected readSortBy()I
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/data/AllAlbumCache;->mPreferenceHelper:Lcom/miui/gallery/settings/PreferenceHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->getAllAlbumsSortBy()I

    move-result v0

    return v0
.end method

.method public setSortBy(I)V
    .locals 1
    .parameter "sortBy"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/data/AllAlbumCache;->mPreferenceHelper:Lcom/miui/gallery/settings/PreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/settings/PreferenceHelper;->setAllAlbumsSortBy(I)V

    .line 28
    return-void
.end method
