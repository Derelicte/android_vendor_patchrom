.class public Lcom/miui/gallery/ui/MenuExecutor;
.super Ljava/lang/Object;
.source "MenuExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/MenuExecutor$MediaOperation;,
        Lcom/miui/gallery/ui/MenuExecutor$TaskListener;,
        Lcom/miui/gallery/ui/MenuExecutor$ProgressListener;
    }
.end annotation


# instance fields
.field private deleteListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mActivity:Lcom/miui/gallery/app/GalleryActivity;

.field private mDatabaseModified:Z

.field private mDialog:Landroid/app/ProgressDialog;

.field private final mHandler:Landroid/os/Handler;

.field private final mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

.field private mTask:Lcom/miui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SelectionManager;)V
    .locals 2
    .parameter "activity"
    .parameter "selectionManager"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/MenuExecutor;->mDatabaseModified:Z

    .line 302
    new-instance v0, Lcom/miui/gallery/ui/MenuExecutor$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/MenuExecutor$2;-><init>(Lcom/miui/gallery/ui/MenuExecutor;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/MenuExecutor;->deleteListener:Landroid/content/DialogInterface$OnClickListener;

    .line 98
    invoke-static {p1}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/GalleryActivity;

    iput-object v0, p0, Lcom/miui/gallery/ui/MenuExecutor;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    .line 99
    invoke-static {p2}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/SelectionManager;

    iput-object v0, p0, Lcom/miui/gallery/ui/MenuExecutor;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    .line 100
    new-instance v0, Lcom/miui/gallery/ui/MenuExecutor$1;

    iget-object v1, p0, Lcom/miui/gallery/ui/MenuExecutor;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/MenuExecutor$1;-><init>(Lcom/miui/gallery/ui/MenuExecutor;Lcom/miui/gallery/ui/GLRoot;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/MenuExecutor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/miui/gallery/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/MenuExecutor;)Lcom/miui/gallery/ui/SelectionManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/ui/MenuExecutor;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/MenuExecutor;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/MenuExecutor;)Lcom/miui/gallery/app/GalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/ui/MenuExecutor;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/MenuExecutor;Lcom/miui/gallery/data/DataManager;Lcom/miui/gallery/util/ThreadPool$JobContext;ILcom/miui/gallery/data/Path;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gallery/ui/MenuExecutor;->execute(Lcom/miui/gallery/data/DataManager;Lcom/miui/gallery/util/ThreadPool$JobContext;ILcom/miui/gallery/data/Path;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/MenuExecutor;ILcom/miui/gallery/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/MenuExecutor;->onProgressUpdate(ILcom/miui/gallery/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/MenuExecutor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/miui/gallery/ui/MenuExecutor;->mDatabaseModified:Z

    return v0
.end method

.method static synthetic access$602(Lcom/miui/gallery/ui/MenuExecutor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/miui/gallery/ui/MenuExecutor;->mDatabaseModified:Z

    return p1
.end method

.method static synthetic access$700(Lcom/miui/gallery/ui/MenuExecutor;ILcom/miui/gallery/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/MenuExecutor;->onProgressComplete(ILcom/miui/gallery/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method private execute(Lcom/miui/gallery/data/DataManager;Lcom/miui/gallery/util/ThreadPool$JobContext;ILcom/miui/gallery/data/Path;)Z
    .locals 19
    .parameter "manager"
    .parameter "jc"
    .parameter "cmd"
    .parameter "path"

    .prologue
    .line 313
    const/4 v9, 0x1

    .line 314
    .local v9, result:Z
    const-string v14, "MenuExecutor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Execute cmd: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 317
    .local v10, startTime:J
    sparse-switch p3, :sswitch_data_0

    .line 416
    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 319
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/ui/MenuExecutor;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v14, Landroid/app/Activity;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v14}, Lcom/miui/gallery/data/DataManager;->delete(Lcom/miui/gallery/data/Path;Landroid/app/Activity;)V

    .line 418
    :cond_0
    :goto_0
    :sswitch_1
    const-string v14, "MenuExecutor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "It takes "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v10

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ms to execute cmd for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return v9

    .line 323
    :sswitch_2
    const/16 v14, 0x5a

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v14}, Lcom/miui/gallery/data/DataManager;->rotate(Lcom/miui/gallery/data/Path;I)V

    goto :goto_0

    .line 326
    :sswitch_3
    const/16 v14, -0x5a

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v14}, Lcom/miui/gallery/data/DataManager;->rotate(Lcom/miui/gallery/data/Path;I)V

    goto :goto_0

    .line 329
    :sswitch_4
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v8

    .line 330
    .local v8, obj:Lcom/miui/gallery/data/MediaObject;
    invoke-virtual {v8}, Lcom/miui/gallery/data/MediaObject;->getCacheFlag()I

    move-result v3

    .line 331
    .local v3, cacheFlag:I
    const/4 v14, 0x2

    if-ne v3, v14, :cond_1

    .line 332
    const/4 v3, 0x1

    .line 336
    :goto_1
    invoke-virtual {v8, v3}, Lcom/miui/gallery/data/MediaObject;->cache(I)V

    goto :goto_0

    .line 334
    :cond_1
    const/4 v3, 0x2

    goto :goto_1

    .line 340
    .end local v3           #cacheFlag:I
    .end local v8           #obj:Lcom/miui/gallery/data/MediaObject;
    :sswitch_5
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/data/MediaItem;

    .line 341
    .local v6, item:Lcom/miui/gallery/data/MediaItem;
    const/4 v14, 0x2

    new-array v7, v14, [D

    .line 342
    .local v7, latlng:[D
    invoke-virtual {v6, v7}, Lcom/miui/gallery/data/MediaItem;->getLatLong([D)V

    .line 343
    const/4 v14, 0x0

    aget-wide v14, v7, v14

    const/16 v16, 0x1

    aget-wide v16, v7, v16

    invoke-static/range {v14 .. v17}, Lcom/miui/gallery/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 344
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/ui/MenuExecutor;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v14, Landroid/content/Context;

    const/4 v15, 0x0

    aget-wide v15, v7, v15

    const/16 v17, 0x1

    aget-wide v17, v7, v17

    invoke-static/range {v14 .. v18}, Lcom/miui/gallery/util/GalleryUtils;->showOnMap(Landroid/content/Context;DD)V

    goto/16 :goto_0

    .line 349
    .end local v6           #item:Lcom/miui/gallery/data/MediaItem;
    .end local v7           #latlng:[D
    :sswitch_6
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v8

    .line 350
    .restart local v8       #obj:Lcom/miui/gallery/data/MediaObject;
    invoke-virtual {v8}, Lcom/miui/gallery/data/MediaObject;->Import()Z

    move-result v9

    .line 351
    goto/16 :goto_0

    .line 354
    .end local v8           #obj:Lcom/miui/gallery/data/MediaObject;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/MenuExecutor;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v2, Landroid/app/Activity;

    .line 355
    .local v2, activity:Landroid/app/Activity;
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/data/MediaItem;

    .line 357
    .restart local v6       #item:Lcom/miui/gallery/data/MediaItem;
    const/4 v13, 0x0

    .line 358
    .local v13, uri:Landroid/net/Uri;
    :try_start_0
    instance-of v14, v6, Lcom/miui/gallery/data/StorageMediaItem;

    if-eqz v14, :cond_2

    .line 359
    new-instance v15, Ljava/io/File;

    move-object v0, v6

    check-cast v0, Lcom/miui/gallery/data/StorageMediaItem;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/miui/gallery/data/StorageMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    .line 363
    :goto_2
    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.EDIT"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/miui/gallery/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v13, v15}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 368
    :catch_0
    move-exception v12

    .line 369
    .local v12, t:Ljava/lang/Throwable;
    const-string v14, "MenuExecutor"

    const-string v15, "failed to start edit activity: "

    invoke-static {v14, v15, v12}, Lcom/miui/gallery/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    const v14, 0x7f0d0055

    invoke-virtual {v2, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v2, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 361
    .end local v12           #t:Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Lcom/miui/gallery/data/MediaItem;->getContentUri()Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v13

    goto :goto_2

    .line 381
    .end local v2           #activity:Landroid/app/Activity;
    .end local v6           #item:Lcom/miui/gallery/data/MediaItem;
    .end local v13           #uri:Landroid/net/Uri;
    :sswitch_8
    invoke-static/range {p4 .. p4}, Lcom/miui/gallery/data/AlbumCache;->getAlbumByPath(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/DBAlbum;

    move-result-object v4

    .line 382
    .local v4, dbAlbum:Lcom/miui/gallery/data/DBAlbum;
    invoke-virtual {v4}, Lcom/miui/gallery/data/DBAlbum;->getBucketPath()Ljava/lang/String;

    move-result-object v5

    .line 384
    .local v5, filePath:Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    goto/16 :goto_0

    .line 386
    :pswitch_0
    const/4 v14, 0x1

    invoke-static {v5, v14}, Lcom/miui/gallery/util/AlbumUtils;->setAlbumFlag(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 387
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/miui/gallery/ui/MenuExecutor;->mDatabaseModified:Z

    goto/16 :goto_0

    .line 392
    :pswitch_1
    const/4 v14, 0x1

    invoke-static {v5, v14}, Lcom/miui/gallery/util/AlbumUtils;->removeAlbumFlag(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 393
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/miui/gallery/ui/MenuExecutor;->mDatabaseModified:Z

    goto/16 :goto_0

    .line 398
    :pswitch_2
    const/4 v14, 0x2

    invoke-static {v5, v14}, Lcom/miui/gallery/util/AlbumUtils;->setAlbumFlag(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 399
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/miui/gallery/ui/MenuExecutor;->mDatabaseModified:Z

    goto/16 :goto_0

    .line 404
    :pswitch_3
    const/4 v14, 0x2

    invoke-static {v5, v14}, Lcom/miui/gallery/util/AlbumUtils;->removeAlbumFlag(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 405
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/miui/gallery/ui/MenuExecutor;->mDatabaseModified:Z

    goto/16 :goto_0

    .line 317
    :sswitch_data_0
    .sparse-switch
        0x7f0b0000 -> :sswitch_4
        0x7f0b0090 -> :sswitch_0
        0x7f0b0092 -> :sswitch_1
        0x7f0b0094 -> :sswitch_8
        0x7f0b0095 -> :sswitch_8
        0x7f0b0096 -> :sswitch_8
        0x7f0b0097 -> :sswitch_8
        0x7f0b0098 -> :sswitch_6
        0x7f0b009c -> :sswitch_7
        0x7f0b009d -> :sswitch_3
        0x7f0b009e -> :sswitch_2
        0x7f0b00a0 -> :sswitch_5
    .end sparse-switch

    .line 384
    :pswitch_data_0
    .packed-switch 0x7f0b0094
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getMimeType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 293
    packed-switch p0, :pswitch_data_0

    .line 298
    :pswitch_0
    const-string v0, "*/*"

    :goto_0
    return-object v0

    .line 295
    :pswitch_1
    const-string v0, "image/*"

    goto :goto_0

    .line 297
    :pswitch_2
    const-string v0, "video/*"

    goto :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getSingleSelectedPath()Lcom/miui/gallery/data/Path;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 194
    iget-object v3, p0, Lcom/miui/gallery/ui/MenuExecutor;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v3, v1}, Lcom/miui/gallery/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 195
    .local v0, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/Path;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    invoke-static {v1}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 196
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/data/Path;

    return-object v1

    :cond_0
    move v1, v2

    .line 195
    goto :goto_0
.end method

.method private onProgressComplete(ILcom/miui/gallery/ui/MenuExecutor$ProgressListener;)V
    .locals 4
    .parameter "result"
    .parameter "listener"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/miui/gallery/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gallery/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 151
    return-void
.end method

.method private onProgressUpdate(ILcom/miui/gallery/ui/MenuExecutor$ProgressListener;)V
    .locals 4
    .parameter "index"
    .parameter "listener"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/miui/gallery/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gallery/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 147
    return-void
.end method

.method private static setMenuItemVisibility(Landroid/view/Menu;IZ)V
    .locals 1
    .parameter "menu"
    .parameter "id"
    .parameter "visibility"

    .prologue
    .line 155
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 156
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 157
    :cond_0
    return-void
.end method

.method private static showProgressDialog(Landroid/content/Context;II)Landroid/app/ProgressDialog;
    .locals 3
    .parameter "context"
    .parameter "titleId"
    .parameter "progressMax"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 75
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 76
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 77
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 78
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 79
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 80
    if-le p2, v2, :cond_0

    .line 81
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 83
    :cond_0
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 84
    return-object v0
.end method

.method private stopTaskAndDismissDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcom/miui/gallery/ui/MenuExecutor;->mTask:Lcom/miui/gallery/util/Future;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/miui/gallery/ui/MenuExecutor;->mTask:Lcom/miui/gallery/util/Future;

    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 133
    iget-object v0, p0, Lcom/miui/gallery/ui/MenuExecutor;->mTask:Lcom/miui/gallery/util/Future;

    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->waitDone()V

    .line 134
    iget-object v0, p0, Lcom/miui/gallery/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 135
    iput-object v1, p0, Lcom/miui/gallery/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    .line 136
    iput-object v1, p0, Lcom/miui/gallery/ui/MenuExecutor;->mTask:Lcom/miui/gallery/util/Future;

    .line 138
    :cond_0
    return-void
.end method

.method public static updateMenuOperation(Landroid/view/Menu;I)V
    .locals 19
    .parameter "menu"
    .parameter "supported"

    .prologue
    .line 160
    and-int/lit8 v18, p1, 0x1

    if-eqz v18, :cond_0

    const/4 v5, 0x1

    .line 161
    .local v5, supportDelete:Z
    :goto_0
    and-int/lit8 v18, p1, 0x2

    if-eqz v18, :cond_1

    const/4 v12, 0x1

    .line 162
    .local v12, supportRotate:Z
    :goto_1
    and-int/lit8 v18, p1, 0x8

    if-eqz v18, :cond_2

    const/4 v4, 0x1

    .line 163
    .local v4, supportCrop:Z
    :goto_2
    and-int/lit8 v18, p1, 0x4

    if-eqz v18, :cond_3

    const/16 v16, 0x1

    .line 164
    .local v16, supportShare:Z
    :goto_3
    and-int/lit8 v18, p1, 0x20

    if-eqz v18, :cond_4

    const/4 v13, 0x1

    .line 165
    .local v13, supportSetAs:Z
    :goto_4
    and-int/lit8 v18, p1, 0x10

    if-eqz v18, :cond_5

    const/16 v17, 0x1

    .line 166
    .local v17, supportShowOnMap:Z
    :goto_5
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x100

    move/from16 v18, v0

    if-eqz v18, :cond_6

    const/4 v3, 0x1

    .line 167
    .local v3, supportCache:Z
    :goto_6
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x200

    move/from16 v18, v0

    if-eqz v18, :cond_7

    const/4 v6, 0x1

    .line 168
    .local v6, supportEdit:Z
    :goto_7
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x400

    move/from16 v18, v0

    if-eqz v18, :cond_8

    const/4 v8, 0x1

    .line 169
    .local v8, supportInfo:Z
    :goto_8
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x800

    move/from16 v18, v0

    if-eqz v18, :cond_9

    const/4 v7, 0x1

    .line 170
    .local v7, supportImport:Z
    :goto_9
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x1000

    move/from16 v18, v0

    if-eqz v18, :cond_a

    const/4 v15, 0x1

    .line 171
    .local v15, supportSetRecent:Z
    :goto_a
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x2000

    move/from16 v18, v0

    if-eqz v18, :cond_b

    const/4 v10, 0x1

    .line 172
    .local v10, supportRemoveRecent:Z
    :goto_b
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x4000

    move/from16 v18, v0

    if-eqz v18, :cond_c

    const/4 v14, 0x1

    .line 173
    .local v14, supportSetHidden:Z
    :goto_c
    const v18, 0x8000

    and-int v18, v18, p1

    if-eqz v18, :cond_d

    const/4 v9, 0x1

    .line 174
    .local v9, supportRemoveHidden:Z
    :goto_d
    const/high16 v18, 0x1

    and-int v18, v18, p1

    if-eqz v18, :cond_e

    const/4 v11, 0x1

    .line 176
    .local v11, supportRename:Z
    :goto_e
    const v18, 0x7f0b0090

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/miui/gallery/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 177
    const v18, 0x7f0b009d

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v12}, Lcom/miui/gallery/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 178
    const v18, 0x7f0b009e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v12}, Lcom/miui/gallery/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 179
    const v18, 0x7f0b009f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v4}, Lcom/miui/gallery/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 180
    const v18, 0x7f0b008f

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 181
    const v18, 0x7f0b0093

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v13}, Lcom/miui/gallery/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 182
    const v18, 0x7f0b00a0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 183
    const v18, 0x7f0b009c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v6}, Lcom/miui/gallery/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 184
    const v18, 0x7f0b0091

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v8}, Lcom/miui/gallery/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 185
    const v18, 0x7f0b0098

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v7}, Lcom/miui/gallery/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 186
    const v18, 0x7f0b0094

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v15}, Lcom/miui/gallery/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 187
    const v18, 0x7f0b0095

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v10}, Lcom/miui/gallery/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 188
    const v18, 0x7f0b0096

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v14}, Lcom/miui/gallery/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 189
    const v18, 0x7f0b0097

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v9}, Lcom/miui/gallery/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 190
    const v18, 0x7f0b0092

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v11}, Lcom/miui/gallery/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 191
    return-void

    .line 160
    .end local v3           #supportCache:Z
    .end local v4           #supportCrop:Z
    .end local v5           #supportDelete:Z
    .end local v6           #supportEdit:Z
    .end local v7           #supportImport:Z
    .end local v8           #supportInfo:Z
    .end local v9           #supportRemoveHidden:Z
    .end local v10           #supportRemoveRecent:Z
    .end local v11           #supportRename:Z
    .end local v12           #supportRotate:Z
    .end local v13           #supportSetAs:Z
    .end local v14           #supportSetHidden:Z
    .end local v15           #supportSetRecent:Z
    .end local v16           #supportShare:Z
    .end local v17           #supportShowOnMap:Z
    :cond_0
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 161
    .restart local v5       #supportDelete:Z
    :cond_1
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 162
    .restart local v12       #supportRotate:Z
    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 163
    .restart local v4       #supportCrop:Z
    :cond_3
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 164
    .restart local v16       #supportShare:Z
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 165
    .restart local v13       #supportSetAs:Z
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 166
    .restart local v17       #supportShowOnMap:Z
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 167
    .restart local v3       #supportCache:Z
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_7

    .line 168
    .restart local v6       #supportEdit:Z
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_8

    .line 169
    .restart local v8       #supportInfo:Z
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 170
    .restart local v7       #supportImport:Z
    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_a

    .line 171
    .restart local v15       #supportSetRecent:Z
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_b

    .line 172
    .restart local v10       #supportRemoveRecent:Z
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_c

    .line 173
    .restart local v14       #supportSetHidden:Z
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_d

    .line 174
    .restart local v9       #supportRemoveHidden:Z
    :cond_e
    const/4 v11, 0x0

    goto/16 :goto_e
