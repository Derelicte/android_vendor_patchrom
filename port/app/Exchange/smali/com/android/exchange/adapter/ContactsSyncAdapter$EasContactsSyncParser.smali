.class Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "ContactsSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/ContactsSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EasContactsSyncParser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser$ServerChange;
    }
.end annotation


# instance fields
.field mBindArgument:[Ljava/lang/String;

.field ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

.field final synthetic this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/ContactsSyncAdapter;)V
    .locals 3
    .parameter
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    .line 350
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 344
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mBindArgument:[Ljava/lang/String;

    .line 346
    new-instance v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    iget-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Lcom/android/exchange/adapter/ContactsSyncAdapter$1;)V

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    .line 351
    return-void
.end method

.method private bodyParser()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 669
    const/4 v0, 0x0

    .line 670
    .local v0, body:Ljava/lang/String;
    :goto_0
    const/16 v1, 0x44a

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 671
    iget v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 676
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 673
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 674
    goto :goto_0

    .line 679
    :cond_0
    return-object v0

    .line 671
    nop

    :pswitch_data_0
    .packed-switch 0x44b
        :pswitch_0
    .end packed-switch
.end method

.method private categoriesParser(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;Landroid/content/Entity;)V
    .locals 2
    .parameter "ops"
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 643
    :goto_0
    const/16 v0, 0x55

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 644
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    packed-switch v0, :pswitch_data_0

    .line 649
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 646
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addGroup(Landroid/content/Entity;Ljava/lang/String;)V

    goto :goto_0

    .line 652
    :cond_0
    return-void

    .line 644
    nop

    :pswitch_data_0
    .packed-switch 0x56
        :pswitch_0
    .end packed-switch
.end method

