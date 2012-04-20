.class public Lcom/android/fileexplorer/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/Util$SDCardInfo;
    }
.end annotation


# static fields
.field private static ANDROID_SECURE:Ljava/lang/String;

.field public static CATEGORY_TAB_INDEX:I

.field static final MIUI_BACKUP_PATH:Ljava/lang/String;

.field public static SDCARD_TAB_INDEX:I

.field private static SysFileDirs:[Ljava/lang/String;

.field public static sDocMimeTypesSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sZipFileMimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    const-string v0, "/mnt/sdcard/.android_secure"

    sput-object v0, Lcom/android/fileexplorer/Util;->ANDROID_SECURE:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getMIUIExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/backup/AllBackup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/fileexplorer/Util;->MIUI_BACKUP_PATH:Ljava/lang/String;

    .line 234
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "miren_browser/imagecaches"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/fileexplorer/Util;->SysFileDirs:[Ljava/lang/String;

    .line 384
    new-instance v0, Lcom/android/fileexplorer/Util$1;

    invoke-direct {v0}, Lcom/android/fileexplorer/Util$1;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/Util;->sDocMimeTypesSet:Ljava/util/HashSet;

    .line 395
    const-string v0, "application/zip"

    sput-object v0, Lcom/android/fileexplorer/Util;->sZipFileMimeType:Ljava/lang/String;

    .line 397
    sput v2, Lcom/android/fileexplorer/Util;->CATEGORY_TAB_INDEX:I

    .line 398
    sput v3, Lcom/android/fileexplorer/Util;->SDCARD_TAB_INDEX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    return-void
.end method

.method public static GetFileInfo(Ljava/io/File;Ljava/io/FilenameFilter;Z)Lcom/android/fileexplorer/FileInfo;
    .locals 11
    .parameter "f"
    .parameter "filter"
    .parameter "showHidden"

    .prologue
    .line 89
    new-instance v7, Lcom/android/fileexplorer/FileInfo;

    invoke-direct {v7}, Lcom/android/fileexplorer/FileInfo;-><init>()V

    .line 90
    .local v7, lFileInfo:Lcom/android/fileexplorer/FileInfo;
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, filePath:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v6, lFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v9

    iput-boolean v9, v7, Lcom/android/fileexplorer/FileInfo;->canRead:Z

    .line 93
    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z

    move-result v9

    iput-boolean v9, v7, Lcom/android/fileexplorer/FileInfo;->canWrite:Z

    .line 94
    invoke-virtual {v6}, Ljava/io/File;->isHidden()Z

    move-result v9

    iput-boolean v9, v7, Lcom/android/fileexplorer/FileInfo;->isHidden:Z

    .line 95
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/fileexplorer/FileInfo;->fileName:Ljava/lang/String;

    .line 96
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    iput-wide v9, v7, Lcom/android/fileexplorer/FileInfo;->ModifiedDate:J

    .line 97
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v9

    iput-boolean v9, v7, Lcom/android/fileexplorer/FileInfo;->IsDir:Z

    .line 98
    iput-object v2, v7, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    .line 99
    iget-boolean v9, v7, Lcom/android/fileexplorer/FileInfo;->IsDir:Z

    if-eqz v9, :cond_4

    .line 100
    const/4 v5, 0x0

    .line 101
    .local v5, lCount:I
    invoke-virtual {v6, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 104
    .local v3, files:[Ljava/io/File;
    if-nez v3, :cond_0

    .line 105
    const/4 v7, 0x0

    .line 121
    .end local v3           #files:[Ljava/io/File;
    .end local v5           #lCount:I
    .end local v7           #lFileInfo:Lcom/android/fileexplorer/FileInfo;
    :goto_0
    return-object v7

    .line 108
    .restart local v3       #files:[Ljava/io/File;
    .restart local v5       #lCount:I
    .restart local v7       #lFileInfo:Lcom/android/fileexplorer/FileInfo;
    :cond_0
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v8, v0

    .local v8, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v8, :cond_3

    aget-object v1, v0, v4

    .line 109
    .local v1, child:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isHidden()Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/fileexplorer/Util;->isNormalFile(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 111
    add-int/lit8 v5, v5, 0x1

    .line 108
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 114
    .end local v1           #child:Ljava/io/File;
    :cond_3
    iput v5, v7, Lcom/android/fileexplorer/FileInfo;->Count:I

    goto :goto_0

    .line 118
    .end local v0           #arr$:[Ljava/io/File;
    .end local v3           #files:[Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #lCount:I
    .end local v8           #len$:I
    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    iput-wide v9, v7, Lcom/android/fileexplorer/FileInfo;->fileSize:J

    goto :goto_0
.end method

.method public static GetFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/FileInfo;
    .locals 4
    .parameter "filePath"

    .prologue
    .line 72
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, lFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    const/4 v1, 0x0

    .line 85
    :goto_0
    return-object v1

    .line 76
    :cond_0
    new-instance v1, Lcom/android/fileexplorer/FileInfo;

    invoke-direct {v1}, Lcom/android/fileexplorer/FileInfo;-><init>()V

    .line 77
    .local v1, lFileInfo:Lcom/android/fileexplorer/FileInfo;
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/fileexplorer/FileInfo;->canRead:Z

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/fileexplorer/FileInfo;->canWrite:Z

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/fileexplorer/FileInfo;->isHidden:Z

    .line 80
    invoke-static {p0}, Lcom/android/fileexplorer/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/fileexplorer/FileInfo;->fileName:Ljava/lang/String;

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/fileexplorer/FileInfo;->ModifiedDate:J

    .line 82
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/fileexplorer/FileInfo;->IsDir:Z

    .line 83
    iput-object p0, v1, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/fileexplorer/FileInfo;->fileSize:J

    goto :goto_0
.end method

.method public static containsPath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "path1"
    .parameter "path2"

    .prologue
    .line 43
    move-object v0, p1

    .line 44
    .local v0, path:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    const/4 v1, 0x1

    .line 53
    :goto_1
    return v1

    .line 48
    :cond_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 50
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static convertStorage(J)Ljava/lang/String;
    .locals 12
    .parameter "size"

    .prologue
    const-wide/16 v7, 0x400

    const/high16 v10, 0x42c8

    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 296
    const-wide/16 v3, 0x400

    .line 297
    .local v3, kb:J
    mul-long v5, v3, v7

    .line 298
    .local v5, mb:J
    mul-long v1, v5, v7

    .line 300
    .local v1, gb:J
    cmp-long v7, p0, v1

    if-ltz v7, :cond_0

    .line 301
    const-string v7, "%.1f GB"

    new-array v8, v9, [Ljava/lang/Object;

    long-to-float v9, p0

    long-to-float v10, v1

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 309
    :goto_0
    return-object v7

    .line 302
    :cond_0
    cmp-long v7, p0, v5

    if-ltz v7, :cond_2

    .line 303
    long-to-float v7, p0

    long-to-float v8, v5

    div-float v0, v7, v8

    .line 304
    .local v0, f:F
    cmpl-float v7, v0, v10

    if-lez v7, :cond_1

    const-string v7, "%.0f MB"

    :goto_1
    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    const-string v7, "%.1f MB"

    goto :goto_1

    .line 305
    .end local v0           #f:F
    :cond_2
    cmp-long v7, p0, v3

    if-ltz v7, :cond_4

    .line 306
    long-to-float v7, p0

    long-to-float v8, v3

    div-float v0, v7, v8

    .line 307
    .restart local v0       #f:F
    cmpl-float v7, v0, v10

    if-lez v7, :cond_3

    const-string v7, "%.0f KB"

    :goto_2
    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_3
    const-string v7, "%.1f KB"

    goto :goto_2

    .line 309
    .end local v0           #f:F
    :cond_4
    const-string v7, "%d B"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .parameter "src"
    .parameter "dest"

    .prologue
    .line 175
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v11, file:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 177
    :cond_0
    const-string v17, "Util"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "copyFile: file not exist or is directory, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v6, 0x0

    .line 230
    :cond_1
    :goto_0
    return-object v6

    .line 180
    :cond_2
    const/4 v9, 0x0

    .line 181
    .local v9, fi:Ljava/io/FileInputStream;
    const/4 v12, 0x0

    .line 183
    .local v12, fo:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 184
    .end local v9           #fi:Ljava/io/FileInputStream;
    .local v10, fi:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    .local v7, destPlace:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_4

    .line 186
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    move-result v17

    if-nez v17, :cond_4

    .line 187
    const/4 v6, 0x0

    .line 221
    if-eqz v10, :cond_3

    .line 222
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 223
    :cond_3
    if-eqz v12, :cond_1

    .line 224
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v8

    .line 226
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 190
    .end local v8           #e:Ljava/io/IOException;
    :cond_4
    :try_start_3
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/fileexplorer/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 191
    .local v6, destPath:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .local v4, destFile:Ljava/io/File;
    const/4 v14, 0x1

    .local v14, i:I
    move v15, v14

    .line 193
    .end local v14           #i:I
    .local v15, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 194
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/fileexplorer/Util;->getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    add-int/lit8 v14, v15, 0x1

    .end local v15           #i:I
    .restart local v14       #i:I
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/fileexplorer/Util;->getExtFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 196
    .local v5, destName:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/android/fileexplorer/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 197
    new-instance v4, Ljava/io/File;

    .end local v4           #destFile:Ljava/io/File;
    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v4       #destFile:Ljava/io/File;
    move v15, v14

    .line 198
    .end local v14           #i:I
    .restart local v15       #i:I
    goto :goto_1

    .line 200
    .end local v5           #destName:Ljava/lang/String;
    :cond_5
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    move-result v17

    if-nez v17, :cond_7

    .line 201
    const/4 v6, 0x0

    .line 221
    .end local v6           #destPath:Ljava/lang/String;
    if-eqz v10, :cond_6

    .line 222
    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 223
    :cond_6
    if-eqz v12, :cond_1

    .line 224
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 225
    :catch_1
    move-exception v8

    .line 226
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 203
    .end local v8           #e:Ljava/io/IOException;
    .restart local v6       #destPath:Ljava/lang/String;
    :cond_7
    :try_start_5
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 204
    .end local v12           #fo:Ljava/io/FileOutputStream;
    .local v13, fo:Ljava/io/FileOutputStream;
    const v3, 0x19000

    .line 205
    .local v3, count:I
    :try_start_6
    new-array v2, v3, [B

    .line 206
    .local v2, buffer:[B
    const/16 v16, 0x0

    .line 207
    .local v16, read:I
    :goto_2
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v2, v0, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_a

    .line 208
    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v13, v2, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    goto :goto_2

    .line 214
    .end local v2           #buffer:[B
    .end local v16           #read:I
    :catch_2
    move-exception v8

    move-object v12, v13

    .end local v13           #fo:Ljava/io/FileOutputStream;
    .restart local v12       #fo:Ljava/io/FileOutputStream;
    move-object v9, v10

    .line 215
    .end local v3           #count:I
    .end local v4           #destFile:Ljava/io/File;
    .end local v6           #destPath:Ljava/lang/String;
    .end local v7           #destPlace:Ljava/io/File;
    .end local v10           #fi:Ljava/io/FileInputStream;
    .end local v15           #i:I
    .local v8, e:Ljava/io/FileNotFoundException;
    .restart local v9       #fi:Ljava/io/FileInputStream;
    :goto_3
    :try_start_7
    const-string v17, "Util"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "copyFile: file not found, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 221
    if-eqz v9, :cond_8

    .line 222
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 223
    :cond_8
    if-eqz v12, :cond_9

    .line 224
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 230
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :cond_9
    :goto_4
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 221
    .end local v9           #fi:Ljava/io/FileInputStream;
    .end local v12           #fo:Ljava/io/FileOutputStream;
    .restart local v2       #buffer:[B
    .restart local v3       #count:I
    .restart local v4       #destFile:Ljava/io/File;
    .restart local v6       #destPath:Ljava/lang/String;
    .restart local v7       #destPlace:Ljava/io/File;
    .restart local v10       #fi:Ljava/io/FileInputStream;
    .restart local v13       #fo:Ljava/io/FileOutputStream;
    .restart local v15       #i:I
    .restart local v16       #read:I
    :cond_a
    if-eqz v10, :cond_b

    .line 222
    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 223
    :cond_b
    if-eqz v13, :cond_1

    .line 224
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    .line 225
    :catch_3
    move-exception v8

    .line 226
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 225
    .end local v2           #buffer:[B
    .end local v3           #count:I
    .end local v4           #destFile:Ljava/io/File;
    .end local v6           #destPath:Ljava/lang/String;
    .end local v7           #destPlace:Ljava/io/File;
    .end local v10           #fi:Ljava/io/FileInputStream;
    .end local v13           #fo:Ljava/io/FileOutputStream;
    .end local v15           #i:I
    .end local v16           #read:I
    .local v8, e:Ljava/io/FileNotFoundException;
    .restart local v9       #fi:Ljava/io/FileInputStream;
    .restart local v12       #fo:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v8

    .line 226
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 217
    .end local v8           #e:Ljava/io/IOException;
    :catch_5
    move-exception v8

    .line 218
    .restart local v8       #e:Ljava/io/IOException;
    :goto_5
    :try_start_a
    const-string v17, "Util"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "copyFile: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 221
    if-eqz v9, :cond_c

    .line 222
    :try_start_b
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 223
    :cond_c
    if-eqz v12, :cond_9

    .line 224
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_4

    .line 225
    :catch_6
    move-exception v8

    .line 226
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 220
    .end local v8           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v17

    .line 221
    :goto_6
    if-eqz v9, :cond_d

    .line 222
    :try_start_c
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 223
    :cond_d
    if-eqz v12, :cond_e

    .line 224
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 227
    :cond_e
    :goto_7
    throw v17

    .line 225
    :catch_7
    move-exception v8

    .line 226
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 220
    .end local v8           #e:Ljava/io/IOException;
    .end local v9           #fi:Ljava/io/FileInputStream;
    .restart local v10       #fi:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v17

    move-object v9, v10

    .end local v10           #fi:Ljava/io/FileInputStream;
    .restart local v9       #fi:Ljava/io/FileInputStream;
    goto :goto_6

    .end local v9           #fi:Ljava/io/FileInputStream;
    .end local v12           #fo:Ljava/io/FileOutputStream;
    .restart local v3       #count:I
    .restart local v4       #destFile:Ljava/io/File;
    .restart local v6       #destPath:Ljava/lang/String;
    .restart local v7       #destPlace:Ljava/io/File;
    .restart local v10       #fi:Ljava/io/FileInputStream;
    .restart local v13       #fo:Ljava/io/FileOutputStream;
    .restart local v15       #i:I
    :catchall_2
    move-exception v17

    move-object v12, v13

    .end local v13           #fo:Ljava/io/FileOutputStream;
    .restart local v12       #fo:Ljava/io/FileOutputStream;
    move-object v9, v10

    .end local v10           #fi:Ljava/io/FileInputStream;
    .restart local v9       #fi:Ljava/io/FileInputStream;
    goto :goto_6

    .line 217
    .end local v3           #count:I
    .end local v4           #destFile:Ljava/io/File;
    .end local v6           #destPath:Ljava/lang/String;
    .end local v7           #destPlace:Ljava/io/File;
    .end local v9           #fi:Ljava/io/FileInputStream;
    .end local v15           #i:I
    .restart local v10       #fi:Ljava/io/FileInputStream;
    :catch_8
    move-exception v8

    move-object v9, v10

    .end local v10           #fi:Ljava/io/FileInputStream;
    .restart local v9       #fi:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v9           #fi:Ljava/io/FileInputStream;
    .end local v12           #fo:Ljava/io/FileOutputStream;
    .restart local v3       #count:I
    .restart local v4       #destFile:Ljava/io/File;
    .restart local v6       #destPath:Ljava/lang/String;
    .restart local v7       #destPlace:Ljava/io/File;
    .restart local v10       #fi:Ljava/io/FileInputStream;
    .restart local v13       #fo:Ljava/io/FileOutputStream;
    .restart local v15       #i:I
    :catch_9
    move-exception v8

    move-object v12, v13

    .end local v13           #fo:Ljava/io/FileOutputStream;
    .restart local v12       #fo:Ljava/io/FileOutputStream;
    move-object v9, v10

    .end local v10           #fi:Ljava/io/FileInputStream;
    .restart local v9       #fi:Ljava/io/FileInputStream;
    goto :goto_5

    .line 214
    .end local v3           #count:I
    .end local v4           #destFile:Ljava/io/File;
    .end local v6           #destPath:Ljava/lang/String;
    .end local v7           #destPlace:Ljava/io/File;
    .end local v15           #i:I
    :catch_a
    move-exception v8

    goto/16 :goto_3

    .end local v9           #fi:Ljava/io/FileInputStream;
    .restart local v10       #fi:Ljava/io/FileInputStream;
    :catch_b
    move-exception v8

    move-object v9, v10

    .end local v10           #fi:Ljava/io/FileInputStream;
    .restart local v9       #fi:Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method public static formatDateString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "time"

    .prologue
    .line 370
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 372
    .local v1, dateFormat:Ljava/text/DateFormat;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .line 374
    .local v2, timeFormat:Ljava/text/DateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 375
    .local v0, date:Ljava/util/Date;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getApkIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "context"
    .parameter "path"

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 126
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 127
    .local v2, info:Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 128
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 129
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 131
    :try_start_0
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 132
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 138
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v4

    .line 133
    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 134
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v4, "Util"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getDefaultFavorites(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/fileexplorer/FavoriteItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/fileexplorer/FavoriteItem;>;"
    new-instance v1, Lcom/android/fileexplorer/FavoriteItem;

    const v2, 0x7f060054

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/fileexplorer/Util;->getSdDirectory()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DCIM/Camera"

    invoke-static {v3, v4}, Lcom/android/fileexplorer/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/FavoriteItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance v1, Lcom/android/fileexplorer/FavoriteItem;

    const v2, 0x7f060055

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/fileexplorer/Util;->getSdDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/FavoriteItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v1, Lcom/android/fileexplorer/FavoriteItem;

    const v2, 0x7f060056

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/fileexplorer/Util;->getSdDirectory()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MIUI/screen_cap"

    invoke-static {v3, v4}, Lcom/android/fileexplorer/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/FavoriteItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v1, Lcom/android/fileexplorer/FavoriteItem;

    const v2, 0x7f060057

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/fileexplorer/Util;->getSdDirectory()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MIUI/ringtone"

    invoke-static {v3, v4}, Lcom/android/fileexplorer/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/FavoriteItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    return-object v0
.end method

.method public static getExtFromFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "filename"

    .prologue
    .line 142
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 143
    .local v0, dotPosition:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 144
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 146
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filename"

    .prologue
    .line 150
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 151
    .local v0, dotPosition:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 152
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 154
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filepath"

    .prologue
    .line 166
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 167
    .local v0, pos:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 168
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 170
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getPathFromFilepath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filepath"

    .prologue
    .line 158
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 159
    .local v0, pos:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 160
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 162
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getSDCardInfo()Lcom/android/fileexplorer/Util$SDCardInfo;
    .locals 15

    .prologue
    .line 319
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v11

    .line 321
    .local v11, sDcString:Ljava/lang/String;
    const-string v13, "mounted"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 322
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    .line 325
    .local v10, pathFile:Ljava/io/File;
    :try_start_0
    new-instance v12, Landroid/os/StatFs;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 328
    .local v12, statfs:Landroid/os/StatFs;
    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockCount()I

    move-result v13

    int-to-long v8, v13

    .line 331
    .local v8, nTotalBlocks:J
    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockSize()I

    move-result v13

    int-to-long v4, v13

    .line 334
    .local v4, nBlocSize:J
    invoke-virtual {v12}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v13

    int-to-long v2, v13

    .line 337
    .local v2, nAvailaBlock:J
    invoke-virtual {v12}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result v13

    int-to-long v6, v13

    .line 339
    .local v6, nFreeBlock:J
    new-instance v1, Lcom/android/fileexplorer/Util$SDCardInfo;

    invoke-direct {v1}, Lcom/android/fileexplorer/Util$SDCardInfo;-><init>()V

    .line 341
    .local v1, info:Lcom/android/fileexplorer/Util$SDCardInfo;
    mul-long v13, v8, v4

    iput-wide v13, v1, Lcom/android/fileexplorer/Util$SDCardInfo;->total:J

    .line 344
    mul-long v13, v2, v4

    iput-wide v13, v1, Lcom/android/fileexplorer/Util$SDCardInfo;->free:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    .end local v1           #info:Lcom/android/fileexplorer/Util$SDCardInfo;
    .end local v2           #nAvailaBlock:J
    .end local v4           #nBlocSize:J
    .end local v6           #nFreeBlock:J
    .end local v8           #nTotalBlocks:J
    .end local v10           #pathFile:Ljava/io/File;
    .end local v12           #statfs:Landroid/os/StatFs;
    :goto_0
    return-object v1

    .line 347
    .restart local v10       #pathFile:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 348
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v13, "Util"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .end local v10           #pathFile:Ljava/io/File;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSdDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isNormalFile(Ljava/lang/String;)Z
    .locals 1
    .parameter "fullName"

    .prologue
    .line 68
    sget-object v0, Lcom/android/fileexplorer/Util;->ANDROID_SECURE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSDCardReady()Z
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path1"
    .parameter "path2"

    .prologue
    .line 57
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setText(Landroid/view/View;ILjava/lang/String;)Z
    .locals 2
    .parameter "view"
    .parameter "id"
    .parameter "text"

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 273
    .local v0, textView:Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 274
    const/4 v1, 0x0

    .line 277
    :goto_0
    return v1

    .line 276
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static shouldShowFile(Ljava/io/File;)Z
    .locals 10
    .parameter "file"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 243
    invoke-static {}, Lcom/android/fileexplorer/Settings;->instance()Lcom/android/fileexplorer/Settings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/fileexplorer/Settings;->getShowDotAndHiddenFiles()Z

    move-result v5

    .line 244
    .local v5, show:Z
    if-eqz v5, :cond_1

    .line 259
    :cond_0
    :goto_0
    return v6

    .line 247
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isHidden()Z

    move-result v8

    if-eqz v8, :cond_2

    move v6, v7

    .line 248
    goto :goto_0

    .line 250
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v6, v7

    .line 251
    goto :goto_0

    .line 253
    :cond_3
    invoke-static {}, Lcom/android/fileexplorer/Util;->getSdDirectory()Ljava/lang/String;

    move-result-object v4

    .line 254
    .local v4, sdFolder:Ljava/lang/String;
    sget-object v0, Lcom/android/fileexplorer/Util;->SysFileDirs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 255
    .local v3, s:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v3}, Lcom/android/fileexplorer/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v6, v7

    .line 256
    goto :goto_0

    .line 254
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static shouldShowFile(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 239
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/fileexplorer/Util;->shouldShowFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static updateActionModeTitle(Landroid/view/ActionMode;Landroid/content/Context;I)V
    .locals 4
    .parameter "mode"
    .parameter "context"
    .parameter "selectedNum"

    .prologue
    .line 379
    if-eqz p0, :cond_0

    .line 380
    const v0, 0x7f060058

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 382
    :cond_0
    return-void
.end method
