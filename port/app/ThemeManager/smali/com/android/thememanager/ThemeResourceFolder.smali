.class public Lcom/android/thememanager/ThemeResourceFolder;
.super Lmiui/app/resourcebrowser/resource/ZipResourceFolder;
.source "ThemeResourceFolder.java"


# instance fields
.field private mClockPhotoSizeCategory:Ljava/lang/String;

.field private mMinPlatformation:I

.field private mResourceType:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "metaData"
    .parameter "folderPath"

    .prologue
    const-wide/16 v2, -0x1

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lmiui/app/resourcebrowser/resource/ZipResourceFolder;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceFolder;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.android.thememanager.extra_theme_apply_flags"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/thememanager/ThemeResourceFolder;->mResourceType:J

    .line 28
    iget-wide v0, p0, Lcom/android/thememanager/ThemeResourceFolder;->mResourceType:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 29
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/thememanager/ThemeResourceFolder;->mResourceType:J

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceFolder;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.miui.android.resourcebrowser.PLATFORM_VERSION_START"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/thememanager/ThemeResourceFolder;->mMinPlatformation:I

    .line 32
    return-void
.end method

.method private deleteOldResource()V
    .locals 15

    .prologue
    const/16 v14, 0x2f

    .line 85
    new-instance v2, Ljava/io/File;

    iget-object v11, p0, Lcom/android/thememanager/ThemeResourceFolder;->mFolderPath:Ljava/lang/String;

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v2, dir:Ljava/io/File;
    iget-object v11, p0, Lcom/android/thememanager/ThemeResourceFolder;->mFolderPath:Ljava/lang/String;

    sget-object v12, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_THEME_PATH:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 120
    :cond_0
    return-void

    .line 89
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, files:[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 91
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 92
    .local v8, mapIdToVersionPath:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v9, v0, v5

    .line 93
    .local v9, name:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/thememanager/ThemeResourceFolder;->mFolderPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/thememanager/ThemeHelper;->deleteUnusedThemeTmpFile(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 92
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 97
    :cond_3
    invoke-static {v9}, Lmiui/app/resourcebrowser/ResourceHelper;->parseIdVersion(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    .line 98
    .local v6, idVersion:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v6, :cond_2

    .line 102
    iget-object v11, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    .line 103
    .local v10, versionPath:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-nez v10, :cond_4

    .line 104
    iget-object v11, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    new-instance v12, Landroid/util/Pair;

    iget-object v13, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v12, v13, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 107
    :cond_4
    iget-object v11, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-gt v12, v11, :cond_5

    .line 108
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/thememanager/ThemeResourceFolder;->mFolderPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, deletePath:Ljava/lang/String;
    :goto_2
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 115
    const/16 v11, 0x5f

    invoke-virtual {v1, v14, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, endcodedPath:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/android/thememanager/ThemeHelper;->THEME_PATH_PREVIEW:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lmiui/util/CommandLineUtils;->rm(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 110
    .end local v1           #deletePath:Ljava/lang/String;
    .end local v3           #endcodedPath:Ljava/lang/String;
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/thememanager/ThemeResourceFolder;->mFolderPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v11, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    .restart local v1       #deletePath:Ljava/lang/String;
    iget-object v11, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    new-instance v12, Landroid/util/Pair;

    iget-object v13, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v12, v13, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method


# virtual methods
.method protected createZipResource(Landroid/content/Context;Ljava/lang/String;Lmiui/app/resourcebrowser/resource/ZipResourceCache;)Lmiui/app/resourcebrowser/resource/ZipResourceInfo;
    .locals 12
    .parameter "context"
    .parameter "filePath"
    .parameter "zipCache"

    .prologue
    .line 43
    invoke-static {p2}, Lmiui/app/resourcebrowser/ResourceHelper;->isZipResource(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 44
    const/4 v3, 0x0

    .line 81
    :cond_0
    :goto_0
    return-object v3

    .line 46
    :cond_1
    iget-wide v6, p0, Lcom/android/thememanager/ThemeResourceFolder;->mResourceType:J

    const-wide/16 v8, 0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    const-wide/16 v4, -0x1

    .line 48
    .local v4, previewFlags:J
    :goto_1
    iget-object v6, p0, Lcom/android/thememanager/ThemeResourceFolder;->mFileFlags:Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 49
    .local v0, cacheFlags:Ljava/lang/Long;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 50
    .local v1, componentFlags:J
    :goto_2
    iget-object v6, p0, Lcom/android/thememanager/ThemeResourceFolder;->mContext:Landroid/content/Context;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget v9, p0, Lcom/android/thememanager/ThemeResourceFolder;->mMinPlatformation:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, p2, p3, v7}, Lcom/android/thememanager/ThemeInfo;->createZipResourceInfo(Landroid/content/Context;Ljava/lang/String;Lmiui/app/resourcebrowser/resource/ZipResourceCache;[Ljava/lang/Object;)Lcom/android/thememanager/ThemeInfo;

    move-result-object v3

    .line 53
    .local v3, info:Lcom/android/thememanager/ThemeInfo;
    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-nez v6, :cond_2

    .line 54
    if-eqz v3, :cond_5

    iget-wide v1, v3, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    .line 55
    :goto_3
    iget-object v6, p0, Lcom/android/thememanager/ThemeResourceFolder;->mFileFlags:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, p2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_2
    iget-wide v6, p0, Lcom/android/thememanager/ThemeResourceFolder;->mResourceType:J

    invoke-static {v6, v7, v1, v2}, Lcom/android/thememanager/ThemeHelper;->matchThemeResource(JJ)Z

    move-result v6

    if-nez v6, :cond_6

    .line 59
    const/4 v3, 0x0

    goto :goto_0

    .line 46
    .end local v0           #cacheFlags:Ljava/lang/Long;
    .end local v1           #componentFlags:J
    .end local v3           #info:Lcom/android/thememanager/ThemeInfo;
    .end local v4           #previewFlags:J
    :cond_3
    iget-wide v4, p0, Lcom/android/thememanager/ThemeResourceFolder;->mResourceType:J

    goto :goto_1

    .line 49
    .restart local v0       #cacheFlags:Ljava/lang/Long;
    .restart local v4       #previewFlags:J
    :cond_4
    const-wide/16 v1, 0x0

    goto :goto_2

    .line 54
    .restart local v1       #componentFlags:J
    .restart local v3       #info:Lcom/android/thememanager/ThemeInfo;
    :cond_5
    const-wide/16 v1, 0x0

    goto :goto_3

    .line 62
    :cond_6
    iget-wide v6, p0, Lcom/android/thememanager/ThemeResourceFolder;->mResourceType:J

    const-wide/32 v8, 0x10000

    cmp-long v6, v6, v8

    if-eqz v6, :cond_7

    iget-wide v6, p0, Lcom/android/thememanager/ThemeResourceFolder;->mResourceType:J

    const-wide/32 v8, 0x20000

    cmp-long v6, v6, v8

    if-nez v6, :cond_a

    .line 64
    :cond_7
    iget-object v7, p0, Lcom/android/thememanager/ThemeResourceFolder;->mClockPhotoSizeCategory:Ljava/lang/String;

    iget-wide v8, p0, Lcom/android/thememanager/ThemeResourceFolder;->mResourceType:J

    const-wide/32 v10, 0x10000

    cmp-long v6, v8, v10

    if-nez v6, :cond_8

    const/4 v6, 0x1

    :goto_4
    invoke-virtual {v3, v7, v6}, Lcom/android/thememanager/ThemeInfo;->containClockPhotoFrameSize(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_9

    .line 65
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 64
    :cond_8
    const/4 v6, 0x0

    goto :goto_4

    .line 67
    :cond_9
    iget-object v7, p0, Lcom/android/thememanager/ThemeResourceFolder;->mClockPhotoSizeCategory:Ljava/lang/String;

    iget-wide v8, p0, Lcom/android/thememanager/ThemeResourceFolder;->mResourceType:J

    const-wide/32 v10, 0x10000

    cmp-long v6, v8, v10

    if-nez v6, :cond_c

    const/4 v6, 0x1

    :goto_5
    invoke-virtual {v3, v7, v6}, Lcom/android/thememanager/ThemeInfo;->filterClockPhotoFramePreviews(Ljava/lang/String;Z)V

    .line 70
    :cond_a
    const-string v6, "/system/media/theme/default.mtz"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    sget-object v6, Lcom/android/thememanager/ThemeHelper;->BACKUP_PATH:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 78
    :cond_b
    iget v6, p0, Lcom/android/thememanager/ThemeResourceFolder;->mMinPlatformation:I

    iput v6, v3, Lcom/android/thememanager/ThemeInfo;->mPlatformVersion:I

    goto/16 :goto_0

    .line 67
    :cond_c
    const/4 v6, 0x0

    goto :goto_5
.end method

.method public loadData(Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/widget/AsyncAdapter",
            "<",
            "Lmiui/app/resourcebrowser/resource/Resource;",
            ">.Async",
            "LoadDataTask;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, task:Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;,"Lmiui/widget/AsyncAdapter<Lmiui/app/resourcebrowser/resource/Resource;>.AsyncLoadDataTask;"
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceFolder;->mMetaData:Landroid/os/Bundle;

    const-string v1, "thememanager.local.clock_photo_size_flag"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/ThemeResourceFolder;->mClockPhotoSizeCategory:Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Lcom/android/thememanager/ThemeResourceFolder;->deleteOldResource()V

    .line 38
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/resource/ZipResourceFolder;->loadData(Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;)V

    .line 39
    return-void
.end method
