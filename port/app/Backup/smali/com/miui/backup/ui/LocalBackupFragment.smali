.class public Lcom/miui/backup/ui/LocalBackupFragment;
.super Landroid/app/ListFragment;
.source "LocalBackupFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/miui/backup/SDCardMonitor$SdCardStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/backup/ui/LocalBackupFragment$BatchDeleteBackupTask;,
        Lcom/miui/backup/ui/LocalBackupFragment$BackupAdapter;,
        Lcom/miui/backup/ui/LocalBackupFragment$ModeCallback;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBackupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBackupListAdapter:Lcom/miui/backup/ui/LocalBackupFragment$BackupAdapter;

.field private mEditableListView:Landroid/widget/EditableListView;

.field private mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

.field private mSortDescComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleImage:Landroid/widget/ImageView;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 422
    new-instance v0, Lcom/miui/backup/ui/LocalBackupFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/backup/ui/LocalBackupFragment$1;-><init>(Lcom/miui/backup/ui/LocalBackupFragment;)V

    iput-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mSortDescComparator:Ljava/util/Comparator;

    .line 527
    return-void
.end method

.method static synthetic access$000(Lcom/miui/backup/ui/LocalBackupFragment;)Landroid/widget/EditableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mEditableListView:Landroid/widget/EditableListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/backup/ui/LocalBackupFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/backup/ui/LocalBackupFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mBackupList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/backup/ui/LocalBackupFragment;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/backup/ui/LocalBackupFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/miui/backup/ui/LocalBackupFragment;->refreshBackupList()V

    return-void
.end method

.method private convertOldTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "title"

    .prologue
    .line 237
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 238
    .local v1, length:I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .local v2, titleBuilder:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 242
    .local v3, underLineIndex:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 243
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 244
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 245
    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 242
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_0
    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 256
    .end local v0           #index:I
    .end local v1           #length:I
    .end local v2           #titleBuilder:Ljava/lang/StringBuilder;
    .end local v3           #underLineIndex:I
    :catch_0
    move-exception v4

    .line 259
    :cond_1
    :goto_3
    return-object p1

    .line 251
    .restart local v0       #index:I
    .restart local v1       #length:I
    .restart local v2       #titleBuilder:Ljava/lang/StringBuilder;
    .restart local v3       #underLineIndex:I
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 254
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_3
.end method

