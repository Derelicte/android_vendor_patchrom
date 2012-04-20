.class public Lcom/miui/antispam/firewall/BlackWhiteList;
.super Landroid/app/Fragment;
.source "BlackWhiteList.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# static fields
.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

.field private mBlackSelected:Ljava/lang/Boolean;

.field private mList:Landroid/widget/ExpandableListView;

.field private mSelectedId:Ljava/lang/String;

.field private mSelectedNotes:Ljava/lang/String;

.field private mSelectedNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/antispam/firewall/BlackWhiteList;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/antispam/firewall/BlackWhiteList;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/miui/antispam/firewall/BlackWhiteList;->addBlacklist(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/antispam/firewall/BlackWhiteList;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/miui/antispam/firewall/BlackWhiteList;->addWhitelist(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/antispam/firewall/BlackWhiteList;)Lcom/miui/antispam/firewall/BlackWhiteListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    return-object v0
.end method

.method private addBlacklist(Ljava/lang/String;)V
    .locals 1
    .parameter "number"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->getBlackListAdapter()Lcom/miui/antispam/firewall/BlackListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/antispam/firewall/BlackListAdapter;->add(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->load()V

    .line 347
    return-void
.end method

.method private addManually()V
    .locals 3

    .prologue
    .line 298
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 299
    iget-object v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/miui/antispam/firewall/AddFirewall;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 301
    iget-object v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mBlackSelected:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    sget-object v1, Lcom/miui/antispam/firewall/AddFirewall;->MODE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    :goto_0
    const/16 v1, 0x67

    invoke-virtual {p0, v0, v1}, Lcom/miui/antispam/firewall/BlackWhiteList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 308
    return-void

    .line 304
    :cond_0
    sget-object v1, Lcom/miui/antispam/firewall/AddFirewall;->MODE:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private addWhitelist(Ljava/lang/String;)V
    .locals 1
    .parameter "number"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->getWhiteListAdapter()Lcom/miui/antispam/firewall/WhiteListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/antispam/firewall/WhiteListAdapter;->add(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->load()V

    .line 353
    return-void
.end method

.method private edit()V
    .locals 3

    .prologue
    .line 328
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 329
    iget-object v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/miui/antispam/firewall/AddFirewall;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 330
    const-string v1, "id"

    iget-object v2, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const-string v1, "number"

    iget-object v2, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string v1, "notes"

    iget-object v2, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedNotes:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    iget-object v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mBlackSelected:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    sget-object v1, Lcom/miui/antispam/firewall/AddFirewall;->MODE:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    :goto_0
    const/16 v1, 0x67

    invoke-virtual {p0, v0, v1}, Lcom/miui/antispam/firewall/BlackWhiteList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 341
    return-void

    .line 337
    :cond_0
    sget-object v1, Lcom/miui/antispam/firewall/AddFirewall;->MODE:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private importBatch([Ljava/lang/String;I)V
    .locals 3
    .parameter "phoneNumbers"
    .parameter "requestCode"

    .prologue
    const/4 v2, 0x0

    .line 364
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 366
    .local v0, pDialog:Landroid/app/ProgressDialog;
    const/16 v1, 0x65

    if-ne p2, v1, :cond_0

    .line 367
    const v1, 0x7f060042

    invoke-virtual {p0, v1}, Lcom/miui/antispam/firewall/BlackWhiteList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 372
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 373
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 375
    new-instance v1, Lcom/miui/antispam/firewall/BlackWhiteList$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/miui/antispam/firewall/BlackWhiteList$1;-><init>(Lcom/miui/antispam/firewall/BlackWhiteList;Landroid/app/ProgressDialog;[Ljava/lang/String;I)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/miui/antispam/firewall/BlackWhiteList$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 406
    return-void

    .line 369
    :cond_0
    const v1, 0x7f060043

    invoke-virtual {p0, v1}, Lcom/miui/antispam/firewall/BlackWhiteList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private pick()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mBlackSelected:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x65

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/antispam/firewall/BlackWhiteList;->startAddMemberIntent(I)V

    .line 314
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->load()V

    .line 315
    return-void

    .line 311
    :cond_0
    const/16 v0, 0x66

    goto :goto_0
.end method

.method private remove()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mBlackSelected:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->getBlackListAdapter()Lcom/miui/antispam/firewall/BlackListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/antispam/firewall/BlackListAdapter;->remove(Ljava/lang/String;)V

    .line 324
    :goto_0
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->load()V

    .line 325
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->getWhiteListAdapter()Lcom/miui/antispam/firewall/WhiteListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/antispam/firewall/WhiteListAdapter;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startAddMemberIntent(I)V
    .locals 2
    .parameter "requestCode"

    .prologue
    .line 356
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.GET_MULTIPLE_PHONES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const-string v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    invoke-virtual {p0, v0, p1}, Lcom/miui/antispam/firewall/BlackWhiteList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 361
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 19
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 410
    const/16 v2, 0x67

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-virtual {v2}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->load()V

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    if-eqz p3, :cond_0

    .line 417
    const/16 v2, 0x65

    move/from16 v0, p1

    if-eq v0, v2, :cond_2

    const/16 v2, 0x66

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 418
    :cond_2
    const-string v2, "com.android.contacts.extra.PHONE_URIS"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v18

    .line 419
    .local v18, uris:[Landroid/os/Parcelable;
    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    array-length v2, v0

    if-eqz v2, :cond_0

    .line 423
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .local v13, idSetBuilder:Ljava/lang/StringBuilder;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .local v15, numberEntries:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x1

    .line 426
    .local v11, first:Z
    move-object/from16 v8, v18

    .local v8, arr$:[Landroid/os/Parcelable;
    array-length v14, v8

    .local v14, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_1
    if-ge v12, v14, :cond_6

    aget-object v16, v8, v12

    .local v16, p:Landroid/os/Parcelable;
    move-object/from16 v17, v16

    .line 427
    check-cast v17, Landroid/net/Uri;

    .line 428
    .local v17, uri:Landroid/net/Uri;
    const-string v2, "content"

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 429
    if-eqz v11, :cond_4

    .line 430
    const/4 v11, 0x0

    .line 431
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    :cond_3
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 433
    :cond_4
    const/16 v2, 0x2c

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 435
    :cond_5
    const-string v2, "tel"

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 436
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 440
    .end local v16           #p:Landroid/os/Parcelable;
    .end local v17           #uri:Landroid/net/Uri;
    :cond_6
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 441
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v15, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/miui/antispam/firewall/BlackWhiteList;->importBatch([Ljava/lang/String;I)V

    .line 446
    :cond_7
    if-nez v11, :cond_0

    .line 447
    const/4 v9, 0x0

    .line 448
    .local v9, cursor:Landroid/database/Cursor;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 450
    .local v5, whereClause:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/antispam/firewall/BlackWhiteList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/miui/antispam/firewall/BlackWhiteList;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 454
    .end local v5           #whereClause:Ljava/lang/String;
    :cond_8
    if-eqz v9, :cond_0

    .line 458
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 460
    .local v10, entries:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 461
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 464
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_9
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 467
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 468
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v10, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/miui/antispam/firewall/BlackWhiteList;->importBatch([Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 90
    iput-object p1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mActivity:Landroid/app/Activity;

    .line 91
    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 1
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 294
    invoke-virtual {p1, p2}, Landroid/widget/ExpandableListView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "menuItem"

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x1400

    const/4 v3, 0x1

    .line 204
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 205
    .local v1, info:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    iget-wide v4, v1, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v4, v5}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v2

    .line 207
    .local v2, type:I
    if-ne v2, v3, :cond_0

    .line 208
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 258
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    .line 262
    :goto_0
    return v3

    .line 210
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->addManually()V

    goto :goto_0

    .line 214
    :pswitch_2
    invoke-direct {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->pick()V

    goto :goto_0

    .line 218
    :pswitch_3
    invoke-direct {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->remove()V

    goto :goto_0

    .line 222
    :pswitch_4
    invoke-direct {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->addManually()V

    goto :goto_0

    .line 226
    :pswitch_5
    invoke-direct {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->pick()V

    goto :goto_0

    .line 230
    :pswitch_6
    invoke-direct {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->remove()V

    goto :goto_0

    .line 234
    :pswitch_7
    invoke-direct {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->edit()V

    goto :goto_0

    .line 238
    :pswitch_8
    invoke-direct {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->edit()V

    goto :goto_0

    .line 242
    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    const-string v5, "tel"

    iget-object v6, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedNumber:Ljava/lang/String;

    invoke-static {v5, v6, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 244
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 245
    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/BlackWhiteList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 250
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_a
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    const-string v5, "smsto"

    iget-object v6, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedNumber:Ljava/lang/String;

    invoke-static {v5, v6, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 252
    .restart local v0       #i:Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 253
    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/BlackWhiteList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 262
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 12
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 108
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v3, p3

    .line 110
    check-cast v3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 111
    .local v3, info:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    iget-wide v7, v3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v7, v8}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v6

    .line 112
    .local v6, type:I
    iget-wide v7, v3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v7, v8}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    .line 113
    .local v2, group:I
    iget-wide v7, v3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v7, v8}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v0

    .line 116
    .local v0, child:I
    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 118
    const/4 v7, 0x1

    if-ne v2, v7, :cond_5

    .line 120
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mBlackSelected:Ljava/lang/Boolean;

    .line 122
    iget-object v7, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-virtual {v7}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->getBlackListAdapter()Lcom/miui/antispam/firewall/BlackListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/antispam/firewall/BlackListAdapter;->isEmpty()Z

    move-result v4

    .line 124
    .local v4, isEmpty:Z
    if-eqz v4, :cond_1

    if-nez v0, :cond_1

    .line 200
    .end local v4           #isEmpty:Z
    :cond_0
    :goto_0
    return-void

    .line 128
    .restart local v4       #isEmpty:Z
    :cond_1
    if-eqz v4, :cond_2

    const/4 v7, 0x1

    if-eq v0, v7, :cond_3

    :cond_2
    if-nez v4, :cond_4

    if-nez v0, :cond_4

    .line 130
    :cond_3
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060035

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 133
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060037

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 135
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060039

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 140
    :cond_4
    iget-object v7, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-virtual {v7, v2, v0}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 141
    .local v1, cursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/miui/antispam/firewall/BlackListAdapter;->getNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, number:Ljava/lang/String;
    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 144
    iput-object v5, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedNumber:Ljava/lang/String;

    .line 145
    invoke-static {v1}, Lcom/miui/antispam/firewall/BlackListAdapter;->getId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedId:Ljava/lang/String;

    .line 146
    invoke-static {v1}, Lcom/miui/antispam/firewall/BlackListAdapter;->getNotes(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedNotes:Ljava/lang/String;

    .line 148
    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f06006c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 150
    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f06006d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 152
    const/4 v7, 0x0

    const/16 v8, 0xa

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060065

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 154
    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f06003a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 158
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v4           #isEmpty:Z
    .end local v5           #number:Ljava/lang/String;
    :cond_5
    if-nez v2, :cond_0

    .line 160
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mBlackSelected:Ljava/lang/Boolean;

    .line 162
    iget-object v7, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-virtual {v7}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->getWhiteListAdapter()Lcom/miui/antispam/firewall/WhiteListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/antispam/firewall/WhiteListAdapter;->isEmpty()Z

    move-result v4

    .line 164
    .restart local v4       #isEmpty:Z
    if-eqz v4, :cond_6

    if-eqz v0, :cond_0

    .line 168
    :cond_6
    if-eqz v4, :cond_7

    const/4 v7, 0x1

    if-eq v0, v7, :cond_8

    :cond_7
    if-nez v4, :cond_9

    if-nez v0, :cond_9

    .line 170
    :cond_8
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060036

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 173
    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060037

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 175
    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060039

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 180
    :cond_9
    iget-object v7, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-virtual {v7, v2, v0}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 181
    .restart local v1       #cursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/miui/antispam/firewall/WhiteListAdapter;->getNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    .line 182
    .restart local v5       #number:Ljava/lang/String;
    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 184
    iput-object v5, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedNumber:Ljava/lang/String;

    .line 185
    invoke-static {v1}, Lcom/miui/antispam/firewall/WhiteListAdapter;->getId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedId:Ljava/lang/String;

    .line 186
    invoke-static {v1}, Lcom/miui/antispam/firewall/WhiteListAdapter;->getNotes(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mSelectedNotes:Ljava/lang/String;

    .line 188
    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f06006c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 190
    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f06006d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 192
    const/4 v7, 0x0

    const/16 v8, 0xb

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060066

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 194
    const/4 v7, 0x0

    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/BlackWhiteList;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f06003a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 267
    const/16 v0, 0x8

    const v1, 0x7f06003d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 268
    const/16 v0, 0x9

    const v1, 0x7f06003e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 269
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 68
    invoke-virtual {p0, v4}, Lcom/miui/antispam/firewall/BlackWhiteList;->setHasOptionsMenu(Z)V

    .line 69
    const v2, 0x7f030002

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 71
    .local v1, rootView:Landroid/view/View;
    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, emptyView:Landroid/view/View;
    const v2, 0x7f080006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListView;

    iput-object v2, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mList:Landroid/widget/ExpandableListView;

    .line 73
    if-eqz v0, :cond_0

    .line 74
    iget-object v2, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 78
    iget-object v2, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, p0}, Landroid/widget/ExpandableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 80
    new-instance v2, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    iget-object v3, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    .line 82
    iget-object v2, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mList:Landroid/widget/ExpandableListView;

    iget-object v3, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 83
    iget-object v2, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v4}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 84
    return-object v1
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mActivity:Landroid/app/Activity;

    .line 97
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 273
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 285
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 275
    :pswitch_0
    iget-object v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/ExtraTelephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 276
    iget-object v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-virtual {v1}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->load()V

    goto :goto_0

    .line 280
    :pswitch_1
    iget-object v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/ExtraTelephony$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 281
    iget-object v1, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-virtual {v1}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->load()V

    goto :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 103
    iget-object v0, p0, Lcom/miui/antispam/firewall/BlackWhiteList;->mAdapter:Lcom/miui/antispam/firewall/BlackWhiteListAdapter;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/BlackWhiteListAdapter;->load()V

    .line 104
    return-void
.end method
