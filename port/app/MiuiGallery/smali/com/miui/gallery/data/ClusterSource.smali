.class Lcom/miui/gallery/data/ClusterSource;
.super Lcom/miui/gallery/data/MediaSource;
.source "ClusterSource.java"


# instance fields
.field mApplication:Lcom/miui/gallery/app/GalleryApp;

.field mMatcher:Lcom/miui/gallery/data/PathMatcher;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryApp;)V
    .locals 3
    .parameter "application"

    .prologue
    .line 38
    const-string v0, "cluster"

    invoke-direct {p0, v0}, Lcom/miui/gallery/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/miui/gallery/data/ClusterSource;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    .line 40
    new-instance v0, Lcom/miui/gallery/data/PathMatcher;

    invoke-direct {v0}, Lcom/miui/gallery/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/ClusterSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    .line 41
    iget-object v0, p0, Lcom/miui/gallery/data/ClusterSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    const-string v1, "/cluster/*/time"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 42
    iget-object v0, p0, Lcom/miui/gallery/data/ClusterSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    const-string v1, "/cluster/*/location"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 43
    iget-object v0, p0, Lcom/miui/gallery/data/ClusterSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    const-string v1, "/cluster/*/tag"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 44
    iget-object v0, p0, Lcom/miui/gallery/data/ClusterSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    const-string v1, "/cluster/*/size"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 45
    iget-object v0, p0, Lcom/miui/gallery/data/ClusterSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    const-string v1, "/cluster/*/face"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 47
    iget-object v0, p0, Lcom/miui/gallery/data/ClusterSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    const-string v1, "/cluster/*/time/*"

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 48
    iget-object v0, p0, Lcom/miui/gallery/data/ClusterSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    const-string v1, "/cluster/*/location/*"

    const/16 v2, 0x101

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 49
    iget-object v0, p0, Lcom/miui/gallery/data/ClusterSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    const-string v1, "/cluster/*/tag/*"

    const/16 v2, 0x102

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 50
    iget-object v0, p0, Lcom/miui/gallery/data/ClusterSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    const-string v1, "/cluster/*/size/*"

    const/16 v2, 0x103

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 51
    iget-object v0, p0, Lcom/miui/gallery/data/ClusterSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    const-string v1, "/cluster/*/face/*"

    const/16 v2, 0x104

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 52
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;
    .locals 8
    .parameter "path"

    .prologue
    const/4 v7, 0x0

    .line 61
    iget-object v5, p0, Lcom/miui/gallery/data/ClusterSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    invoke-virtual {v5, p1}, Lcom/miui/gallery/data/PathMatcher;->match(Lcom/miui/gallery/data/Path;)I

    move-result v1

    .line 62
    .local v1, matchType:I
    iget-object v5, p0, Lcom/miui/gallery/data/ClusterSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    invoke-virtual {v5, v7}, Lcom/miui/gallery/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, setsName:Ljava/lang/String;
    iget-object v5, p0, Lcom/miui/gallery/data/ClusterSource;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v5}, Lcom/miui/gallery/app/GalleryApp;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v0

    .line 64
    .local v0, dataManager:Lcom/miui/gallery/data/DataManager;
    invoke-virtual {v0, v4}, Lcom/miui/gallery/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/miui/gallery/data/MediaSet;

    move-result-object v3

    .line 65
    .local v3, sets:[Lcom/miui/gallery/data/MediaSet;
    sparse-switch v1, :sswitch_data_0

    .line 83
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 71
    :sswitch_0
    new-instance v5, Lcom/miui/gallery/data/ClusterAlbumSet;

    iget-object v6, p0, Lcom/miui/gallery/data/ClusterSource;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    aget-object v7, v3, v7

    invoke-direct {v5, p1, v6, v7, v1}, Lcom/miui/gallery/data/ClusterAlbumSet;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/data/MediaSet;I)V

    .line 80
    :goto_0
    return-object v5

    .line 77
    :sswitch_1
    invoke-virtual {p1}, Lcom/miui/gallery/data/Path;->getParent()Lcom/miui/gallery/data/Path;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/miui/gallery/data/DataManager;->getMediaSet(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v2

    .line 80
    .local v2, parent:Lcom/miui/gallery/data/MediaSet;
    new-instance v5, Lcom/miui/gallery/data/ClusterAlbum;

    invoke-direct {v5, p1, v0, v2}, Lcom/miui/gallery/data/ClusterAlbum;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/data/DataManager;Lcom/miui/gallery/data/MediaSet;)V

    goto :goto_0

    .line 65
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x100 -> :sswitch_1
        0x101 -> :sswitch_1
        0x102 -> :sswitch_1
        0x103 -> :sswitch_1
        0x104 -> :sswitch_1
    .end sparse-switch
.end method
