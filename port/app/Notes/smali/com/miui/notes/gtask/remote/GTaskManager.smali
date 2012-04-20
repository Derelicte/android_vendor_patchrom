.class public Lcom/miui/notes/gtask/remote/GTaskManager;
.super Ljava/lang/Object;
.source "GTaskManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/miui/notes/gtask/remote/GTaskManager;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCancelled:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mGTaskHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/notes/gtask/data/Node;",
            ">;"
        }
    .end annotation
.end field

.field private mGTaskListHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/notes/gtask/data/TaskList;",
            ">;"
        }
    .end annotation
.end field

.field private mGidToNid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalDeleteIdMap:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMetaHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/notes/gtask/data/MetaData;",
            ">;"
        }
    .end annotation
.end field

.field private mMetaList:Lcom/miui/notes/gtask/data/TaskList;

.field private mNidToGid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/miui/notes/gtask/remote/GTaskManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/notes/gtask/remote/GTaskManager;->TAG:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/notes/gtask/remote/GTaskManager;->mInstance:Lcom/miui/notes/gtask/remote/GTaskManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-boolean v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mSyncing:Z

    .line 76
    iput-boolean v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mCancelled:Z

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskListHashMap:Ljava/util/HashMap;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskHashMap:Ljava/util/HashMap;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mMetaHashMap:Ljava/util/HashMap;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mMetaList:Lcom/miui/notes/gtask/data/TaskList;

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mLocalDeleteIdMap:Ljava/util/HashSet;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGidToNid:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mNidToGid:Ljava/util/HashMap;

    .line 84
    return-void
.end method

.method private addLocalNode(Lcom/miui/notes/gtask/data/Node;)V
    .locals 17
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/notes/gtask/exception/NetworkFailureException;
        }
    .end annotation

    .prologue
    .line 510
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/miui/notes/gtask/remote/GTaskManager;->mCancelled:Z

    if-eqz v13, :cond_0

    .line 581
    :goto_0
    return-void

    .line 515
    :cond_0
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/miui/notes/gtask/data/TaskList;

    if-eqz v13, :cond_3

    .line 516
    invoke-virtual/range {p1 .. p1}, Lcom/miui/notes/gtask/data/Node;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "[MIUI_Notes]Default"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 518
    new-instance v12, Lcom/miui/notes/gtask/data/SqlNote;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/notes/gtask/remote/GTaskManager;->mContext:Landroid/content/Context;

    const-wide/16 v14, 0x0

    invoke-direct {v12, v13, v14, v15}, Lcom/miui/notes/gtask/data/SqlNote;-><init>(Landroid/content/Context;J)V

    .line 572
    .local v12, sqlNote:Lcom/miui/notes/gtask/data/SqlNote;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/miui/notes/gtask/data/Node;->getGid()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/miui/notes/gtask/data/SqlNote;->setGtaskId(Ljava/lang/String;)V

    .line 573
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/miui/notes/gtask/data/SqlNote;->commit(Z)V

    .line 576
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGidToNid:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/notes/gtask/data/Node;->getGid()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12}, Lcom/miui/notes/gtask/data/SqlNote;->getId()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/notes/gtask/remote/GTaskManager;->mNidToGid:Ljava/util/HashMap;

    invoke-virtual {v12}, Lcom/miui/notes/gtask/data/SqlNote;->getId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/miui/notes/gtask/data/Node;->getGid()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    invoke-virtual/range {p1 .. p1}, Lcom/miui/notes/gtask/data/Node;->getGid()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12}, Lcom/miui/notes/gtask/remote/GTaskManager;->updateRemoteMeta(Ljava/lang/String;Lcom/miui/notes/gtask/data/SqlNote;)V

    goto :goto_0

    .line 519
    .end local v12           #sqlNote:Lcom/miui/notes/gtask/data/SqlNote;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/miui/notes/gtask/data/Node;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "[MIUI_Notes]Call_Note"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 521
    new-instance v12, Lcom/miui/notes/gtask/data/SqlNote;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/notes/gtask/remote/GTaskManager;->mContext:Landroid/content/Context;

    const-wide/16 v14, -0x2

    invoke-direct {v12, v13, v14, v15}, Lcom/miui/notes/gtask/data/SqlNote;-><init>(Landroid/content/Context;J)V

    .restart local v12       #sqlNote:Lcom/miui/notes/gtask/data/SqlNote;
    goto :goto_1

    .line 523
    .end local v12           #sqlNote:Lcom/miui/notes/gtask/data/SqlNote;
    :cond_2
    new-instance v12, Lcom/miui/notes/gtask/data/SqlNote;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/notes/gtask/remote/GTaskManager;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Lcom/miui/notes/gtask/data/SqlNote;-><init>(Landroid/content/Context;)V

    .line 524
    .restart local v12       #sqlNote:Lcom/miui/notes/gtask/data/SqlNote;
    invoke-virtual/range {p1 .. p1}, Lcom/miui/notes/gtask/data/Node;->getLocalJSONFromContent()Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/miui/notes/gtask/data/SqlNote;->setContent(Lorg/json/JSONObject;)Z

    .line 525
    const-wide/16 v13, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/miui/notes/gtask/data/SqlNote;->setParentId(J)V

    goto :goto_1

    .line 528
    .end local v12           #sqlNote:Lcom/miui/notes/gtask/data/SqlNote;
    :cond_3
    new-instance v12, Lcom/miui/notes/gtask/data/SqlNote;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/notes/gtask/remote/GTaskManager;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Lcom/miui/notes/gtask/data/SqlNote;-><init>(Landroid/content/Context;)V

    .line 529
    .restart local v12       #sqlNote:Lcom/miui/notes/gtask/data/SqlNote;
    invoke-virtual/range {p1 .. p1}, Lcom/miui/notes/gtask/data/Node;->getLocalJSONFromContent()Lorg/json/JSONObject;

    move-result-object v9

    .line 531
    .local v9, js:Lorg/json/JSONObject;
    :try_start_0
    const-string v13, "meta_note"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 532
    const-string v13, "meta_note"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 533
    .local v10, note:Lorg/json/JSONObject;
    const-string v13, "_id"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 534
    const-string v13, "_id"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 535
    .local v7, id:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/notes/gtask/remote/GTaskManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v13, v7, v8}, Lcom/miui/notes/tool/DataUtils;->existInNoteDatabase(Landroid/content/ContentResolver;J)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 537
    const-string v13, "_id"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 542
    .end local v7           #id:J
    .end local v10           #note:Lorg/json/JSONObject;
    :cond_4
    const-string v13, "meta_data"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 543
    const-string v13, "meta_data"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 544
    .local v2, dataArray:Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v6, v13, :cond_6

    .line 545
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 546
    .local v1, data:Lorg/json/JSONObject;
    const-string v13, "_id"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 547
    const-string v13, "_id"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 548
    .local v3, dataId:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/notes/gtask/remote/GTaskManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v13, v3, v4}, Lcom/miui/notes/tool/DataUtils;->existInDataDatabase(Landroid/content/ContentResolver;J)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 551
    const-string v13, "_id"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    .end local v3           #dataId:J
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 557
    .end local v1           #data:Lorg/json/JSONObject;
    .end local v2           #dataArray:Lorg/json/JSONArray;
    .end local v6           #i:I
    :catch_0
    move-exception v5

    .line 558
    .local v5, e:Lorg/json/JSONException;
    sget-object v13, Lcom/miui/notes/gtask/remote/GTaskManager;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 561
    .end local v5           #e:Lorg/json/JSONException;
    :cond_6
    invoke-virtual {v12, v9}, Lcom/miui/notes/gtask/data/SqlNote;->setContent(Lorg/json/JSONObject;)Z

    .line 563
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGidToNid:Ljava/util/HashMap;

    move-object/from16 v13, p1

    check-cast v13, Lcom/miui/notes/gtask/data/Task;

    invoke-virtual {v13}, Lcom/miui/notes/gtask/data/Task;->getParent()Lcom/miui/notes/gtask/data/TaskList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/miui/notes/gtask/data/TaskList;->getGid()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    .line 564
    .local v11, parentId:Ljava/lang/Long;
    if-nez v11, :cond_7

    .line 565
    sget-object v13, Lcom/miui/notes/gtask/remote/GTaskManager;->TAG:Ljava/lang/String;

    const-string v14, "cannot find task\'s parent id locally"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    new-instance v13, Lcom/miui/notes/gtask/exception/ActionFailureException;

    const-string v14, "cannot add local node"

    invoke-direct {v13, v14}, Lcom/miui/notes/gtask/exception/ActionFailureException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 568
    :cond_7
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/miui/notes/gtask/data/SqlNote;->setParentId(J)V

    goto/16 :goto_1
