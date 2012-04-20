.class public Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;
.super Lcom/miui/home/launcher/gadget/ConfigableGadget;
.source "ClockGadgetDelegate.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

.field final mClock:Lcom/miui/home/launcher/gadget/Clock;

.field private mEditView:Landroid/view/View;

.field private mErrorDisplay:Landroid/view/View;

.field private final mRequestCode:I

.field mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .parameter "a"
    .parameter "requestCode"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/ConfigableGadget;-><init>(Landroid/content/Context;)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    .line 63
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActivity:Landroid/app/Activity;

    .line 64
    new-instance v0, Lcom/miui/home/launcher/gadget/Clock;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/gadget/Clock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    .line 65
    iput p2, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mRequestCode:I

    .line 66
    return-void
.end method

.method private adjustByAttributes(Lorg/w3c/dom/Element;Landroid/view/View;)V
    .locals 9
    .parameter "root"
    .parameter "view"

    .prologue
    const/16 v8, 0x33

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 253
    const-string v5, "clock_x"

    invoke-direct {p0, p1, v5, v6}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getIntFromElement(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    .line 254
    .local v0, clockX:I
    const-string v5, "clock_y"

    invoke-direct {p0, p1, v5, v6}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getIntFromElement(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v1

    .line 255
    .local v1, clockY:I
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 256
    .local v4, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 257
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 258
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 259
    invoke-virtual {p2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    const-string v5, "edit_tag_x"

    invoke-direct {p0, p1, v5, v7}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getIntFromElement(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v2

    .line 262
    .local v2, editX:I
    const-string v5, "edit_tag_y"

    invoke-direct {p0, p1, v5, v7}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getIntFromElement(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v3

    .line 263
    .local v3, editY:I
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mEditView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 264
    .restart local v4       #lp:Landroid/widget/FrameLayout$LayoutParams;
    if-ltz v2, :cond_0

    if-ltz v3, :cond_0

    .line 265
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 266
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 267
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 273
    :goto_0
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mEditView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    return-void

    .line 269
    :cond_0
    const/16 v5, 0x35

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 270
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 271
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method private static extractClock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "dest"
    .parameter "zipPath"
    .parameter "entryName"
    .parameter "dftZip"

    .prologue
    const/4 v9, 0x0

    .line 313
    const/4 v5, 0x0

    .line 314
    .local v5, is:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 316
    .local v6, os:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/util/zip/ZipFile;

    invoke-direct {v8, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 317
    .local v8, zip:Ljava/util/zip/ZipFile;
    invoke-virtual {v8, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 318
    .local v3, entry:Ljava/util/zip/ZipEntry;
    if-nez v3, :cond_0

    .line 319
    new-instance v8, Ljava/util/zip/ZipFile;

    .end local v8           #zip:Ljava/util/zip/ZipFile;
    invoke-direct {v8, p3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 320
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    invoke-virtual {v8, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 322
    :cond_0
    if-eqz v3, :cond_6

    .line 323
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 324
    .local v4, f:Ljava/io/File;
    invoke-virtual {v8, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 325
    if-eqz v5, :cond_4

    .line 326
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 327
    .end local v6           #os:Ljava/io/FileOutputStream;
    .local v7, os:Ljava/io/FileOutputStream;
    const/16 v10, 0x1000

    :try_start_1
    new-array v0, v10, [B

    .line 328
    .local v0, buf:[B
    const/4 v1, 0x0

    .line 329
    .local v1, c:I
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v10, -0x1

    if-eq v1, v10, :cond_3

    .line 330
    const/4 v10, 0x0

    invoke-virtual {v7, v0, v10, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 336
    .end local v0           #buf:[B
    .end local v1           #c:I
    :catch_0
    move-exception v2

    move-object v6, v7

    .line 337
    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    .end local v4           #f:Ljava/io/File;
    .end local v7           #os:Ljava/io/FileOutputStream;
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .local v2, e:Ljava/io/IOException;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 340
    if-eqz v6, :cond_1

    .line 341
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 343
    :cond_1
    if-eqz v5, :cond_2

    .line 344
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 350
    .end local v2           #e:Ljava/io/IOException;
    :cond_2
    :goto_2
    return v9

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v0       #buf:[B
    .restart local v1       #c:I
    .restart local v3       #entry:Ljava/util/zip/ZipEntry;
    .restart local v4       #f:Ljava/io/File;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    :cond_3
    move-object v6, v7

    .line 333
    .end local v0           #buf:[B
    .end local v1           #c:I
    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :cond_4
    const/4 v9, 0x1

    .line 340
    if-eqz v6, :cond_5

    .line 341
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 343
    :cond_5
    if-eqz v5, :cond_2

    .line 344
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 346
    :catch_1
    move-exception v10

    goto :goto_2

    .line 340
    .end local v4           #f:Ljava/io/File;
    :cond_6
    if-eqz v6, :cond_7

    .line 341
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 343
    :cond_7
    if-eqz v5, :cond_2

    .line 344
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 346
    :catch_2
    move-exception v10

    goto :goto_2

    .line 339
    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    :catchall_0
    move-exception v9

    .line 340
    :goto_3
    if-eqz v6, :cond_8

    .line 341
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 343
    :cond_8
    if-eqz v5, :cond_9

    .line 344
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 347
    :cond_9
    :goto_4
    throw v9

    .line 346
    :catch_3
    move-exception v10

    goto :goto_4

    .line 339
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v3       #entry:Ljava/util/zip/ZipEntry;
    .restart local v4       #f:Ljava/io/File;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 346
    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    .end local v4           #f:Ljava/io/File;
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v2       #e:Ljava/io/IOException;
    :catch_4
    move-exception v10

    goto :goto_2

    .line 336
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    goto :goto_1
.end method

.method private getIntFromElement(Lorg/w3c/dom/Element;Ljava/lang/String;I)I
    .locals 3
    .parameter "element"
    .parameter "key"
    .parameter "dftValue"

    .prologue
    .line 277
    move v0, p3

    .line 279
    .local v0, ret:I
    :try_start_0
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, str:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 281
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 286
    .end local v1           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 283
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private setupViews()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, -0x2

    .line 164
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    const v3, 0x7f030012

    invoke-static {v2, v3, p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 165
    const v2, 0x7f070021

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mErrorDisplay:Landroid/view/View;

    .line 166
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mErrorDisplay:Landroid/view/View;

    const v3, 0x7f070022

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f020033

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mErrorDisplay:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 169
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 170
    .local v0, editView:Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 171
    .local v1, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x35

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 172
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    const v2, 0x7f020043

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 174
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    iput-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mEditView:Landroid/view/View;

    .line 176
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mEditView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->addView(Landroid/view/View;)V

    .line 177
    return-void
.end method

.method public static updateBackup(Landroid/content/Context;)V
    .locals 23
    .parameter "context"

    .prologue
    .line 354
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 360
    .local v2, CLOCK_GADGET_ARR:[I
    move-object v3, v2

    .local v3, arr$:[I
    array-length v0, v3

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    move v11, v10

    .end local v3           #arr$:[I
    .end local v10           #i$:I
    .end local v17           #len$:I
    .local v11, i$:I
    :goto_0
    move/from16 v0, v17

    if-ge v11, v0, :cond_3

    aget v9, v3, v11

    .line 361
    .local v9, gadgetId:I
    new-instance v5, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    invoke-direct {v5, v9}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;-><init>(I)V

    .line 362
    .local v5, backup:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;
    new-instance v8, Ljava/io/File;

    invoke-virtual {v5}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getPathInTheme()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 363
    .local v8, fileInTheme:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v21

    if-nez v21, :cond_1

    .line 360
    .end local v11           #i$:I
    :cond_0
    add-int/lit8 v10, v11, 0x1

    .restart local v10       #i$:I
    move v11, v10

    .end local v10           #i$:I
    .restart local v11       #i$:I
    goto :goto_0

    .line 367
    :cond_1
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 368
    .local v6, dir:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 372
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v15

    .line 373
    .local v15, lastModified:J
    invoke-virtual {v5}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupNamePrefix()Ljava/lang/String;

    move-result-object v20

    .line 374
    .local v20, prefix:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .local v4, arr$:[Ljava/io/File;
    array-length v0, v4

    move/from16 v18, v0

    .local v18, len$:I
    const/4 v10, 0x0

    .end local v11           #i$:I
    .restart local v10       #i$:I
    :goto_1
    move/from16 v0, v18

    if-ge v10, v0, :cond_0

    aget-object v7, v4, v10

    .line 375
    .local v7, f:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    .line 376
    .local v19, name:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v21

    cmp-long v21, v21, v15

    if-gez v21, :cond_2

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 377
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 379
    .local v14, idStr:Ljava/lang/String;
    :try_start_0
    invoke-static {v14}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 380
    .local v12, id:J
    invoke-virtual {v5, v12, v13}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupName(J)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->deleteConfig(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    .end local v12           #id:J
    :goto_2
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 374
    .end local v14           #idStr:Ljava/lang/String;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 388
    .end local v4           #arr$:[Ljava/io/File;
    .end local v5           #backup:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;
    .end local v6           #dir:Ljava/io/File;
    .end local v7           #f:Ljava/io/File;
    .end local v8           #fileInTheme:Ljava/io/File;
    .end local v9           #gadgetId:I
    .end local v10           #i$:I
    .end local v15           #lastModified:J
    .end local v18           #len$:I
    .end local v19           #name:Ljava/lang/String;
    .end local v20           #prefix:Ljava/lang/String;
    .restart local v11       #i$:I
    :cond_3
    return-void

    .line 381
    .end local v11           #i$:I
    .restart local v4       #arr$:[Ljava/io/File;
    .restart local v5       #backup:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;
    .restart local v6       #dir:Ljava/io/File;
    .restart local v7       #f:Ljava/io/File;
    .restart local v8       #fileInTheme:Ljava/io/File;
    .restart local v9       #gadgetId:I
    .restart local v10       #i$:I
    .restart local v14       #idStr:Ljava/lang/String;
    .restart local v15       #lastModified:J
    .restart local v18       #len$:I
    .restart local v19       #name:Ljava/lang/String;
    .restart local v20       #prefix:Ljava/lang/String;
    :catch_0
    move-exception v21

    goto :goto_2

    .line 354
    :array_0
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public getEditView()Landroid/view/View;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mEditView:Landroid/view/View;

    return-object v0
.end method

.method public onAdded()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 291
    invoke-super {p0, p1}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->onClick(Landroid/view/View;)V

    .line 292
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mEditView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 293
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK_RESOURCE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.miui.android.resourcebrowser.TRACK_ID"

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getItemId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string v1, "android.intent.extra.SHOW_COMPONENT_NAME"

    const-string v2, "clock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const-string v1, "android.intent.extra.SHOW_COMPONENT_SIZE"

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getSizeDescript()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string v1, "com.miui.android.resourcebrowser.CURRENT_USING_PATH"

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->loadConfig()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mRequestCode:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 305
    :goto_0
    return-void

    .line 302
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->onCreate()V

    .line 72
    iget v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    .line 73
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->setupViews()V

    .line 74
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Clock;->init()V

    .line 76
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    if-nez v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->updateActualGadget()V

    .line 82
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 84
    return-void

    .line 79
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onCreate()V

    goto :goto_0
.end method

.method public onDeleted()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onDeleted()V

    .line 104
    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->onDeleted()V

    .line 105
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    .line 89
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Clock;->pause()V

    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onDestroy()V

    .line 93
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    .line 110
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Clock;->pause()V

    .line 111
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onPause()V

    .line 114
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->onResume()V

    .line 119
    iget v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    .line 120
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    .line 122
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Clock;->resume()V

    .line 124
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    .line 129
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onStart()V

    .line 132
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    .line 137
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Clock;->pause()V

    .line 138
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onStop()V

    .line 141
    :cond_0
    return-void
.end method

.method public saveConfig(Ljava/lang/String;)Z
    .locals 7
    .parameter "config"

    .prologue
    .line 152
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    iget-object v4, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getItemId()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupPath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, dst:Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    invoke-virtual {v3}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getEntryName()Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, entryName:Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    invoke-virtual {v3}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getSystemGadgetTheme()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, systemTheme:Ljava/lang/String;
    invoke-static {v0, p1, v1, v2}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->extractClock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    invoke-super {p0, p1}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->saveConfig(Ljava/lang/String;)Z

    move-result v3

    .line 160
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method updateActualGadget()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 181
    const/4 v6, 0x0

    .line 182
    .local v6, view:Landroid/view/View;
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    iget-object v8, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getItemId()J

    move-result-wide v9

    invoke-virtual {v7, v8, v9, v10}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->prepareBackup(Landroid/content/Context;J)Z

    move-result v7

    if-nez v7, :cond_0

    .line 183
    sget-object v7, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->TAG:Ljava/lang/String;

    const-string v8, "prepare back up failed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    iget-object v8, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getItemId()J

    move-result-wide v9

    invoke-virtual {v7, v8, v9, v10}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupPath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, backup:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/Utils;->parseManifestInZip(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 189
    .local v4, root:Lorg/w3c/dom/Element;
    if-eqz v4, :cond_b

    .line 190
    const-string v7, "type"

    invoke-interface {v4, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, type:Ljava/lang/String;
    const-string v7, "flip"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 192
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    const v8, 0x7f030013

    invoke-static {v7, v8, v11}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 197
    :goto_0
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mErrorDisplay:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 198
    instance-of v7, v6, Lcom/miui/home/launcher/gadget/Clock$ClockStyle;

    if-eqz v7, :cond_1

    move-object v7, v6

    .line 199
    check-cast v7, Lcom/miui/home/launcher/gadget/Clock$ClockStyle;

    invoke-interface {v7, v0}, Lcom/miui/home/launcher/gadget/Clock$ClockStyle;->initConfig(Ljava/lang/String;)V

    .line 205
    .end local v5           #type:Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    .line 206
    .local v2, old:Lcom/miui/home/launcher/gadget/Gadget;
    if-eqz v2, :cond_5

    .line 207
    move-object v3, v2

    .line 208
    .local v3, oldGadget:Lcom/miui/home/launcher/gadget/Gadget;
    iget v7, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_2

    .line 209
    invoke-interface {v3}, Lcom/miui/home/launcher/gadget/Gadget;->onPause()V

    .line 211
    :cond_2
    iget v7, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_3

    .line 212
    invoke-interface {v3}, Lcom/miui/home/launcher/gadget/Gadget;->onStop()V

    .line 214
    :cond_3
    iget v7, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_4

    .line 215
    invoke-interface {v3}, Lcom/miui/home/launcher/gadget/Gadget;->onDestroy()V

    .line 217
    :cond_4
    check-cast v2, Landroid/view/View;

    .end local v2           #old:Lcom/miui/home/launcher/gadget/Gadget;
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->removeView(Landroid/view/View;)V

    .line 220
    .end local v3           #oldGadget:Lcom/miui/home/launcher/gadget/Gadget;
    :cond_5
    instance-of v7, v6, Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v7, :cond_c

    .line 221
    invoke-virtual {p0, v6}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->addView(Landroid/view/View;)V

    .line 222
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 223
    invoke-direct {p0, v4, v6}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->adjustByAttributes(Lorg/w3c/dom/Element;Landroid/view/View;)V

    .line 224
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mEditView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->bringToFront()V

    move-object v1, v6

    .line 226
    check-cast v1, Lcom/miui/home/launcher/gadget/Gadget;

    .line 227
    .local v1, newGadget:Lcom/miui/home/launcher/gadget/Gadget;
    iget v7, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_6

    .line 228
    invoke-interface {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onCreate()V

    .line 230
    :cond_6
    iget v7, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_7

    .line 231
    invoke-interface {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onStart()V

    .line 233
    :cond_7
    iget v7, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_8

    .line 234
    invoke-interface {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    .line 237
    :cond_8
    instance-of v7, v1, Lcom/miui/home/launcher/gadget/Clock$ClockStyle;

    if-eqz v7, :cond_9

    .line 238
    iget-object v8, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    move-object v7, v1

    check-cast v7, Lcom/miui/home/launcher/gadget/Clock$ClockStyle;

    invoke-virtual {v8, v7}, Lcom/miui/home/launcher/gadget/Clock;->setClockStyle(Lcom/miui/home/launcher/gadget/Clock$ClockStyle;)V

    .line 240
    :cond_9
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    .line 246
    .end local v1           #newGadget:Lcom/miui/home/launcher/gadget/Gadget;
    :goto_2
    return-void

    .line 194
    .restart local v5       #type:Ljava/lang/String;
    :cond_a
    new-instance v6, Lcom/miui/home/launcher/gadget/AwesomeClock;

    .end local v6           #view:Landroid/view/View;
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/miui/home/launcher/gadget/AwesomeClock;-><init>(Landroid/content/Context;)V

    .restart local v6       #view:Landroid/view/View;
    goto :goto_0

    .line 202
    .end local v5           #type:Ljava/lang/String;
    :cond_b
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mErrorDisplay:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 242
    :cond_c
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    invoke-virtual {v7, v11}, Lcom/miui/home/launcher/gadget/Clock;->setClockStyle(Lcom/miui/home/launcher/gadget/Clock$ClockStyle;)V

    .line 243
    iput-object v11, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    goto :goto_2
.end method

.method public updateConfig(Landroid/os/Bundle;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 145
    const-string v1, "com.miui.android.resourcebrowser.PICKED_RESOURCE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, newResource:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->saveConfig(Ljava/lang/String;)Z

    .line 147
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->updateActualGadget()V

    .line 148
    return-void
.end method
