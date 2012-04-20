.class public Lcom/android/thememanager/ThemeInfo;
.super Lmiui/app/resourcebrowser/resource/ZipResourceInfo;
.source "ThemeInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;,
        Lcom/android/thememanager/ThemeInfo$ConvertThemeTask;,
        Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;
    }
.end annotation


# static fields
.field private static PREVIEW_NAME_IN_FRONT_OF_HOME_PAGE:[Ljava/lang/String;


# instance fields
.field private mClockSizeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mFlags:J

.field private mPhotoFrameSizeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPreviewFlag:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 207
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3}, Lcom/android/thememanager/ThemeHelper;->getPreviewPrefixByFlag(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/thememanager/ThemeInfo;->PREVIEW_NAME_IN_FRONT_OF_HOME_PAGE:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;JLmiui/app/resourcebrowser/resource/ZipResourceCache;)V
    .locals 1
    .parameter "context"
    .parameter "path"
    .parameter "componentFlags"
    .parameter "themeCache"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 230
    invoke-direct {p0, p1, p2, p5}, Lmiui/app/resourcebrowser/resource/ZipResourceInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Lmiui/app/resourcebrowser/resource/ZipResourceCache;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/thememanager/ThemeInfo;->mClockSizeList:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/thememanager/ThemeInfo;->mPhotoFrameSizeList:Ljava/util/ArrayList;

    .line 231
    iget v0, p0, Lcom/android/thememanager/ThemeInfo;->mPlatformVersion:I

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/thememanager/ThemeInfo;->parseIdentifyFlags(Ljava/lang/String;JI)V

    .line 232
    return-void
.end method

