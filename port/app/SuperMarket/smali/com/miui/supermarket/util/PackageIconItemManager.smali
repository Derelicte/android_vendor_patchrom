.class public Lcom/miui/supermarket/util/PackageIconItemManager;
.super Ljava/lang/Object;
.source "PackageIconItemManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/supermarket/util/PackageIconItemManager$1;
    }
.end annotation


# instance fields
.field private final mCacheDir:Ljava/io/File;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/miui/supermarket/util/PackageIconItemManager;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/supermarket/util/PackageIconItemManager;->mCacheDir:Ljava/io/File;

    .line 31
    iget-object v1, p0, Lcom/miui/supermarket/util/PackageIconItemManager;->mCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/miui/supermarket/util/PackageIconItemManager;->mCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, e:Ljava/lang/SecurityException;
    const-string v1, "PackagePhotoItemManager"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public downloadOnePhoto(Lcom/miui/supermarket/util/PackageIconItem;)V
    .locals 17
    .parameter "aItem"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/miui/supermarket/util/PackageIconItem;->hasLocalCache()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/miui/supermarket/util/PackageIconItem;->setDownloadFailed(Z)V

    .line 84
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/supermarket/util/PackageIconItem;->getURL()Ljava/lang/String;

    move-result-object v12

    .line 85
    .local v12, iconStr:Ljava/lang/String;
    const-string v14, "PackagePhotoItemManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "icon_url="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    .local v1, aURL:Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    .line 93
    .local v7, conn:Ljava/net/URLConnection;
    invoke-virtual {v7}, Ljava/net/URLConnection;->connect()V

    .line 94
    const/4 v13, 0x0

    .line 95
    .local v13, is:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 96
    .local v2, bis:Ljava/io/BufferedInputStream;
    const/4 v10, 0x0

    .line 99
    .local v10, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 100
    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v14, 0x2000

    invoke-direct {v3, v13, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    .line 101
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .local v3, bis:Ljava/io/BufferedInputStream;
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/miui/supermarket/util/PackageIconItem;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 102
    .local v6, cacheFileName:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/supermarket/util/PackageIconItemManager;->mCacheDir:Ljava/io/File;

    invoke-direct {v5, v14, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 103
    .local v5, cacheFile:Ljava/io/File;
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3

    .line 104
    .end local v10           #fos:Ljava/io/FileOutputStream;
    .local v11, fos:Ljava/io/FileOutputStream;
    const/16 v14, 0x400

    :try_start_3
    new-array v4, v14, [B

    .line 106
    .local v4, buffer:[B
    :goto_1
    const/4 v14, 0x0

    const/16 v15, 0x400

    invoke-virtual {v3, v4, v14, v15}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v8

    .local v8, count:I
    if-lez v8, :cond_4

    .line 107
    const/4 v14, 0x0

    invoke-virtual {v11, v4, v14, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    .line 110
    .end local v4           #buffer:[B
    .end local v8           #count:I
    :catch_0
    move-exception v9

    move-object v10, v11

    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 111
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #cacheFile:Ljava/io/File;
    .end local v6           #cacheFileName:Ljava/lang/String;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .local v9, e:Ljava/io/FileNotFoundException;
    :goto_2
    const/4 v14, 0x1

    :try_start_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/miui/supermarket/util/PackageIconItem;->setDownloadFailed(Z)V

    .line 112
    const-string v14, "PackagePhotoItemManager"

    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 117
    if-eqz v2, :cond_2

    .line 118
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 119
    :cond_2
    if-eqz v13, :cond_3

    .line 120
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 121
    :cond_3
    if-eqz v10, :cond_0

    .line 122
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_0

    .line 87
    .end local v1           #aURL:Ljava/net/URL;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v7           #conn:Ljava/net/URLConnection;
    .end local v9           #e:Ljava/io/FileNotFoundException;
    .end local v10           #fos:Ljava/io/FileOutputStream;
    .end local v12           #iconStr:Ljava/lang/String;
    .end local v13           #is:Ljava/io/InputStream;
    :catch_1
    move-exception v9

    .line 88
    .local v9, e:Ljava/net/MalformedURLException;
    const-string v14, "PackagePhotoItemManager"

    invoke-virtual {v9}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 109
    .end local v9           #e:Ljava/net/MalformedURLException;
    .restart local v1       #aURL:Ljava/net/URL;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #buffer:[B
    .restart local v5       #cacheFile:Ljava/io/File;
    .restart local v6       #cacheFileName:Ljava/lang/String;
    .restart local v7       #conn:Ljava/net/URLConnection;
    .restart local v8       #count:I
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    .restart local v12       #iconStr:Ljava/lang/String;
    .restart local v13       #is:Ljava/io/InputStream;
    :cond_4
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_4

    .line 117
    if-eqz v3, :cond_5

    .line 118
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 119
    :cond_5
    if-eqz v13, :cond_6

    .line 120
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 121
    :cond_6
    if-eqz v11, :cond_c

    .line 122
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    move-object v10, v11

    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto/16 :goto_0

    .line 113
    .end local v4           #buffer:[B
    .end local v5           #cacheFile:Ljava/io/File;
    .end local v6           #cacheFileName:Ljava/lang/String;
    .end local v8           #count:I
    :catch_2
    move-exception v9

    .line 114
    .local v9, e:Ljava/lang/SecurityException;
    :goto_3
    const/4 v14, 0x1

    :try_start_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/miui/supermarket/util/PackageIconItem;->setDownloadFailed(Z)V

    .line 115
    const-string v14, "PackagePhotoItemManager"

    invoke-virtual {v9}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 117
    if-eqz v2, :cond_7

    .line 118
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 119
    :cond_7
    if-eqz v13, :cond_8

    .line 120
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 121
    :cond_8
    if-eqz v10, :cond_0

    .line 122
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_0

    .line 117
    .end local v9           #e:Ljava/lang/SecurityException;
    :catchall_0
    move-exception v14

    :goto_4
    if-eqz v2, :cond_9

    .line 118
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 119
    :cond_9
    if-eqz v13, :cond_a

    .line 120
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 121
    :cond_a
    if-eqz v10, :cond_b

    .line 122
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    :cond_b
    throw v14

    .line 117
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v14

    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto :goto_4

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #cacheFile:Ljava/io/File;
    .restart local v6       #cacheFileName:Ljava/lang/String;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v14

    move-object v10, v11

    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 113
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #cacheFile:Ljava/io/File;
    .end local v6           #cacheFileName:Ljava/lang/String;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :catch_3
    move-exception v9

    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto :goto_3

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #cacheFile:Ljava/io/File;
    .restart local v6       #cacheFileName:Ljava/lang/String;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v9

    move-object v10, v11

    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 110
    .end local v5           #cacheFile:Ljava/io/File;
    .end local v6           #cacheFileName:Ljava/lang/String;
    :catch_5
    move-exception v9

    goto/16 :goto_2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :catch_6
    move-exception v9

    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto/16 :goto_2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #buffer:[B
    .restart local v5       #cacheFile:Ljava/io/File;
    .restart local v6       #cacheFileName:Ljava/lang/String;
    .restart local v8       #count:I
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    :cond_c
    move-object v10, v11

    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto/16 :goto_0
.end method

.method public tryGetBitmapLocally(Lcom/miui/supermarket/util/PackageIconItem;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "photo"

    .prologue
    const/4 v7, 0x4

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "photo"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/miui/supermarket/util/PackageIconItem;->getCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 45
    invoke-virtual {p1}, Lcom/miui/supermarket/util/PackageIconItem;->getCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72
    :cond_1
    :goto_0
    return-object v0

    .line 48
    :cond_2
    const/4 v0, 0x0

    .line 49
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/miui/supermarket/util/PackageIconItem;->getStorageType()Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;

    move-result-object v3

    .line 50
    .local v3, itemType:Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;
    sget-object v4, Lcom/miui/supermarket/util/PackageIconItemManager$1;->$SwitchMap$com$miui$supermarket$util$PackageIconItem$StorageTypeEnum:[I

    invoke-virtual {v3}, Lcom/miui/supermarket/util/PackageIconItem$StorageTypeEnum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 67
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "photo.getStorageType()"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 52
    :pswitch_0
    iget-object v4, p0, Lcom/miui/supermarket/util/PackageIconItemManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p1}, Lcom/miui/supermarket/util/PackageIconItem;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v5, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    :cond_3
    :goto_1
    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p1, v0}, Lcom/miui/supermarket/util/PackageIconItem;->setCachedBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 55
    :pswitch_1
    invoke-virtual {p1}, Lcom/miui/supermarket/util/PackageIconItem;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 56
    .local v2, fileName:Ljava/lang/String;
    const-string v4, "PackagePhotoItemManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "icon cache file="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/miui/supermarket/util/PackageIconItemManager;->mCacheDir:Ljava/io/File;

    invoke-virtual {p1}, Lcom/miui/supermarket/util/PackageIconItem;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v1, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    .local v1, cacheFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 59
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 60
    invoke-virtual {p1}, Lcom/miui/supermarket/util/PackageIconItem;->needRoundImage()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 61
    invoke-static {v0, v7, v7}, Lmiui/util/GraphicsUtils;->makeRoundImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 50
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