.end method

.method private addRemoteNode(Lcom/miui/notes/gtask/data/Node;Landroid/database/Cursor;)V
    .locals 15
    .parameter "node"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/notes/gtask/exception/NetworkFailureException;
        }
    .end annotation

    .prologue
    .line 607
    iget-boolean v11, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mCancelled:Z

    if-eqz v11, :cond_0

    .line 677
    :goto_0
    return-void

    .line 611
    :cond_0
    new-instance v8, Lcom/miui/notes/gtask/data/SqlNote;

    iget-object v11, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-direct {v8, v11, v0}, Lcom/miui/notes/gtask/data/SqlNote;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 615
    .local v8, sqlNote:Lcom/miui/notes/gtask/data/SqlNote;
    invoke-virtual {v8}, Lcom/miui/notes/gtask/data/SqlNote;->isNoteType()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 616
    new-instance v9, Lcom/miui/notes/gtask/data/Task;

    invoke-direct {v9}, Lcom/miui/notes/gtask/data/Task;-><init>()V

    .line 617
    .local v9, task:Lcom/miui/notes/gtask/data/Task;
    invoke-virtual {v8}, Lcom/miui/notes/gtask/data/SqlNote;->getContent()Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/miui/notes/gtask/data/Task;->setContentByLocalJSON(Lorg/json/JSONObject;)V

    .line 619
    iget-object v11, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mNidToGid:Ljava/util/HashMap;

    invoke-virtual {v8}, Lcom/miui/notes/gtask/data/SqlNote;->getParentId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 620
    .local v7, parentGid:Ljava/lang/String;
    if-nez v7, :cond_1

    .line 621
    sget-object v11, Lcom/miui/notes/gtask/remote/GTaskManager;->TAG:Ljava/lang/String;

    const-string v12, "cannot find task\'s parent tasklist"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    new-instance v11, Lcom/miui/notes/gtask/exception/ActionFailureException;

    const-string v12, "cannot add remote task"

    invoke-direct {v11, v12}, Lcom/miui/notes/gtask/exception/ActionFailureException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 624
    :cond_1
    iget-object v11, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskListHashMap:Ljava/util/HashMap;

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/notes/gtask/data/TaskList;

    invoke-virtual {v11, v9}, Lcom/miui/notes/gtask/data/TaskList;->addChildTask(Lcom/miui/notes/gtask/data/Task;)Z

    .line 626
    invoke-static {}, Lcom/miui/notes/gtask/remote/GTaskClient;->getInstance()Lcom/miui/notes/gtask/remote/GTaskClient;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/miui/notes/gtask/remote/GTaskClient;->createTask(Lcom/miui/notes/gtask/data/Task;)V

    .line 627
    move-object v6, v9

    .line 630
    .local v6, n:Lcom/miui/notes/gtask/data/Node;
    invoke-virtual {v9}, Lcom/miui/notes/gtask/data/Task;->getGid()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11, v8}, Lcom/miui/notes/gtask/remote/GTaskManager;->updateRemoteMeta(Ljava/lang/String;Lcom/miui/notes/gtask/data/SqlNote;)V

    .line 669
    .end local v7           #parentGid:Ljava/lang/String;
    .end local v9           #task:Lcom/miui/notes/gtask/data/Task;
    :goto_1
    invoke-virtual {v6}, Lcom/miui/notes/gtask/data/Node;->getGid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/miui/notes/gtask/data/SqlNote;->setGtaskId(Ljava/lang/String;)V

    .line 670
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcom/miui/notes/gtask/data/SqlNote;->commit(Z)V

    .line 671
    invoke-virtual {v8}, Lcom/miui/notes/gtask/data/SqlNote;->resetLocalModified()V

    .line 672
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Lcom/miui/notes/gtask/data/SqlNote;->commit(Z)V

    .line 675
    iget-object v11, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGidToNid:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/miui/notes/gtask/data/Node;->getGid()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Lcom/miui/notes/gtask/data/SqlNote;->getId()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    iget-object v11, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mNidToGid:Ljava/util/HashMap;

    invoke-virtual {v8}, Lcom/miui/notes/gtask/data/SqlNote;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v6}, Lcom/miui/notes/gtask/data/Node;->getGid()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 632
    .end local v6           #n:Lcom/miui/notes/gtask/data/Node;
    :cond_2
    const/4 v10, 0x0

    .line 635
    .local v10, tasklist:Lcom/miui/notes/gtask/data/TaskList;
    const-string v2, "[MIUI_Notes]"

    .line 636
    .local v2, folderName:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/miui/notes/gtask/data/SqlNote;->getId()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_6

    .line 637
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Default"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 643
    :goto_2
    iget-object v11, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskListHashMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 644
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/notes/gtask/data/TaskList;>;>;"
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 645
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 646
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/notes/gtask/data/TaskList;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 647
    .local v3, gid:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/notes/gtask/data/TaskList;

    .line 649
    .local v5, list:Lcom/miui/notes/gtask/data/TaskList;
    invoke-virtual {v5}, Lcom/miui/notes/gtask/data/TaskList;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 650
    move-object v10, v5

    .line 651
    iget-object v11, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 652
    iget-object v11, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/notes/gtask/data/TaskList;>;"
    .end local v3           #gid:Ljava/lang/String;
    .end local v5           #list:Lcom/miui/notes/gtask/data/TaskList;
    :cond_4
    if-nez v10, :cond_5

    .line 660
    new-instance v10, Lcom/miui/notes/gtask/data/TaskList;

    .end local v10           #tasklist:Lcom/miui/notes/gtask/data/TaskList;
    invoke-direct {v10}, Lcom/miui/notes/gtask/data/TaskList;-><init>()V

    .line 661
    .restart local v10       #tasklist:Lcom/miui/notes/gtask/data/TaskList;
    invoke-virtual {v8}, Lcom/miui/notes/gtask/data/SqlNote;->getContent()Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/miui/notes/gtask/data/TaskList;->setContentByLocalJSON(Lorg/json/JSONObject;)V

    .line 662
    invoke-static {}, Lcom/miui/notes/gtask/remote/GTaskClient;->getInstance()Lcom/miui/notes/gtask/remote/GTaskClient;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/miui/notes/gtask/remote/GTaskClient;->createTaskList(Lcom/miui/notes/gtask/data/TaskList;)V

    .line 663
    iget-object v11, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskListHashMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Lcom/miui/notes/gtask/data/TaskList;->getGid()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    :cond_5
    move-object v6, v10

    .restart local v6       #n:Lcom/miui/notes/gtask/data/Node;
    goto/16 :goto_1

    .line 638
    .end local v4           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/notes/gtask/data/TaskList;>;>;"
    .end local v6           #n:Lcom/miui/notes/gtask/data/Node;
    :cond_6
    invoke-virtual {v8}, Lcom/miui/notes/gtask/data/SqlNote;->getId()J

    move-result-wide v11

    const-wide/16 v13, -0x2

    cmp-long v11, v11, v13

    if-nez v11, :cond_7

    .line 639
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Call_Note"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 641
    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Lcom/miui/notes/gtask/data/SqlNote;->getSnippet()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2
