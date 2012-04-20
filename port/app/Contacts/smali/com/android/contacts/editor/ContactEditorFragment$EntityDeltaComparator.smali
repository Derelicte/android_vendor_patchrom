.class Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntityDeltaComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/contacts/model/EntityDelta;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1384
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/ContactEditorFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1384
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;)I
    .locals 27
    .parameter "one"
    .parameter "two"

    .prologue
    .line 1391
    invoke-virtual/range {p1 .. p2}, Lcom/android/contacts/model/EntityDelta;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1392
    const/16 v22, 0x0

    .line 1462
    :cond_0
    :goto_0
    return v22

    .line 1395
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    move-object/from16 v23, v0

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v23 .. v23}, Lcom/android/contacts/editor/ContactEditorFragment;->access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    .line 1396
    .local v4, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v23

    const-string v24, "account_type"

    invoke-virtual/range {v23 .. v24}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1397
    .local v2, accountType1:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v23

    const-string v24, "data_set"

    invoke-virtual/range {v23 .. v24}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1398
    .local v5, dataSet1:Ljava/lang/String;
    invoke-virtual {v4, v2, v5}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v20

    .line 1399
    .local v20, type1:Lcom/android/contacts/model/AccountType;
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v23

    const-string v24, "account_type"

    invoke-virtual/range {v23 .. v24}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1400
    .local v3, accountType2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v23

    const-string v24, "data_set"

    invoke-virtual/range {v23 .. v24}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1401
    .local v6, dataSet2:Ljava/lang/String;
    invoke-virtual {v4, v3, v6}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v21

    .line 1404
    .local v21, type2:Lcom/android/contacts/model/AccountType;
    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v23

    if-nez v23, :cond_2

    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 1405
    const/16 v22, 0x1

    goto :goto_0

    .line 1406
    :cond_2
    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v23

    if-nez v23, :cond_3

    .line 1407
    const/16 v22, -0x1

    goto :goto_0

    .line 1411
    :cond_3
    const/4 v14, 0x0

    .line 1412
    .local v14, skipAccountTypeCheck:Z
    move-object/from16 v0, v20

    instance-of v7, v0, Lcom/android/contacts/model/GoogleAccountType;

    .line 1413
    .local v7, isGoogleAccount1:Z
    move-object/from16 v0, v21

    instance-of v8, v0, Lcom/android/contacts/model/GoogleAccountType;

    .line 1414
    .local v8, isGoogleAccount2:Z
    if-eqz v7, :cond_4

    if-nez v8, :cond_4

    .line 1415
    const/16 v22, -0x1

    goto :goto_0

    .line 1416
    :cond_4
    if-nez v7, :cond_5

    if-eqz v8, :cond_5

    .line 1417
    const/16 v22, 0x1

    goto :goto_0

    .line 1418
    :cond_5
    if-eqz v7, :cond_6

    if-eqz v8, :cond_6

    .line 1419
    const/4 v14, 0x1

    .line 1423
    :cond_6
    if-nez v14, :cond_7

    .line 1424
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_a

    const-string v12, ""

    .line 1425
    .local v12, oneType:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_b

    const-string v18, ""

    .line 1427
    .local v18, twoType:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    .line 1428
    .local v22, value:I
    if-nez v22, :cond_0

    .line 1432
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_c

    const-string v10, ""

    .line 1433
    .local v10, oneDataSet:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_d

    const-string v16, ""

    .line 1434
    .local v16, twoDataSet:Ljava/lang/String;
    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    .line 1435
    if-nez v22, :cond_0

    .line 1442
    .end local v10           #oneDataSet:Ljava/lang/String;
    .end local v12           #oneType:Ljava/lang/String;
    .end local v16           #twoDataSet:Ljava/lang/String;
    .end local v18           #twoType:Ljava/lang/String;
    .end local v22           #value:I
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v13

    .line 1443
    .local v13, oneValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v23, "account_name"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1444
    .local v9, oneAccount:Ljava/lang/String;
    if-nez v9, :cond_8

    const-string v9, ""

    .line 1445
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v19

    .line 1446
    .local v19, twoValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v23, "account_name"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1447
    .local v15, twoAccount:Ljava/lang/String;
    if-nez v15, :cond_9

    const-string v15, ""

    .line 1448
    :cond_9
    invoke-virtual {v9, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    .line 1449
    .restart local v22       #value:I
    if-nez v22, :cond_0

    .line 1454
    const-string v23, "_id"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    .line 1455
    .local v11, oneId:Ljava/lang/Long;
    const-string v23, "_id"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    .line 1456
    .local v17, twoId:Ljava/lang/Long;
    if-nez v11, :cond_e

    .line 1457
    const/16 v22, -0x1

    goto/16 :goto_0

    .line 1424
    .end local v9           #oneAccount:Ljava/lang/String;
    .end local v11           #oneId:Ljava/lang/Long;
    .end local v13           #oneValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v15           #twoAccount:Ljava/lang/String;
    .end local v17           #twoId:Ljava/lang/Long;
    .end local v19           #twoValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v22           #value:I
    :cond_a
    move-object/from16 v0, v20

    iget-object v12, v0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    goto :goto_1

    .line 1425
    .restart local v12       #oneType:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v18, v0

    goto :goto_2

    .line 1432
    .restart local v18       #twoType:Ljava/lang/String;
    .restart local v22       #value:I
    :cond_c
    move-object/from16 v0, v20

    iget-object v10, v0, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    goto :goto_3

    .line 1433
    .restart local v10       #oneDataSet:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v16, v0

    goto :goto_4

    .line 1458
    .end local v10           #oneDataSet:Ljava/lang/String;
    .end local v12           #oneType:Ljava/lang/String;
    .end local v18           #twoType:Ljava/lang/String;
    .restart local v9       #oneAccount:Ljava/lang/String;
    .restart local v11       #oneId:Ljava/lang/Long;
    .restart local v13       #oneValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .restart local v15       #twoAccount:Ljava/lang/String;
    .restart local v17       #twoId:Ljava/lang/Long;
    .restart local v19       #twoValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_e
    if-nez v17, :cond_f

    .line 1459
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 1462
    :cond_f
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    sub-long v23, v23, v25

    move-wide/from16 v0, v23

    long-to-int v0, v0

    move/from16 v22, v0

    goto/16 :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1384
    check-cast p1, Lcom/android/contacts/model/EntityDelta;

    .end local p1
    check-cast p2, Lcom/android/contacts/model/EntityDelta;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;->compare(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;)I

    move-result v0

    return v0
.end method