.method private childrenParser(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 655
    .local p1, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    const/16 v0, 0x57

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 656
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    packed-switch v0, :pswitch_data_0

    .line 663
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 658
    :pswitch_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 659
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 666
    :cond_1
    return-void

    .line 656
    nop

    :pswitch_data_0
    .packed-switch 0x58
        :pswitch_0
    .end packed-switch
.end method

.method private getClientIdCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "clientId"

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 706
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/ContactsSyncAdapter;->mAccountUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->access$200(Lcom/android/exchange/adapter/ContactsSyncAdapter;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->access$300()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "sync1=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "serverId"

    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 700
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/ContactsSyncAdapter;->mAccountUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->access$200(Lcom/android/exchange/adapter/ContactsSyncAdapter;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->access$300()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "sourceid=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addData(Ljava/lang/String;Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;Landroid/content/Entity;)V
    .locals 43
    .parameter "serverId"
    .parameter "ops"
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    const/4 v13, 0x0

    .line 356
    .local v13, fileAs:Ljava/lang/String;
    const/4 v5, 0x0

    .line 357
    .local v5, prefix:Ljava/lang/String;
    const/4 v6, 0x0

    .line 358
    .local v6, firstName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 359
    .local v7, lastName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 360
    .local v8, middleName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 361
    .local v9, suffix:Ljava/lang/String;
    const/16 v27, 0x0

    .line 362
    .local v27, companyName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 363
    .local v11, yomiFirstName:Ljava/lang/String;
    const/4 v12, 0x0

    .line 364
    .local v12, yomiLastName:Ljava/lang/String;
    const/16 v42, 0x0

    .line 365
    .local v42, yomiCompanyName:Ljava/lang/String;
    const/16 v38, 0x0

    .line 366
    .local v38, title:Ljava/lang/String;
    const/16 v28, 0x0

    .line 367
    .local v28, department:Ljava/lang/String;
    const/16 v35, 0x0

    .line 368
    .local v35, officeLocation:Ljava/lang/String;
    new-instance v29, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;

    invoke-direct/range {v29 .. v29}, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;-><init>()V

    .line 369
    .local v29, home:Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;
    new-instance v40, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;

    invoke-direct/range {v40 .. v40}, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;-><init>()V

    .line 370
    .local v40, work:Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;
    new-instance v36, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;

    invoke-direct/range {v36 .. v36}, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;-><init>()V

    .line 371
    .local v36, other:Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;
    new-instance v25, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;

    invoke-direct/range {v25 .. v25}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;-><init>()V

    .line 372
    .local v25, business:Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;
    new-instance v37, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;

    invoke-direct/range {v37 .. v37}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;-><init>()V

    .line 373
    .local v37, personal:Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v26, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v16, emails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;>;"
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v32, ims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;>;"
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v30, homePhones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;>;"
    new-instance v41, Ljava/util/ArrayList;

    invoke-direct/range {v41 .. v41}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v41, workPhones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;>;"
    if-nez p3, :cond_0

    .line 379
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->newContact(Ljava/lang/String;)V

    .line 382
    :cond_0
    :goto_0
    const/16 v3, 0x1d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->nextTag(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 383
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    sparse-switch v3, :sswitch_data_0

    .line 577
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 385
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 386
    goto :goto_0

    .line 388
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 389
    goto :goto_0

    .line 391
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 392
    goto :goto_0

    .line 394
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 395
    goto :goto_0

    .line 397
    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 398
    goto :goto_0

    .line 400
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v27

    .line 401
    goto :goto_0

    .line 403
    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v38

    .line 404
    goto :goto_0

    .line 408
    :sswitch_7
    new-instance v3, Lcom/android/exchange/adapter/ContactsSyncAdapter$EmailRow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v4, v14}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EmailRow;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 412
    :sswitch_8
    new-instance v3, Lcom/android/exchange/adapter/ContactsSyncAdapter$PhoneRow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x3

    invoke-direct {v3, v4, v14, v15}, Lcom/android/exchange/adapter/ContactsSyncAdapter$PhoneRow;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Ljava/lang/String;I)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 415
    :sswitch_9
    const/16 v3, 0x14

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addPhone(Landroid/content/Entity;ILjava/lang/String;)V

    goto :goto_0

    .line 418
    :sswitch_a
    const/4 v3, 0x4

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addPhone(Landroid/content/Entity;ILjava/lang/String;)V

    goto :goto_0

    .line 421
    :sswitch_b
    const/16 v3, 0xa

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addPhone(Landroid/content/Entity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 424
    :sswitch_c
    const/4 v3, 0x5

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addPhone(Landroid/content/Entity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 428
    :sswitch_d
    new-instance v3, Lcom/android/exchange/adapter/ContactsSyncAdapter$PhoneRow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-direct {v3, v4, v14, v15}, Lcom/android/exchange/adapter/ContactsSyncAdapter$PhoneRow;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Ljava/lang/String;I)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 431
    :sswitch_e
    const/4 v3, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addPhone(Landroid/content/Entity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 434
    :sswitch_f
    const/16 v3, 0x9

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addPhone(Landroid/content/Entity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 437
    :sswitch_10
    const/16 v3, 0xe

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addPhone(Landroid/content/Entity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 440
    :sswitch_11
    const/4 v3, 0x6

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addPhone(Landroid/content/Entity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 443
    :sswitch_12
    const/16 v3, 0x13

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addPhone(Landroid/content/Entity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 448
    :sswitch_13
    new-instance v3, Lcom/android/exchange/adapter/ContactsSyncAdapter$ImRow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v4, v14}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ImRow;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 451
    :sswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v40

    iput-object v3, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->city:Ljava/lang/String;

    goto/16 :goto_0

    .line 454
    :sswitch_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v40

    iput-object v3, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->country:Ljava/lang/String;

    goto/16 :goto_0

    .line 457
    :sswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v40

    iput-object v3, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->code:Ljava/lang/String;

    goto/16 :goto_0

    .line 460
    :sswitch_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v40

    iput-object v3, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->state:Ljava/lang/String;

    goto/16 :goto_0

    .line 463
    :sswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v40

    iput-object v3, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->street:Ljava/lang/String;

    goto/16 :goto_0

    .line 466
    :sswitch_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->city:Ljava/lang/String;

    goto/16 :goto_0

    .line 469
    :sswitch_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->country:Ljava/lang/String;

    goto/16 :goto_0

    .line 472
    :sswitch_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->code:Ljava/lang/String;

    goto/16 :goto_0

    .line 475
    :sswitch_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->state:Ljava/lang/String;

    goto/16 :goto_0

    .line 478
    :sswitch_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->street:Ljava/lang/String;

    goto/16 :goto_0

    .line 481
    :sswitch_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v36

    iput-object v3, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->city:Ljava/lang/String;

    goto/16 :goto_0

    .line 484
    :sswitch_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v36

    iput-object v3, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->country:Ljava/lang/String;

    goto/16 :goto_0

    .line 487
    :sswitch_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v36

    iput-object v3, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->code:Ljava/lang/String;

    goto/16 :goto_0

    .line 490
    :sswitch_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v36

    iput-object v3, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->state:Ljava/lang/String;

    goto/16 :goto_0

    .line 493
    :sswitch_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v36

    iput-object v3, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->street:Ljava/lang/String;

    goto/16 :goto_0

    .line 497
    :sswitch_23
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->childrenParser(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 501
    :sswitch_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v42

    .line 502
    goto/16 :goto_0

    .line 504
    :sswitch_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 505
    goto/16 :goto_0

    .line 507
    :sswitch_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 508
    goto/16 :goto_0

    .line 511
    :sswitch_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addNickname(Landroid/content/Entity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 515
    :sswitch_28
    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addRelation(Landroid/content/Entity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 518
    :sswitch_29
    const/4 v3, 0x7

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addRelation(Landroid/content/Entity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 521
    :sswitch_2a
    const/16 v3, 0xe

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addRelation(Landroid/content/Entity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 524
    :sswitch_2b
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v28

    .line 525
    goto/16 :goto_0

    .line 527
    :sswitch_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 528
    goto/16 :goto_0

    .line 532
    :sswitch_2d
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v35

    .line 533
    goto/16 :goto_0

    .line 535
    :sswitch_2e
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->customerId:Ljava/lang/String;

    goto/16 :goto_0

    .line 538
    :sswitch_2f
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->governmentId:Ljava/lang/String;

    goto/16 :goto_0

    .line 541
    :sswitch_30
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->accountName:Ljava/lang/String;

    goto/16 :goto_0

    .line 546
    :sswitch_31
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v37

    iput-object v3, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;->anniversary:Ljava/lang/String;

    goto/16 :goto_0

    .line 549
    :sswitch_32
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addBirthday(Landroid/content/Entity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 552
    :sswitch_33
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addWebpage(Landroid/content/Entity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 556
    :sswitch_34
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addPhoto(Landroid/content/Entity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 560
    :sswitch_35
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->bodyParser()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addNote(Landroid/content/Entity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 563
    :sswitch_36
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addNote(Landroid/content/Entity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 567
    :sswitch_37
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    const/4 v4, 0x1

    #setter for: Lcom/android/exchange/adapter/ContactsSyncAdapter;->mGroupsUsed:Z
    invoke-static {v3, v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->access$102(Lcom/android/exchange/adapter/ContactsSyncAdapter;Z)Z

    .line 568
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->categoriesParser(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;Landroid/content/Entity;)V

    goto/16 :goto_0

    .line 573
    :sswitch_38
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto/16 :goto_0

    .line 582
    :cond_1
    const/4 v10, 0x0

    .line 583
    .local v10, name:Ljava/lang/String;
    if-nez v6, :cond_2

    if-eqz v7, :cond_b

    .line 584
    :cond_2
    if-nez v6, :cond_9

    .line 585
    move-object v10, v7

    :cond_3
    :goto_1
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 595
    invoke-virtual/range {v3 .. v13}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addName(Landroid/content/Entity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addBusiness(Landroid/content/Entity;Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;)V

    .line 598
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addPersonal(Landroid/content/Entity;Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;)V

    .line 600
    const-string v17, "vnd.android.cursor.item/email_v2"

    const/16 v18, -0x1

    const/16 v19, 0x3

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-virtual/range {v14 .. v19}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addUntyped(Landroid/content/Entity;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 601
    const-string v20, "vnd.android.cursor.item/im"

    const/16 v21, -0x1

    const/16 v22, 0x3

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, v32

    invoke-virtual/range {v17 .. v22}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addUntyped(Landroid/content/Entity;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 602
    const-string v20, "vnd.android.cursor.item/phone_v2"

    const/16 v21, 0x1

    const/16 v22, 0x2

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, v30

    invoke-virtual/range {v17 .. v22}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addUntyped(Landroid/content/Entity;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 604
    const-string v20, "vnd.android.cursor.item/phone_v2"

    const/16 v21, 0x3

    const/16 v22, 0x2

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, v41

    invoke-virtual/range {v17 .. v22}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addUntyped(Landroid/content/Entity;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 607
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 608
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addChildren(Landroid/content/Entity;Ljava/util/ArrayList;)V

    .line 611
    :cond_4
    invoke-virtual/range {v40 .. v40}, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->hasData()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 612
    const/16 v19, 0x2

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->street:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->city:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->state:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->country:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->code:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    invoke-virtual/range {v17 .. v24}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addPostal(Landroid/content/Entity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    :cond_5
    invoke-virtual/range {v29 .. v29}, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->hasData()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 616
    const/16 v19, 0x1

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->street:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->city:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->state:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->country:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->code:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    invoke-virtual/range {v17 .. v24}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addPostal(Landroid/content/Entity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    :cond_6
    invoke-virtual/range {v36 .. v36}, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->hasData()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 620
    const/16 v19, 0x3

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->street:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->city:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->state:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->country:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->code:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    invoke-virtual/range {v17 .. v24}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addPostal(Landroid/content/Entity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :cond_7
    if-eqz v27, :cond_8

    .line 625
    const/16 v19, 0x1

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v20, v27

    move-object/from16 v21, v38

    move-object/from16 v22, v28

    move-object/from16 v23, v42

    move-object/from16 v24, v35

    invoke-virtual/range {v17 .. v24}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addOrganization(Landroid/content/Entity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_8
    if-eqz p3, :cond_c

    .line 632
    invoke-virtual/range {p3 .. p3}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v34

    .line 633
    .local v34, ncvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/Entity$NamedContentValues;

    .line 635
    .local v33, ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->dataUriFromNamedContentValues(Landroid/content/Entity$NamedContentValues;)Landroid/net/Uri;

    move-result-object v39

    .line 636
    .local v39, u:Landroid/net/Uri;
    invoke-static/range {v39 .. v39}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_2

    .line 586
    .end local v31           #i$:Ljava/util/Iterator;
    .end local v33           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v34           #ncvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    .end local v39           #u:Landroid/net/Uri;
    :cond_9
    if-nez v7, :cond_a

    .line 587
    move-object v10, v6

    goto/16 :goto_1

    .line 589
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 591
    :cond_b
    if-eqz v27, :cond_3

    .line 592
    move-object/from16 v10, v27

    goto/16 :goto_1

    .line 640
    :cond_c
    return-void

    .line 383
    :sswitch_data_0
    .sparse-switch
        0x45 -> :sswitch_31
        0x46 -> :sswitch_28
        0x47 -> :sswitch_12
        0x48 -> :sswitch_32
        0x49 -> :sswitch_36
        0x4c -> :sswitch_8
        0x4d -> :sswitch_14
        0x4e -> :sswitch_15
        0x4f -> :sswitch_16
        0x50 -> :sswitch_17
        0x51 -> :sswitch_18
        0x52 -> :sswitch_a
        0x53 -> :sswitch_8
        0x54 -> :sswitch_f
        0x55 -> :sswitch_37
        0x57 -> :sswitch_23
        0x59 -> :sswitch_5
        0x5a -> :sswitch_2b
        0x5b -> :sswitch_7
        0x5c -> :sswitch_7
        0x5d -> :sswitch_7
        0x5e -> :sswitch_3
        0x5f -> :sswitch_0
        0x60 -> :sswitch_d
        0x61 -> :sswitch_19
        0x62 -> :sswitch_1a
        0x63 -> :sswitch_1b
        0x64 -> :sswitch_1c
        0x65 -> :sswitch_1d
        0x66 -> :sswitch_c
        0x67 -> :sswitch_d
        0x68 -> :sswitch_6
        0x69 -> :sswitch_1
        0x6a -> :sswitch_2
        0x6b -> :sswitch_e
        0x6c -> :sswitch_2d
        0x6d -> :sswitch_1e
        0x6e -> :sswitch_1f
        0x6f -> :sswitch_20
        0x70 -> :sswitch_21
        0x71 -> :sswitch_22
        0x72 -> :sswitch_11
        0x73 -> :sswitch_10
        0x74 -> :sswitch_2a
        0x75 -> :sswitch_4
        0x76 -> :sswitch_2c
        0x77 -> :sswitch_33
        0x78 -> :sswitch_24
        0x79 -> :sswitch_25
        0x7a -> :sswitch_26
        0x7b -> :sswitch_38
        0x7c -> :sswitch_34
        0x305 -> :sswitch_2e
        0x306 -> :sswitch_2f
        0x307 -> :sswitch_13
        0x308 -> :sswitch_13
        0x309 -> :sswitch_13
        0x30a -> :sswitch_29
        0x30b -> :sswitch_b
        0x30c -> :sswitch_30
        0x30d -> :sswitch_27
        0x30e -> :sswitch_9
        0x44a -> :sswitch_35
    .end sparse-switch
.end method

.method public addParser(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)V
    .locals 3
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 683
    const/4 v0, 0x0

    .line 684
    .local v0, serverId:Ljava/lang/String;
    :goto_0
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 685
    iget v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    sparse-switch v1, :sswitch_data_0

    .line 693
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 687
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 688
    goto :goto_0

    .line 690
    :sswitch_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->addData(Ljava/lang/String;Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;Landroid/content/Entity;)V

    goto :goto_0

    .line 696
    :cond_0
    return-void

    .line 685
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x1d -> :sswitch_1
    .end sparse-switch
.end method

.method public addResponsesParser()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 826
    const/4 v3, 0x0

    .line 827
    .local v3, serverId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 828
    .local v1, clientId:Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 829
    .local v2, cv:Landroid/content/ContentValues;
    :goto_0
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->nextTag(I)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 830
    iget v4, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    packed-switch v4, :pswitch_data_0

    .line 841
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 832
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 833
    goto :goto_0

    .line 835
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 836
    goto :goto_0

    .line 838
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    goto :goto_0

    .line 846
    :cond_0
    if-eqz v1, :cond_1

    if-nez v3, :cond_2

    .line 864
    :cond_1
    :goto_1
    return-void

    .line 848
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getClientIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 850
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 851
    const-string v4, "sourceid"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    const-string v4, "dirty"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 853
    iget-object v4, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 859
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New contact "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " was given serverId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4

    .line 830
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public changeParser(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)V
    .locals 11
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 748
    const/4 v10, 0x0

    .line 749
    .local v10, serverId:Ljava/lang/String;
    const/4 v8, 0x0

    .line 750
    .local v8, entity:Landroid/content/Entity;
    :goto_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->nextTag(I)I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    .line 751
    iget v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    sparse-switch v1, :sswitch_data_0

    .line 777
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 753
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 754
    invoke-direct {p0, v10}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 756
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 758
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 760
    .local v2, uri:Landroid/net/Uri;
    const-string v1, "entity"

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 762
    iget-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v9

    .line 764
    .local v9, entityIterator:Landroid/content/EntityIterator;
    invoke-interface {v9}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 765
    invoke-interface {v9}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/content/Entity;

    move-object v8, v0

    .line 767
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Changing contact "

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aput-object v10, v1, v3

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    .end local v2           #uri:Landroid/net/Uri;
    .end local v9           #entityIterator:Landroid/content/EntityIterator;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 774
    .end local v7           #c:Landroid/database/Cursor;
    :sswitch_1
    invoke-virtual {p0, v10, p1, v8}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->addData(Ljava/lang/String;Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;Landroid/content/Entity;)V

    goto :goto_0

    .line 780
    :cond_2
    return-void

    .line 751
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x1d -> :sswitch_1
    .end sparse-switch
.end method

.method public changeResponsesParser()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 867
    const/4 v0, 0x0

    .line 868
    .local v0, serverId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 869
    .local v1, status:Ljava/lang/String;
    :goto_0
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 870
    iget v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    packed-switch v2, :pswitch_data_0

    .line 878
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 872
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 873
    goto :goto_0

    .line 875
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 876
    goto :goto_0

    .line 881
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 882
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Changed contact "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed with status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->userLog([Ljava/lang/String;)V

    .line 884
    :cond_1
    return-void

    .line 870
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public commandsParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 784
    :goto_0
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 785
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 786
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->addParser(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)V

    .line 787
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 788
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 789
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->deleteParser(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)V

    .line 790
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 791
    :cond_1
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 792
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->changeParser(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)V

    .line 793
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 795
    :cond_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 797
    :cond_3
    return-void
.end method

.method public commit()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 802
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "Contacts SyncKey saved as: "

    aput-object v6, v5, v9

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v7, v7, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->userLog([Ljava/lang/String;)V

    .line 803
    iget-object v5, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    sget-object v6, Landroid/provider/ContactsContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    iget-object v7, v7, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    iget-object v8, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v8, v8, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/provider/SyncStateContract$Helpers;->newSetOperation(Landroid/net/Uri;Landroid/accounts/Account;[B)Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 807
    iget-object v5, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    invoke-virtual {v5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->execute()V

    .line 809
    iget-object v5, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    #getter for: Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mResults:[Landroid/content/ContentProviderResult;
    invoke-static {v5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->access$400(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 810
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 811
    .local v0, cv:Landroid/content/ContentValues;
    const-string v5, "dirty"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 812
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    #getter for: Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactIndexCount:I
    invoke-static {v5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->access$500(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 813
    iget-object v5, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    #getter for: Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactIndexArray:[I
    invoke-static {v5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->access$600(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)[I

    move-result-object v5

    aget v3, v5, v1

    .line 814
    .local v3, index:I
    iget-object v5, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    #getter for: Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mResults:[Landroid/content/ContentProviderResult;
    invoke-static {v5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->access$400(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    aget-object v5, v5, v3

    iget-object v4, v5, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 815
    .local v4, u:Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 816
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 817
    .local v2, idString:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v0, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 812
    .end local v2           #idString:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 823
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #i:I
    .end local v3           #index:I
    .end local v4           #u:Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method public deleteParser(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)V
    .locals 5
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 711
    :goto_0
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 712
    iget v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    packed-switch v2, :pswitch_data_0

    .line 727
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 714
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 716
    .local v1, serverId:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 718
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 719
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Deleting "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->userLog([Ljava/lang/String;)V

    .line 720
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->delete(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    .line 730
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #serverId:Ljava/lang/String;
    :cond_1
    return-void

    .line 712
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public responsesParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 890
    :goto_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 891
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 892
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->addResponsesParser()V

    goto :goto_0

    .line 893
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 894
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->changeResponsesParser()V

    goto :goto_0

    .line 896
    :cond_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 898
    :cond_2
    return-void
.end method