.end method

.method private doContentSync(ILcom/miui/notes/gtask/data/Node;Landroid/database/Cursor;)V
    .locals 4
    .parameter "syncType"
    .parameter "node"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/notes/gtask/exception/NetworkFailureException;
        }
    .end annotation

    .prologue
    .line 464
    iget-boolean v1, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mCancelled:Z

    if-eqz v1, :cond_0

    .line 507
    :goto_0
    :pswitch_0
    return-void

    .line 469
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 505
    new-instance v1, Lcom/miui/notes/gtask/exception/ActionFailureException;

    const-string v2, "unkown sync action type"

    invoke-direct {v1, v2}, Lcom/miui/notes/gtask/exception/ActionFailureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 471
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/miui/notes/gtask/remote/GTaskManager;->addLocalNode(Lcom/miui/notes/gtask/data/Node;)V

    goto :goto_0

    .line 474
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/miui/notes/gtask/remote/GTaskManager;->addRemoteNode(Lcom/miui/notes/gtask/data/Node;Landroid/database/Cursor;)V

    goto :goto_0

    .line 477
    :pswitch_3
    iget-object v1, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mMetaHashMap:Ljava/util/HashMap;

    const/16 v2, 0xf

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/notes/gtask/data/MetaData;

    .line 478
    .local v0, meta:Lcom/miui/notes/gtask/data/MetaData;
    if-eqz v0, :cond_1

    .line 479
    invoke-static {}, Lcom/miui/notes/gtask/remote/GTaskClient;->getInstance()Lcom/miui/notes/gtask/remote/GTaskClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/notes/gtask/remote/GTaskClient;->deleteNode(Lcom/miui/notes/gtask/data/Node;)V

    .line 481
    :cond_1
    iget-object v1, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mLocalDeleteIdMap:Ljava/util/HashSet;

    const/4 v2, 0x0

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 484
    .end local v0           #meta:Lcom/miui/notes/gtask/data/MetaData;
    :pswitch_4
    iget-object v1, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mMetaHashMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/miui/notes/gtask/data/Node;->getGid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/notes/gtask/data/MetaData;

    .line 485
    .restart local v0       #meta:Lcom/miui/notes/gtask/data/MetaData;
    if-eqz v0, :cond_2

    .line 486
    invoke-static {}, Lcom/miui/notes/gtask/remote/GTaskClient;->getInstance()Lcom/miui/notes/gtask/remote/GTaskClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/notes/gtask/remote/GTaskClient;->deleteNode(Lcom/miui/notes/gtask/data/Node;)V

    .line 488
    :cond_2
    invoke-static {}, Lcom/miui/notes/gtask/remote/GTaskClient;->getInstance()Lcom/miui/notes/gtask/remote/GTaskClient;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/miui/notes/gtask/remote/GTaskClient;->deleteNode(Lcom/miui/notes/gtask/data/Node;)V

    goto :goto_0

    .line 491
    .end local v0           #meta:Lcom/miui/notes/gtask/data/MetaData;
    :pswitch_5
    invoke-direct {p0, p2, p3}, Lcom/miui/notes/gtask/remote/GTaskManager;->updateLocalNode(Lcom/miui/notes/gtask/data/Node;Landroid/database/Cursor;)V

    goto :goto_0

    .line 494
    :pswitch_6
    invoke-direct {p0, p2, p3}, Lcom/miui/notes/gtask/remote/GTaskManager;->updateRemoteNode(Lcom/miui/notes/gtask/data/Node;Landroid/database/Cursor;)V

    goto :goto_0

    .line 499
    :pswitch_7
    invoke-direct {p0, p2, p3}, Lcom/miui/notes/gtask/remote/GTaskManager;->updateRemoteNode(Lcom/miui/notes/gtask/data/Node;Landroid/database/Cursor;)V

    goto :goto_0

    .line 469
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lcom/miui/notes/gtask/remote/GTaskManager;
    .locals 2

    .prologue
    .line 87
    const-class v1, Lcom/miui/notes/gtask/remote/GTaskManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/notes/gtask/remote/GTaskManager;->mInstance:Lcom/miui/notes/gtask/remote/GTaskManager;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/miui/notes/gtask/remote/GTaskManager;

    invoke-direct {v0}, Lcom/miui/notes/gtask/remote/GTaskManager;-><init>()V

    sput-object v0, Lcom/miui/notes/gtask/remote/GTaskManager;->mInstance:Lcom/miui/notes/gtask/remote/GTaskManager;

    .line 90
    :cond_0
    sget-object v0, Lcom/miui/notes/gtask/remote/GTaskManager;->mInstance:Lcom/miui/notes/gtask/remote/GTaskManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initGTaskList()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/notes/gtask/exception/NetworkFailureException;
        }
    .end annotation

    .prologue
    .line 156
    iget-boolean v13, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mCancelled:Z

    if-eqz v13, :cond_1

    .line 232
    :cond_0
    return-void

    .line 158
    :cond_1
    invoke-static {}, Lcom/miui/notes/gtask/remote/GTaskClient;->getInstance()Lcom/miui/notes/gtask/remote/GTaskClient;

    move-result-object v0

    .line 160
    .local v0, client:Lcom/miui/notes/gtask/remote/GTaskClient;
    :try_start_0
    invoke-virtual {v0}, Lcom/miui/notes/gtask/remote/GTaskClient;->getTaskLists()Lorg/json/JSONArray;

    move-result-object v6

    .line 163
    .local v6, jsTaskLists:Lorg/json/JSONArray;
    const/4 v13, 0x0

    iput-object v13, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mMetaList:Lcom/miui/notes/gtask/data/TaskList;

    .line 164
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v3, v13, :cond_4

    .line 165
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 166
    .local v10, object:Lorg/json/JSONObject;
    const-string v13, "id"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, gid:Ljava/lang/String;
    const-string v13, "name"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 169
    .local v9, name:Ljava/lang/String;
    const-string v13, "[MIUI_Notes]METADATA"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 171
    new-instance v13, Lcom/miui/notes/gtask/data/TaskList;

    invoke-direct {v13}, Lcom/miui/notes/gtask/data/TaskList;-><init>()V

    iput-object v13, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mMetaList:Lcom/miui/notes/gtask/data/TaskList;

    .line 172
    iget-object v13, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mMetaList:Lcom/miui/notes/gtask/data/TaskList;

    invoke-virtual {v13, v10}, Lcom/miui/notes/gtask/data/TaskList;->setContentByRemoteJSON(Lorg/json/JSONObject;)V

    .line 175
    invoke-virtual {v0, v2}, Lcom/miui/notes/gtask/remote/GTaskClient;->getTaskList(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 176
    .local v5, jsMetas:Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v4, v13, :cond_3

    .line 177
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 178
    new-instance v8, Lcom/miui/notes/gtask/data/MetaData;

    invoke-direct {v8}, Lcom/miui/notes/gtask/data/MetaData;-><init>()V

    .line 179
    .local v8, metaData:Lcom/miui/notes/gtask/data/MetaData;
    invoke-virtual {v8, v10}, Lcom/miui/notes/gtask/data/MetaData;->setContentByRemoteJSON(Lorg/json/JSONObject;)V

    .line 180
    invoke-virtual {v8}, Lcom/miui/notes/gtask/data/MetaData;->isWorthSaving()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 181
    iget-object v13, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mMetaList:Lcom/miui/notes/gtask/data/TaskList;

    invoke-virtual {v13, v8}, Lcom/miui/notes/gtask/data/TaskList;->addChildTask(Lcom/miui/notes/gtask/data/Task;)Z

    .line 182
    invoke-virtual {v8}, Lcom/miui/notes/gtask/data/MetaData;->getGid()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 183
    iget-object v13, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mMetaHashMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Lcom/miui/notes/gtask/data/MetaData;->getRelatedGid()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 164
    .end local v4           #j:I
    .end local v5           #jsMetas:Lorg/json/JSONArray;
    .end local v8           #metaData:Lcom/miui/notes/gtask/data/MetaData;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    .end local v2           #gid:Ljava/lang/String;
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #object:Lorg/json/JSONObject;
    :cond_4
    iget-object v13, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mMetaList:Lcom/miui/notes/gtask/data/TaskList;

    if-nez v13, :cond_5

    .line 192
    new-instance v13, Lcom/miui/notes/gtask/data/TaskList;

    invoke-direct {v13}, Lcom/miui/notes/gtask/data/TaskList;-><init>()V

    iput-object v13, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mMetaList:Lcom/miui/notes/gtask/data/TaskList;

    .line 193
    iget-object v13, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mMetaList:Lcom/miui/notes/gtask/data/TaskList;

    const-string v14, "[MIUI_Notes]METADATA"

    invoke-virtual {v13, v14}, Lcom/miui/notes/gtask/data/TaskList;->setName(Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/miui/notes/gtask/remote/GTaskClient;->getInstance()Lcom/miui/notes/gtask/remote/GTaskClient;

    move-result-object v13

    iget-object v14, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mMetaList:Lcom/miui/notes/gtask/data/TaskList;

    invoke-virtual {v13, v14}, Lcom/miui/notes/gtask/remote/GTaskClient;->createTaskList(Lcom/miui/notes/gtask/data/TaskList;)V

    .line 199
    :cond_5
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v3, v13, :cond_0

    .line 200
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 201
    .restart local v10       #object:Lorg/json/JSONObject;
    const-string v13, "id"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    .restart local v2       #gid:Ljava/lang/String;
    const-string v13, "name"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 204
    .restart local v9       #name:Ljava/lang/String;
    const-string v13, "[MIUI_Notes]"

    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    const-string v13, "[MIUI_Notes]METADATA"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 207
    new-instance v12, Lcom/miui/notes/gtask/data/TaskList;

    invoke-direct {v12}, Lcom/miui/notes/gtask/data/TaskList;-><init>()V

    .line 208
    .local v12, tasklist:Lcom/miui/notes/gtask/data/TaskList;
    invoke-virtual {v12, v10}, Lcom/miui/notes/gtask/data/TaskList;->setContentByRemoteJSON(Lorg/json/JSONObject;)V

    .line 209
    iget-object v13, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskListHashMap:Ljava/util/HashMap;

    invoke-virtual {v13, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v13, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v13, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-virtual {v0, v2}, Lcom/miui/notes/gtask/remote/GTaskClient;->getTaskList(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 214
    .local v7, jsTasks:Lorg/json/JSONArray;
    const/4 v4, 0x0

    .restart local v4       #j:I
    :goto_3
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v4, v13, :cond_7

    .line 215
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 216
    const-string v13, "id"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 217
    new-instance v11, Lcom/miui/notes/gtask/data/Task;

    invoke-direct {v11}, Lcom/miui/notes/gtask/data/Task;-><init>()V

    .line 218
    .local v11, task:Lcom/miui/notes/gtask/data/Task;
    invoke-virtual {v11, v10}, Lcom/miui/notes/gtask/data/Task;->setContentByRemoteJSON(Lorg/json/JSONObject;)V

    .line 219
    invoke-virtual {v11}, Lcom/miui/notes/gtask/data/Task;->isWorthSaving()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 220
    iget-object v13, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mMetaHashMap:Ljava/util/HashMap;

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/notes/gtask/data/MetaData;

    invoke-virtual {v11, v13}, Lcom/miui/notes/gtask/data/Task;->setMetaInfo(Lcom/miui/notes/gtask/data/MetaData;)V

    .line 221
    invoke-virtual {v12, v11}, Lcom/miui/notes/gtask/data/TaskList;->addChildTask(Lcom/miui/notes/gtask/data/Task;)Z

    .line 222
    iget-object v13, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v13, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 199
    .end local v4           #j:I
    .end local v7           #jsTasks:Lorg/json/JSONArray;
    .end local v11           #task:Lcom/miui/notes/gtask/data/Task;
    .end local v12           #tasklist:Lcom/miui/notes/gtask/data/TaskList;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 227
    .end local v2           #gid:Ljava/lang/String;
    .end local v3           #i:I
    .end local v6           #jsTaskLists:Lorg/json/JSONArray;
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #object:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 228
    .local v1, e:Lorg/json/JSONException;
    sget-object v13, Lcom/miui/notes/gtask/remote/GTaskManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 230
    new-instance v13, Lcom/miui/notes/gtask/exception/ActionFailureException;

    const-string v14, "initGTaskList: handing JSONObject failed"

    invoke-direct {v13, v14}, Lcom/miui/notes/gtask/exception/ActionFailureException;-><init>(Ljava/lang/String;)V

    throw v13
.end method

.method private refreshLocalSyncId()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/notes/gtask/exception/NetworkFailureException;
        }
    .end annotation

    .prologue
    .line 734
    iget-boolean v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mCancelled:Z

    if-eqz v0, :cond_1

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 739
    :cond_1
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 740
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskListHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 741
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mMetaHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 742
    invoke-direct {p0}, Lcom/miui/notes/gtask/remote/GTaskManager;->initGTaskList()V

    .line 744
    const/4 v6, 0x0

    .line 746
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/notes/gtask/data/SqlNote;->PROJECTION_NOTE:[Ljava/lang/String;

    const-string v3, "(type<>? AND parent_id<>?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x1

    const/4 v10, -0x3

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const-string v5, "type DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 750
    if-eqz v6, :cond_4

    .line 751
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 752
    const/16 v0, 0xf

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 753
    .local v7, gid:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/notes/gtask/data/Node;

    .line 754
    .local v8, node:Lcom/miui/notes/gtask/data/Node;
    if-eqz v8, :cond_3

    .line 755
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 757
    .local v9, values:Landroid/content/ContentValues;
    const-string v0, "sync_id"

    invoke-virtual {v8}, Lcom/miui/notes/gtask/data/Node;->getLastModified()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 758
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 770
    .end local v7           #gid:Ljava/lang/String;
    .end local v8           #node:Lcom/miui/notes/gtask/data/Node;
    .end local v9           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 771
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 772
    const/4 v6, 0x0

    :cond_2
    throw v0

    .line 761
    .restart local v7       #gid:Ljava/lang/String;
    .restart local v8       #node:Lcom/miui/notes/gtask/data/Node;
    :cond_3
    :try_start_1
    sget-object v0, Lcom/miui/notes/gtask/remote/GTaskManager;->TAG:Ljava/lang/String;

    const-string v1, "something is missed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    new-instance v0, Lcom/miui/notes/gtask/exception/ActionFailureException;

    const-string v1, "some local items don\'t have gid after sync"

    invoke-direct {v0, v1}, Lcom/miui/notes/gtask/exception/ActionFailureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 767
    .end local v7           #gid:Ljava/lang/String;
    .end local v8           #node:Lcom/miui/notes/gtask/data/Node;
    :cond_4
    sget-object v0, Lcom/miui/notes/gtask/remote/GTaskManager;->TAG:Ljava/lang/String;

    const-string v1, "failed to query local note to refresh sync id"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 770
    :cond_5
    if-eqz v6, :cond_0

    .line 771
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 772
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method private syncContent()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/notes/gtask/exception/NetworkFailureException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    .line 236
    const/4 v6, 0x0

    .line 240
    .local v6, c:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mLocalDeleteIdMap:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 242
    iget-boolean v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mCancelled:Z

    if-eqz v0, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/notes/gtask/data/SqlNote;->PROJECTION_NOTE:[Ljava/lang/String;

    const-string v3, "(type<>? AND parent_id=?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x1

    const/4 v12, -0x3

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 252
    if-eqz v6, :cond_4

    .line 253
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 254
    const/16 v0, 0xf

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 255
    .local v8, gid:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/notes/gtask/data/Node;

    .line 256
    .local v10, node:Lcom/miui/notes/gtask/data/Node;
    if-eqz v10, :cond_2

    .line 257
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const/4 v0, 0x3

    invoke-direct {p0, v0, v10, v6}, Lcom/miui/notes/gtask/remote/GTaskManager;->doContentSync(ILcom/miui/notes/gtask/data/Node;Landroid/database/Cursor;)V

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mLocalDeleteIdMap:Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 267
    .end local v8           #gid:Ljava/lang/String;
    .end local v10           #node:Lcom/miui/notes/gtask/data/Node;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 268
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 269
    const/4 v6, 0x0

    :cond_3
    throw v0

    .line 264
    :cond_4
    :try_start_1
    sget-object v0, Lcom/miui/notes/gtask/remote/GTaskManager;->TAG:Ljava/lang/String;

    const-string v1, "failed to query trash folder"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    :cond_5
    if-eqz v6, :cond_6

    .line 268
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 269
    const/4 v6, 0x0

    .line 274
    :cond_6
    invoke-direct {p0}, Lcom/miui/notes/gtask/remote/GTaskManager;->syncFolder()V

    .line 278
    :try_start_2
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/notes/gtask/data/SqlNote;->PROJECTION_NOTE:[Ljava/lang/String;

    const-string v3, "(type=? AND parent_id<>?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x1

    const/4 v12, -0x3

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const-string v5, "type DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 282
    if-eqz v6, :cond_a

    .line 283
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 284
    const/16 v0, 0xf

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 285
    .restart local v8       #gid:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/notes/gtask/data/Node;

    .line 286
    .restart local v10       #node:Lcom/miui/notes/gtask/data/Node;
    if-eqz v10, :cond_8

    .line 287
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGidToNid:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mNidToGid:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-virtual {v10, v6}, Lcom/miui/notes/gtask/data/Node;->getSyncAction(Landroid/database/Cursor;)I

    move-result v11

    .line 300
    .local v11, syncType:I
    :goto_3
    invoke-direct {p0, v11, v10, v6}, Lcom/miui/notes/gtask/remote/GTaskManager;->doContentSync(ILcom/miui/notes/gtask/data/Node;Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 307
    .end local v8           #gid:Ljava/lang/String;
    .end local v10           #node:Lcom/miui/notes/gtask/data/Node;
    .end local v11           #syncType:I
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_7

    .line 308
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 309
    const/4 v6, 0x0

    :cond_7
    throw v0

    .line 292
    .restart local v8       #gid:Ljava/lang/String;
    .restart local v10       #node:Lcom/miui/notes/gtask/data/Node;
    :cond_8
    const/16 v0, 0xf

    :try_start_3
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 294
    const/4 v11, 0x1

    .restart local v11       #syncType:I
    goto :goto_3

    .line 297
    .end local v11           #syncType:I
    :cond_9
    const/4 v11, 0x4

    .restart local v11       #syncType:I
    goto :goto_3

    .line 303
    .end local v8           #gid:Ljava/lang/String;
    .end local v10           #node:Lcom/miui/notes/gtask/data/Node;
    .end local v11           #syncType:I
    :cond_a
    sget-object v0, Lcom/miui/notes/gtask/remote/GTaskManager;->TAG:Ljava/lang/String;

    const-string v1, "failed to query existing note in database"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 307
    :cond_b
    if-eqz v6, :cond_c

    .line 308
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 309
    const/4 v6, 0x0

    .line 314
    :cond_c
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 315
    .local v9, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/notes/gtask/data/Node;>;>;"
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 316
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 317
    .local v7, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/notes/gtask/data/Node;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/notes/gtask/data/Node;

    .line 318
    .restart local v10       #node:Lcom/miui/notes/gtask/data/Node;
    const/4 v0, 0x0

    invoke-direct {p0, v13, v10, v0}, Lcom/miui/notes/gtask/remote/GTaskManager;->doContentSync(ILcom/miui/notes/gtask/data/Node;Landroid/database/Cursor;)V

    goto :goto_4

    .line 324
    .end local v7           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/notes/gtask/data/Node;>;"
    .end local v10           #node:Lcom/miui/notes/gtask/data/Node;
    :cond_d
    iget-boolean v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mCancelled:Z

    if-nez v0, :cond_e

    .line 325
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mLocalDeleteIdMap:Ljava/util/HashSet;

    invoke-static {v0, v1}, Lcom/miui/notes/tool/DataUtils;->batchDeleteNotes(Landroid/content/ContentResolver;Ljava/util/HashSet;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 326
    new-instance v0, Lcom/miui/notes/gtask/exception/ActionFailureException;

    const-string v1, "failed to batch-delete local deleted notes"

    invoke-direct {v0, v1}, Lcom/miui/notes/gtask/exception/ActionFailureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_e
    iget-boolean v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mCancelled:Z

    if-nez v0, :cond_0

    .line 332
    invoke-static {}, Lcom/miui/notes/gtask/remote/GTaskClient;->getInstance()Lcom/miui/notes/gtask/remote/GTaskClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/notes/gtask/remote/GTaskClient;->commitUpdate()V

    .line 333
    invoke-direct {p0}, Lcom/miui/notes/gtask/remote/GTaskManager;->refreshLocalSyncId()V

    goto/16 :goto_0
.end method

.method private syncFolder()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/notes/gtask/exception/NetworkFailureException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 339
    const/4 v6, 0x0

    .line 344
    .local v6, c:Landroid/database/Cursor;
    iget-boolean v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mCancelled:Z

    if-eqz v0, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/miui/notes/gtask/data/SqlNote;->PROJECTION_NOTE:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 352
    if-eqz v6, :cond_9

    .line 353
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 354
    const/16 v0, 0xf

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 355
    .local v8, gid:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/notes/gtask/data/Node;

    .line 356
    .local v10, node:Lcom/miui/notes/gtask/data/Node;
    if-eqz v10, :cond_7

    .line 357
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGidToNid:Ljava/util/HashMap;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mNidToGid:Ljava/util/HashMap;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    invoke-virtual {v10}, Lcom/miui/notes/gtask/data/Node;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MIUI_Notes]Default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 363
    const/4 v0, 0x5

    invoke-direct {p0, v0, v10, v6}, Lcom/miui/notes/gtask/remote/GTaskManager;->doContentSync(ILcom/miui/notes/gtask/data/Node;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 371
    .end local v8           #gid:Ljava/lang/String;
    .end local v10           #node:Lcom/miui/notes/gtask/data/Node;
    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    .line 372
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 373
    const/4 v6, 0x0

    .line 379
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/notes/gtask/data/SqlNote;->PROJECTION_NOTE:[Ljava/lang/String;

    const-string v3, "(_id=?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v12, -0x2

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 383
    if-eqz v6, :cond_c

    .line 384
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 385
    const/16 v0, 0xf

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 386
    .restart local v8       #gid:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/notes/gtask/data/Node;

    .line 387
    .restart local v10       #node:Lcom/miui/notes/gtask/data/Node;
    if-eqz v10, :cond_a

    .line 388
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGidToNid:Ljava/util/HashMap;

    const-wide/16 v1, -0x2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mNidToGid:Ljava/util/HashMap;

    const-wide/16 v1, -0x2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    invoke-virtual {v10}, Lcom/miui/notes/gtask/data/Node;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MIUI_Notes]Call_Note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 396
    const/4 v0, 0x5

    invoke-direct {p0, v0, v10, v6}, Lcom/miui/notes/gtask/remote/GTaskManager;->doContentSync(ILcom/miui/notes/gtask/data/Node;Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 405
    .end local v8           #gid:Ljava/lang/String;
    .end local v10           #node:Lcom/miui/notes/gtask/data/Node;
    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    .line 406
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 407
    const/4 v6, 0x0

    .line 413
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/notes/gtask/data/SqlNote;->PROJECTION_NOTE:[Ljava/lang/String;

    const-string v3, "(type=? AND parent_id<>?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x1

    const/4 v12, -0x3

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const-string v5, "type DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 417
    if-eqz v6, :cond_f

    .line 418
    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 419
    const/16 v0, 0xf

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 420
    .restart local v8       #gid:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/notes/gtask/data/Node;

    .line 421
    .restart local v10       #node:Lcom/miui/notes/gtask/data/Node;
    if-eqz v10, :cond_d

    .line 422
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGidToNid:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mNidToGid:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    invoke-virtual {v10, v6}, Lcom/miui/notes/gtask/data/Node;->getSyncAction(Landroid/database/Cursor;)I

    move-result v11

    .line 435
    .local v11, syncType:I
    :goto_4
    invoke-direct {p0, v11, v10, v6}, Lcom/miui/notes/gtask/remote/GTaskManager;->doContentSync(ILcom/miui/notes/gtask/data/Node;Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 441
    .end local v8           #gid:Ljava/lang/String;
    .end local v10           #node:Lcom/miui/notes/gtask/data/Node;
    .end local v11           #syncType:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 442
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 443
    const/4 v6, 0x0

    :cond_6
    throw v0

    .line 365
    .restart local v8       #gid:Ljava/lang/String;
    .restart local v10       #node:Lcom/miui/notes/gtask/data/Node;
    :cond_7
    const/4 v0, 0x1

    :try_start_3
    invoke-direct {p0, v0, v10, v6}, Lcom/miui/notes/gtask/remote/GTaskManager;->doContentSync(ILcom/miui/notes/gtask/data/Node;Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1

    .line 371
    .end local v8           #gid:Ljava/lang/String;
    .end local v10           #node:Lcom/miui/notes/gtask/data/Node;
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_8

    .line 372
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 373
    const/4 v6, 0x0

    :cond_8
    throw v0

    .line 368
    :cond_9
    :try_start_4
    sget-object v0, Lcom/miui/notes/gtask/remote/GTaskManager;->TAG:Ljava/lang/String;

    const-string v1, "failed to query root folder"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1

    .line 398
    .restart local v8       #gid:Ljava/lang/String;
    .restart local v10       #node:Lcom/miui/notes/gtask/data/Node;
    :cond_a
    const/4 v0, 0x1

    :try_start_5
    invoke-direct {p0, v0, v10, v6}, Lcom/miui/notes/gtask/remote/GTaskManager;->doContentSync(ILcom/miui/notes/gtask/data/Node;Landroid/database/Cursor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_2

    .line 405
    .end local v8           #gid:Ljava/lang/String;
    .end local v10           #node:Lcom/miui/notes/gtask/data/Node;
    :catchall_2
    move-exception v0

    if-eqz v6, :cond_b

    .line 406
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 407
    const/4 v6, 0x0

    :cond_b
    throw v0

    .line 402
    :cond_c
    :try_start_6
    sget-object v0, Lcom/miui/notes/gtask/remote/GTaskManager;->TAG:Ljava/lang/String;

    const-string v1, "failed to query call note folder"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_2

    .line 427
    .restart local v8       #gid:Ljava/lang/String;
    .restart local v10       #node:Lcom/miui/notes/gtask/data/Node;
    :cond_d
    const/16 v0, 0xf

    :try_start_7
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 429
    const/4 v11, 0x1

    .restart local v11       #syncType:I
    goto :goto_4

    .line 432
    .end local v11           #syncType:I
    :cond_e
    const/4 v11, 0x4

    .restart local v11       #syncType:I
    goto :goto_4

    .line 438
    .end local v8           #gid:Ljava/lang/String;
    .end local v10           #node:Lcom/miui/notes/gtask/data/Node;
    .end local v11           #syncType:I
    :cond_f
    sget-object v0, Lcom/miui/notes/gtask/remote/GTaskManager;->TAG:Ljava/lang/String;

    const-string v1, "failed to query existing folder"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 441
    :cond_10
    if-eqz v6, :cond_11

    .line 442
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 443
    const/4 v6, 0x0

    .line 448
    :cond_11
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskListHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 449
    .local v9, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/notes/gtask/data/TaskList;>;>;"
    :cond_12
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 450
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 451
    .local v7, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/notes/gtask/data/TaskList;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 452
    .restart local v8       #gid:Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/notes/gtask/data/Node;

    .line 453
    .restart local v10       #node:Lcom/miui/notes/gtask/data/Node;
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 454
    iget-object v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    const/4 v0, 0x2

    invoke-direct {p0, v0, v10, v13}, Lcom/miui/notes/gtask/remote/GTaskManager;->doContentSync(ILcom/miui/notes/gtask/data/Node;Landroid/database/Cursor;)V

    goto :goto_5

    .line 459
    .end local v7           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/notes/gtask/data/TaskList;>;"
    .end local v8           #gid:Ljava/lang/String;
    .end local v10           #node:Lcom/miui/notes/gtask/data/Node;
    :cond_13
    iget-boolean v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mCancelled:Z

    if-nez v0, :cond_0

    .line 460
    invoke-static {}, Lcom/miui/notes/gtask/remote/GTaskClient;->getInstance()Lcom/miui/notes/gtask/remote/GTaskClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/notes/gtask/remote/GTaskClient;->commitUpdate()V

    goto/16 :goto_0
.end method

.method private updateLocalNode(Lcom/miui/notes/gtask/data/Node;Landroid/database/Cursor;)V
    .locals 4
    .parameter "node"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/notes/gtask/exception/NetworkFailureException;
        }
    .end annotation

    .prologue
    .line 584
    iget-boolean v2, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mCancelled:Z

    if-eqz v2, :cond_0

    .line 604
    :goto_0
    return-void

    .line 590
    :cond_0
    new-instance v1, Lcom/miui/notes/gtask/data/SqlNote;

    iget-object v2, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Lcom/miui/notes/gtask/data/SqlNote;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 591
    .local v1, sqlNote:Lcom/miui/notes/gtask/data/SqlNote;
    invoke-virtual {p1}, Lcom/miui/notes/gtask/data/Node;->getLocalJSONFromContent()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/notes/gtask/data/SqlNote;->setContent(Lorg/json/JSONObject;)Z

    .line 593
    instance-of v2, p1, Lcom/miui/notes/gtask/data/Task;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGidToNid:Ljava/util/HashMap;

    move-object v2, p1

    check-cast v2, Lcom/miui/notes/gtask/data/Task;

    invoke-virtual {v2}, Lcom/miui/notes/gtask/data/Task;->getParent()Lcom/miui/notes/gtask/data/TaskList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/notes/gtask/data/TaskList;->getGid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    move-object v0, v2

    .line 595
    .local v0, parentId:Ljava/lang/Long;
    :goto_1
    if-nez v0, :cond_2

    .line 596
    sget-object v2, Lcom/miui/notes/gtask/remote/GTaskManager;->TAG:Ljava/lang/String;

    const-string v3, "cannot find task\'s parent id locally"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    new-instance v2, Lcom/miui/notes/gtask/exception/ActionFailureException;

    const-string v3, "cannot update local node"

    invoke-direct {v2, v3}, Lcom/miui/notes/gtask/exception/ActionFailureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 593
    .end local v0           #parentId:Ljava/lang/Long;
    :cond_1
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    goto :goto_1

    .line 599
    .restart local v0       #parentId:Ljava/lang/Long;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/notes/gtask/data/SqlNote;->setParentId(J)V

    .line 600
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/notes/gtask/data/SqlNote;->commit(Z)V

    .line 603
    invoke-virtual {p1}, Lcom/miui/notes/gtask/data/Node;->getGid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/miui/notes/gtask/remote/GTaskManager;->updateRemoteMeta(Ljava/lang/String;Lcom/miui/notes/gtask/data/SqlNote;)V

    goto :goto_0
.end method

.method private updateRemoteMeta(Ljava/lang/String;Lcom/miui/notes/gtask/data/SqlNote;)V
    .locals 2
    .parameter "gid"
    .parameter "sqlNote"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/notes/gtask/exception/NetworkFailureException;
        }
    .end annotation

    .prologue
    .line 718
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/notes/gtask/data/SqlNote;->isNoteType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 719
    iget-object v1, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mMetaHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/notes/gtask/data/MetaData;

    .line 720
    .local v0, metaData:Lcom/miui/notes/gtask/data/MetaData;
    if-eqz v0, :cond_1

    .line 721
    invoke-virtual {p2}, Lcom/miui/notes/gtask/data/SqlNote;->getContent()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/notes/gtask/data/MetaData;->setMeta(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 722
    invoke-static {}, Lcom/miui/notes/gtask/remote/GTaskClient;->getInstance()Lcom/miui/notes/gtask/remote/GTaskClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/notes/gtask/remote/GTaskClient;->addUpdateNode(Lcom/miui/notes/gtask/data/Node;)V

    .line 731
    .end local v0           #metaData:Lcom/miui/notes/gtask/data/MetaData;
    :cond_0
    :goto_0
    return-void

    .line 724
    .restart local v0       #metaData:Lcom/miui/notes/gtask/data/MetaData;
    :cond_1
    new-instance v0, Lcom/miui/notes/gtask/data/MetaData;

    .end local v0           #metaData:Lcom/miui/notes/gtask/data/MetaData;
    invoke-direct {v0}, Lcom/miui/notes/gtask/data/MetaData;-><init>()V

    .line 725
    .restart local v0       #metaData:Lcom/miui/notes/gtask/data/MetaData;
    invoke-virtual {p2}, Lcom/miui/notes/gtask/data/SqlNote;->getContent()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/notes/gtask/data/MetaData;->setMeta(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 726
    iget-object v1, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mMetaList:Lcom/miui/notes/gtask/data/TaskList;

    invoke-virtual {v1, v0}, Lcom/miui/notes/gtask/data/TaskList;->addChildTask(Lcom/miui/notes/gtask/data/Task;)Z

    .line 727
    iget-object v1, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mMetaHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    invoke-static {}, Lcom/miui/notes/gtask/remote/GTaskClient;->getInstance()Lcom/miui/notes/gtask/remote/GTaskClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/notes/gtask/remote/GTaskClient;->createTask(Lcom/miui/notes/gtask/data/Task;)V

    goto :goto_0
.end method

.method private updateRemoteNode(Lcom/miui/notes/gtask/data/Node;Landroid/database/Cursor;)V
    .locals 8
    .parameter "node"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/notes/gtask/exception/NetworkFailureException;
        }
    .end annotation

    .prologue
    .line 680
    iget-boolean v5, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mCancelled:Z

    if-eqz v5, :cond_0

    .line 715
    :goto_0
    return-void

    .line 684
    :cond_0
    new-instance v3, Lcom/miui/notes/gtask/data/SqlNote;

    iget-object v5, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5, p2}, Lcom/miui/notes/gtask/data/SqlNote;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 687
    .local v3, sqlNote:Lcom/miui/notes/gtask/data/SqlNote;
    invoke-virtual {v3}, Lcom/miui/notes/gtask/data/SqlNote;->getContent()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/miui/notes/gtask/data/Node;->setContentByLocalJSON(Lorg/json/JSONObject;)V

    .line 688
    invoke-static {}, Lcom/miui/notes/gtask/remote/GTaskClient;->getInstance()Lcom/miui/notes/gtask/remote/GTaskClient;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/miui/notes/gtask/remote/GTaskClient;->addUpdateNode(Lcom/miui/notes/gtask/data/Node;)V

    .line 691
    invoke-virtual {p1}, Lcom/miui/notes/gtask/data/Node;->getGid()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/miui/notes/gtask/remote/GTaskManager;->updateRemoteMeta(Ljava/lang/String;Lcom/miui/notes/gtask/data/SqlNote;)V

    .line 694
    invoke-virtual {v3}, Lcom/miui/notes/gtask/data/SqlNote;->isNoteType()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v4, p1

    .line 695
    check-cast v4, Lcom/miui/notes/gtask/data/Task;

    .line 696
    .local v4, task:Lcom/miui/notes/gtask/data/Task;
    invoke-virtual {v4}, Lcom/miui/notes/gtask/data/Task;->getParent()Lcom/miui/notes/gtask/data/TaskList;

    move-result-object v2

    .line 698
    .local v2, preParentList:Lcom/miui/notes/gtask/data/TaskList;
    iget-object v5, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mNidToGid:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/miui/notes/gtask/data/SqlNote;->getParentId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 699
    .local v0, curParentGid:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 700
    sget-object v5, Lcom/miui/notes/gtask/remote/GTaskManager;->TAG:Ljava/lang/String;

    const-string v6, "cannot find task\'s parent tasklist"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    new-instance v5, Lcom/miui/notes/gtask/exception/ActionFailureException;

    const-string v6, "cannot update remote task"

    invoke-direct {v5, v6}, Lcom/miui/notes/gtask/exception/ActionFailureException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 703
    :cond_1
    iget-object v5, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskListHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/notes/gtask/data/TaskList;

    .line 705
    .local v1, curParentList:Lcom/miui/notes/gtask/data/TaskList;
    if-eq v2, v1, :cond_2

    .line 706
    invoke-virtual {v2, v4}, Lcom/miui/notes/gtask/data/TaskList;->removeChildTask(Lcom/miui/notes/gtask/data/Task;)Z

    .line 707
    invoke-virtual {v1, v4}, Lcom/miui/notes/gtask/data/TaskList;->addChildTask(Lcom/miui/notes/gtask/data/Task;)Z

    .line 708
    invoke-static {}, Lcom/miui/notes/gtask/remote/GTaskClient;->getInstance()Lcom/miui/notes/gtask/remote/GTaskClient;

    move-result-object v5

    invoke-virtual {v5, v4, v2, v1}, Lcom/miui/notes/gtask/remote/GTaskClient;->moveTask(Lcom/miui/notes/gtask/data/Task;Lcom/miui/notes/gtask/data/TaskList;Lcom/miui/notes/gtask/data/TaskList;)V

    .line 713
    .end local v0           #curParentGid:Ljava/lang/String;
    .end local v1           #curParentList:Lcom/miui/notes/gtask/data/TaskList;
    .end local v2           #preParentList:Lcom/miui/notes/gtask/data/TaskList;
    .end local v4           #task:Lcom/miui/notes/gtask/data/Task;
    :cond_2
    invoke-virtual {v3}, Lcom/miui/notes/gtask/data/SqlNote;->resetLocalModified()V

    .line 714
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/miui/notes/gtask/data/SqlNote;->commit(Z)V

    goto :goto_0
.end method


# virtual methods
.method public cancelSync()V
    .locals 1

    .prologue
    .line 782
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mCancelled:Z

    .line 783
    return-void
.end method

.method public getSyncAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 778
    invoke-static {}, Lcom/miui/notes/gtask/remote/GTaskClient;->getInstance()Lcom/miui/notes/gtask/remote/GTaskClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/notes/gtask/remote/GTaskClient;->getSyncAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized setActivityContext(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mActivity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sync(Landroid/content/Context;Lcom/miui/notes/gtask/remote/GTaskASyncTask;)I
    .locals 7
    .parameter "context"
    .parameter "asyncTask"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    iget-boolean v5, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mSyncing:Z

    if-eqz v5, :cond_1

    .line 100
    sget-object v2, Lcom/miui/notes/gtask/remote/GTaskManager;->TAG:Ljava/lang/String;

    const-string v3, "Sync is in progress"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v2, 0x3

    .line 152
    :cond_0
    :goto_0
    return v2

    .line 103
    :cond_1
    iput-object p1, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mContext:Landroid/content/Context;

    .line 104
    iget-object v5, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 105
    iput-boolean v3, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mSyncing:Z

    .line 106
    iput-boolean v2, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mCancelled:Z

    .line 107
    iget-object v5, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskListHashMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 108
    iget-object v5, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 109
    iget-object v5, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mMetaHashMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 110
    iget-object v5, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mLocalDeleteIdMap:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 111
    iget-object v5, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGidToNid:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 112
    iget-object v5, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mNidToGid:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 115
    :try_start_0
    invoke-static {}, Lcom/miui/notes/gtask/remote/GTaskClient;->getInstance()Lcom/miui/notes/gtask/remote/GTaskClient;

    move-result-object v0

    .line 116
    .local v0, client:Lcom/miui/notes/gtask/remote/GTaskClient;
    invoke-virtual {v0}, Lcom/miui/notes/gtask/remote/GTaskClient;->resetUpdateArray()V

    .line 119
    iget-boolean v5, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mCancelled:Z

    if-nez v5, :cond_2

    .line 120
    iget-object v5, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v5}, Lcom/miui/notes/gtask/remote/GTaskClient;->login(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 121
    new-instance v5, Lcom/miui/notes/gtask/exception/NetworkFailureException;

    const-string v6, "login google task failed"

    invoke-direct {v5, v6}, Lcom/miui/notes/gtask/exception/NetworkFailureException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/miui/notes/gtask/exception/NetworkFailureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/miui/notes/gtask/exception/ActionFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 132
    .end local v0           #client:Lcom/miui/notes/gtask/remote/GTaskClient;
    :catch_0
    move-exception v1

    .line 133
    .local v1, e:Lcom/miui/notes/gtask/exception/NetworkFailureException;
    :try_start_1
    sget-object v4, Lcom/miui/notes/gtask/remote/GTaskManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/miui/notes/gtask/exception/NetworkFailureException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    iget-object v4, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskListHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 144
    iget-object v4, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 145
    iget-object v4, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mMetaHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 146
    iget-object v4, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mLocalDeleteIdMap:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 147
    iget-object v4, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGidToNid:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 148
    iget-object v4, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mNidToGid:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 149
    iput-boolean v2, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mSyncing:Z

    move v2, v3

    goto :goto_0

    .line 126
    .end local v1           #e:Lcom/miui/notes/gtask/exception/NetworkFailureException;
    .restart local v0       #client:Lcom/miui/notes/gtask/remote/GTaskClient;
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mContext:Landroid/content/Context;

    const v6, 0x7f090049

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->publishProgess(Ljava/lang/String;)V

    .line 127
    invoke-direct {p0}, Lcom/miui/notes/gtask/remote/GTaskManager;->initGTaskList()V

    .line 130
    iget-object v5, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mContext:Landroid/content/Context;

    const v6, 0x7f09004a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/miui/notes/gtask/remote/GTaskASyncTask;->publishProgess(Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/miui/notes/gtask/remote/GTaskManager;->syncContent()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/miui/notes/gtask/exception/NetworkFailureException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/miui/notes/gtask/exception/ActionFailureException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 143
    iget-object v3, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskListHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 144
    iget-object v3, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 145
    iget-object v3, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mMetaHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 146
    iget-object v3, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mLocalDeleteIdMap:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 147
    iget-object v3, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGidToNid:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 148
    iget-object v3, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mNidToGid:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 149
    iput-boolean v2, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mSyncing:Z

    .line 152
    iget-boolean v3, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mCancelled:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x4

    goto/16 :goto_0

    .line 135
    .end local v0           #client:Lcom/miui/notes/gtask/remote/GTaskClient;
    :catch_1
    move-exception v1

    .line 136
    .local v1, e:Lcom/miui/notes/gtask/exception/ActionFailureException;
    :try_start_3
    sget-object v3, Lcom/miui/notes/gtask/remote/GTaskManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/miui/notes/gtask/exception/ActionFailureException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    iget-object v3, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskListHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 144
    iget-object v3, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 145
    iget-object v3, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mMetaHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 146
    iget-object v3, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mLocalDeleteIdMap:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 147
    iget-object v3, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGidToNid:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 148
    iget-object v3, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mNidToGid:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 149
    iput-boolean v2, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mSyncing:Z

    move v2, v4

    goto/16 :goto_0

    .line 138
    .end local v1           #e:Lcom/miui/notes/gtask/exception/ActionFailureException;
    :catch_2
    move-exception v1

    .line 139
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    sget-object v3, Lcom/miui/notes/gtask/remote/GTaskManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 143
    iget-object v3, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskListHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 144
    iget-object v3, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 145
    iget-object v3, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mMetaHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 146
    iget-object v3, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mLocalDeleteIdMap:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 147
    iget-object v3, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGidToNid:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 148
    iget-object v3, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mNidToGid:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 149
    iput-boolean v2, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mSyncing:Z

    move v2, v4

    goto/16 :goto_0

    .line 143
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskListHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 144
    iget-object v4, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 145
    iget-object v4, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mMetaHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 146
    iget-object v4, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mLocalDeleteIdMap:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 147
    iget-object v4, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mGidToNid:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 148
    iget-object v4, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mNidToGid:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 149
    iput-boolean v2, p0, Lcom/miui/notes/gtask/remote/GTaskManager;->mSyncing:Z

    throw v3
.end method