.method static synthetic access$000(Lcom/android/thememanager/ThemeInfo;JJLandroid/app/ProgressDialog;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct/range {p0 .. p5}, Lcom/android/thememanager/ThemeInfo;->apply(JJLandroid/app/ProgressDialog;)V

    return-void
.end method

.method private apply(JJLandroid/app/ProgressDialog;)V
    .locals 18
    .parameter "userRemoveFlags"
    .parameter "applyFlags"
    .parameter "progressDialog"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 435
    new-instance v11, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 437
    .local v11, zipFile:Ljava/util/zip/ZipFile;
    or-long v9, p1, p3

    .line 438
    .local v9, removeFlags:J
    const/4 v8, 0x0

    .line 439
    .local v8, prepareIconStepCnt:I
    const-wide/16 v12, 0x8

    and-long/2addr v12, v9

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_0

    .line 440
    const/16 v8, 0xa

    .line 442
    :cond_0
    move v7, v8

    .line 443
    .local v7, iconNeedStep:I
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->size()I

    move-result v12

    add-int/lit8 v12, v12, 0xd

    add-int/2addr v12, v7

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 446
    const-string v12, "/data/system/theme/"

    const-string v13, "root"

    invoke-static {v12, v13}, Lmiui/util/CommandLineUtils;->mkdir(Ljava/lang/String;Ljava/lang/String;)Z

    .line 447
    const-string v12, "/data/system/theme/"

    const-string v13, "radio"

    const-string v14, "radio"

    const-string v15, "root"

    invoke-static {v12, v13, v14, v15}, Lmiui/util/CommandLineUtils;->chown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 448
    invoke-virtual/range {p5 .. p5}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 451
    invoke-static {v9, v10}, Lcom/android/thememanager/ThemeHelper;->getComponentFilterPath(J)Ljava/util/ArrayList;

    move-result-object v4

    .line 452
    .local v4, deleteFilters:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-wide/32 v12, 0x10000000

    and-long/2addr v12, v9

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_1

    .line 453
    invoke-static {}, Lcom/android/thememanager/ThemeHelper;->getAllThirdAppResourcePath()Ljava/util/List;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 455
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 456
    .local v5, filter:Ljava/lang/String;
    const-string v12, "%s/%s*"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "/data/system/theme/"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v5, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lmiui/util/CommandLineUtils;->rm(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 458
    .end local v5           #filter:Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p5 .. p5}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 461
    invoke-static/range {p3 .. p4}, Lcom/android/thememanager/ThemeHelper;->getComponentFilterPath(J)Ljava/util/ArrayList;

    move-result-object v3

    .line 462
    .local v3, applyFilters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "/data/system/theme/"

    const-wide/32 v14, 0x10000000

    and-long v14, v14, p3

    const-wide/16 v16, 0x0

    cmp-long v12, v14, v16

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    :goto_1
    move-object/from16 v0, p5

    invoke-static {v11, v13, v3, v12, v0}, Lcom/android/thememanager/Helper;->unzip(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/util/ArrayList;ZLandroid/app/ProgressDialog;)V

    .line 464
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->close()V

    .line 465
    invoke-virtual/range {p5 .. p5}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 468
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v9, v10, v1, v2}, Lcom/android/thememanager/ThemeInfo;->convertResourcesNames(JJ)V

    .line 469
    invoke-virtual/range {p5 .. p5}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 472
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/thememanager/ThemeInfo;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    and-long v13, v13, p3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/thememanager/ThemeInfo;->mEncodedPath:Ljava/lang/String;

    const-string v16, "/data/system/theme/"

    invoke-static/range {v12 .. v16}, Lcom/android/thememanager/ThemeHelper;->applyRingtones(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-virtual/range {p5 .. p5}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 476
    const-wide/16 v12, 0x2

    and-long v12, v12, p3

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_3

    .line 477
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/thememanager/ThemeInfo;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/thememanager/ThemeInfo;->mEncodedPath:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/android/thememanager/ThemeHelper;->applyWallpaper(Landroid/content/Context;Ljava/lang/String;)V

    .line 479
    :cond_3
    invoke-virtual/range {p5 .. p5}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 481
    const-wide/16 v12, 0x4

    and-long v12, v12, p3

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_4

    .line 482
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/thememanager/ThemeInfo;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/thememanager/ThemeInfo;->mEncodedPath:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/android/thememanager/ThemeHelper;->applyLockWallpaper(Landroid/content/Context;Ljava/lang/String;)V

    .line 484
    :cond_4
    invoke-virtual/range {p5 .. p5}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 487
    const-wide/32 v12, 0x8000

    and-long v12, v12, p3

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_5

    .line 490
    :cond_5
    invoke-virtual/range {p5 .. p5}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 493
    const-wide/16 v12, 0x20

    and-long v12, v12, p3

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_6

    .line 494
    const-string v12, "/data/local/bootanimation.zip"

    const-string v13, "root"

    invoke-static {v12, v13}, Lmiui/util/CommandLineUtils;->rm(Ljava/lang/String;Ljava/lang/String;)Z

    .line 495
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/data/system/theme/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "boots/bootanimation.zip"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "/data/local/bootanimation.zip"

    const-string v14, "root"

    invoke-static {v12, v13, v14}, Lmiui/util/CommandLineUtils;->cp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 500
    :cond_6
    invoke-virtual/range {p5 .. p5}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 503
    const-wide/16 v12, 0x8

    and-long/2addr v12, v9

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_7

    .line 504
    const/4 v12, 0x0

    invoke-static {v12}, Lmiui/content/res/IconCustomizer;->clearCustomizedIcons(Ljava/lang/String;)V

    .line 505
    invoke-virtual/range {p5 .. p5}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 507
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v12

    invoke-virtual {v12}, Lmiui/content/res/ThemeResourcesSystem;->resetIcons()V

    .line 508
    invoke-virtual/range {p5 .. p5}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 510
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/thememanager/ThemeInfo;->mContext:Landroid/content/Context;

    new-instance v13, Lcom/android/thememanager/ThemeInfo$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v13, v0, v1, v7}, Lcom/android/thememanager/ThemeInfo$1;-><init>(Lcom/android/thememanager/ThemeInfo;Landroid/app/ProgressDialog;I)V

    invoke-static {v12, v13}, Lmiui/content/res/IconCustomizer;->prepareCustomizedIcons(Landroid/content/Context;Lmiui/content/res/IconCustomizer$CustomizedIconsListener;)V

    .line 527
    invoke-virtual/range {p5 .. p5}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 529
    :cond_7
    return-void

    .line 462
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_1
.end method

.method private checkCacheValid(Lmiui/app/resourcebrowser/resource/ZipResourceCache;)Z
    .locals 3
    .parameter "themeCache"

    .prologue
    const/4 v1, 0x0

    .line 137
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lmiui/app/resourcebrowser/resource/ZipResourceCache;->valid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/thememanager/ThemeInfo;->loadPreviewsFromCache(Lmiui/app/resourcebrowser/resource/ZipResourceCache;)V

    .line 139
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    :cond_0
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private convertResourcesNames(JJ)V
    .locals 9
    .parameter "removeFlags"
    .parameter "applyFlags"

    .prologue
    const-wide/16 v7, 0x10

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 532
    and-long v1, p1, v7

    cmp-long v1, v1, v5

    if-eqz v1, :cond_0

    .line 534
    const-string v1, "/system/fonts"

    invoke-direct {p0, v1}, Lcom/android/thememanager/ThemeInfo;->createFontFileLinkForPatchRomDevices(Ljava/lang/String;)V

    .line 536
    :cond_0
    and-long v1, p3, v7

    cmp-long v1, v1, v5

    if-eqz v1, :cond_2

    .line 538
    const-string v0, "/data/system/theme//fonts/"

    .line 539
    .local v0, fontPath:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Arial.ttf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Roboto-Regular.ttf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lmiui/util/CommandLineUtils;->mv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Arial-Bold.ttf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Roboto-Bold.ttf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lmiui/util/CommandLineUtils;->mv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Arial-Italic.ttf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Roboto-Italic.ttf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lmiui/util/CommandLineUtils;->mv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Arial-BoldItalic.ttf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Roboto-BoldItalic.ttf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lmiui/util/CommandLineUtils;->mv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 543
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/fonts/Chinese-Hei.ttf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DroidSansFallback.ttf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Chinese-Hei.ttf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lmiui/util/CommandLineUtils;->mv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 546
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/thememanager/ThemeInfo;->createFontFileLinkForPatchRomDevices(Ljava/lang/String;)V

    .line 548
    .end local v0           #fontPath:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private createFontFileLinkForPatchRomDevices(Ljava/lang/String;)V
    .locals 8
    .parameter "fontDirPath"

    .prologue
    .line 551
    if-eqz p1, :cond_0

    const-string v5, "ro.skia.use_data_fonts"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 552
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 553
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 554
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 555
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/fonts/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lmiui/util/CommandLineUtils;->symlink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 554
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 559
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #files:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    return-void
.end method

.method public static varargs createZipResourceInfo(Landroid/content/Context;Ljava/lang/String;Lmiui/app/resourcebrowser/resource/ZipResourceCache;[Ljava/lang/Object;)Lcom/android/thememanager/ThemeInfo;
    .locals 12
    .parameter "context"
    .parameter "path"
    .parameter "cache"
    .parameter "args"

    .prologue
    const-wide/16 v10, 0x0

    .line 49
    const/4 v9, 0x0

    .line 51
    .local v9, result:Lcom/android/thememanager/ThemeInfo;
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p3, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 52
    .local v7, previewFlag:J
    const/4 v1, 0x1

    aget-object v1, p3, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 54
    .local v3, componentFlags:J
    new-instance v0, Lcom/android/thememanager/ThemeInfo;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/thememanager/ThemeInfo;-><init>(Landroid/content/Context;Ljava/lang/String;JLmiui/app/resourcebrowser/resource/ZipResourceCache;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v9           #result:Lcom/android/thememanager/ThemeInfo;
    .local v0, result:Lcom/android/thememanager/ThemeInfo;
    const-wide/16 v1, 0x1

    and-long/2addr v1, v7

    cmp-long v1, v1, v10

    if-eqz v1, :cond_0

    const-wide/16 v7, -0x1

    .end local v7           #previewFlag:J
    :cond_0
    :try_start_1
    iput-wide v7, v0, Lcom/android/thememanager/ThemeInfo;->mPreviewFlag:J

    .line 57
    iget-wide v1, v0, Lcom/android/thememanager/ThemeInfo;->mPreviewFlag:J

    cmp-long v1, v1, v10

    if-eqz v1, :cond_1

    .line 58
    invoke-direct {v0, p2}, Lcom/android/thememanager/ThemeInfo;->checkCacheValid(Lmiui/app/resourcebrowser/resource/ZipResourceCache;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    invoke-virtual {v0}, Lcom/android/thememanager/ThemeInfo;->loadResourcePreviews()V

    .line 60
    iget-object p2, v0, Lcom/android/thememanager/ThemeInfo;->mZipResourceCache:Lmiui/app/resourcebrowser/resource/ZipResourceCache;

    .line 63
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/thememanager/ThemeInfo;->loadPreviewsFromCache(Lmiui/app/resourcebrowser/resource/ZipResourceCache;)V

    .line 64
    if-eqz p2, :cond_2

    .line 65
    iput-object p2, v0, Lcom/android/thememanager/ThemeInfo;->mZipResourceCache:Lmiui/app/resourcebrowser/resource/ZipResourceCache;

    .line 67
    :cond_2
    invoke-direct {v0}, Lcom/android/thememanager/ThemeInfo;->initClockPhotoFrameSizeList()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    .end local v3           #componentFlags:J
    :goto_0
    return-object v0

    .line 68
    .end local v0           #result:Lcom/android/thememanager/ThemeInfo;
    .restart local v9       #result:Lcom/android/thememanager/ThemeInfo;
    :catch_0
    move-exception v6

    move-object v0, v9

    .line 69
    .end local v9           #result:Lcom/android/thememanager/ThemeInfo;
    .restart local v0       #result:Lcom/android/thememanager/ThemeInfo;
    .local v6, e:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 68
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v3       #componentFlags:J
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method private generateAnimationPreview(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "animationPath"
    .parameter "previewPath"

    .prologue
    .line 396
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 398
    .local v5, zipfile:Ljava/util/zip/ZipFile;
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 401
    .local v1, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    const/4 v4, 0x0

    .line 403
    .local v4, preview:Ljava/util/zip/ZipEntry;
    const/4 v3, 0x0

    .line 404
    .local v3, maxName:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 405
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 406
    .local v2, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    .line 407
    const-string v6, ".png"

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 408
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 410
    if-eqz v3, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_0

    .line 411
    :cond_1
    move-object v4, v2

    .line 412
    move-object v3, p1

    goto :goto_0

    .line 418
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    :cond_2
    if-eqz v4, :cond_3

    .line 419
    invoke-virtual {v5, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6, p2}, Lmiui/app/resourcebrowser/ResourceHelper;->writeTo(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    .end local v1           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .end local v3           #maxName:Ljava/lang/String;
    .end local v4           #preview:Ljava/util/zip/ZipEntry;
    .end local v5           #zipfile:Ljava/util/zip/ZipFile;
    :cond_3
    :goto_1
    return-void

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private getCoverThumbnailPath(Ljava/util/zip/ZipFile;)Ljava/lang/String;
    .locals 4
    .parameter "zipfile"

    .prologue
    .line 305
    const-string v0, "preview/preview_cover_"

    .line 308
    .local v0, prefix:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "small_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/thememanager/ThemeInfo;->loadPreviews(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 310
    .local v1, smalllist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 311
    invoke-virtual {p0, p1, v0}, Lcom/android/thememanager/ThemeInfo;->loadPreviews(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 314
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0
.end method

.method private getHomePagePosition(Ljava/util/ArrayList;)I
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, previews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, homePostion:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 213
    const/4 v3, 0x0

    .line 214
    .local v3, isHead:Z
    sget-object v0, Lcom/android/thememanager/ThemeInfo;->PREVIEW_NAME_IN_FRONT_OF_HOME_PAGE:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 215
    .local v5, tmp:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2

    .line 216
    const/4 v3, 0x1

    .line 220
    .end local v5           #tmp:Ljava/lang/String;
    :cond_0
    if-nez v3, :cond_3

    .line 225
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #isHead:Z
    .end local v4           #len$:I
    :cond_1
    return v1

    .line 214
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #isHead:Z
    .restart local v4       #len$:I
    .restart local v5       #tmp:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 212
    .end local v5           #tmp:Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initClockPhotoFrameSizeList()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget-wide v6, p0, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    const-wide/32 v8, 0x30000

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    const-string v6, "/system/media/theme/default.mtz"

    iget-object v7, p0, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 84
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->CLOCK_PHOTO_SIZE_ARRAY:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 85
    .local v3, size:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/thememanager/ThemeInfo;->mClockSizeList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v6, p0, Lcom/android/thememanager/ThemeInfo;->mPhotoFrameSizeList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 89
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #size:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/thememanager/ThemeInfo;->mZipResourceCache:Lmiui/app/resourcebrowser/resource/ZipResourceCache;

    check-cast v4, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;

    .line 90
    .local v4, themeCache:Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->valid()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 91
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getClockPhotoFrameSizeList(Z)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/android/thememanager/ThemeInfo;->mClockSizeList:Ljava/util/ArrayList;

    .line 92
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getClockPhotoFrameSizeList(Z)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/android/thememanager/ThemeInfo;->mPhotoFrameSizeList:Ljava/util/ArrayList;

    goto :goto_0

    .line 94
    :cond_3
    new-instance v5, Ljava/util/zip/ZipFile;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 95
    .local v5, zipfile:Ljava/util/zip/ZipFile;
    const-wide/32 v6, 0x10000

    invoke-static {v5, v6, v7}, Lcom/android/thememanager/ThemeHelper;->identifyClockAndPhotoSize(Ljava/util/zip/ZipFile;J)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/android/thememanager/ThemeInfo;->mClockSizeList:Ljava/util/ArrayList;

    .line 97
    const-wide/32 v6, 0x20000

    invoke-static {v5, v6, v7}, Lcom/android/thememanager/ThemeHelper;->identifyClockAndPhotoSize(Ljava/util/zip/ZipFile;J)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/android/thememanager/ThemeInfo;->mPhotoFrameSizeList:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    goto :goto_0
.end method

.method private loadPreviewForComponent(Ljava/util/zip/ZipFile;JLjava/util/List;Ljava/util/List;)V
    .locals 19
    .parameter "zipfile"
    .parameter "componentFlag"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p4, retThumbnail:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p5, retPreview:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "preview"

    invoke-static/range {v16 .. v16}, Lmiui/app/resourcebrowser/ResourceHelper;->getFormattedDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p2 .. p3}, Lcom/android/thememanager/ThemeHelper;->getPreviewPrefixByFlag(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 324
    .local v10, prefix:Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v11, previewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-wide/32 v15, 0x10000

    cmp-long v15, p2, v15

    if-eqz v15, :cond_0

    const-wide/32 v15, 0x20000

    cmp-long v15, p2, v15

    if-nez v15, :cond_4

    .line 327
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    sget-object v15, Lcom/android/thememanager/ThemeHelper;->CLOCK_PHOTO_SIZE_ARRAY:[Ljava/lang/String;

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 328
    .local v13, sizeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v15, ""

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    const/4 v9, 0x0

    .line 331
    .local v9, preCnt:I
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 332
    .local v12, size:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 333
    .local v8, newPrefix:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8}, Lcom/android/thememanager/ThemeInfo;->loadPreviews(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 334
    :goto_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v16, v9, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_3

    .line 335
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 388
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #newPrefix:Ljava/lang/String;
    .end local v9           #preCnt:I
    .end local v10           #prefix:Ljava/lang/String;
    .end local v11           #previewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12           #size:Ljava/lang/String;
    .end local v13           #sizeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 389
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 391
    .end local v3           #e:Ljava/io/IOException;
    :cond_1
    :goto_3
    return-void

    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v9       #preCnt:I
    .restart local v10       #prefix:Ljava/lang/String;
    .restart local v11       #previewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12       #size:Ljava/lang/String;
    .restart local v13       #sizeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    move-object v8, v10

    .line 332
    goto :goto_1

    .line 337
    .restart local v8       #newPrefix:Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 338
    goto :goto_0

    .line 340
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #newPrefix:Ljava/lang/String;
    .end local v9           #preCnt:I
    .end local v12           #size:Ljava/lang/String;
    .end local v13           #sizeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10}, Lcom/android/thememanager/ThemeInfo;->loadPreviews(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 343
    :cond_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-nez v15, :cond_6

    .line 344
    const-wide/16 v15, 0x1

    cmp-long v15, p2, v15

    if-nez v15, :cond_9

    .line 345
    const-string v15, "preview/"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/android/thememanager/ThemeInfo;->loadPreviews(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 375
    :cond_6
    :goto_4
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v14, thumbnailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-wide/16 v15, 0x10

    cmp-long v15, p2, v15

    if-nez v15, :cond_7

    .line 380
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "small_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/android/thememanager/ThemeInfo;->loadPreviews(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 382
    :cond_7
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 383
    move-object v14, v11

    .line 386
    :cond_8
    move-object/from16 v0, p4

    invoke-interface {v0, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 387
    move-object/from16 v0, p5

    invoke-interface {v0, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 347
    .end local v14           #thumbnailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    const-wide/16 v15, 0x80

    cmp-long v15, p2, v15

    if-nez v15, :cond_a

    .line 348
    const-string v15, "com.android.mms/res/drawable-hdpi/default_theme_preview.jpg"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15, v11}, Lcom/android/thememanager/ThemeInfo;->loadPreview(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 349
    const-string v15, "com.android.mms/res/drawable-hdpi/theme_default.jpg"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15, v11}, Lcom/android/thememanager/ThemeInfo;->loadPreview(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/util/ArrayList;)Z

    goto :goto_4

    .line 351
    :cond_a
    const-wide/16 v15, 0x20

    cmp-long v15, p2, v15

    if-nez v15, :cond_6

    .line 352
    const-string v15, "%s%s0.png"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/thememanager/ThemeInfo;->getPreviewPathPrefix()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    aput-object v10, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 354
    .local v6, extractedPreview:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    .local v5, extractedFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_b

    .line 358
    const-string v15, "boots/bootanimation.zip"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    .line 359
    .local v4, entry:Ljava/util/zip/ZipEntry;
    if-eqz v4, :cond_1

    .line 362
    const-string v15, "%sbootanimation.zip"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/thememanager/ThemeInfo;->getPreviewPathPrefix()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, animationFile:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v15

    invoke-static {v15, v2}, Lmiui/app/resourcebrowser/ResourceHelper;->writeTo(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 364
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/android/thememanager/ThemeInfo;->generateAnimationPreview(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 368
    .end local v2           #animationFile:Ljava/lang/String;
    .end local v4           #entry:Ljava/util/zip/ZipEntry;
    :cond_b
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 369
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method private parseIdentifyFlags(Ljava/lang/String;JI)V
    .locals 5
    .parameter "zipFilePath"
    .parameter "cacheFlags"
    .parameter "uiVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    .line 236
    iget-wide v1, p0, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 251
    :goto_0
    return-void

    .line 239
    :cond_0
    cmp-long v1, p2, v3

    if-nez v1, :cond_3

    .line 240
    const-string v1, "/system/media/theme/default.mtz"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->BACKUP_THEME_PATH:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    :cond_1
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    goto :goto_0

    .line 244
    :cond_2
    new-instance v0, Ljava/util/zip/ZipFile;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 245
    .local v0, zipfile:Ljava/util/zip/ZipFile;
    iget v1, p0, Lcom/android/thememanager/ThemeInfo;->mPlatformVersion:I

    invoke-static {v0, v1}, Lcom/android/thememanager/ThemeHelper;->identifyComponents(Ljava/util/zip/ZipFile;I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    .line 246
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    goto :goto_0

    .line 249
    .end local v0           #zipfile:Ljava/util/zip/ZipFile;
    :cond_3
    iput-wide p2, p0, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    goto :goto_0
.end method


# virtual methods
.method public apply_async(JJLjava/lang/Runnable;)V
    .locals 8
    .parameter "removeFlags"
    .parameter "componentFlags"
    .parameter "finishRunnable"

    .prologue
    .line 427
    new-instance v0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;-><init>(Lcom/android/thememanager/ThemeInfo;Landroid/content/Context;JJLjava/lang/Runnable;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 428
    return-void
.end method

.method public containClockPhotoFrameSize(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "size"
    .parameter "forClock"

    .prologue
    const/4 v1, 0x0

    .line 105
    const-string v2, "/system/media/theme/default.mtz"

    iget-object v3, p0, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v1

    .line 108
    :cond_1
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo;->mClockSizeList:Ljava/util/ArrayList;

    .line 109
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 108
    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo;->mPhotoFrameSizeList:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method public convert_async(JJLjava/lang/Runnable;)V
    .locals 8
    .parameter "removeFlags"
    .parameter "componentFlags"
    .parameter "finishRunnable"

    .prologue
    .line 431
    new-instance v0, Lcom/android/thememanager/ThemeInfo$ConvertThemeTask;

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/thememanager/ThemeInfo$ConvertThemeTask;-><init>(Lcom/android/thememanager/ThemeInfo;Landroid/content/Context;JJLjava/lang/Runnable;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/thememanager/ThemeInfo$ConvertThemeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 432
    return-void
.end method

.method public filterClockPhotoFramePreviews(Ljava/lang/String;Z)V
    .locals 9
    .parameter "size"
    .parameter "forClock"

    .prologue
    const/4 v8, 0x1

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 134
    :goto_0
    return-void

    .line 116
    :cond_0
    if-eqz p2, :cond_3

    const-wide/32 v5, 0x10000

    invoke-static {v5, v6}, Lcom/android/thememanager/ThemeHelper;->getPreviewPrefixByFlag(J)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, prefix:Ljava/lang/String;
    :goto_1
    if-eqz p2, :cond_4

    iget-object v4, p0, Lcom/android/thememanager/ThemeInfo;->mClockSizeList:Ljava/util/ArrayList;

    .line 121
    .local v4, removeSizeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 123
    .local v3, removeSize:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, i:I
    :goto_3
    if-ltz v0, :cond_1

    .line 124
    iget-object v5, p0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_2

    .line 125
    iget-object v5, p0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 123
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 116
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #prefix:Ljava/lang/String;
    .end local v3           #removeSize:Ljava/lang/String;
    .end local v4           #removeSizeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const-wide/32 v5, 0x20000

    invoke-static {v5, v6}, Lcom/android/thememanager/ThemeHelper;->getPreviewPrefixByFlag(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 120
    .restart local v2       #prefix:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/thememanager/ThemeInfo;->mPhotoFrameSizeList:Ljava/util/ArrayList;

    goto :goto_2

    .line 129
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v4       #removeSizeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    iget-object v5, p0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v8, :cond_6

    .line 131
    iget-object v5, p0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 133
    :cond_6
    iget-object v5, p0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/android/thememanager/ThemeInfo;->mThumbnails:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method protected getCacheInstance()Lmiui/app/resourcebrowser/resource/ZipResourceCache;
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;

    invoke-direct {v0, p0}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;-><init>(Lcom/android/thememanager/ThemeInfo;)V

    return-object v0
.end method

.method public getInformation()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 563
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 564
    .local v0, information:Landroid/os/Bundle;
    const-string v1, "m_title"

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v1, "designer"

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo;->mDesigner:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v1, "nickname"

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo;->mAuthor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string v1, "filesize"

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/thememanager/ThemeInfo;->mSize:J

    invoke-static {v2, v3, v4}, Lmiui/app/resourcebrowser/ResourceHelper;->getFormattedSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v1, "ui_version"

    iget v2, p0, Lcom/android/thememanager/ThemeInfo;->mPlatformVersion:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 569
    const-string v1, "m_lastupdate"

    iget-wide v2, p0, Lcom/android/thememanager/ThemeInfo;->mLastModified:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 570
    const-string v1, "local_path"

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const-string v1, "local_preview"

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 572
    const-string v1, "local_thumbnail"

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 573
    const-string v1, "modules"

    iget-wide v2, p0, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    return-object v0
.end method

.method protected loadPreviewsFromCache(Lmiui/app/resourcebrowser/resource/ZipResourceCache;)V
    .locals 15
    .parameter "cache"

    .prologue
    .line 153
    if-nez p1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v10, p1

    .line 156
    check-cast v10, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;

    .line 157
    .local v10, themeCache:Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;
    iget-wide v11, p0, Lcom/android/thememanager/ThemeInfo;->mPreviewFlag:J

    const-wide/16 v13, -0x1

    cmp-long v11, v11, v13

    if-nez v11, :cond_6

    .line 158
    const-wide/32 v4, -0x8001

    .line 159
    .local v4, mask:J
    const/4 v11, 0x1

    invoke-virtual {v10, v4, v5, v11}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCacheThumbnail(JZ)Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, p0, Lcom/android/thememanager/ThemeInfo;->mThumbnails:Ljava/util/ArrayList;

    .line 160
    iget-wide v11, p0, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    const-wide/16 v13, 0x8

    and-long/2addr v11, v13

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-eqz v11, :cond_5

    const-wide/16 v11, 0x4000

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCacheImageNumber(JZ)I

    move-result v11

    if-nez v11, :cond_5

    .line 162
    const-wide/16 v11, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCachePreview(J)Ljava/util/ArrayList;

    move-result-object v3

    .line 163
    .local v3, iconPreview:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_4

    .line 164
    const-wide/16 v11, -0x9

    and-long/2addr v11, v4

    invoke-virtual {v10, v11, v12}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCachePreview(J)Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, p0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    .line 165
    iget-object v11, p0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    invoke-direct {p0, v11}, Lcom/android/thememanager/ThemeInfo;->getHomePagePosition(Ljava/util/ArrayList;)I

    move-result v1

    .line 166
    .local v1, homeInsertPosition:I
    iget-object v11, p0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v1, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 167
    iget-object v11, p0, Lcom/android/thememanager/ThemeInfo;->mThumbnails:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v1, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 179
    .end local v1           #homeInsertPosition:I
    .end local v3           #iconPreview:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #mask:J
    :goto_1
    iget-wide v11, p0, Lcom/android/thememanager/ThemeInfo;->mPreviewFlag:J

    const-wide/32 v13, 0x8000

    cmp-long v11, v11, v13

    if-nez v11, :cond_0

    const-string v11, "/system/media/theme/default.mtz"

    iget-object v12, p0, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 181
    iget-object v11, p0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 182
    iget-object v11, p0, Lcom/android/thememanager/ThemeInfo;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 184
    new-instance v9, Ljava/io/File;

    const-string v11, "/system/media/audio/ui"

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    .local v9, systemDir:Ljava/io/File;
    new-instance v8, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/thememanager/ThemeInfo;->getPreviewPathPrefix()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v8, previewDir:Ljava/io/File;
    sget-object v11, Lcom/android/thememanager/ThemeHelper;->sAudioEffectOrder:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 187
    .local v6, name:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 188
    .local v7, originFile:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 189
    .local v0, cacheFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 190
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_3

    .line 192
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lmiui/app/resourcebrowser/ResourceHelper;->writeTo(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_3
    :goto_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 200
    iget-object v11, p0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 169
    .end local v0           #cacheFile:Ljava/io/File;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #originFile:Ljava/io/File;
    .end local v8           #previewDir:Ljava/io/File;
    .end local v9           #systemDir:Ljava/io/File;
    .restart local v3       #iconPreview:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #mask:J
    :cond_4
    invoke-virtual {v10, v4, v5}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCachePreview(J)Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, p0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    goto :goto_1

    .line 172
    .end local v3           #iconPreview:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    const-wide/16 v11, -0x9

    and-long/2addr v11, v4

    invoke-virtual {v10, v11, v12}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCachePreview(J)Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, p0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 175
    .end local v4           #mask:J
    :cond_6
    iget-wide v11, p0, Lcom/android/thememanager/ThemeInfo;->mPreviewFlag:J

    invoke-virtual {v10, v11, v12}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCachePreview(J)Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, p0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    .line 176
    iget-wide v11, p0, Lcom/android/thememanager/ThemeInfo;->mPreviewFlag:J

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCacheThumbnail(JZ)Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, p0, Lcom/android/thememanager/ThemeInfo;->mThumbnails:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 197
    .restart local v0       #cacheFile:Ljava/io/File;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v6       #name:Ljava/lang/String;
    .restart local v7       #originFile:Ljava/io/File;
    .restart local v8       #previewDir:Ljava/io/File;
    .restart local v9       #systemDir:Ljava/io/File;
    :cond_7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 203
    .end local v0           #cacheFile:Ljava/io/File;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #originFile:Ljava/io/File;
    :cond_8
    iget-object v11, p0, Lcom/android/thememanager/ThemeInfo;->mThumbnails:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 193
    .restart local v0       #cacheFile:Ljava/io/File;
    .restart local v6       #name:Ljava/lang/String;
    .restart local v7       #originFile:Ljava/io/File;
    :catch_0
    move-exception v11

    goto :goto_3
.end method

.method public loadResourcePreviews()V
    .locals 22

    .prologue
    .line 255
    const-string v2, "ResourceBrowser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "load preview for file: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 258
    .local v3, zipfile:Ljava/util/zip/ZipFile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/thememanager/ThemeInfo;->mZipResourceCache:Lmiui/app/resourcebrowser/resource/ZipResourceCache;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;

    .line 260
    .local v16, themeCache:Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    sget-object v2, Lcom/android/thememanager/ThemeHelper;->sPreviewCacheOrder:[J

    array-length v2, v2

    if-ge v10, v2, :cond_4

    .line 261
    sget-object v2, Lcom/android/thememanager/ThemeHelper;->sPreviewCacheOrder:[J

    aget-wide v4, v2, v10

    .line 262
    .local v4, componentFlag:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    move-wide/from16 v18, v0

    and-long v18, v18, v4

    const-wide/16 v20, 0x0

    cmp-long v2, v18, v20

    if-nez v2, :cond_0

    .line 260
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 266
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v6, componentThumnail:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, componentPreview:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v2, p0

    .line 268
    invoke-direct/range {v2 .. v7}, Lcom/android/thememanager/ThemeInfo;->loadPreviewForComponent(Ljava/util/zip/ZipFile;JLjava/util/List;Ljava/util/List;)V

    .line 270
    const-wide/16 v18, 0x8

    cmp-long v2, v4, v18

    if-nez v2, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 271
    const-string v2, "icons/com.android.mms.png"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v6}, Lcom/android/thememanager/ThemeInfo;->loadPreview(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 279
    :cond_1
    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->setCacheThumbnail(JLjava/util/ArrayList;)V

    .line 280
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5, v7}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->setCachePreview(JLjava/util/ArrayList;)V

    goto :goto_1

    .line 300
    .end local v3           #zipfile:Ljava/util/zip/ZipFile;
    .end local v4           #componentFlag:J
    .end local v6           #componentThumnail:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #componentPreview:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10           #i:I
    .end local v16           #themeCache:Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;
    :catch_0
    move-exception v2

    .line 302
    :goto_3
    return-void

    .line 272
    .restart local v3       #zipfile:Ljava/util/zip/ZipFile;
    .restart local v4       #componentFlag:J
    .restart local v6       #componentThumnail:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #componentPreview:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10       #i:I
    .restart local v16       #themeCache:Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;
    :cond_2
    const-wide/32 v18, 0x8000

    cmp-long v2, v4, v18

    if-nez v2, :cond_1

    .line 273
    sget-object v2, Lcom/android/thememanager/ThemeHelper;->sAudioEffectOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 274
    .local v13, name:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "audioeffect"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v18, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v7}, Lcom/android/thememanager/ThemeInfo;->loadPreview(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/util/ArrayList;)Z

    goto :goto_4

    .line 276
    .end local v13           #name:Ljava/lang/String;
    :cond_3
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 282
    .end local v4           #componentFlag:J
    .end local v6           #componentThumnail:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #componentPreview:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/thememanager/ThemeInfo;->getCoverThumbnailPath(Ljava/util/zip/ZipFile;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->setCoverThumbnail(Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {v16 .. v16}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->finishCached()V

    .line 287
    const-string v2, "/system/media/theme/default.mtz"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 288
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v17, tmpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v8, Lcom/android/thememanager/ThemeHelper;->CLOCK_PHOTO_SIZE_ARRAY:[Ljava/lang/String;

    .local v8, arr$:[Ljava/lang/String;
    array-length v12, v8

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_5
    if-ge v11, v12, :cond_5

    aget-object v15, v8, v11

    .line 290
    .local v15, size:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 292
    .end local v15           #size:Ljava/lang/String;
    :cond_5
    move-object/from16 v9, v17

    .line 293
    .local v9, clockList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v14, v17

    .line 298
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v17           #tmpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v14, photoFrameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_6
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v2}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->setClockPhotoFrameSize(Ljava/util/List;Z)V

    .line 299
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v2}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->setClockPhotoFrameSize(Ljava/util/List;Z)V

    goto/16 :goto_3

    .line 295
    .end local v9           #clockList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14           #photoFrameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    const-wide/32 v18, 0x10000

    move-wide/from16 v0, v18

    invoke-static {v3, v0, v1}, Lcom/android/thememanager/ThemeHelper;->identifyClockAndPhotoSize(Ljava/util/zip/ZipFile;J)Ljava/util/ArrayList;

    move-result-object v9

    .line 296
    .restart local v9       #clockList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-wide/32 v18, 0x20000

    move-wide/from16 v0, v18

    invoke-static {v3, v0, v1}, Lcom/android/thememanager/ThemeHelper;->identifyClockAndPhotoSize(Ljava/util/zip/ZipFile;J)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .restart local v14       #photoFrameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_6
.end method

.method saveUserPreference(JJ)V
    .locals 14
    .parameter "removeFlags"
    .parameter "applyFlags"

    .prologue
    .line 578
    iget-wide v0, p0, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/thememanager/ThemeHelper;->getAllComponentsCombineFlag()J

    move-result-wide v10

    .line 581
    .local v10, componentFlags:J
    :goto_0
    and-long v12, p3, v10

    .line 582
    .local v12, saveFlags:J
    move-wide v8, p1

    .line 584
    .local v8, clearFlags:J
    sget-wide v0, Lcom/android/thememanager/ThemeHelper;->ALL_RINGTONE_FLAGS:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    const-wide/16 v2, 0x4

    or-long v6, v0, v2

    .line 587
    .local v6, audioImageFlagMask:J
    const-wide/16 v0, -0x1

    xor-long/2addr v0, v6

    and-long v1, v12, v0

    const-wide/16 v3, -0x1

    xor-long/2addr v3, v6

    and-long/2addr v3, v8

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/thememanager/ThemeHelper;->saveUserPreference(Lcom/android/thememanager/ThemeInfo;JJZ)V

    .line 588
    and-long v1, v12, v6

    and-long v3, v8, v6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/thememanager/ThemeHelper;->saveUserPreference(Lcom/android/thememanager/ThemeInfo;JJZ)V

    .line 589
    return-void

    .line 578
    .end local v6           #audioImageFlagMask:J
    .end local v8           #clearFlags:J
    .end local v10           #componentFlags:J
    .end local v12           #saveFlags:J
    :cond_0
    iget-wide v10, p0, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    goto :goto_0
.end method
