.class public Lcom/android/fileexplorer/FileOperationHelper;
.super Ljava/lang/Object;
.source "FileOperationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/FileOperationHelper$IOperationProgressListener;
    }
.end annotation


# instance fields
.field private mCurFileNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/fileexplorer/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Ljava/io/FilenameFilter;

.field private mMoving:Z

.field private mOperationListener:Lcom/android/fileexplorer/FileOperationHelper$IOperationProgressListener;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/FileOperationHelper$IOperationProgressListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/FileOperationHelper;->mCurFileNameList:Ljava/util/ArrayList;

    .line 31
    iput-object p1, p0, Lcom/android/fileexplorer/FileOperationHelper;->mOperationListener:Lcom/android/fileexplorer/FileOperationHelper$IOperationProgressListener;

    .line 32
    return-void
.end method

.method private CopyFile(Lcom/android/fileexplorer/FileInfo;Ljava/lang/String;)V
    .locals 12
    .parameter "f"
    .parameter "dest"

    .prologue
    .line 232
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 233
    :cond_0
    const-string v9, "FileOperation"

    const-string v10, "CopyFile: null parameter"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_0
    return-void

    .line 237
    :cond_1
    new-instance v4, Ljava/io/File;

    iget-object v9, p1, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 241
    iget-object v9, p1, Lcom/android/fileexplorer/FileInfo;->fileName:Ljava/lang/String;

    invoke-static {p2, v9}, Lcom/android/fileexplorer/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, destPath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    .local v2, destFile:Ljava/io/File;
    const/4 v5, 0x1

    .line 244
    .local v5, i:I
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 245
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p1, Lcom/android/fileexplorer/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v6, v5, 0x1

    .end local v5           #i:I
    .local v6, i:I
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p2, v9}, Lcom/android/fileexplorer/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 246
    new-instance v2, Ljava/io/File;

    .end local v2           #destFile:Ljava/io/File;
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2       #destFile:Ljava/io/File;
    move v5, v6

    .end local v6           #i:I
    .restart local v5       #i:I
    goto :goto_1

    .line 249
    :cond_2
    iget-object v9, p0, Lcom/android/fileexplorer/FileOperationHelper;->mFilter:Ljava/io/FilenameFilter;

    invoke-virtual {v4, v9}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v8, v0

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_2
    if-ge v7, v8, :cond_5

    aget-object v1, v0, v7

    .line 250
    .local v1, child:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isHidden()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/fileexplorer/Util;->isNormalFile(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 251
    iget-object v9, p0, Lcom/android/fileexplorer/FileOperationHelper;->mFilter:Ljava/io/FilenameFilter;

    invoke-static {}, Lcom/android/fileexplorer/Settings;->instance()Lcom/android/fileexplorer/Settings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/fileexplorer/Settings;->getShowDotAndHiddenFiles()Z

    move-result v10

    invoke-static {v1, v9, v10}, Lcom/android/fileexplorer/Util;->GetFileInfo(Ljava/io/File;Ljava/io/FilenameFilter;Z)Lcom/android/fileexplorer/FileInfo;

    move-result-object v9

    invoke-direct {p0, v9, v3}, Lcom/android/fileexplorer/FileOperationHelper;->CopyFile(Lcom/android/fileexplorer/FileInfo;Ljava/lang/String;)V

    .line 249
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 255
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #child:Ljava/io/File;
    .end local v2           #destFile:Ljava/io/File;
    .end local v3           #destPath:Ljava/lang/String;
    .end local v5           #i:I
    .end local v7           #i$:I
    .end local v8           #len$:I
    :cond_4
    iget-object v9, p1, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v9, p2}, Lcom/android/fileexplorer/Util;->copyFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 257
    :cond_5
    const-string v9, "FileOperation"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CopyFile >>> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private MoveFile(Lcom/android/fileexplorer/FileInfo;Ljava/lang/String;)Z
    .locals 7
    .parameter "f"
    .parameter "dest"

    .prologue
    const/4 v3, 0x0

    .line 261
    const-string v4, "FileOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MoveFile >>> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 264
    :cond_0
    const-string v4, "FileOperation"

    const-string v5, "CopyFile: null parameter"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :goto_0
    return v3

    .line 268
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v4, p1, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    .local v1, file:Ljava/io/File;
    iget-object v4, p1, Lcom/android/fileexplorer/FileInfo;->fileName:Ljava/lang/String;

    invoke-static {p2, v4}, Lcom/android/fileexplorer/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, newPath:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, e:Ljava/lang/SecurityException;
    const-string v4, "FileOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to move file,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/fileexplorer/FileOperationHelper;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/FileOperationHelper;->mCurFileNameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/fileexplorer/FileOperationHelper;Lcom/android/fileexplorer/FileInfo;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/FileOperationHelper;->CopyFile(Lcom/android/fileexplorer/FileInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/fileexplorer/FileOperationHelper;)Lcom/android/fileexplorer/FileOperationHelper$IOperationProgressListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/FileOperationHelper;->mOperationListener:Lcom/android/fileexplorer/FileOperationHelper$IOperationProgressListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/fileexplorer/FileOperationHelper;Lcom/android/fileexplorer/FileInfo;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/FileOperationHelper;->MoveFile(Lcom/android/fileexplorer/FileInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private asnycExecute(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 141
    move-object v0, p1

    .line 142
    .local v0, _r:Ljava/lang/Runnable;
    new-instance v1, Lcom/android/fileexplorer/FileOperationHelper$3;

    invoke-direct {v1, p0, v0}, Lcom/android/fileexplorer/FileOperationHelper$3;-><init>(Lcom/android/fileexplorer/FileOperationHelper;Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/FileOperationHelper$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 155
    return-void
.end method

.method private copyFileList(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/fileexplorer/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p1, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/fileexplorer/FileInfo;>;"
    iget-object v3, p0, Lcom/android/fileexplorer/FileOperationHelper;->mCurFileNameList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 280
    :try_start_0
    iget-object v2, p0, Lcom/android/fileexplorer/FileOperationHelper;->mCurFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 281
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileInfo;

    .line 282
    .local v0, f:Lcom/android/fileexplorer/FileInfo;
    iget-object v2, p0, Lcom/android/fileexplorer/FileOperationHelper;->mCurFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    .end local v0           #f:Lcom/android/fileexplorer/FileInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    return-void
.end method


# virtual methods
.method public Copy(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/fileexplorer/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/fileexplorer/FileInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileOperationHelper;->copyFileList(Ljava/util/ArrayList;)V

    .line 50
    return-void
.end method

.method public CreateFolder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "path"
    .parameter "name"

    .prologue
    .line 39
    const-string v1, "FileOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CreateFolder >>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/android/fileexplorer/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    const/4 v1, 0x0

    .line 45
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    goto :goto_0
.end method

.method public Delete(Ljava/util/ArrayList;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/fileexplorer/FileInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/fileexplorer/FileInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileOperationHelper;->copyFileList(Ljava/util/ArrayList;)V

    .line 193
    new-instance v0, Lcom/android/fileexplorer/FileOperationHelper$4;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileOperationHelper$4;-><init>(Lcom/android/fileexplorer/FileOperationHelper;)V

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileOperationHelper;->asnycExecute(Ljava/lang/Runnable;)V

    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method protected DeleteFile(Lcom/android/fileexplorer/FileInfo;)V
    .locals 9
    .parameter "f"

    .prologue
    .line 211
    if-nez p1, :cond_0

    .line 212
    const-string v6, "FileOperation"

    const-string v7, "DeleteFile: null parameter"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_0
    return-void

    .line 216
    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v6, p1, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v2

    .line 218
    .local v2, directory:Z
    if-eqz v2, :cond_2

    .line 219
    iget-object v6, p0, Lcom/android/fileexplorer/FileOperationHelper;->mFilter:Ljava/io/FilenameFilter;

    invoke-virtual {v3, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v1, v0, v4

    .line 220
    .local v1, child:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/fileexplorer/Util;->isNormalFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 221
    iget-object v6, p0, Lcom/android/fileexplorer/FileOperationHelper;->mFilter:Ljava/io/FilenameFilter;

    const/4 v7, 0x1

    invoke-static {v1, v6, v7}, Lcom/android/fileexplorer/Util;->GetFileInfo(Ljava/io/File;Ljava/io/FilenameFilter;Z)Lcom/android/fileexplorer/FileInfo;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/fileexplorer/FileOperationHelper;->DeleteFile(Lcom/android/fileexplorer/FileInfo;)V

    .line 219
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 226
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #child:Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 228
    const-string v6, "FileOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DeleteFile >>> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public EndMove(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    const/4 v1, 0x0

    .line 110
    iget-boolean v2, p0, Lcom/android/fileexplorer/FileOperationHelper;->mMoving:Z

    if-nez v2, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v1

    .line 112
    :cond_1
    iput-boolean v1, p0, Lcom/android/fileexplorer/FileOperationHelper;->mMoving:Z

    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    move-object v0, p1

    .line 118
    .local v0, _path:Ljava/lang/String;
    new-instance v1, Lcom/android/fileexplorer/FileOperationHelper$2;

    invoke-direct {v1, p0, v0}, Lcom/android/fileexplorer/FileOperationHelper$2;-><init>(Lcom/android/fileexplorer/FileOperationHelper;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/FileOperationHelper;->asnycExecute(Ljava/lang/Runnable;)V

    .line 133
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public Paste(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 53
    iget-object v1, p0, Lcom/android/fileexplorer/FileOperationHelper;->mCurFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 54
    const/4 v1, 0x0

    .line 72
    :goto_0
    return v1

    .line 56
    :cond_0
    move-object v0, p1

    .line 57
    .local v0, _path:Ljava/lang/String;
    new-instance v1, Lcom/android/fileexplorer/FileOperationHelper$1;

    invoke-direct {v1, p0, v0}, Lcom/android/fileexplorer/FileOperationHelper$1;-><init>(Lcom/android/fileexplorer/FileOperationHelper;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/FileOperationHelper;->asnycExecute(Ljava/lang/Runnable;)V

    .line 72
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public Rename(Lcom/android/fileexplorer/FileInfo;Ljava/lang/String;)Z
    .locals 9
    .parameter "f"
    .parameter "newName"

    .prologue
    const/4 v5, 0x0

    .line 168
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 169
    :cond_0
    const-string v6, "FileOperation"

    const-string v7, "Rename: null parameter"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 188
    :cond_1
    :goto_0
    return v4

    .line 173
    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v6, p1, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .local v1, file:Ljava/io/File;
    iget-object v6, p1, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/fileexplorer/Util;->getPathFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p2}, Lcom/android/fileexplorer/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, newPath:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    .line 177
    .local v2, needScan:Z
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    .line 178
    .local v4, ret:Z
    if-eqz v4, :cond_1

    .line 179
    if-eqz v2, :cond_3

    .line 180
    iget-object v6, p0, Lcom/android/fileexplorer/FileOperationHelper;->mOperationListener:Lcom/android/fileexplorer/FileOperationHelper$IOperationProgressListener;

    iget-object v7, p1, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/android/fileexplorer/FileOperationHelper$IOperationProgressListener;->onFileChanged(Ljava/lang/String;)V

    .line 182
    :cond_3
    iget-object v6, p0, Lcom/android/fileexplorer/FileOperationHelper;->mOperationListener:Lcom/android/fileexplorer/FileOperationHelper$IOperationProgressListener;

    invoke-interface {v6, v3}, Lcom/android/fileexplorer/FileOperationHelper$IOperationProgressListener;->onFileChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    .end local v4           #ret:Z
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Ljava/lang/SecurityException;
    const-string v6, "FileOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fail to rename file,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 188
    goto :goto_0
.end method

.method public StartMove(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/fileexplorer/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/fileexplorer/FileInfo;>;"
    iget-boolean v0, p0, Lcom/android/fileexplorer/FileOperationHelper;->mMoving:Z

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/FileOperationHelper;->mMoving:Z

    .line 84
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileOperationHelper;->copyFileList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public canMove(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 92
    iget-object v2, p0, Lcom/android/fileexplorer/FileOperationHelper;->mCurFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileInfo;

    .line 93
    .local v0, f:Lcom/android/fileexplorer/FileInfo;
    iget-boolean v2, v0, Lcom/android/fileexplorer/FileInfo;->IsDir:Z

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, v0, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/android/fileexplorer/Util;->containsPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    const/4 v2, 0x0

    .line 100
    .end local v0           #f:Lcom/android/fileexplorer/FileInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public canPaste()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/fileexplorer/FileOperationHelper;->mCurFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/fileexplorer/FileOperationHelper;->mCurFileNameList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/android/fileexplorer/FileOperationHelper;->mCurFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    monitor-exit v1

    .line 107
    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isFileSelected(Ljava/lang/String;)Z
    .locals 4
    .parameter "path"

    .prologue
    .line 158
    iget-object v3, p0, Lcom/android/fileexplorer/FileOperationHelper;->mCurFileNameList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 159
    :try_start_0
    iget-object v2, p0, Lcom/android/fileexplorer/FileOperationHelper;->mCurFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileInfo;

    .line 160
    .local v0, f:Lcom/android/fileexplorer/FileInfo;
    iget-object v2, v0, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    const/4 v2, 0x1

    monitor-exit v3

    .line 164
    .end local v0           #f:Lcom/android/fileexplorer/FileInfo;
    :goto_0
    return v2

    .line 163
    :cond_1
    monitor-exit v3

    .line 164
    const/4 v2, 0x0

    goto :goto_0

    .line 163
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isMoveState()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/fileexplorer/FileOperationHelper;->mMoving:Z

    return v0
.end method
