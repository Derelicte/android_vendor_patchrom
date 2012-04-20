.class public Lcom/miui/milk/control/cloud/CalllogCloudController;
.super Lcom/miui/milk/control/cloud/BaseCloudController;
.source "CalllogCloudController.java"


# instance fields
.field private mCallsManager:Lcom/miui/milk/source/calls2/CallsManager;

.field private mCallsTracker:Lcom/miui/milk/source/calls2/CallsTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/milk/storage/CalllogTrackerStore;)V
    .locals 1
    .parameter "context"
    .parameter "trackerStore"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/miui/milk/control/cloud/BaseCloudController;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Lcom/miui/milk/source/calls2/CallsManager;

    invoke-direct {v0, p1}, Lcom/miui/milk/source/calls2/CallsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsManager:Lcom/miui/milk/source/calls2/CallsManager;

    .line 39
    new-instance v0, Lcom/miui/milk/source/calls2/CallsTracker;

    invoke-direct {v0, p1, p2}, Lcom/miui/milk/source/calls2/CallsTracker;-><init>(Landroid/content/Context;Lcom/miui/milk/storage/CalllogTrackerStore;)V

    iput-object v0, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsTracker:Lcom/miui/milk/source/calls2/CallsTracker;

    .line 40
    return-void
.end method

