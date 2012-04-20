.class public final Lcom/miui/gallery/StorageExplorer/AppHelper;
.super Ljava/lang/Object;
.source "AppHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;,
        Lcom/miui/gallery/StorageExplorer/AppHelper$DeleteDatabaseInfo;
    }
.end annotation


# static fields
.field public static sSingleTaskManager:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 343
    new-instance v0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;

    invoke-direct {v0}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;-><init>()V

    sput-object v0, Lcom/miui/gallery/StorageExplorer/AppHelper;->sSingleTaskManager:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;

    .line 344
    sget-object v0, Lcom/miui/gallery/StorageExplorer/AppHelper;->sSingleTaskManager:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->setMaxTaskNum(I)V

    .line 345
    sget-object v0, Lcom/miui/gallery/StorageExplorer/AppHelper;->sSingleTaskManager:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->setWorkThreadNum(I)V

    .line 346
    sget-object v0, Lcom/miui/gallery/StorageExplorer/AppHelper;->sSingleTaskManager:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->setThreadPriority(I)V

    .line 347
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    return-void
.end method

.method public static ShowInfoDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "message"
    .parameter "title"

    .prologue
    .line 38
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 43
    return-void
.end method

.method public static confirmDelete(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "context"
    .parameter "deleteListener"

    .prologue
    .line 161
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0046

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 165
    return-void
.end method

.method public static createCropImageIntent(Lcom/miui/gallery/StorageExplorer/BaseMeta;Z)Landroid/content/Intent;
    .locals 3
    .parameter "meta"
    .parameter "faceDetection"

    .prologue
    .line 391
    iget-boolean v1, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mIsImage:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 398
    :goto_0
    return-object v0

    .line 393
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/gallery/common/Utils;->getUriFromPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 395
    const-string v2, "noFaceDetection"

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static createWallpaperIntent(ZLcom/miui/gallery/StorageExplorer/BaseMeta;)Landroid/content/Intent;
    .locals 2
    .parameter "forLockscreen"
    .parameter "meta"

    .prologue
    const/4 v0, 0x0

    .line 350
    iget-boolean v1, p1, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mIsImage:Z

    if-nez v1, :cond_0

    .line 351
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p1, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/gallery/common/Utils;->getUriFromPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/miui/gallery/StorageExplorer/AppHelper;->prepareWallpaper(ZLandroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public static delete(Landroid/content/Context;Ljava/lang/Runnable;Lcom/miui/gallery/StorageExplorer/FileBucket;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "context"
    .parameter "post"
    .parameter "bucket"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Runnable;",
            "Lcom/miui/gallery/StorageExplorer/FileBucket;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/StorageExplorer/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p3, metas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/FileInfo;>;"
    if-nez p2, :cond_0

    .line 208
    :goto_0
    return-void

    .line 186
    :cond_0
    new-instance v4, Lcom/miui/gallery/StorageExplorer/AppHelper$1;

    invoke-direct {v4, p3, p0, p2}, Lcom/miui/gallery/StorageExplorer/AppHelper$1;-><init>(Ljava/util/ArrayList;Landroid/content/Context;Lcom/miui/gallery/StorageExplorer/FileBucket;)V

    .line 199
    .local v4, delete:Ljava/lang/Runnable;
    invoke-virtual {p2, p3}, Lcom/miui/gallery/StorageExplorer/FileBucket;->deleteMedias(Ljava/util/ArrayList;)V

    .line 201
    const/4 v1, 0x0

    const v2, 0x7f0d00d3

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/StorageExplorer/AppHelper;->startProgressDialogTask(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static delete(Landroid/content/Context;Ljava/lang/Runnable;Lcom/miui/gallery/StorageExplorer/FileBucket;Ljava/util/ArrayList;I)V
    .locals 3
    .parameter "context"
    .parameter "post"
    .parameter "bucket"
    .parameter
    .parameter "confirmMessageId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Runnable;",
            "Lcom/miui/gallery/StorageExplorer/FileBucket;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/StorageExplorer/FileInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p3, metas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/FileInfo;>;"
    if-eqz p2, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 170
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00c4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00ec

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 180
    :goto_0
    return-void

    .line 179
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/miui/gallery/StorageExplorer/AppHelper;->delete(Landroid/content/Context;Ljava/lang/Runnable;Lcom/miui/gallery/StorageExplorer/FileBucket;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public static deleteLocalMediaItem(Landroid/app/Activity;Lcom/miui/gallery/data/LocalMediaItem;Lcom/miui/gallery/StorageExplorer/AppHelper$DeleteDatabaseInfo;)V
    .locals 2
    .parameter "activity"
    .parameter "localMediaItem"
    .parameter "deleteDatabaseInfo"

    .prologue
    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v0, mediaItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p2}, Lcom/miui/gallery/StorageExplorer/AppHelper;->deleteLocalMediaItems(Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;Lcom/miui/gallery/StorageExplorer/AppHelper$DeleteDatabaseInfo;)V

    .line 219
    return-void
.end method

.method public static deleteLocalMediaItems(Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;Lcom/miui/gallery/StorageExplorer/AppHelper$DeleteDatabaseInfo;)V
    .locals 4
    .parameter "activity"
    .parameter "folderPath"
    .parameter
    .parameter "deleteDatabaseInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/MediaItem;",
            ">;",
            "Lcom/miui/gallery/StorageExplorer/AppHelper$DeleteDatabaseInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 224
    .local p2, mediaItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    new-instance v0, Lcom/miui/gallery/StorageExplorer/AppHelper$2;

    invoke-direct {v0, p2, p1}, Lcom/miui/gallery/StorageExplorer/AppHelper$2;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 239
    .local v0, delete:Ljava/lang/Runnable;
    new-instance v1, Lcom/miui/gallery/StorageExplorer/AppHelper$3;

    invoke-direct {v1, p0, v0}, Lcom/miui/gallery/StorageExplorer/AppHelper$3;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 252
    .local v1, runOnUiThread:Ljava/lang/Runnable;
    invoke-interface {p3}, Lcom/miui/gallery/StorageExplorer/AppHelper$DeleteDatabaseInfo;->delete()V

    .line 254
    if-eqz p0, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 256
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_1
    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static getSendIntent(Landroid/content/Context;Lcom/miui/gallery/data/MediaItem;)Landroid/content/Intent;
    .locals 8
    .parameter "context"
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    .line 368
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    .local v1, intent:Landroid/content/Intent;
    const/4 v3, 0x0

    .line 370
    .local v3, uri:Landroid/net/Uri;
    instance-of v4, p1, Lcom/miui/gallery/data/StorageMediaItem;

    if-eqz v4, :cond_1

    .line 371
    new-instance v5, Ljava/io/File;

    move-object v4, p1

    check-cast v4, Lcom/miui/gallery/data/StorageMediaItem;

    invoke-virtual {v4}, Lcom/miui/gallery/data/StorageMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 375
    :goto_0
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 377
    const/4 v0, 0x0

    .line 378
    .local v0, id:I
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getMediaType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 379
    const v0, 0x7f0d00d8

    .line 380
    const-string v4, "video/*"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    :cond_0
    :goto_1
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/miui/gallery/common/Utils;->getFormatedSizeString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, title:Ljava/lang/String;
    const-string v4, "android.intent.extra.TITLE"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    return-object v1

    .line 373
    .end local v0           #id:I
    .end local v2           #title:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 381
    .restart local v0       #id:I
    :cond_2
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getMediaType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 382
    const v0, 0x7f0d00d7

    .line 383
    const-string v4, "image/*"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public static prepareWallpaper(ZLandroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "forLockscreen"
    .parameter "data"
    .parameter "type"

    .prologue
    const/4 v2, 0x1

    .line 358
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 359
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    const-string v1, "noFaceDetection"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 361
    if-eqz p0, :cond_0

    const-string v1, "save_lockscreen"

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 364
    return-object v0

    .line 361
    :cond_0
    const-string v1, "save_wallpaper"

    goto :goto_0
.end method

.method public static send(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 9
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/StorageExplorer/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, metas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/FileInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v6, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-wide/16 v2, 0x0

    .line 80
    .local v2, totalFileSize:J
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/StorageExplorer/FileInfo;

    .line 81
    .local v1, meta:Lcom/miui/gallery/StorageExplorer/BaseMeta;
    iget-wide v7, v1, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mSize:J

    add-long/2addr v2, v7

    .line 82
    iget-object v7, v1, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v7}, Lcom/miui/gallery/common/Utils;->getUriFromPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 83
    .local v5, u:Landroid/net/Uri;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    .end local v1           #meta:Lcom/miui/gallery/StorageExplorer/BaseMeta;
    .end local v5           #u:Landroid/net/Uri;
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-object v7, v7, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    invoke-static {v7}, Lcom/miui/gallery/StorageExplorer/StorageUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, type:Ljava/lang/String;
    :goto_1
    invoke-static {p0, v6, v4, v2, v3}, Lcom/miui/gallery/StorageExplorer/AppHelper;->send(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;J)V

    .line 91
    return-void

    .line 86
    .end local v4           #type:Ljava/lang/String;
    :cond_1
    const-string v4, "image/*"

    goto :goto_1
.end method

.method public static send(Landroid/content/Context;Ljava/util/ArrayList;Lcom/miui/gallery/data/DataManager;)V
    .locals 11
    .parameter "context"
    .parameter
    .parameter "manager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/Path;",
            ">;",
            "Lcom/miui/gallery/data/DataManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/Path;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v8, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v7, 0x0

    .line 58
    .local v7, type:I
    const-wide/16 v5, 0x0

    .line 60
    .local v5, totalFileSize:J
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/data/Path;

    .line 61
    .local v3, path:Lcom/miui/gallery/data/Path;
    invoke-virtual {p2, v3}, Lcom/miui/gallery/data/DataManager;->getSupportedOperations(Lcom/miui/gallery/data/Path;)I

    move-result v4

    .line 62
    .local v4, support:I
    invoke-virtual {p2, v3}, Lcom/miui/gallery/data/DataManager;->getMediaType(Lcom/miui/gallery/data/Path;)I

    move-result v9

    or-int/2addr v7, v9

    .line 64
    and-int/lit8 v9, v4, 0x4

    if-eqz v9, :cond_0

    .line 65
    invoke-virtual {p2, v3}, Lcom/miui/gallery/data/DataManager;->getContentUri(Lcom/miui/gallery/data/Path;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p2, v3}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v2

    .line 67
    .local v2, obj:Lcom/miui/gallery/data/MediaObject;
    instance-of v9, v2, Lcom/miui/gallery/data/MediaItem;

    if-eqz v9, :cond_0

    .line 68
    check-cast v2, Lcom/miui/gallery/data/MediaItem;

    .end local v2           #obj:Lcom/miui/gallery/data/MediaObject;
    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaItem;->getSize()J

    move-result-wide v9

    add-long/2addr v5, v9

    goto :goto_0

    .line 73
    .end local v3           #path:Lcom/miui/gallery/data/Path;
    .end local v4           #support:I
    :cond_1
    invoke-static {v7}, Lcom/miui/gallery/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, mimeType:Ljava/lang/String;
    invoke-static {p0, v8, v1, v5, v6}, Lcom/miui/gallery/StorageExplorer/AppHelper;->send(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;J)V

    .line 75
    return-void
.end method

.method public static send(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;J)V
    .locals 6
    .parameter "context"
    .parameter
    .parameter "mimeType"
    .parameter "totalFileSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .local p1, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 94
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    const v2, 0x7f0d00c4

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d00ec

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/miui/gallery/StorageExplorer/AppHelper;->ShowInfoDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 101
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 102
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 103
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 110
    :goto_1
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const v2, 0x7f0d00ed

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p3, p4}, Lcom/miui/gallery/common/Utils;->getFormatedSizeString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, title:Ljava/lang/String;
    :try_start_0
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v2

    goto :goto_0

    .line 106
    .end local v1           #title:Ljava/lang/String;
    :cond_1
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public static startProgressDialogTask(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 4
    .parameter "context"
    .parameter "titleId"
    .parameter "messageId"
    .parameter "preExecute"
    .parameter "background"
    .parameter "postExecute"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 331
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 332
    .local v0, dialog:Landroid/app/ProgressDialog;
    if-nez p1, :cond_0

    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 333
    if-nez p2, :cond_1

    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 334
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 335
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 336
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 338
    new-instance v1, Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;

    invoke-direct {v1, v0, p3, p4, p5}, Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;-><init>(Landroid/app/ProgressDialog;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 339
    return-void

    .line 332
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 333
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
