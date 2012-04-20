.class public Lcom/miui/player/network/AlbumDownloader;
.super Ljava/lang/Object;
.source "AlbumDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/network/AlbumDownloader$AlbumUrlListGetTask;,
        Lcom/miui/player/network/AlbumDownloader$MetaDownloadInfo;,
        Lcom/miui/player/network/AlbumDownloader$AlbumDownloadListener;,
        Lcom/miui/player/network/AlbumDownloader$DownloadTaskToken;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/miui/player/network/AlbumDownloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    return-void
.end method

.method public static allowAlbumDownload(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 180
    invoke-static {p0}, Lcom/xiaomi/common/util/Network;->isWifi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "other_connect_album"

    invoke-static {p0, v0}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static download(Landroid/content/Context;Lcom/miui/player/meta/AlbumInfo;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "context"
    .parameter "raw"

    .prologue
    .line 115
    invoke-static {p0, p1, p1}, Lcom/miui/player/network/AlbumDownloader;->download(Landroid/content/Context;Lcom/miui/player/meta/AlbumInfo;Lcom/miui/player/meta/AlbumInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static download(Landroid/content/Context;Lcom/miui/player/meta/AlbumInfo;Lcom/miui/player/meta/AlbumInfo;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "context"
    .parameter "raw"
    .parameter "search"

    .prologue
    const/4 v9, 0x0

    .line 119
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/player/meta/AlbumInfo;->isValid()Z

    move-result v10

    if-nez v10, :cond_2

    :cond_0
    move-object v0, v9

    .line 160
    :cond_1
    :goto_0
    return-object v0

    .line 123
    :cond_2
    invoke-static {p2}, Lcom/miui/player/network/AlbumDownloader;->requestList(Lcom/miui/player/meta/AlbumInfo;)Ljava/util/List;

    move-result-object v4

    .line 124
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_4

    :cond_3
    move-object v0, v9

    .line 125
    goto :goto_0

    .line 128
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 129
    .local v8, url:Ljava/lang/String;
    invoke-static {v8}, Lcom/miui/player/network/AlbumDownloader;->requestItem(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 134
    iget-object v9, p1, Lcom/miui/player/meta/AlbumInfo;->mAlbumName:Ljava/lang/String;

    iget-object v10, p1, Lcom/miui/player/meta/AlbumInfo;->mArtistName:Ljava/lang/String;

    const-string v11, "album"

    invoke-static {v9, v10, v11}, Lcom/miui/player/meta/MetaManager;->getMetaFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 135
    .local v2, file:Ljava/io/File;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 136
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 137
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 138
    :cond_6
    if-eqz v2, :cond_1

    const-string v9, "album"

    invoke-static {p0, v9}, Lcom/miui/player/meta/MetaManager;->makeDirIfNotExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 139
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 140
    .local v7, path:Ljava/lang/String;
    const/4 v5, 0x0

    .line 142
    .local v5, os:Ljava/io/OutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 143
    .end local v5           #os:Ljava/io/OutputStream;
    .local v6, os:Ljava/io/OutputStream;
    :try_start_1
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {v0, v9, v10, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    .line 147
    if-eqz v6, :cond_1

    .line 149
    :try_start_2
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, e:Ljava/io/IOException;
    sget-object v9, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 144
    .end local v1           #e:Ljava/io/IOException;
    .end local v6           #os:Ljava/io/OutputStream;
    .restart local v5       #os:Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 145
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    sget-object v9, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    invoke-static {v9, v1}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    if-eqz v5, :cond_1

    .line 149
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 150
    :catch_2
    move-exception v1

    .line 151
    .local v1, e:Ljava/io/IOException;
    sget-object v9, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 147
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_2
    if-eqz v5, :cond_7

    .line 149
    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 152
    :cond_7
    :goto_3
    throw v9

    .line 150
    :catch_3
    move-exception v1

    .line 151
    .restart local v1       #e:Ljava/io/IOException;
    sget-object v10, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #file:Ljava/io/File;
    .end local v5           #os:Ljava/io/OutputStream;
    .end local v7           #path:Ljava/lang/String;
    .end local v8           #url:Ljava/lang/String;
    :cond_8
    move-object v0, v9

    .line 160
    goto/16 :goto_0

    .line 147
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v2       #file:Ljava/io/File;
    .restart local v6       #os:Ljava/io/OutputStream;
    .restart local v7       #path:Ljava/lang/String;
    .restart local v8       #url:Ljava/lang/String;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6           #os:Ljava/io/OutputStream;
    .restart local v5       #os:Ljava/io/OutputStream;
    goto :goto_2

    .line 144
    .end local v5           #os:Ljava/io/OutputStream;
    .restart local v6       #os:Ljava/io/OutputStream;
    :catch_4
    move-exception v1

    move-object v5, v6

    .end local v6           #os:Ljava/io/OutputStream;
    .restart local v5       #os:Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static downloadAll(Landroid/content/Context;Lcom/miui/player/network/AlbumDownloader$AlbumDownloadListener;)Lcom/miui/player/network/AlbumDownloader$DownloadTaskToken;
    .locals 2
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 194
    invoke-static {p0}, Lcom/miui/player/network/AlbumDownloader;->allowAlbumDownload(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    const/4 v1, 0x0

    .line 242
    :goto_0
    return-object v1

    .line 198
    :cond_0
    new-instance v0, Lcom/miui/player/network/AlbumDownloader$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/player/network/AlbumDownloader$1;-><init>(Landroid/content/Context;Lcom/miui/player/network/AlbumDownloader$AlbumDownloadListener;)V

    .line 241
    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Lcom/miui/player/meta/AlbumInfo;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 242
    new-instance v1, Lcom/miui/player/network/AlbumDownloader$DownloadTaskToken;

    invoke-direct {v1, v0}, Lcom/miui/player/network/AlbumDownloader$DownloadTaskToken;-><init>(Landroid/os/AsyncTask;)V

    goto :goto_0
.end method

.method private static getExistAlbumSet()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 301
    .local v6, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v7, "album"

    invoke-static {v7}, Lcom/miui/player/meta/MetaManager;->getMetaDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 302
    .local v1, dir:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 303
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 304
    .local v5, list:[Ljava/io/File;
    if-eqz v5, :cond_0

    .line 305
    move-object v0, v5

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 306
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 305
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 311
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #list:[Ljava/io/File;
    :cond_0
    return-object v6
.end method

.method static prepareAlbumList(Landroid/content/Context;)Ljava/util/List;
    .locals 19
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/meta/AlbumInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v15, list:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/meta/AlbumInfo;>;"
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "album_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "artist"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "album"

    aput-object v3, v4, v2

    .line 253
    .local v4, cols:[Ljava/lang/String;
    const-string v16, "album_id"

    .line 255
    .local v16, orderBy:Ljava/lang/String;
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "album != \'\'"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/miui/player/util/SqlUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "album_id"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 259
    .local v12, cursor:Landroid/database/Cursor;
    if-nez v12, :cond_0

    .line 296
    :goto_0
    return-object v15

    .line 264
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/miui/player/network/AlbumDownloader;->getExistAlbumSet()Ljava/util/Set;

    move-result-object v18

    .line 265
    .local v18, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-wide/16 v13, -0x1

    .line 266
    .local v13, lastId:J
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 267
    .local v11, cached:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 268
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 269
    .local v6, aid:J
    cmp-long v2, v6, v13

    if-eqz v2, :cond_1

    .line 272
    move-wide v13, v6

    .line 274
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 275
    .local v10, artist:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 276
    .local v9, album:Ljava/lang/String;
    invoke-static {v9}, Lcom/miui/player/meta/MetaManager;->isUnknowName(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v10}, Lcom/miui/player/meta/MetaManager;->isUnknowName(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 280
    :cond_2
    const-string v2, "album"

    invoke-static {v9, v10, v2}, Lcom/miui/player/meta/MetaManager;->getMetaFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 281
    .local v17, path:Ljava/lang/String;
    if-eqz v17, :cond_1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 285
    move-object/from16 v0, p0

    invoke-static {v0, v6, v7, v11}, Lcom/miui/player/meta/AlbumManager;->isArtworkQuickExist(Landroid/content/Context;JLandroid/graphics/BitmapFactory$Options;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 289
    new-instance v5, Lcom/miui/player/meta/AlbumInfo;

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/miui/player/meta/AlbumInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .local v5, info:Lcom/miui/player/meta/AlbumInfo;
    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 293
    .end local v5           #info:Lcom/miui/player/meta/AlbumInfo;
    .end local v6           #aid:J
    .end local v9           #album:Ljava/lang/String;
    .end local v10           #artist:Ljava/lang/String;
    .end local v11           #cached:Landroid/graphics/BitmapFactory$Options;
    .end local v13           #lastId:J
    .end local v17           #path:Ljava/lang/String;
    .end local v18           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2

    .restart local v11       #cached:Landroid/graphics/BitmapFactory$Options;
    .restart local v13       #lastId:J
    .restart local v18       #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static requestItem(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "url"

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 91
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/common/util/Network;->doHttpGet(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_1

    .line 93
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v2

    .line 102
    if-eqz v1, :cond_0

    .line 104
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    :cond_0
    :goto_0
    return-object v2

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/io/IOException;
    sget-object v3, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    if-eqz v1, :cond_2

    .line 104
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 111
    :cond_2
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 105
    :catch_1
    move-exception v0

    .line 106
    .restart local v0       #e:Ljava/io/IOException;
    sget-object v2, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 95
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 96
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    :try_start_3
    sget-object v2, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    if-eqz v1, :cond_2

    .line 104
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 105
    :catch_3
    move-exception v0

    .line 106
    .local v0, e:Ljava/io/IOException;
    sget-object v2, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 97
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 98
    .local v0, e:Ljava/net/URISyntaxException;
    :try_start_5
    sget-object v2, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 102
    if-eqz v1, :cond_2

    .line 104
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_1

    .line 105
    :catch_5
    move-exception v0

    .line 106
    .local v0, e:Ljava/io/IOException;
    sget-object v2, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 99
    .end local v0           #e:Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 100
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_7
    sget-object v2, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 102
    if-eqz v1, :cond_2

    .line 104
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_1

    .line 105
    :catch_7
    move-exception v0

    .line 106
    sget-object v2, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 102
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 104
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 107
    :cond_3
    :goto_2
    throw v2

    .line 105
    :catch_8
    move-exception v0

    .line 106
    .restart local v0       #e:Ljava/io/IOException;
    sget-object v3, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private static requestList(Lcom/miui/player/meta/AlbumInfo;)Ljava/util/List;
    .locals 13
    .parameter "info"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/meta/AlbumInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    const/4 v6, 0x0

    .line 49
    .local v6, listStream:Ljava/io/InputStream;
    :try_start_0
    const-string v8, "http://xshare.api.xiaomi.com/xShare?do=mp3.cover.search&album=%s&artist=%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/miui/player/meta/AlbumInfo;->mAlbumName:Ljava/lang/String;

    const-string v12, "utf-8"

    invoke-static {v11, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/miui/player/meta/AlbumInfo;->mArtistName:Ljava/lang/String;

    const-string v12, "utf-8"

    invoke-static {v11, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 51
    .local v7, url:Ljava/lang/String;
    invoke-static {v7}, Lcom/xiaomi/common/util/Network;->doHttpGet(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 52
    if-eqz v6, :cond_2

    .line 53
    invoke-static {v6}, Lcom/xiaomi/common/util/JSONHelper;->fromInputStream(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v3

    .line 54
    .local v3, json:Lorg/json/JSONObject;
    const-string v8, "data"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 55
    .local v0, data:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 56
    .local v4, len:I
    if-lez v4, :cond_2

    .line 57
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 59
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_a

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_0
    if-eqz v6, :cond_1

    .line 78
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    .end local v0           #data:Lorg/json/JSONArray;
    .end local v2           #i:I
    .end local v3           #json:Lorg/json/JSONObject;
    .end local v4           #len:I
    .end local v5           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #url:Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v5

    .line 79
    .restart local v0       #data:Lorg/json/JSONArray;
    .restart local v2       #i:I
    .restart local v3       #json:Lorg/json/JSONObject;
    .restart local v4       #len:I
    .restart local v5       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7       #url:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 80
    .local v1, e:Ljava/io/IOException;
    sget-object v8, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 76
    .end local v0           #data:Lorg/json/JSONArray;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #i:I
    .end local v3           #json:Lorg/json/JSONObject;
    .end local v4           #len:I
    .end local v5           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    if-eqz v6, :cond_3

    .line 78
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 85
    .end local v7           #url:Ljava/lang/String;
    :cond_3
    :goto_2
    const/4 v5, 0x0

    goto :goto_1

    .line 79
    .restart local v7       #url:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 80
    .restart local v1       #e:Ljava/io/IOException;
    sget-object v8, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 65
    .end local v1           #e:Ljava/io/IOException;
    .end local v7           #url:Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 66
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    :try_start_3
    sget-object v8, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    invoke-static {v8, v1}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    if-eqz v6, :cond_3

    .line 78
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 79
    :catch_3
    move-exception v1

    .line 80
    .local v1, e:Ljava/io/IOException;
    sget-object v8, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 67
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 68
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    :try_start_5
    sget-object v8, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    invoke-static {v8, v1}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 76
    if-eqz v6, :cond_3

    .line 78
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_2

    .line 79
    :catch_5
    move-exception v1

    .line 80
    .local v1, e:Ljava/io/IOException;
    sget-object v8, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 69
    .end local v1           #e:Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 70
    .local v1, e:Ljava/net/URISyntaxException;
    :try_start_7
    sget-object v8, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    invoke-static {v8, v1}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 76
    if-eqz v6, :cond_3

    .line 78
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_2

    .line 79
    :catch_7
    move-exception v1

    .line 80
    .local v1, e:Ljava/io/IOException;
    sget-object v8, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 71
    .end local v1           #e:Ljava/io/IOException;
    :catch_8
    move-exception v1

    .line 72
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_9
    sget-object v8, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    invoke-static {v8, v1}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 76
    if-eqz v6, :cond_3

    .line 78
    :try_start_a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_2

    .line 79
    :catch_9
    move-exception v1

    .line 80
    sget-object v8, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 73
    .end local v1           #e:Ljava/io/IOException;
    :catch_a
    move-exception v1

    .line 74
    .local v1, e:Lorg/json/JSONException;
    :try_start_b
    sget-object v8, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    invoke-static {v8, v1}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 76
    if-eqz v6, :cond_3

    .line 78
    :try_start_c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_2

    .line 79
    :catch_b
    move-exception v1

    .line 80
    .local v1, e:Ljava/io/IOException;
    sget-object v8, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 76
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    if-eqz v6, :cond_4

    .line 78
    :try_start_d
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    .line 81
    :cond_4
    :goto_3
    throw v8

    .line 79
    :catch_c
    move-exception v1

    .line 80
    .restart local v1       #e:Ljava/io/IOException;
    sget-object v9, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3
.end method
