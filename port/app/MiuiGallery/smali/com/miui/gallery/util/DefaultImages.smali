.class public Lcom/miui/gallery/util/DefaultImages;
.super Ljava/lang/Object;
.source "DefaultImages.java"


# static fields
.field private static final sCameraImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sScreenshotImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/DefaultImages;->sCameraImages:Ljava/util/ArrayList;

    .line 28
    sget-object v0, Lcom/miui/gallery/util/DefaultImages;->sCameraImages:Ljava/util/ArrayList;

    const-string v1, "IMG_20110827_115721.jpg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lcom/miui/gallery/util/DefaultImages;->sCameraImages:Ljava/util/ArrayList;

    const-string v1, "IMG_20110925_153418.jpg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/miui/gallery/util/DefaultImages;->sCameraImages:Ljava/util/ArrayList;

    const-string v1, "IMG_20110930_130750.jpg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/miui/gallery/util/DefaultImages;->sCameraImages:Ljava/util/ArrayList;

    const-string v1, "IMG_20111101_104801.jpg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/miui/gallery/util/DefaultImages;->sCameraImages:Ljava/util/ArrayList;

    const-string v1, "IMG_20111109_074943.jpg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/miui/gallery/util/DefaultImages;->sCameraImages:Ljava/util/ArrayList;

    const-string v1, "IMG_20111113_162742.jpg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/miui/gallery/util/DefaultImages;->sCameraImages:Ljava/util/ArrayList;

    const-string v1, "IMG_20111130_121302.jpg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/miui/gallery/util/DefaultImages;->sCameraImages:Ljava/util/ArrayList;

    const-string v1, "IMG_20111202_165400.jpg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/miui/gallery/util/DefaultImages;->sCameraImages:Ljava/util/ArrayList;

    const-string v1, "IMG_20111202_170217.jpg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/miui/gallery/util/DefaultImages;->sCameraImages:Ljava/util/ArrayList;

    const-string v1, "IMG_20111202_173350.jpg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/miui/gallery/util/DefaultImages;->sCameraImages:Ljava/util/ArrayList;

    const-string v1, "IMG_20111208_005721.jpg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/miui/gallery/util/DefaultImages;->sCameraImages:Ljava/util/ArrayList;

    const-string v1, "IMG_20120318_104527.jpg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/DefaultImages;->sScreenshotImages:Ljava/util/ArrayList;

    .line 44
    sget-object v0, Lcom/miui/gallery/util/DefaultImages;->sScreenshotImages:Ljava/util/ArrayList;

    const-string v1, "screenshot_1.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/miui/gallery/util/DefaultImages;->sScreenshotImages:Ljava/util/ArrayList;

    const-string v1, "screenshot_2.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyImages(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter
    .parameter "internalFolder"
    .parameter "externalFolder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, assetImages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/miui/gallery/util/DefaultImages;->existFile(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {p2}, Lcom/miui/gallery/util/DefaultImages;->existFile(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sIsStorageReady()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v1, p2

    .line 107
    .local v1, destFolder:Ljava/lang/String;
    :goto_1
    const-string v9, "DefaultImages"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Start: copy default images to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v6, 0x0

    .line 111
    .local v6, is:Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 114
    .local v7, os:Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v2, destFolderFile:Ljava/io/File;
    const/16 v9, 0x1ff

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-static {v2, v9, v10, v11}, Lmiui/os/ExtraFileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 116
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    .line 117
    const-string v9, "DefaultImages"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fail to copy default images to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". Can not create the folder."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    .end local v2           #destFolderFile:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 134
    .local v3, e:Ljava/io/IOException;
    :goto_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 136
    .end local v3           #e:Ljava/io/IOException;
    :goto_3
    const-string v9, "DefaultImages"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "End: copy default images to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    if-ne v1, p1, :cond_5

    .line 140
    invoke-static {}, Lcom/miui/gallery/StorageExplorer/MediaStoreHelper;->triggerMediaMountedForInternalStorage()V

    goto :goto_0

    .end local v1           #destFolder:Ljava/lang/String;
    .end local v6           #is:Ljava/io/InputStream;
    .end local v7           #os:Ljava/io/OutputStream;
    :cond_2
    move-object v1, p1

    .line 106
    goto :goto_1

    .line 121
    .restart local v1       #destFolder:Ljava/lang/String;
    .restart local v2       #destFolderFile:Ljava/io/File;
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v7       #os:Ljava/io/OutputStream;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    move-object v8, v7

    .end local v7           #os:Ljava/io/OutputStream;
    .local v8, os:Ljava/io/OutputStream;
    :goto_4
    :try_start_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 122
    .local v4, fileName:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, destFilePath:Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 124
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 125
    .end local v8           #os:Ljava/io/OutputStream;
    .restart local v7       #os:Ljava/io/OutputStream;
    :try_start_3
    invoke-static {v6, v7}, Lcom/miui/gallery/util/GalleryUtils;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    .line 128
    const/16 v9, 0x1ff

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-static {v0, v9, v10, v11}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 131
    invoke-static {v0}, Lcom/miui/gallery/util/DefaultImages;->updateModifiedTime(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v8, v7

    .line 132
    .end local v7           #os:Ljava/io/OutputStream;
    .restart local v8       #os:Ljava/io/OutputStream;
    goto :goto_4

    .end local v0           #destFilePath:Ljava/lang/String;
    .end local v4           #fileName:Ljava/lang/String;
    :cond_4
    move-object v7, v8

    .line 135
    .end local v8           #os:Ljava/io/OutputStream;
    .restart local v7       #os:Ljava/io/OutputStream;
    goto :goto_3

    .line 142
    .end local v2           #destFolderFile:Ljava/io/File;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_5
    invoke-static {}, Lcom/miui/gallery/StorageExplorer/MediaStoreHelper;->triggerMediaMountedForExternalStorage()V

    goto/16 :goto_0

    .line 133
    .end local v7           #os:Ljava/io/OutputStream;
    .restart local v2       #destFolderFile:Ljava/io/File;
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v8       #os:Ljava/io/OutputStream;
    :catch_1
    move-exception v3

    move-object v7, v8

    .end local v8           #os:Ljava/io/OutputStream;
    .restart local v7       #os:Ljava/io/OutputStream;
    goto :goto_2
.end method

.method private static existFile(Ljava/lang/String;)Z
    .locals 2
    .parameter "folder"

    .prologue
    .line 65
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, files:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static tryCopy()V
    .locals 3

    .prologue
    .line 50
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getInitDefaultImages()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->setInitDefaultImages()V

    .line 56
    sget-object v0, Lcom/miui/gallery/util/DefaultImages;->sCameraImages:Ljava/util/ArrayList;

    sget-object v1, Lcom/miui/gallery/util/AlbumUtils;->INTERNAL_CAMERA_FOLDER_PATH:Ljava/lang/String;

    sget-object v2, Lcom/miui/gallery/util/AlbumUtils;->EXTERNAL_CAMERA_FOLDER_PATH:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/DefaultImages;->copyImages(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/miui/gallery/util/DefaultImages;->sScreenshotImages:Ljava/util/ArrayList;

    sget-object v1, Lcom/miui/gallery/util/AlbumUtils;->INTERNAL_MIUI_SNAPSHOT_FOLDER_PATH:Ljava/lang/String;

    sget-object v2, Lcom/miui/gallery/util/AlbumUtils;->EXTERNAL_MIUI_SNAPSHOT_FOLDER_PATH:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/DefaultImages;->copyImages(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static updateModifiedTime(Ljava/lang/String;)V
    .locals 10
    .parameter "filePath"

    .prologue
    .line 70
    const/4 v2, 0x0

    .line 71
    .local v2, exif:Landroid/media/ExifInterface;
    const-wide/16 v4, 0x0

    .line 73
    .local v4, lastModified:J
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v2           #exif:Landroid/media/ExifInterface;
    .local v3, exif:Landroid/media/ExifInterface;
    :try_start_1
    invoke-virtual {v3}, Landroid/media/ExifInterface;->getDateTime()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v4

    .line 75
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    .line 78
    const-wide/32 v6, 0x1b77400

    sub-long/2addr v4, v6

    .line 94
    :cond_0
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, destImageFile:Ljava/io/File;
    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setLastModified(J)Z

    move-object v2, v3

    .line 96
    .end local v0           #destImageFile:Ljava/io/File;
    .end local v3           #exif:Landroid/media/ExifInterface;
    .restart local v2       #exif:Landroid/media/ExifInterface;
    :goto_1
    return-void

    .line 82
    .end local v2           #exif:Landroid/media/ExifInterface;
    .restart local v3       #exif:Landroid/media/ExifInterface;
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/miui/gallery/StorageExplorer/StorageUtils;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v6, Lcom/miui/gallery/util/DefaultImages;->sScreenshotImages:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_0

    .line 84
    :cond_2
    invoke-static {p0}, Lcom/miui/gallery/StorageExplorer/StorageUtils;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v6, Lcom/miui/gallery/util/DefaultImages;->sScreenshotImages:Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v6

    const-wide/16 v8, 0xbb8

    sub-long v4, v6, v8

    goto :goto_0

    .line 89
    .end local v3           #exif:Landroid/media/ExifInterface;
    .restart local v2       #exif:Landroid/media/ExifInterface;
    :catch_0
    move-exception v1

    .line 90
    .local v1, ex:Ljava/lang/Exception;
    :goto_2
    const-string v6, "DefaultImages"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to update modified time for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 89
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #exif:Landroid/media/ExifInterface;
    .restart local v3       #exif:Landroid/media/ExifInterface;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3           #exif:Landroid/media/ExifInterface;
    .restart local v2       #exif:Landroid/media/ExifInterface;
    goto :goto_2
.end method
