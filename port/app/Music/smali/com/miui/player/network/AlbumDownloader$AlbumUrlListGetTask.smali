.class public Lcom/miui/player/network/AlbumDownloader$AlbumUrlListGetTask;
.super Landroid/os/AsyncTask;
.source "AlbumDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/network/AlbumDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumUrlListGetTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field protected final mMetaInfo:Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;

.field protected final mSearchInfo:Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;

.field protected final mUrlPattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;)V
    .locals 1
    .parameter "metaInfo"
    .parameter "searchInfo"

    .prologue
    .line 342
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 343
    const-string v0, "http://xshare.api.xiaomi.com/xShare?do=mp3.cover.search&album=%s&artist=%s"

    iput-object v0, p0, Lcom/miui/player/network/AlbumDownloader$AlbumUrlListGetTask;->mUrlPattern:Ljava/lang/String;

    .line 344
    iput-object p1, p0, Lcom/miui/player/network/AlbumDownloader$AlbumUrlListGetTask;->mMetaInfo:Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;

    .line 345
    iput-object p2, p0, Lcom/miui/player/network/AlbumDownloader$AlbumUrlListGetTask;->mSearchInfo:Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;

    .line 346
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 333
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/network/AlbumDownloader$AlbumUrlListGetTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 11
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 350
    iget-object v7, p0, Lcom/miui/player/network/AlbumDownloader$AlbumUrlListGetTask;->mSearchInfo:Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;

    iget-object v7, v7, Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;->mAlbumName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/miui/player/network/AlbumDownloader$AlbumUrlListGetTask;->mSearchInfo:Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;

    iget-object v7, v7, Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;->mArtistName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v3, v6

    .line 376
    :cond_0
    :goto_0
    return-object v3

    .line 355
    :cond_1
    iget-object v7, p0, Lcom/miui/player/network/AlbumDownloader$AlbumUrlListGetTask;->mUrlPattern:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/miui/player/network/AlbumDownloader$AlbumUrlListGetTask;->mSearchInfo:Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;

    iget-object v9, v9, Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;->mAlbumName:Ljava/lang/String;

    invoke-static {v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/miui/player/network/AlbumDownloader$AlbumUrlListGetTask;->mSearchInfo:Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;

    iget-object v10, v10, Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;->mArtistName:Ljava/lang/String;

    invoke-static {v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 358
    .local v5, url:Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Lcom/xiaomi/common/util/Network;->doHttpGet(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/common/util/JSONHelper;->fromInputStream(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v2

    .line 359
    .local v2, json:Lorg/json/JSONObject;
    const-string v7, "data"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 360
    .local v0, data:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 361
    .local v4, size:I
    if-lez v4, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "http"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 362
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 363
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 364
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 373
    .end local v0           #data:Lorg/json/JSONArray;
    .end local v1           #i:I
    .end local v2           #json:Lorg/json/JSONObject;
    .end local v3           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #size:I
    :catch_0
    move-exception v7

    :cond_2
    :goto_2
    move-object v3, v6

    .line 376
    goto :goto_0

    .line 372
    :catch_1
    move-exception v7

    goto :goto_2

    .line 371
    :catch_2
    move-exception v7

    goto :goto_2

    .line 370
    :catch_3
    move-exception v7

    goto :goto_2
.end method