.end method


# virtual methods
.method public onMenuClicked(Landroid/view/MenuItem;Lcom/miui/gallery/ui/MenuExecutor$ProgressListener;Lcom/miui/gallery/ui/MenuExecutor$TaskListener;)Z
    .locals 12
    .parameter "menuItem"
    .parameter "listener"
    .parameter "taskListener"

    .prologue
    const/4 v9, 0x1

    .line 201
    iget-object v8, p0, Lcom/miui/gallery/ui/MenuExecutor;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v8}, Lcom/miui/gallery/app/GalleryActivity;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v3

    .line 202
    .local v3, manager:Lcom/miui/gallery/data/DataManager;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 203
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 273
    :pswitch_0
    const/4 v8, 0x0

    .line 279
    :goto_0
    return v8

    .line 205
    :pswitch_1
    iget-object v8, p0, Lcom/miui/gallery/ui/MenuExecutor;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/miui/gallery/ui/SelectionManager;->inSelectAllMode()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 206
    iget-object v8, p0, Lcom/miui/gallery/ui/MenuExecutor;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/miui/gallery/ui/SelectionManager;->deSelectAll()V

    :goto_1
    move v8, v9

    .line 210
    goto :goto_0

    .line 208
    :cond_0
    iget-object v8, p0, Lcom/miui/gallery/ui/MenuExecutor;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/miui/gallery/ui/SelectionManager;->selectAll()V

    goto :goto_1

    .line 212
    :pswitch_2
    invoke-direct {p0}, Lcom/miui/gallery/ui/MenuExecutor;->getSingleSelectedPath()Lcom/miui/gallery/data/Path;

    move-result-object v5

    .line 213
    .local v5, path:Lcom/miui/gallery/data/Path;
    invoke-virtual {v3, v5}, Lcom/miui/gallery/data/DataManager;->getMediaType(Lcom/miui/gallery/data/Path;)I

    move-result v8

    invoke-static {v8}, Lcom/miui/gallery/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 214
    .local v4, mimeType:Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    const-string v10, "com.android.camera.action.CROP"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/miui/gallery/data/DataManager;->getContentUri(Lcom/miui/gallery/data/Path;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v8, v10, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 216
    .local v2, intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/miui/gallery/ui/MenuExecutor;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v8, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v8, v9

    .line 217
    goto :goto_0

    .line 220
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #mimeType:Ljava/lang/String;
    .end local v5           #path:Lcom/miui/gallery/data/Path;
    :pswitch_3
    invoke-direct {p0}, Lcom/miui/gallery/ui/MenuExecutor;->getSingleSelectedPath()Lcom/miui/gallery/data/Path;

    move-result-object v5

    .line 221
    .restart local v5       #path:Lcom/miui/gallery/data/Path;
    invoke-virtual {v3, v5}, Lcom/miui/gallery/data/DataManager;->getMediaType(Lcom/miui/gallery/data/Path;)I

    move-result v7

    .line 222
    .local v7, type:I
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.ATTACH_DATA"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-static {v7}, Lcom/miui/gallery/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 224
    .restart local v4       #mimeType:Ljava/lang/String;
    invoke-virtual {v3, v5}, Lcom/miui/gallery/data/DataManager;->getContentUri(Lcom/miui/gallery/data/Path;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v8, "mimeType"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    invoke-virtual {v2, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 227
    iget-object v1, p0, Lcom/miui/gallery/ui/MenuExecutor;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    .line 228
    .local v1, activity:Landroid/app/Activity;
    const v8, 0x7f0d0043

    invoke-virtual {v1, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v8, v9

    .line 230
    goto :goto_0

    .line 233
    .end local v1           #activity:Landroid/app/Activity;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #mimeType:Ljava/lang/String;
    .end local v5           #path:Lcom/miui/gallery/data/Path;
    .end local v7           #type:I
    :pswitch_4
    iget-object v8, p0, Lcom/miui/gallery/ui/MenuExecutor;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v8, Landroid/content/Context;

    iget-object v10, p0, Lcom/miui/gallery/ui/MenuExecutor;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v10, v9}, Lcom/miui/gallery/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v10

    iget-object v11, p0, Lcom/miui/gallery/ui/MenuExecutor;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v11}, Lcom/miui/gallery/app/GalleryActivity;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v11

    invoke-static {v8, v10, v11}, Lcom/miui/gallery/StorageExplorer/AppHelper;->send(Landroid/content/Context;Ljava/util/ArrayList;Lcom/miui/gallery/data/DataManager;)V

    move v8, v9

    .line 236
    goto/16 :goto_0

    .line 239
    :pswitch_5
    iget-object v8, p0, Lcom/miui/gallery/ui/MenuExecutor;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v8}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v8

    iget-object v10, p0, Lcom/miui/gallery/ui/MenuExecutor;->deleteListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v8, v10}, Lcom/miui/gallery/StorageExplorer/AppHelper;->confirmDelete(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    move v8, v9

    .line 240
    goto/16 :goto_0

    .line 243
    :pswitch_6
    const v6, 0x7f0d0052

    .line 275
    .local v6, title:I
    :goto_2
    if-eqz p3, :cond_1

    .line 276
    invoke-interface {p3, v0}, Lcom/miui/gallery/ui/MenuExecutor$TaskListener;->onStart(I)V

    .line 278
    :cond_1
    invoke-virtual {p0, v0, v6, p2}, Lcom/miui/gallery/ui/MenuExecutor;->startAction(IILcom/miui/gallery/ui/MenuExecutor$ProgressListener;)V

    move v8, v9

    .line 279
    goto/16 :goto_0

    .line 246
    .end local v6           #title:I
    :pswitch_7
    const v6, 0x7f0d0051

    .line 247
    .restart local v6       #title:I
    goto :goto_2

    .line 249
    .end local v6           #title:I
    :pswitch_8
    const v6, 0x7f0d0050

    .line 250
    .restart local v6       #title:I
    goto :goto_2

    .line 252
    .end local v6           #title:I
    :pswitch_9
    const v6, 0x7f0d0054

    .line 253
    .restart local v6       #title:I
    goto :goto_2

    .line 255
    .end local v6           #title:I
    :pswitch_a
    const v6, 0x7f0d0098

    .line 256
    .restart local v6       #title:I
    goto :goto_2

    .line 258
    .end local v6           #title:I
    :pswitch_b
    const v6, 0x7f0d00ac

    .line 259
    .restart local v6       #title:I
    goto :goto_2

    .line 261
    .end local v6           #title:I
    :pswitch_c
    const v6, 0x7f0d00ad

    .line 262
    .restart local v6       #title:I
    goto :goto_2

    .line 264
    .end local v6           #title:I
    :pswitch_d
    const v6, 0x7f0d00ae

    .line 265
    .restart local v6       #title:I
    goto :goto_2

    .line 267
    .end local v6           #title:I
    :pswitch_e
    const v6, 0x7f0d00af

    .line 268
    .restart local v6       #title:I
    goto :goto_2

    .line 270
    .end local v6           #title:I
    :pswitch_f
    const v6, 0x7f0d0103

    .line 271
    .restart local v6       #title:I
    goto :goto_2

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b008f
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_f
        :pswitch_3
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/miui/gallery/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    .line 142
    return-void
.end method

.method public startAction(IILcom/miui/gallery/ui/MenuExecutor$ProgressListener;)V
    .locals 5
    .parameter "action"
    .parameter "title"
    .parameter "listener"

    .prologue
    .line 283
    iget-object v3, p0, Lcom/miui/gallery/ui/MenuExecutor;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 284
    .local v1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/Path;>;"
    invoke-direct {p0}, Lcom/miui/gallery/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    .line 286
    iget-object v0, p0, Lcom/miui/gallery/ui/MenuExecutor;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 287
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v0, p2, v3}, Lcom/miui/gallery/ui/MenuExecutor;->showProgressDialog(Landroid/content/Context;II)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    .line 288
    new-instance v2, Lcom/miui/gallery/ui/MenuExecutor$MediaOperation;

    invoke-direct {v2, p0, p1, v1, p3}, Lcom/miui/gallery/ui/MenuExecutor$MediaOperation;-><init>(Lcom/miui/gallery/ui/MenuExecutor;ILjava/util/ArrayList;Lcom/miui/gallery/ui/MenuExecutor$ProgressListener;)V

    .line 289
    .local v2, operation:Lcom/miui/gallery/ui/MenuExecutor$MediaOperation;
    iget-object v3, p0, Lcom/miui/gallery/ui/MenuExecutor;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v3}, Lcom/miui/gallery/app/GalleryActivity;->getThreadPool()Lcom/miui/gallery/util/ThreadPool;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/miui/gallery/util/ThreadPool;->submit(Lcom/miui/gallery/util/ThreadPool$Job;Lcom/miui/gallery/util/FutureListener;)Lcom/miui/gallery/util/Future;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/ui/MenuExecutor;->mTask:Lcom/miui/gallery/util/Future;

    .line 290
    return-void
.end method