.method private applyBatch(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 318
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p2, trackAddMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 331
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v6, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsManager:Lcom/miui/milk/source/calls2/CallsManager;

    invoke-virtual {v6, p1}, Lcom/miui/milk/source/calls2/CallsManager;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    .line 321
    .local v5, res:[Landroid/content/ContentProviderResult;
    if-eqz v5, :cond_1

    .line 322
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 323
    .local v2, key:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v6, v5, v6

    iget-object v6, v6, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 324
    .local v3, luid:J
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 325
    .local v0, guid:Ljava/lang/String;
    iget-object v6, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsTracker:Lcom/miui/milk/source/calls2/CallsTracker;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8, v0}, Lcom/miui/milk/source/calls2/CallsTracker;->setTrackerStatus(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_1

    .line 329
    .end local v0           #guid:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/Integer;
    .end local v3           #luid:J
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 330
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method private checkEmpty()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsManager:Lcom/miui/milk/source/calls2/CallsManager;

    invoke-virtual {v0}, Lcom/miui/milk/source/calls2/CallsManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsTracker:Lcom/miui/milk/source/calls2/CallsTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/calls2/CallsTracker;->resetStore()V

    .line 341
    :cond_0
    return-void
.end method

.method private closeStore()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsTracker:Lcom/miui/milk/source/calls2/CallsTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/calls2/CallsTracker;->closeStore()V

    .line 349
    return-void
.end method

.method private openStore()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsTracker:Lcom/miui/milk/source/calls2/CallsTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/calls2/CallsTracker;->openStore()V

    .line 345
    return-void
.end method

.method private processAfterSave(Lcom/miui/milk/model/CalllogProtos2$Calllog;Lcom/miui/milk/control/callback/AsyncTaskCallback;)V
    .locals 8
    .parameter "calllog"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/CalllogCloudController;->openStore()V

    .line 196
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Calllog;->getCallList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/milk/model/CalllogProtos2$Call;

    .line 198
    .local v0, call:Lcom/miui/milk/model/CalllogProtos2$Call;
    :try_start_0
    invoke-virtual {v0}, Lcom/miui/milk/model/CalllogProtos2$Call;->getLuid()Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, luid:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/miui/milk/model/CalllogProtos2$Call;->getGuid()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, guid:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 201
    const-string v5, "CalllogCloudController"

    const-string v6, "someting error from server, call without luid"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "someting error from server, call without luid"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v2           #guid:Ljava/lang/String;
    .end local v4           #luid:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 213
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "CalllogCloudController"

    const-string v6, "Cannot process after save call "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/CalllogCloudController;->closeStore()V

    .line 215
    throw v1

    .line 204
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #guid:Ljava/lang/String;
    .restart local v4       #luid:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "0"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 205
    :cond_1
    const-string v5, "CalllogCloudController"

    const-string v6, "someting error from server, call without guid"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "someting error from server, call without guid"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 208
    :cond_2
    iget-object v5, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsTracker:Lcom/miui/milk/source/calls2/CallsTracker;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6, v2}, Lcom/miui/milk/source/calls2/CallsTracker;->setTrackerStatus(Ljava/lang/String;ZLjava/lang/String;)V

    .line 209
    const-string v5, "CalllogCloudController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "save call guid/luid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 218
    .end local v0           #call:Lcom/miui/milk/model/CalllogProtos2$Call;
    .end local v2           #guid:Ljava/lang/String;
    .end local v4           #luid:Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/CalllogCloudController;->closeStore()V

    .line 219
    return-void
.end method

.method private saveCalllogPerBatch(Lcom/miui/milk/control/callback/AsyncTaskCallback;IILandroid/content/SharedPreferences;II)V
    .locals 23
    .parameter "callback"
    .parameter "start"
    .parameter "totalCount"
    .parameter "sharedPref"
    .parameter "batchCount"
    .parameter "totalTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual/range {p0 .. p1}, Lcom/miui/milk/control/cloud/CalllogCloudController;->tryPing(Lcom/miui/milk/control/callback/AsyncTaskCallback;)V

    .line 98
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos2$Calllog;->newBuilder()Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;

    move-result-object v6

    .line 99
    .local v6, calllog:Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;
    const/4 v4, 0x0

    .line 102
    .local v4, callCount:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsTracker:Lcom/miui/milk/source/calls2/CallsTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/miui/milk/source/calls2/CallsTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_2

    .line 103
    move/from16 v0, p2

    if-lt v10, v0, :cond_1

    move/from16 v0, p2

    add-int/lit16 v0, v0, 0xfa

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v10, v0, :cond_1

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsTracker:Lcom/miui/milk/source/calls2/CallsTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/miui/milk/source/calls2/CallsTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 106
    .local v5, callId:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsManager:Lcom/miui/milk/source/calls2/CallsManager;

    move-object/from16 v19, v0

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lcom/miui/milk/source/calls2/CallsManager;->load(J)Lcom/miui/milk/model/CalllogProtos2$Call;

    move-result-object v3

    .line 107
    .local v3, call:Lcom/miui/milk/model/CalllogProtos2$Call;
    if-eqz v3, :cond_1

    .line 108
    invoke-virtual {v3}, Lcom/miui/milk/model/CalllogProtos2$Call;->toBuilder()Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    move-result-object v7

    .line 109
    .local v7, cb:Lcom/miui/milk/model/CalllogProtos2$Call$Builder;
    sget-object v19, Lcom/miui/milk/model/CommonProtos$ActionType;->NEW:Lcom/miui/milk/model/CommonProtos$ActionType;

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->build()Lcom/miui/milk/model/CalllogProtos2$Call;

    move-result-object v3

    .line 110
    invoke-virtual {v6, v3}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->addCall(Lcom/miui/milk/model/CalllogProtos2$Call;)Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;

    .line 111
    add-int/lit8 v4, v4, 0x1

    .line 112
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    add-int v22, p2, v4

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/miui/milk/common/Constants;->PROMPT_READING:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    mul-int/lit8 v21, p5, 0xa

    add-int v21, v21, p2

    add-int v21, v21, v4

    mul-int/lit8 v21, v21, 0x64

    div-int v21, v21, p6

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    const-string v21, "100"

    aput-object v21, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_1

    .line 117
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCanceled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v3           #call:Lcom/miui/milk/model/CalllogProtos2$Call;
    .end local v5           #callId:Ljava/lang/String;
    .end local v7           #cb:Lcom/miui/milk/model/CalllogProtos2$Call$Builder;
    :cond_0
    :goto_1
    return-void

    .line 121
    .restart local v5       #callId:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 122
    .local v8, e:Ljava/lang/Exception;
    const-string v19, "CalllogCloudController"

    const-string v20, "Cannot load calls "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .end local v5           #callId:Ljava/lang/String;
    .end local v8           #e:Ljava/lang/Exception;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 127
    :cond_2
    const-string v19, "CalllogCloudController"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "deviceId : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mDeviceId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v19, "CalllogCloudController"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "IMSI : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mIMSI:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v6}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->getCallList()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    if-nez v19, :cond_3

    .line 131
    const-string v19, "CalllogCloudController"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Export Calllog Counts : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 135
    :cond_3
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v16

    .line 136
    .local v16, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setCalllog(Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/CalllogCloudController;->getSyncVersion()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setVersion(Ljava/lang/String;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 139
    if-eqz v16, :cond_0

    .line 140
    const/4 v13, 0x0

    .line 142
    .local v13, response:Lorg/apache/http/HttpResponse;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/CalllogCloudController;->prepareTransportParams()Ljava/util/HashMap;

    move-result-object v11

    .line 144
    .local v11, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    add-int v22, p2, v4

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/miui/milk/common/Constants;->PROMPT_SENDING:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    mul-int/lit8 v21, p5, 0xa

    add-int v21, v21, p2

    add-int v21, v21, v4

    mul-int/lit8 v21, v21, 0x64

    div-int v21, v21, p6

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    const-string v21, "100"

    aput-object v21, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_4

    .line 148
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCanceled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 186
    .end local v11           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v8

    .line 187
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v19, "CalllogCloudController"

    const-string v20, "Cannot send call "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lcom/miui/milk/control/cloud/CalllogCloudController;->makeExceptionCallback(Lcom/miui/milk/control/callback/AsyncTaskCallback;Lorg/apache/http/HttpResponse;)V

    .line 189
    throw v8

    .line 152
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v11       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mTransport:Lcom/miui/milk/transport/HttpTransport;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/CalllogCloudController;->getSyncSaveUrl()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v16 .. v16}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v11}, Lcom/miui/milk/transport/HttpTransport;->sendRequest(Ljava/lang/String;Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 153
    const-string v19, "CalllogCloudController"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Export Calllog Counts : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/miui/milk/control/cloud/CalllogCloudController;->checkResponseStatus(Lorg/apache/http/HttpResponse;)V

    .line 156
    if-eqz v13, :cond_7

    .line 158
    const-string v19, "M_WATERMARK"

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v18

    .line 159
    .local v18, waterMarkHeader:Lorg/apache/http/Header;
    const/16 v17, 0x0

    .line 160
    .local v17, waterMark:Ljava/lang/String;
    if-eqz v18, :cond_5

    .line 161
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v17

    .line 163
    :cond_5
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 164
    .local v9, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v9}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom([B)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v15

    .line 165
    .local v15, syncResp:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual {v15}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getCalllog()Lcom/miui/milk/model/CalllogProtos2$Calllog;

    move-result-object v12

    .line 166
    .local v12, respCalllog:Lcom/miui/milk/model/CalllogProtos2$Calllog;
    if-eqz v12, :cond_6

    .line 167
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/miui/milk/control/cloud/CalllogCloudController;->processAfterSave(Lcom/miui/milk/model/CalllogProtos2$Calllog;Lcom/miui/milk/control/callback/AsyncTaskCallback;)V

    .line 170
    :cond_6
    if-eqz v17, :cond_7

    .line 171
    invoke-interface/range {p4 .. p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 172
    .local v14, sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v19, "watermark_calllog"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 173
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 174
    const-string v19, "CalllogCloudController"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "get waterMark : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .end local v9           #entity:Lorg/apache/http/HttpEntity;
    .end local v12           #respCalllog:Lcom/miui/milk/model/CalllogProtos2$Calllog;
    .end local v14           #sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    .end local v15           #syncResp:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v17           #waterMark:Ljava/lang/String;
    .end local v18           #waterMarkHeader:Lorg/apache/http/Header;
    :cond_7
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    add-int v22, p2, v4

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/miui/milk/common/Constants;->PROMPT_SENDING:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    mul-int/lit8 v21, p5, 0xa

    add-int v21, v21, p2

    add-int v21, v21, v4

    add-int/lit8 v21, v21, 0xa

    mul-int/lit8 v21, v21, 0x64

    div-int v21, v21, p6

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    const-string v21, "100"

    aput-object v21, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_0

    .line 183
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCanceled:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method


# virtual methods
.method public calculateSyncSize()I
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/CalllogCloudController;->checkEmpty()V

    .line 45
    iget-object v1, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsTracker:Lcom/miui/milk/source/calls2/CallsTracker;

    invoke-virtual {v1}, Lcom/miui/milk/source/calls2/CallsTracker;->prepareChangeItems()V

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, totalCount:I
    iget-object v1, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsTracker:Lcom/miui/milk/source/calls2/CallsTracker;

    invoke-virtual {v1}, Lcom/miui/milk/source/calls2/CallsTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 48
    return v0
.end method

.method public clearPrepared()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsTracker:Lcom/miui/milk/source/calls2/CallsTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/calls2/CallsTracker;->clearPrepared()V

    .line 354
    return-void
.end method

.method public read(Lcom/miui/milk/control/callback/AsyncTaskCallback;Landroid/content/SharedPreferences;)V
    .locals 29
    .parameter "callback"
    .parameter "sharedPref"

    .prologue
    .line 223
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCanceled:Z

    .line 225
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/miui/milk/control/cloud/CalllogCloudController;->tryPing(Lcom/miui/milk/control/callback/AsyncTaskCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/CalllogCloudController;->checkEmpty()V

    .line 232
    const/16 v16, 0x0

    .line 234
    .local v16, response:Lorg/apache/http/HttpResponse;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/CalllogCloudController;->prepareTransportParams()Ljava/util/HashMap;

    move-result-object v15

    .line 236
    .local v15, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v25, "restore_watermark_calllog"

    const-string v26, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 237
    .local v22, waterMark:Ljava/lang/String;
    if-eqz v22, :cond_0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_0

    .line 238
    const-string v25, "M_WATERMARK_ORIGINAL"

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_0
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v18

    .line 242
    .local v18, syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos2$Calllog;->newBuilder()Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->build()Lcom/miui/milk/model/CalllogProtos2$Calllog;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setCalllog(Lcom/miui/milk/model/CalllogProtos2$Calllog;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mTransport:Lcom/miui/milk/transport/HttpTransport;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/CalllogCloudController;->getSyncReadUrl()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v18 .. v18}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2, v15}, Lcom/miui/milk/transport/HttpTransport;->sendRequest(Ljava/lang/String;Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v16

    .line 245
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/cloud/CalllogCloudController;->checkResponseStatus(Lorg/apache/http/HttpResponse;)V

    .line 246
    if-eqz v16, :cond_4

    .line 248
    const-string v25, "M_WATERMARK"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v23

    .line 249
    .local v23, waterMarkHeader:Lorg/apache/http/Header;
    const/16 v24, 0x0

    .line 250
    .local v24, waterMarkNew:Ljava/lang/String;
    if-eqz v23, :cond_1

    .line 251
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v24

    .line 254
    :cond_1
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    .line 255
    .local v10, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v10}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom([B)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v19

    .line 257
    .local v19, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual/range {v19 .. v19}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getCalllog()Lcom/miui/milk/model/CalllogProtos2$Calllog;

    move-result-object v5

    .line 258
    .local v5, calllog:Lcom/miui/milk/model/CalllogProtos2$Calllog;
    if-eqz v5, :cond_a

    .line 259
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/CalllogCloudController;->openStore()V

    .line 260
    const/4 v4, 0x0

    .line 261
    .local v4, callCount:I
    invoke-virtual {v5}, Lcom/miui/milk/model/CalllogProtos2$Calllog;->getCallList()Ljava/util/List;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v20

    .line 262
    .local v20, totalCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsManager:Lcom/miui/milk/source/calls2/CallsManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/miui/milk/source/calls2/CallsManager;->prepareCall()V

    .line 263
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v14, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 266
    .local v21, trackAddMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {v5}, Lcom/miui/milk/model/CalllogProtos2$Calllog;->getCallList()Ljava/util/List;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/milk/model/CalllogProtos2$Call;

    .line 267
    .local v3, call:Lcom/miui/milk/model/CalllogProtos2$Call;
    invoke-virtual {v3}, Lcom/miui/milk/model/CalllogProtos2$Call;->getDate()J

    move-result-wide v6

    .line 268
    .local v6, date:J
    invoke-virtual {v3}, Lcom/miui/milk/model/CalllogProtos2$Call;->getNumber()Ljava/lang/String;

    move-result-object v13

    .line 270
    .local v13, number:Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsManager:Lcom/miui/milk/source/calls2/CallsManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7, v13}, Lcom/miui/milk/source/calls2/CallsManager;->exists(JLjava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsManager:Lcom/miui/milk/source/calls2/CallsManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7, v13}, Lcom/miui/milk/source/calls2/CallsManager;->load(JLjava/lang/String;)Lcom/miui/milk/model/CalllogProtos2$Call;

    move-result-object v11

    .line 273
    .local v11, existCall:Lcom/miui/milk/model/CalllogProtos2$Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsTracker:Lcom/miui/milk/source/calls2/CallsTracker;

    move-object/from16 v25, v0

    invoke-virtual {v11}, Lcom/miui/milk/model/CalllogProtos2$Call;->getLuid()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    invoke-virtual {v3}, Lcom/miui/milk/model/CalllogProtos2$Call;->getGuid()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v25 .. v28}, Lcom/miui/milk/source/calls2/CallsTracker;->setTrackerStatus(Ljava/lang/String;ZLjava/lang/String;)V

    .line 283
    .end local v11           #existCall:Lcom/miui/milk/model/CalllogProtos2$Call;
    :cond_3
    :goto_0
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-object v28, Lcom/miui/milk/common/Constants;->PROMPT_WRITING:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    mul-int/lit8 v27, v4, 0x64

    div-int v27, v27, v20

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    const-string v27, "100"

    aput-object v27, v25, v26

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v25

    if-nez v25, :cond_2

    .line 287
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCanceled:Z

    .line 315
    .end local v3           #call:Lcom/miui/milk/model/CalllogProtos2$Call;
    .end local v4           #callCount:I
    .end local v5           #calllog:Lcom/miui/milk/model/CalllogProtos2$Calllog;
    .end local v6           #date:J
    .end local v10           #entity:Lorg/apache/http/HttpEntity;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #number:Ljava/lang/String;
    .end local v14           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v15           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16           #response:Lorg/apache/http/HttpResponse;
    .end local v18           #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .end local v19           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v20           #totalCount:I
    .end local v21           #trackAddMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v22           #waterMark:Ljava/lang/String;
    .end local v23           #waterMarkHeader:Lorg/apache/http/Header;
    .end local v24           #waterMarkNew:Ljava/lang/String;
    :cond_4
    :goto_1
    return-void

    .line 226
    :catch_0
    move-exception v9

    .line 227
    .local v9, e1:Ljava/lang/Exception;
    goto :goto_1

    .line 275
    .end local v9           #e1:Ljava/lang/Exception;
    .restart local v3       #call:Lcom/miui/milk/model/CalllogProtos2$Call;
    .restart local v4       #callCount:I
    .restart local v5       #calllog:Lcom/miui/milk/model/CalllogProtos2$Calllog;
    .restart local v6       #date:J
    .restart local v10       #entity:Lorg/apache/http/HttpEntity;
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v13       #number:Ljava/lang/String;
    .restart local v14       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v15       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16       #response:Lorg/apache/http/HttpResponse;
    .restart local v18       #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .restart local v19       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .restart local v20       #totalCount:I
    .restart local v21       #trackAddMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v22       #waterMark:Ljava/lang/String;
    .restart local v23       #waterMarkHeader:Lorg/apache/http/Header;
    .restart local v24       #waterMarkNew:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsManager:Lcom/miui/milk/source/calls2/CallsManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v14}, Lcom/miui/milk/source/calls2/CallsManager;->prepareAdd(Lcom/miui/milk/model/CalllogProtos2$Call;Ljava/util/ArrayList;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 276
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual {v3}, Lcom/miui/milk/model/CalllogProtos2$Call;->getGuid()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_6
    move/from16 v0, v20

    if-eq v4, v0, :cond_7

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v25

    const/16 v26, 0x19

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_3

    .line 279
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v14, v1}, Lcom/miui/milk/control/cloud/CalllogCloudController;->applyBatch(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 311
    .end local v3           #call:Lcom/miui/milk/model/CalllogProtos2$Call;
    .end local v4           #callCount:I
    .end local v5           #calllog:Lcom/miui/milk/model/CalllogProtos2$Calllog;
    .end local v6           #date:J
    .end local v10           #entity:Lorg/apache/http/HttpEntity;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #number:Ljava/lang/String;
    .end local v14           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v15           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18           #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .end local v19           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v20           #totalCount:I
    .end local v21           #trackAddMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v22           #waterMark:Ljava/lang/String;
    .end local v23           #waterMarkHeader:Lorg/apache/http/Header;
    .end local v24           #waterMarkNew:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 312
    .local v8, e:Ljava/lang/Exception;
    const-string v25, "CalllogCloudController"

    const-string v26, "Cannot read call "

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/miui/milk/control/cloud/CalllogCloudController;->makeExceptionCallback(Lcom/miui/milk/control/callback/AsyncTaskCallback;Lorg/apache/http/HttpResponse;)V

    goto :goto_1

    .line 291
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v4       #callCount:I
    .restart local v5       #calllog:Lcom/miui/milk/model/CalllogProtos2$Calllog;
    .restart local v10       #entity:Lorg/apache/http/HttpEntity;
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v14       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v15       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v18       #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .restart local v19       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .restart local v20       #totalCount:I
    .restart local v21       #trackAddMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v22       #waterMark:Ljava/lang/String;
    .restart local v23       #waterMarkHeader:Lorg/apache/http/Header;
    .restart local v24       #waterMarkNew:Ljava/lang/String;
    :cond_8
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/CalllogCloudController;->closeStore()V

    .line 292
    const-string v25, "CalllogCloudController"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Import Call Counts : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, ""

    aput-object v27, v25, v26

    const/16 v26, 0x1

    const/16 v27, 0x64

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    const-string v27, "100"

    aput-object v27, v25, v26

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v25

    if-nez v25, :cond_9

    .line 294
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCanceled:Z

    goto/16 :goto_1

    .line 297
    :cond_9
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "SUCCESS"

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v25

    if-nez v25, :cond_a

    .line 298
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCanceled:Z

    goto/16 :goto_1

    .line 303
    .end local v4           #callCount:I
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v20           #totalCount:I
    .end local v21           #trackAddMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_a
    if-eqz v24, :cond_4

    .line 304
    invoke-interface/range {p2 .. p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 305
    .local v17, sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v25, "restore_watermark_calllog"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 306
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 307
    const-string v25, "CalllogCloudController"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "new waterMark : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method

.method public saveInBatchMode(Lcom/miui/milk/control/callback/AsyncTaskCallback;Landroid/content/SharedPreferences;)V
    .locals 11
    .parameter "callback"
    .parameter "sharedPref"

    .prologue
    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCanceled:Z

    .line 54
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/CalllogCloudController;->checkEmpty()V

    .line 56
    iget-object v0, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsTracker:Lcom/miui/milk/source/calls2/CallsTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/calls2/CallsTracker;->prepareChangeItems()V

    .line 57
    iget-object v0, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsTracker:Lcom/miui/milk/source/calls2/CallsTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/calls2/CallsTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 58
    .local v8, c_new:Ljava/lang/String;
    const/4 v3, 0x0

    .line 59
    .local v3, totalCount:I
    iget-object v0, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsTracker:Lcom/miui/milk/source/calls2/CallsTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/calls2/CallsTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v3, v0

    .line 61
    div-int/lit16 v7, v3, 0xfa

    .line 62
    .local v7, batches:I
    mul-int/lit16 v0, v7, 0xfa

    if-le v3, v0, :cond_0

    .line 63
    add-int/lit8 v7, v7, 0x1

    .line 66
    :cond_0
    mul-int/lit8 v0, v7, 0xa

    add-int v6, v3, v0

    .line 67
    .local v6, totalTime:I
    const/4 v5, 0x0

    .line 69
    .local v5, batchCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 71
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCanceled:Z

    if-eqz v0, :cond_2

    .line 93
    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 72
    invoke-direct/range {v0 .. v6}, Lcom/miui/milk/control/cloud/CalllogCloudController;->saveCalllogPerBatch(Lcom/miui/milk/control/callback/AsyncTaskCallback;IILandroid/content/SharedPreferences;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    add-int/lit16 v2, v2, 0xfa

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 73
    :catch_0
    move-exception v9

    .line 74
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "CalllogCloudController"

    const-string v1, "Cannot save calllog batch "

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 79
    .end local v9           #e:Ljava/lang/Exception;
    :cond_3
    iget-boolean v0, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCanceled:Z

    if-nez v0, :cond_1

    .line 81
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "/"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x1

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x2

    const-string v4, "100"

    aput-object v4, v0, v1

    invoke-interface {p1, v0}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCanceled:Z

    goto :goto_1

    .line 85
    :cond_4
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "SUCCESS"

    aput-object v4, v0, v1

    const/4 v1, 0x1

    aput-object v8, v0, v1

    const/4 v1, 0x2

    const-string v4, "0"

    aput-object v4, v0, v1

    const/4 v1, 0x3

    const-string v4, "0"

    aput-object v4, v0, v1

    invoke-interface {p1, v0}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCanceled:Z

    goto :goto_1

    .line 91
    :cond_5
    iget-object v0, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsTracker:Lcom/miui/milk/source/calls2/CallsTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/calls2/CallsTracker;->removeDeletedItemKeys()V

    goto :goto_1
.end method
