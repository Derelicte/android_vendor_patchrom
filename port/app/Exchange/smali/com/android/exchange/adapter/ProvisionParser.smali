.class public Lcom/android/exchange/adapter/ProvisionParser;
.super Lcom/android/exchange/adapter/Parser;
.source "ProvisionParser.java"


# instance fields
.field mIsSupportable:Z

.field mPolicy:Lcom/android/emailcommon/provider/Policy;

.field mRemoteWipe:Z

.field mSecuritySyncKey:Ljava/lang/String;

.field private final mService:Lcom/android/exchange/EasSyncService;

.field mUnsupportedPolicies:[Ljava/lang/String;

.field smimeRequired:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V
    .locals 2
    .parameter "in"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 46
    iput-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 47
    iput-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mSecuritySyncKey:Ljava/lang/String;

    .line 48
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->mRemoteWipe:Z

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    .line 52
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->smimeRequired:Z

    .line 56
    iput-object p2, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    .line 57
    return-void
.end method

.method private deviceSupportsEncryption()Z
    .locals 4

    .prologue
    .line 95
    iget-object v2, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v2, v2, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 97
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v1

    .line 98
    .local v1, status:I
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private parseCharacteristic(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/Policy;)V
    .locals 9
    .parameter "parser"
    .parameter "policy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 449
    const/4 v0, 0x1

    .line 451
    .local v0, enforceInactivityTimer:Z
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v2

    .line 452
    .local v2, type:I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "characteristic"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 487
    return-void

    .line 454
    :cond_1
    if-ne v2, v7, :cond_0

    .line 455
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "parm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 456
    const-string v4, "name"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, name:Ljava/lang/String;
    const-string v4, "value"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 458
    .local v3, value:Ljava/lang/String;
    const-string v4, "AEFrequencyValue"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 459
    if-eqz v0, :cond_0

    .line 460
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 461
    iput v6, p2, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    goto :goto_0

    .line 463
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    iput v4, p2, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    goto :goto_0

    .line 466
    :cond_3
    const-string v4, "AEFrequencyType"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 468
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 469
    const/4 v0, 0x0

    goto :goto_0

    .line 471
    :cond_4
    const-string v4, "DeviceWipeThreshold"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 472
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    goto :goto_0

    .line 473
    :cond_5
    const-string v4, "CodewordFrequency"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 475
    const-string v4, "MinimumPasswordLength"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 476
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    goto/16 :goto_0

    .line 477
    :cond_6
    const-string v4, "PasswordComplexity"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 478
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 479
    iput v7, p2, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    goto/16 :goto_0

    .line 481
    :cond_7
    iput v6, p2, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    goto/16 :goto_0
.end method

.method private parseDeviceInformation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    :goto_0
    const/16 v0, 0x496

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 579
    iget v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->tag:I

    const/16 v1, 0x486

    if-ne v0, v1, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeviceInformation status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 582
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_0

    .line 585
    :cond_1
    return-void
.end method

.method private parsePolicies()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 568
    :goto_0
    const/16 v0, 0x386

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 569
    iget v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->tag:I

    const/16 v1, 0x387

    if-ne v0, v1, :cond_0

    .line 570
    invoke-direct {p0}, Lcom/android/exchange/adapter/ProvisionParser;->parsePolicy()V

    goto :goto_0

    .line 572
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_0

    .line 575
    :cond_1
    return-void
.end method

.method private parsePolicy()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 539
    const/4 v0, 0x0

    .line 540
    .local v0, policyType:Ljava/lang/String;
    :goto_0
    const/16 v1, 0x387

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 541
    iget v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 562
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_0

    .line 543
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 544
    iget-object v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Policy type: "

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 547
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->mSecuritySyncKey:Ljava/lang/String;

    goto :goto_0

    .line 550
    :pswitch_2
    iget-object v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Policy status: "

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValue()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 553
    :pswitch_3
    const-string v1, "MS-WAP-Provisioning-XML"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/ProvisionParser;->parseProvisionDocXml(Ljava/lang/String;)V

    goto :goto_0

    .line 558
    :cond_0
    invoke-direct {p0}, Lcom/android/exchange/adapter/ProvisionParser;->parseProvisionData()V

    goto :goto_0

    .line 565
    :cond_1
    return-void

    .line 541
    :pswitch_data_0
    .packed-switch 0x388
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private parseProvisionData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 529
    :goto_0
    const/16 v0, 0x38a

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 530
    iget v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->tag:I

    const/16 v1, 0x38d

    if-ne v0, v1, :cond_0

    .line 531
    invoke-direct {p0}, Lcom/android/exchange/adapter/ProvisionParser;->parseProvisionDocWbxml()V

    goto :goto_0

    .line 533
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_0

    .line 536
    :cond_1
    return-void
.end method

.method private parseProvisionDocWbxml()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v10, Lcom/android/emailcommon/provider/Policy;

    invoke-direct {v10}, Lcom/android/emailcommon/provider/Policy;-><init>()V

    .line 103
    .local v10, policy:Lcom/android/emailcommon/provider/Policy;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v15, unsupportedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .line 106
    .local v9, passwordEnabled:Z
    :cond_0
    :goto_0
    const/16 v19, 0x38d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_d

    .line 107
    const/4 v14, 0x1

    .line 108
    .local v14, tagIsSupported:Z
    const/4 v11, 0x0

    .line 109
    .local v11, res:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser;->tag:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 341
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    .line 344
    :cond_1
    :goto_1
    if-nez v14, :cond_0

    .line 345
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Policy not supported: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser;->tag:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ProvisionParser;->log(Ljava/lang/String;)V

    .line 346
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    goto :goto_0

    .line 111
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 112
    const/4 v9, 0x1

    .line 113
    iget v0, v10, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 114
    const/16 v19, 0x1

    move/from16 v0, v19

    iput v0, v10, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    goto :goto_1

    .line 119
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v19

    move/from16 v0, v19

    iput v0, v10, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    goto :goto_1

    .line 122
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 123
    const/16 v19, 0x2

    move/from16 v0, v19

    iput v0, v10, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    goto :goto_1

    .line 128
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v19

    move/from16 v0, v19

    iput v0, v10, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    goto :goto_1

    .line 131
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v19

    move/from16 v0, v19

    iput v0, v10, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    goto :goto_1

    .line 134
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v19

    move/from16 v0, v19

    iput v0, v10, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    goto :goto_1

    .line 137
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v19

    move/from16 v0, v19

    iput v0, v10, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    goto/16 :goto_1

    .line 140
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v19

    if-nez v19, :cond_2

    const/16 v19, 0x1

    :goto_2
    move/from16 v0, v19

    iput-boolean v0, v10, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    goto/16 :goto_1

    :cond_2
    const/16 v19, 0x0

    goto :goto_2

    .line 145
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValue()Ljava/lang/String;

    goto/16 :goto_1

    .line 159
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v19

    if-nez v19, :cond_1

    .line 160
    const/4 v14, 0x0

    .line 161
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser;->tag:I

    move/from16 v19, v0

    sparse-switch v19, :sswitch_data_0

    .line 197
    :goto_3
    if-lez v11, :cond_1

    .line 198
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 163
    :sswitch_0
    const v11, 0x7f060011

    .line 164
    goto :goto_3

    .line 166
    :sswitch_1
    const v11, 0x7f060012

    .line 167
    goto :goto_3

    .line 169
    :sswitch_2
    const v11, 0x7f060013

    .line 170
    goto :goto_3

    .line 172
    :sswitch_3
    const v11, 0x7f060014

    .line 173
    goto :goto_3

    .line 175
    :sswitch_4
    const v11, 0x7f060015

    .line 176
    goto :goto_3

    .line 178
    :sswitch_5
    const v11, 0x7f060016

    .line 179
    goto :goto_3

    .line 181
    :sswitch_6
    const v11, 0x7f060017

    .line 182
    goto :goto_3

    .line 184
    :sswitch_7
    const v11, 0x7f060018

    .line 185
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v10, Lcom/android/emailcommon/provider/Policy;->mDontAllowHtml:Z

    goto :goto_3

    .line 188
    :sswitch_8
    const v11, 0x7f060019

    .line 189
    goto :goto_3

    .line 191
    :sswitch_9
    const v11, 0x7f06001a

    .line 192
    goto :goto_3

    .line 194
    :sswitch_a
    const v11, 0x7f06001b

    goto :goto_3

    .line 203
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    const/16 v19, 0x1

    :goto_4
    move/from16 v0, v19

    iput-boolean v0, v10, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    goto/16 :goto_1

    :cond_3
    const/16 v19, 0x0

    goto :goto_4

    .line 207
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 208
    const/4 v14, 0x0

    .line 209
    const v19, 0x7f06001f

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 215
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 216
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->deviceSupportsEncryption()Z

    move-result v19

    if-nez v19, :cond_4

    .line 217
    const/4 v14, 0x0

    .line 218
    const v19, 0x7f060027

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 220
    :cond_4
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v10, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    goto/16 :goto_1

    .line 227
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 228
    const-string v19, "Policy requires SD card encryption"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ProvisionParser;->log(Ljava/lang/String;)V

    .line 230
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->deviceSupportsEncryption()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "storage"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageManager;

    .line 236
    .local v13, sm:Landroid/os/storage/StorageManager;
    invoke-virtual {v13}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v18

    .line 237
    .local v18, volumeList:[Landroid/os/storage/StorageVolume;
    move-object/from16 v2, v18

    .local v2, arr$:[Landroid/os/storage/StorageVolume;
    array-length v7, v2

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_5
    if-ge v6, v7, :cond_5

    aget-object v17, v2, v6

    .line 238
    .local v17, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 239
    const/4 v14, 0x0

    .line 240
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Removable: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->getDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ProvisionParser;->log(Ljava/lang/String;)V

    .line 246
    .end local v17           #volume:Landroid/os/storage/StorageVolume;
    :cond_5
    if-eqz v14, :cond_8

    .line 248
    const-string v19, "Device supports SD card encryption"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ProvisionParser;->log(Ljava/lang/String;)V

    .line 249
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v10, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    goto/16 :goto_1

    .line 243
    .restart local v17       #volume:Landroid/os/storage/StorageVolume;
    :cond_6
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Not Removable: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->getDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ProvisionParser;->log(Ljava/lang/String;)V

    .line 237
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 253
    .end local v2           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v13           #sm:Landroid/os/storage/StorageManager;
    .end local v17           #volume:Landroid/os/storage/StorageVolume;
    .end local v18           #volumeList:[Landroid/os/storage/StorageVolume;
    :cond_7
    const-string v19, "Device doesn\'t support encryption; failing"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ProvisionParser;->log(Ljava/lang/String;)V

    .line 254
    const/4 v14, 0x0

    .line 257
    :cond_8
    const v19, 0x7f060028

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 262
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    const/16 v19, 0x1

    :goto_6
    move/from16 v0, v19

    iput-boolean v0, v10, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    goto/16 :goto_1

    :cond_9
    const/16 v19, 0x0

    goto :goto_6

    .line 269
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    const/16 v19, 0x1

    :goto_7
    move/from16 v0, v19

    iput-boolean v0, v10, Lcom/android/emailcommon/provider/Policy;->mPasswordRecoveryEnabled:Z

    goto/16 :goto_1

    :cond_a
    const/16 v19, 0x0

    goto :goto_7

    .line 276
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 277
    const/4 v14, 0x0

    .line 278
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/adapter/ProvisionParser;->smimeRequired:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 279
    const v19, 0x7f06001d

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exchange/adapter/ProvisionParser;->smimeRequired:Z

    goto/16 :goto_1

    .line 285
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v8

    .line 286
    .local v8, max:I
    if-lez v8, :cond_1

    .line 287
    iput v8, v10, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    goto/16 :goto_1

    .line 292
    .end local v8           #max:I
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v19

    move/from16 v0, v19

    iput v0, v10, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    goto/16 :goto_1

    .line 299
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto/16 :goto_1

    .line 305
    :pswitch_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser;->tag:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/ProvisionParser;->specifiesApplications(I)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 306
    const/4 v14, 0x0

    .line 307
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser;->tag:I

    move/from16 v19, v0

    const/16 v20, 0x3b7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 308
    const v19, 0x7f060020

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 310
    :cond_b
    const v19, 0x7f060021

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 317
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v19

    move/from16 v0, v19

    iput v0, v10, Lcom/android/emailcommon/provider/Policy;->mMaxCalendarLookback:I

    goto/16 :goto_1

    .line 321
    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v19

    move/from16 v0, v19

    iput v0, v10, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    goto/16 :goto_1

    .line 326
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValue()Ljava/lang/String;

    move-result-object v16

    .line 328
    .local v16, value:Ljava/lang/String;
    const-string v19, "-1"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 329
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 330
    .restart local v8       #max:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser;->tag:I

    move/from16 v19, v0

    const/16 v20, 0x3ab

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 331
    iput v8, v10, Lcom/android/emailcommon/provider/Policy;->mMaxTextTruncationSize:I

    .line 332
    const v19, 0x7f060024

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    :goto_8
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 334
    :cond_c
    iput v8, v10, Lcom/android/emailcommon/provider/Policy;->mMaxHtmlTruncationSize:I

    .line 335
    const v19, 0x7f060025

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 351
    .end local v8           #max:I
    .end local v11           #res:I
    .end local v14           #tagIsSupported:Z
    .end local v16           #value:Ljava/lang/String;
    :cond_d
    if-nez v9, :cond_e

    .line 352
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v10, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    .line 354
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/exchange/adapter/ProvisionParser;->setPolicy(Lcom/android/emailcommon/provider/Policy;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v10}, Lcom/android/exchange/SecurityPolicyDelegate;->isSupported(Landroid/content/Context;Lcom/android/emailcommon/provider/Policy;)Z

    move-result v19

    if-nez v19, :cond_f

    .line 358
    const-string v19, "SecurityPolicy reports PolicySet not supported."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ProvisionParser;->log(Ljava/lang/String;)V

    .line 359
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    .line 360
    const v19, 0x7f060027

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_f
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_10

    .line 364
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/adapter/ProvisionParser;->mUnsupportedPolicies:[Ljava/lang/String;

    .line 365
    const/4 v4, 0x0

    .line 366
    .local v4, i:I
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 367
    .local v3, context:Landroid/content/Context;
    if-eqz v3, :cond_10

    .line 368
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 369
    .local v12, resources:Landroid/content/res/Resources;
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 370
    .restart local v11       #res:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/ProvisionParser;->mUnsupportedPolicies:[Ljava/lang/String;

    move-object/from16 v19, v0

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .local v5, i:I
    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v19, v4

    move v4, v5

    .end local v5           #i:I
    .restart local v4       #i:I
    goto :goto_9

    .line 374
    .end local v3           #context:Landroid/content/Context;
    .end local v4           #i:I
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v11           #res:I
    .end local v12           #resources:Landroid/content/res/Resources;
    :cond_10
    return-void

    .line 109
    :pswitch_data_0
    .packed-switch 0x38e
        :pswitch_1
        :pswitch_3
        :pswitch_e
        :pswitch_10
        :pswitch_0
        :pswitch_b
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_12
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_8
        :pswitch_d
        :pswitch_a
        :pswitch_a
        :pswitch_13
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_c
        :pswitch_a
        :pswitch_f
        :pswitch_14
        :pswitch_16
        :pswitch_a
        :pswitch_17
        :pswitch_18
        :pswitch_18
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_14
        :pswitch_14
        :pswitch_a
        :pswitch_a
        :pswitch_14
        :pswitch_a
        :pswitch_15
        :pswitch_0
        :pswitch_15
    .end packed-switch

    .line 161
    :sswitch_data_0
    .sparse-switch
        0x39b -> :sswitch_0
        0x39e -> :sswitch_1
        0x39f -> :sswitch_2
        0x3a1 -> :sswitch_3
        0x3a2 -> :sswitch_4
        0x3a3 -> :sswitch_5
        0x3a5 -> :sswitch_6
        0x3a9 -> :sswitch_7
        0x3b3 -> :sswitch_8
        0x3b4 -> :sswitch_9
        0x3b6 -> :sswitch_a
    .end sparse-switch
.end method

.method private parseRegistry(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/Policy;)V
    .locals 4
    .parameter "parser"
    .parameter "policy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 492
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    .line 493
    .local v1, type:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "characteristic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 502
    return-void

    .line 495
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 496
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, name:Ljava/lang/String;
    const-string v2, "characteristic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 498
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/ProvisionParser;->parseCharacteristic(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/Policy;)V

    goto :goto_0
.end method

.method private parseSecurityPolicy(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/Policy;)Z
    .locals 8
    .parameter "parser"
    .parameter "policy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 426
    const/4 v1, 0x1

    .line 428
    .local v1, passwordRequired:Z
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v3

    .line 429
    .local v3, type:I
    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "characteristic"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 444
    return v1

    .line 431
    :cond_1
    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 432
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 433
    .local v2, tagName:Ljava/lang/String;
    const-string v5, "parm"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 434
    const-string v5, "name"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, name:Ljava/lang/String;
    const-string v5, "4131"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 436
    const-string v5, "value"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 437
    .local v4, value:Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 438
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseWapProvisioningDoc(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/Policy;)V
    .locals 5
    .parameter "parser"
    .parameter "policy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v2

    .line 508
    .local v2, type:I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wap-provisioningdoc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 526
    :goto_0
    return-void

    .line 510
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 511
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, name:Ljava/lang/String;
    const-string v3, "characteristic"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 513
    const/4 v3, 0x0

    const-string v4, "type"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, atype:Ljava/lang/String;
    const-string v3, "SecurityPolicy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 516
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/ProvisionParser;->parseSecurityPolicy(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/Policy;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 519
    :cond_2
    const-string v3, "Registry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 520
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/ProvisionParser;->parseRegistry(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/Policy;)V

    goto :goto_0
.end method

.method private setPolicy(Lcom/android/emailcommon/provider/Policy;)V
    .locals 0
    .parameter "policy"

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Policy;->normalize()V

    .line 91
    iput-object p1, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 92
    return-void
.end method

.method private specifiesApplications(I)Z
    .locals 3
    .parameter "endTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    const/4 v0, 0x0

    .line 384
    .local v0, specifiesApplications:Z
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 385
    iget v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 391
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_0

    .line 388
    :pswitch_1
    const/4 v0, 0x1

    .line 389
    goto :goto_0

    .line 394
    :cond_0
    return v0

    .line 385
    :pswitch_data_0
    .packed-switch 0x3b8
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public clearUnsupportedPolicies()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    invoke-static {v0, v1}, Lcom/android/exchange/SecurityPolicyDelegate;->clearUnsupportedPolicies(Landroid/content/Context;Lcom/android/emailcommon/provider/Policy;)Lcom/android/emailcommon/provider/Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mUnsupportedPolicies:[Ljava/lang/String;

    .line 83
    return-void
.end method

.method public getPolicy()Lcom/android/emailcommon/provider/Policy;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    return-object v0
.end method

.method public getRemoteWipe()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mRemoteWipe:Z

    return v0
.end method

.method public getSecuritySyncKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mSecuritySyncKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUnsupportedPolicies()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mUnsupportedPolicies:[Ljava/lang/String;

    return-object v0
.end method

.method public hasSupportablePolicySet()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 589
    const/4 v0, 0x0

    .line 590
    .local v0, res:Z
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v4

    const/16 v5, 0x385

    if-eq v4, v5, :cond_0

    .line 591
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 596
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v1

    .line 597
    .local v1, status:I
    iget-object v4, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v5, "Provision status: "

    invoke-virtual {v4, v5, v1}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 598
    if-ne v1, v2, :cond_1

    move v0, v2

    .line 593
    .end local v1           #status:I
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    .line 594
    iget v4, p0, Lcom/android/exchange/adapter/ProvisionParser;->tag:I

    sparse-switch v4, :sswitch_data_0

    .line 611
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_0

    .restart local v1       #status:I
    :cond_1
    move v0, v3

    .line 598
    goto :goto_0

    .line 601
    .end local v1           #status:I
    :sswitch_1
    invoke-direct {p0}, Lcom/android/exchange/adapter/ProvisionParser;->parseDeviceInformation()V

    goto :goto_0

    .line 604
    :sswitch_2
    invoke-direct {p0}, Lcom/android/exchange/adapter/ProvisionParser;->parsePolicies()V

    goto :goto_0

    .line 608
    :sswitch_3
    iput-boolean v2, p0, Lcom/android/exchange/adapter/ProvisionParser;->mRemoteWipe:Z

    goto :goto_0

    .line 614
    :cond_2
    return v0

    .line 594
    nop

    :sswitch_data_0
    .sparse-switch
        0x386 -> :sswitch_2
        0x38b -> :sswitch_0
        0x38c -> :sswitch_3
        0x496 -> :sswitch_1
    .end sparse-switch
.end method

.method parseProvisionDocXml(Ljava/lang/String;)V
    .locals 8
    .parameter "doc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    new-instance v3, Lcom/android/emailcommon/provider/Policy;

    invoke-direct {v3}, Lcom/android/emailcommon/provider/Policy;-><init>()V

    .line 401
    .local v3, policy:Lcom/android/emailcommon/provider/Policy;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 402
    .local v1, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 403
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v7, "UTF-8"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 404
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 405
    .local v5, type:I
    if-nez v5, :cond_0

    .line 406
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 407
    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 408
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 409
    .local v4, tagName:Ljava/lang/String;
    const-string v6, "wap-provisioningdoc"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 410
    invoke-direct {p0, v2, v3}, Lcom/android/exchange/adapter/ProvisionParser;->parseWapProvisioningDoc(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/Policy;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .end local v4           #tagName:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/exchange/adapter/ProvisionParser;->setPolicy(Lcom/android/emailcommon/provider/Policy;)V

    .line 419
    return-void

    .line 414
    .end local v1           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v5           #type:I
    :catch_0
    move-exception v0

    .line 415
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6
.end method

.method public setSecuritySyncKey(Ljava/lang/String;)V
    .locals 0
    .parameter "securitySyncKey"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/exchange/adapter/ProvisionParser;->mSecuritySyncKey:Ljava/lang/String;

    .line 69
    return-void
.end method
