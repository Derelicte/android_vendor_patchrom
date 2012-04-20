.class Lcom/miui/gallery/data/StorageSource;
.super Lcom/miui/gallery/data/MediaSource;
.source "StorageSource.java"


# instance fields
.field private mApplication:Lcom/miui/gallery/app/GalleryApp;

.field private mMatcher:Lcom/miui/gallery/data/PathMatcher;

.field private final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryApp;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 26
    const-string v0, "storage"

    invoke-direct {p0, v0}, Lcom/miui/gallery/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 18
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/data/StorageSource;->mUriMatcher:Landroid/content/UriMatcher;

    .line 27
    iput-object p1, p0, Lcom/miui/gallery/data/StorageSource;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    .line 28
    new-instance v0, Lcom/miui/gallery/data/PathMatcher;

    invoke-direct {v0}, Lcom/miui/gallery/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/StorageSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    .line 29
    iget-object v0, p0, Lcom/miui/gallery/data/StorageSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    const-string v1, "/storage/all/*"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 30
    iget-object v0, p0, Lcom/miui/gallery/data/StorageSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    const-string v1, "/storage/image/item/*"

    invoke-virtual {v0, v1, v3}, Lcom/miui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 31
    iget-object v0, p0, Lcom/miui/gallery/data/StorageSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    const-string v1, "/storage/video/item/*"

    invoke-virtual {v0, v1, v4}, Lcom/miui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 33
    iget-object v0, p0, Lcom/miui/gallery/data/StorageSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "storage"

    const-string v2, "image/item/*"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    iget-object v0, p0, Lcom/miui/gallery/data/StorageSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "storage"

    const-string v2, "video/item/*"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 35
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;
    .locals 6
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    .line 39
    iget-object v0, p0, Lcom/miui/gallery/data/StorageSource;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    .line 40
    .local v0, app:Lcom/miui/gallery/app/GalleryApp;
    iget-object v3, p0, Lcom/miui/gallery/data/StorageSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    invoke-virtual {v3, p1}, Lcom/miui/gallery/data/PathMatcher;->match(Lcom/miui/gallery/data/Path;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 54
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 42
    :pswitch_0
    iget-object v3, p0, Lcom/miui/gallery/data/StorageSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/data/DataManager;->removeBracesFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, folderPath:Ljava/lang/String;
    new-instance v3, Lcom/miui/gallery/data/StorageMediaSet;

    invoke-direct {v3, p1, v0, v2}, Lcom/miui/gallery/data/StorageMediaSet;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Ljava/lang/String;)V

    .line 51
    .end local v2           #folderPath:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 46
    :pswitch_1
    iget-object v3, p0, Lcom/miui/gallery/data/StorageSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/data/DataManager;->removeBracesFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, filePath:Ljava/lang/String;
    new-instance v3, Lcom/miui/gallery/data/StorageImage;

    invoke-direct {v3, p1, v0, v1}, Lcom/miui/gallery/data/StorageImage;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    .end local v1           #filePath:Ljava/lang/String;
    :pswitch_2
    iget-object v3, p0, Lcom/miui/gallery/data/StorageSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/data/DataManager;->removeBracesFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .restart local v1       #filePath:Ljava/lang/String;
    new-instance v3, Lcom/miui/gallery/data/StorageVideo;

    invoke-direct {v3, p1, v0, v1}, Lcom/miui/gallery/data/StorageVideo;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public findPathByUri(Landroid/net/Uri;)Lcom/miui/gallery/data/Path;
    .locals 2
    .parameter "uri"

    .prologue
    .line 60
    iget-object v1, p0, Lcom/miui/gallery/data/StorageSource;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 71
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 62
    :pswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, pathSegment:Ljava/lang/String;
    sget-object v1, Lcom/miui/gallery/data/StorageImage;->ITEM_PATH:Lcom/miui/gallery/data/Path;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/data/Path;->getChild(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v1

    goto :goto_0

    .line 66
    .end local v0           #pathSegment:Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 67
    .restart local v0       #pathSegment:Ljava/lang/String;
    sget-object v1, Lcom/miui/gallery/data/StorageVideo;->ITEM_PATH:Lcom/miui/gallery/data/Path;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/data/Path;->getChild(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v1

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