.method private getBackupList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .local v3, fileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v7, Lcom/miui/backup/Customization;->BACKUP_BASE_DIR:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 409
    .local v1, contents:[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 410
    move-object v0, v1

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v0, v5

    .line 411
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 412
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 413
    .local v4, fileName:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 414
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    .end local v4           #fileName:Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 419
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_1
    return-object v3
.end method

.method private getItemsCounts(Ljava/io/File;)[I
    .locals 9
    .parameter "root"

    .prologue
    const/4 v8, 0x1

    .line 433
    const/4 v3, 0x0

    .line 435
    .local v3, ret:[I
    new-instance v2, Ljava/io/File;

    const-string v6, "backup_config.db"

    invoke-direct {v2, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 436
    .local v2, restoreDbFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v4, v3

    .line 468
    .end local v3           #ret:[I
    .local v4, ret:[I
    :goto_0
    return-object v4

    .line 438
    .end local v4           #ret:[I
    .restart local v3       #ret:[I
    :cond_0
    new-instance v1, Lcom/miui/backup/DbAdapter;

    iget-object v6, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lcom/miui/backup/DbAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 439
    .local v1, dbAdapter:Lcom/miui/backup/DbAdapter;
    const/4 v0, 0x0

    .line 441
    .local v0, appsCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v1}, Lcom/miui/backup/DbAdapter;->open()Lcom/miui/backup/DbAdapter;

    .line 442
    invoke-virtual {v1}, Lcom/miui/backup/DbAdapter;->fetchAllApps()Landroid/database/Cursor;

    move-result-object v0

    .line 444
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 445
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_7

    .line 446
    if-nez v3, :cond_1

    .line 447
    const/4 v6, 0x2

    new-array v3, v6, [I

    .end local v3           #ret:[I
    fill-array-data v3, :array_0

    .line 449
    .restart local v3       #ret:[I
    :cond_1
    const-string v6, "appType"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 450
    .local v5, type:I
    if-ne v5, v8, :cond_4

    .line 451
    const/4 v6, 0x1

    aget v7, v3, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v3, v6

    .line 455
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 458
    .end local v5           #type:I
    :catch_0
    move-exception v6

    .line 461
    if-eqz v0, :cond_2

    .line 462
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 464
    :cond_2
    if-eqz v1, :cond_3

    .line 465
    invoke-virtual {v1}, Lcom/miui/backup/DbAdapter;->close()V

    :cond_3
    :goto_3
    move-object v4, v3

    .line 468
    .end local v3           #ret:[I
    .restart local v4       #ret:[I
    goto :goto_0

    .line 453
    .end local v4           #ret:[I
    .restart local v3       #ret:[I
    .restart local v5       #type:I
    :cond_4
    const/4 v6, 0x0

    :try_start_1
    aget v7, v3, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v3, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 461
    .end local v5           #type:I
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_5

    .line 462
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 464
    :cond_5
    if-eqz v1, :cond_6

    .line 465
    invoke-virtual {v1}, Lcom/miui/backup/DbAdapter;->close()V

    :cond_6
    throw v6

    .line 461
    :cond_7
    if-eqz v0, :cond_8

    .line 462
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 464
    :cond_8
    if-eqz v1, :cond_3

    .line 465
    invoke-virtual {v1}, Lcom/miui/backup/DbAdapter;->close()V

    goto :goto_3

    .line 447
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private getSummary(JII)Ljava/lang/String;
    .locals 9
    .parameter "size"
    .parameter "sysAppCount"
    .parameter "apkCount"

    .prologue
    const-wide/16 v7, 0x400

    .line 263
    const-string v4, ""

    .line 264
    .local v4, summary:Ljava/lang/String;
    div-long v5, p1, v7

    div-long v2, v5, v7

    .line 265
    .local v2, sizeMB:J
    div-long v0, p1, v7

    .line 267
    .local v0, sizeKB:J
    const-wide/16 v5, 0x1

    cmp-long v5, v2, v5

    if-lez v5, :cond_2

    .line 268
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "MB,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 272
    :goto_0
    if-lez p3, :cond_0

    .line 273
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f070007

    invoke-virtual {p0, v6}, Lcom/miui/backup/ui/LocalBackupFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 275
    :cond_0
    if-lez p4, :cond_1

    .line 276
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f070008

    invoke-virtual {p0, v6}, Lcom/miui/backup/ui/LocalBackupFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 278
    :cond_1
    return-object v4

    .line 270
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "KB,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getTableFromDb(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 11
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 282
    new-instance v2, Ljava/io/File;

    sget-object v9, Lcom/miui/backup/Customization;->BACKUP_BASE_DIR:Ljava/io/File;

    invoke-direct {v2, v9, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 283
    .local v2, lDir:Ljava/io/File;
    invoke-static {v2}, Lcom/miui/backup/BackupUtils;->getProgress(Ljava/io/File;)I

    move-result v3

    .line 284
    .local v3, progress:I
    const/4 v0, 0x0

    .line 285
    .local v0, isFailed:Z
    const/4 v9, 0x2

    if-ne v3, v9, :cond_0

    .line 286
    const/4 v7, 0x0

    .line 315
    :goto_0
    return-object v7

    .line 287
    :cond_0
    if-ne v3, v10, :cond_1

    .line 288
    const/4 v0, 0x1

    .line 291
    :cond_1
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    .line 292
    .local v7, table:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/miui/backup/ui/LocalBackupFragment;->convertOldTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 294
    .local v8, title:Ljava/lang/String;
    const/4 v1, 0x0

    .line 295
    .local v1, itemCounts:[I
    if-nez v0, :cond_2

    .line 297
    invoke-direct {p0, v2}, Lcom/miui/backup/ui/LocalBackupFragment;->getItemsCounts(Ljava/io/File;)[I

    move-result-object v1

    .line 298
    if-nez v1, :cond_2

    .line 299
    const/4 v0, 0x1

    .line 304
    :cond_2
    invoke-static {v2}, Lcom/miui/backup/SysUtils;->getFileSize(Ljava/io/File;)J

    move-result-wide v4

    .line 305
    .local v4, size:J
    const v9, 0x7f070009

    invoke-virtual {p0, v9}, Lcom/miui/backup/ui/LocalBackupFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 306
    .local v6, summary:Ljava/lang/String;
    if-nez v0, :cond_3

    .line 307
    const/4 v9, 0x0

    aget v9, v1, v9

    aget v10, v1, v10

    invoke-direct {p0, v4, v5, v9, v10}, Lcom/miui/backup/ui/LocalBackupFragment;->getSummary(JII)Ljava/lang/String;

    move-result-object v6

    .line 310
    :cond_3
    const-string v9, "failed"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v9, "fileName"

    invoke-virtual {v7, v9, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v9, "title"

    invoke-virtual {v7, v9, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v9, "blockSize"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v9, "summary"

    invoke-virtual {v7, v9, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getTableFromXml(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 23
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    new-instance v7, Ljava/io/File;

    sget-object v21, Lcom/miui/backup/Customization;->BACKUP_BASE_DIR:Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 320
    .local v7, backupDir:Ljava/io/File;
    new-instance v12, Ljava/io/File;

    const-string v21, "descript"

    move-object/from16 v0, v21

    invoke-direct {v12, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 321
    .local v12, descriptDir:Ljava/io/File;
    new-instance v6, Lcom/miui/backup/BackupDescript;

    invoke-direct {v6}, Lcom/miui/backup/BackupDescript;-><init>()V

    .line 322
    .local v6, backupDescript:Lcom/miui/backup/BackupDescript;
    invoke-virtual {v6, v7}, Lcom/miui/backup/BackupDescript;->readBackup(Ljava/io/File;)Z

    move-result v13

    .line 324
    .local v13, hasDescript:Z
    const/16 v20, 0x0

    .line 325
    .local v20, table:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v19, 0x0

    .line 326
    .local v19, sysAppCount:I
    const/4 v4, 0x0

    .line 327
    .local v4, apkCount:I
    const-wide/16 v16, 0x0

    .line 328
    .local v16, size:J
    move-object/from16 v11, p1

    .line 330
    .local v11, date:Ljava/lang/String;
    if-eqz v13, :cond_2

    .line 331
    iget-object v11, v6, Lcom/miui/backup/BackupDescript;->mDate:Ljava/lang/String;

    .line 332
    iget-object v0, v6, Lcom/miui/backup/BackupDescript;->mSize:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 333
    iget-object v0, v6, Lcom/miui/backup/BackupDescript;->mSysAppCount:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 334
    iget-object v0, v6, Lcom/miui/backup/BackupDescript;->mApkCount:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 353
    :cond_0
    if-eqz v13, :cond_1

    .line 354
    new-instance v20, Ljava/util/Hashtable;

    .end local v20           #table:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct/range {v20 .. v20}, Ljava/util/Hashtable;-><init>()V

    .line 356
    .restart local v20       #table:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v21, "failed"

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v21, "fileName"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v21, "title"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v21, "blockSize"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/backup/ui/LocalBackupFragment;->getSummary(JII)Ljava/lang/String;

    move-result-object v18

    .line 362
    .local v18, summary:Ljava/lang/String;
    const-string v21, "summary"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .end local v18           #summary:Ljava/lang/String;
    :cond_1
    return-object v20

    .line 335
    :cond_2
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 336
    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 337
    .local v10, backupItems:[Ljava/io/File;
    if-eqz v10, :cond_0

    .line 338
    const/4 v13, 0x1

    .line 339
    move-object v5, v10

    .local v5, arr$:[Ljava/io/File;
    array-length v15, v5

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_0
    if-ge v14, v15, :cond_0

    aget-object v8, v5, v14

    .line 340
    .local v8, backupItem:Ljava/io/File;
    new-instance v9, Lcom/miui/backup/BackupItemDescript;

    invoke-direct {v9}, Lcom/miui/backup/BackupItemDescript;-><init>()V

    .line 341
    .local v9, backupItemDescript:Lcom/miui/backup/BackupItemDescript;
    invoke-virtual {v9, v8}, Lcom/miui/backup/BackupItemDescript;->read(Ljava/io/File;)Z

    .line 343
    iget-object v0, v9, Lcom/miui/backup/BackupItemDescript;->mSize:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    add-long v16, v16, v21

    .line 344
    invoke-virtual {v9}, Lcom/miui/backup/BackupItemDescript;->getType()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 345
    add-int/lit8 v4, v4, 0x1

    .line 339
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 347
    :cond_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_1
.end method

.method private refreshBackupList()V
    .locals 9

    .prologue
    .line 369
    :try_start_0
    iget-object v6, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mBackupList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 370
    iget-object v6, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

    invoke-virtual {v6}, Lcom/miui/backup/SDCardMonitor;->isSdCardAvailable()Z

    move-result v6

    if-nez v6, :cond_0

    .line 371
    iget-object v6, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mBackupListAdapter:Lcom/miui/backup/ui/LocalBackupFragment$BackupAdapter;

    invoke-virtual {v6}, Lcom/miui/backup/ui/LocalBackupFragment$BackupAdapter;->notifyDataSetChanged()V

    .line 404
    :goto_0
    return-void

    .line 374
    :cond_0
    invoke-direct {p0}, Lcom/miui/backup/ui/LocalBackupFragment;->getBackupList()Ljava/util/List;

    move-result-object v3

    .line 376
    .local v3, listContent:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 377
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 378
    .local v1, fileName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 380
    .local v5, table:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_1
    invoke-direct {p0, v1}, Lcom/miui/backup/ui/LocalBackupFragment;->getTableFromXml(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v5

    .line 381
    if-nez v5, :cond_1

    .line 382
    invoke-direct {p0, v1}, Lcom/miui/backup/ui/LocalBackupFragment;->getTableFromDb(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v5

    .line 384
    :cond_1
    if-nez v5, :cond_2

    .line 376
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 387
    :cond_2
    iget-object v6, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mBackupList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 388
    :catch_0
    move-exception v6

    goto :goto_2

    .line 393
    .end local v1           #fileName:Ljava/lang/String;
    .end local v5           #table:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    :try_start_2
    iget-object v6, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mBackupList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 394
    iget-object v6, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mBackupList:Ljava/util/List;

    iget-object v7, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mSortDescComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 395
    iget-object v6, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mBackupList:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Hashtable;

    .line 396
    .local v4, recently:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "failed"

    invoke-virtual {v4, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4

    .line 397
    const-string v6, "summary"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "summary"

    invoke-virtual {v4, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f07000a

    invoke-virtual {p0, v8}, Lcom/miui/backup/ui/LocalBackupFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 403
    .end local v2           #i:I
    .end local v3           #listContent:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #recently:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    :goto_3
    iget-object v6, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mBackupListAdapter:Lcom/miui/backup/ui/LocalBackupFragment$BackupAdapter;

    invoke-virtual {v6}, Lcom/miui/backup/ui/LocalBackupFragment$BackupAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 400
    :catch_1
    move-exception v0

    .line 401
    .local v0, e:Landroid/database/SQLException;
    iget-object v6, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mBackupList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    goto :goto_3
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x2

    .line 100
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/miui/backup/ui/LocalBackupFragment;->getView()Landroid/view/View;

    move-result-object v7

    .line 102
    .local v7, view:Landroid/view/View;
    const v0, 0x7f0a000e

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mTitleImage:Landroid/widget/ImageView;

    .line 103
    const v0, 0x7f0a000f

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mSummaryText:Landroid/widget/TextView;

    .line 105
    invoke-virtual {p0}, Lcom/miui/backup/ui/LocalBackupFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Landroid/widget/EditableListView;

    iput-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mEditableListView:Landroid/widget/EditableListView;

    .line 106
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mEditableListView:Landroid/widget/EditableListView;

    invoke-virtual {v0, p0}, Landroid/widget/EditableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mEditableListView:Landroid/widget/EditableListView;

    invoke-virtual {v0, p0}, Landroid/widget/EditableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 108
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mEditableListView:Landroid/widget/EditableListView;

    new-instance v1, Lcom/miui/backup/ui/LocalBackupFragment$ModeCallback;

    invoke-virtual {p0}, Lcom/miui/backup/ui/LocalBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mEditableListView:Landroid/widget/EditableListView;

    invoke-direct {v1, p0, v2, v3}, Lcom/miui/backup/ui/LocalBackupFragment$ModeCallback;-><init>(Lcom/miui/backup/ui/LocalBackupFragment;Landroid/app/Activity;Landroid/widget/EditableListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setMultiChoiceModeListener(Landroid/widget/EditableListView$EditableListViewListener;)V

    .line 110
    new-instance v0, Lcom/miui/backup/ui/LocalBackupFragment$BackupAdapter;

    iget-object v2, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mBackupList:Ljava/util/List;

    const v4, 0x7f030006

    new-array v5, v8, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "title"

    aput-object v6, v5, v1

    const/4 v1, 0x1

    const-string v6, "summary"

    aput-object v6, v5, v1

    new-array v6, v8, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/backup/ui/LocalBackupFragment$BackupAdapter;-><init>(Lcom/miui/backup/ui/LocalBackupFragment;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mBackupListAdapter:Lcom/miui/backup/ui/LocalBackupFragment$BackupAdapter;

    .line 115
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mEditableListView:Landroid/widget/EditableListView;

    iget-object v1, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mBackupListAdapter:Lcom/miui/backup/ui/LocalBackupFragment$BackupAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    invoke-direct {p0}, Lcom/miui/backup/ui/LocalBackupFragment;->refreshBackupList()V

    .line 118
    return-void

    .line 110
    nop

    :array_0
    .array-data 0x4
        0x16t 0x0t 0x2t 0x1t
        0x10t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 76
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/miui/backup/ui/LocalBackupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mActivity:Landroid/app/Activity;

    .line 78
    invoke-virtual {p0, v4}, Lcom/miui/backup/ui/LocalBackupFragment;->setHasOptionsMenu(Z)V

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mBackupList:Ljava/util/List;

    .line 81
    iget-object v2, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/miui/backup/SDCardMonitor;->getSDCardMonitor(Landroid/content/Context;)Lcom/miui/backup/SDCardMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

    .line 83
    iget-object v2, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mActivity:Landroid/app/Activity;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 84
    .local v1, pm:Landroid/os/PowerManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 87
    invoke-static {}, Lcom/miui/backup/AppInitializer;->getInstance()Lcom/miui/backup/AppInitializer;

    move-result-object v0

    .line 88
    .local v0, appInit:Lcom/miui/backup/AppInitializer;
    invoke-virtual {v0}, Lcom/miui/backup/AppInitializer;->init()V

    .line 89
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v4, 0x2

    .line 145
    invoke-interface {p1, v4}, Landroid/view/Menu;->removeGroup(I)V

    .line 146
    invoke-virtual {p0}, Lcom/miui/backup/ui/LocalBackupFragment;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    :goto_0
    return-void

    .line 150
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x7f070003

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 151
    .local v0, addMenu:Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 152
    iget-object v1, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

    invoke-virtual {v1}, Lcom/miui/backup/SDCardMonitor;->isSdCardAvailable()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 94
    const v1, 0x7f030007

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 1
    .parameter "hidden"

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onHiddenChanged(Z)V

    .line 137
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mEditableListView:Landroid/widget/EditableListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mEditableListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mEditableListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 139
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mBackupListAdapter:Lcom/miui/backup/ui/LocalBackupFragment$BackupAdapter;

    invoke-virtual {v0}, Lcom/miui/backup/ui/LocalBackupFragment$BackupAdapter;->notifyDataSetChanged()V

    .line 141
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mBackupList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 172
    const-string v1, "failed"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 173
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 174
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/miui/backup/ui/RestoreSelectActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    const-string v2, "ext_backup"

    const-string v3, "fileName"

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0, v1}, Lcom/miui/backup/ui/LocalBackupFragment;->startActivity(Landroid/content/Intent;)V

    .line 186
    :goto_0
    return-void

    .line 178
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070017

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 157
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 164
    const/4 v0, 0x0

    .line 166
    :goto_0
    return v0

    .line 159
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/miui/backup/ui/BackupSelectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    invoke-virtual {p0, v0}, Lcom/miui/backup/ui/LocalBackupFragment;->startActivity(Landroid/content/Intent;)V

    .line 166
    const/4 v0, 0x1

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 130
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

    invoke-virtual {v0, p0}, Lcom/miui/backup/SDCardMonitor;->removeSdCardStatusListener(Lcom/miui/backup/SDCardMonitor$SdCardStatusListener;)V

    .line 131
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mEditableListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 132
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 123
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

    invoke-virtual {v0, p0}, Lcom/miui/backup/SDCardMonitor;->addSdCardStatusListener(Lcom/miui/backup/SDCardMonitor$SdCardStatusListener;)V

    .line 124
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/backup/ui/LocalBackupFragment;->onSdcardStatusChanged(Z)V

    .line 125
    return-void
.end method

.method public onSdcardStatusChanged(Z)V
    .locals 2
    .parameter "mount"

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/miui/backup/ui/LocalBackupFragment;->refreshBackupList()V

    .line 224
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

    invoke-virtual {v0}, Lcom/miui/backup/SDCardMonitor;->isSdCardAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mTitleImage:Landroid/widget/ImageView;

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 226
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mSummaryText:Landroid/widget/TextView;

    const v1, 0x7f070078

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 231
    :goto_0
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 232
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mTitleImage:Landroid/widget/ImageView;

    const v1, 0x30200ec

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupFragment;->mSummaryText:Landroid/widget/TextView;

    const v1, 0x30c0038

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
