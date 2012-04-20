.class public Lcom/miui/milk/control/cloud/SmsCloudController;
.super Lcom/miui/milk/control/cloud/BaseCloudController;
.source "SmsCloudController.java"


# instance fields
.field private mSmsManager:Lcom/miui/milk/source/sms/SmsManager;

.field private mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/milk/storage/SmsTrackerStore;Lcom/miui/milk/storage/SmsBookmarkTrackerStore;)V
    .locals 1
    .parameter "context"
    .parameter "sTrackerStore"
    .parameter "sbTrackerStore"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/miui/milk/control/cloud/BaseCloudController;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Lcom/miui/milk/source/sms/SmsManager;

    invoke-direct {v0, p1}, Lcom/miui/milk/source/sms/SmsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsManager:Lcom/miui/milk/source/sms/SmsManager;

    .line 36
    new-instance v0, Lcom/miui/milk/source/sms/SmsTracker;

    invoke-direct {v0, p1, p2}, Lcom/miui/milk/source/sms/SmsTracker;-><init>(Landroid/content/Context;Lcom/miui/milk/storage/SmsTrackerStore;)V

    iput-object v0, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    .line 37
    return-void
.end method

.method private checkEmpty()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsManager:Lcom/miui/milk/source/sms/SmsManager;

    invoke-virtual {v0}, Lcom/miui/milk/source/sms/SmsManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/sms/SmsTracker;->resetStore()V

    .line 352
    :cond_0
    return-void
.end method

.method private closeStore()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/sms/SmsTracker;->closeStore()V

    .line 360
    return-void
.end method

.method private openStore()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/sms/SmsTracker;->openStore()V

    .line 356
    return-void
.end method

.method private processAfterSave(Lcom/miui/milk/model/SmsProtos$MmsSms;Lcom/miui/milk/control/callback/AsyncTaskCallback;)V
    .locals 8
    .parameter "smsPool"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/SmsCloudController;->openStore()V

    .line 232
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$MmsSms;->getSmsList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/milk/model/SmsProtos$Sms;

    .line 234
    .local v4, sms:Lcom/miui/milk/model/SmsProtos$Sms;
    :try_start_0
    invoke-virtual {v4}, Lcom/miui/milk/model/SmsProtos$Sms;->getLuid()Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, luid:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/miui/milk/model/SmsProtos$Sms;->getGuid()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, guid:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 237
    const-string v5, "SmsCloudController"

    const-string v6, "someting error from server, sms without luid"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "someting error from server, sms without luid"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v1           #guid:Ljava/lang/String;
    .end local v3           #luid:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 249
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "SmsCloudController"

    const-string v6, "Cannot process after save sms "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/SmsCloudController;->closeStore()V

    .line 251
    throw v0

    .line 240
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #guid:Ljava/lang/String;
    .restart local v3       #luid:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "0"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 241
    :cond_1
    const-string v5, "SmsCloudController"

    const-string v6, "someting error from server, sms without guid"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "someting error from server, sms without guid"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 244
    :cond_2
    iget-object v5, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6, v1}, Lcom/miui/milk/source/sms/SmsTracker;->setTrackerStatus(Ljava/lang/String;ZLjava/lang/String;)V

    .line 245
    const-string v5, "SmsCloudController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "save sms guid/luid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 255
    .end local v1           #guid:Ljava/lang/String;
    .end local v3           #luid:Ljava/lang/String;
    .end local v4           #sms:Lcom/miui/milk/model/SmsProtos$Sms;
    :cond_3
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/SmsCloudController;->closeStore()V

    .line 256
    return-void
.end method

.method private saveSmsPerBatch(Lcom/miui/milk/control/callback/AsyncTaskCallback;IILandroid/content/SharedPreferences;II)V
    .locals 25
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
    .line 97
    invoke-virtual/range {p0 .. p1}, Lcom/miui/milk/control/cloud/SmsCloudController;->tryPing(Lcom/miui/milk/control/callback/AsyncTaskCallback;)V

    .line 99
    invoke-static {}, Lcom/miui/milk/model/SmsProtos$MmsSms;->newBuilder()Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;

    move-result-object v16

    .line 101
    .local v16, smsPool:Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;
    const/4 v14, 0x0

    .line 106
    .local v14, smsCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/sms/SmsTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v6, v0, :cond_2

    .line 107
    move/from16 v0, p2

    if-lt v6, v0, :cond_1

    move/from16 v0, p2

    add-int/lit16 v0, v0, 0xfa

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v6, v0, :cond_1

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/sms/SmsTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 110
    .local v15, smsId:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsManager:Lcom/miui/milk/source/sms/SmsManager;

    move-object/from16 v21, v0

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/miui/milk/source/sms/SmsManager;->load(J)Lcom/miui/milk/model/SmsProtos$Sms;

    move-result-object v13

    .line 111
    .local v13, sms:Lcom/miui/milk/model/SmsProtos$Sms;
    if-eqz v13, :cond_1

    .line 112
    invoke-virtual {v13}, Lcom/miui/milk/model/SmsProtos$Sms;->toBuilder()Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    move-result-object v11

    .line 113
    .local v11, sb:Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    sget-object v21, Lcom/miui/milk/model/CommonProtos$ActionType;->NEW:Lcom/miui/milk/model/CommonProtos$ActionType;

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->build()Lcom/miui/milk/model/SmsProtos$Sms;

    move-result-object v13

    .line 114
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->addSms(Lcom/miui/milk/model/SmsProtos$Sms;)Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;

    .line 115
    add-int/lit8 v14, v14, 0x1

    .line 116
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    add-int v24, p2, v14

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/miui/milk/common/Constants;->PROMPT_READING:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    mul-int/lit8 v23, p5, 0xa

    add-int v23, v23, p2

    add-int v23, v23, v14

    mul-int/lit8 v23, v23, 0x64

    div-int v23, v23, p6

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, "100"

    aput-object v23, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_1

    .line 121
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/SmsCloudController;->mCanceled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v11           #sb:Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    .end local v13           #sms:Lcom/miui/milk/model/SmsProtos$Sms;
    .end local v15           #smsId:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 125
    .restart local v15       #smsId:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 126
    .local v3, e:Ljava/lang/Exception;
    const-string v21, "SmsCloudController"

    const-string v22, "Cannot load sms "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    .end local v3           #e:Ljava/lang/Exception;
    .end local v15           #smsId:Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 132
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/sms/SmsTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 133
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/sms/SmsTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/sms/SmsTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int v21, v21, v22

    move/from16 v0, v21

    if-ge v6, v0, :cond_5

    .line 135
    move/from16 v0, p2

    if-lt v6, v0, :cond_4

    move/from16 v0, p2

    add-int/lit16 v0, v0, 0xfa

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v6, v0, :cond_4

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/sms/SmsTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    sub-int v7, v6, v21

    .line 137
    .local v7, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/sms/SmsTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 139
    .restart local v15       #smsId:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsManager:Lcom/miui/milk/source/sms/SmsManager;

    move-object/from16 v21, v0

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/miui/milk/source/sms/SmsManager;->load(J)Lcom/miui/milk/model/SmsProtos$Sms;

    move-result-object v13

    .line 140
    .restart local v13       #sms:Lcom/miui/milk/model/SmsProtos$Sms;
    if-eqz v13, :cond_4

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    move-object/from16 v21, v0

    invoke-virtual {v13}, Lcom/miui/milk/model/SmsProtos$Sms;->getLuid()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/miui/milk/source/sms/SmsTracker;->getGuidByLuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, guid:Ljava/lang/String;
    invoke-virtual {v13}, Lcom/miui/milk/model/SmsProtos$Sms;->toBuilder()Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    move-result-object v11

    .line 143
    .restart local v11       #sb:Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    if-eqz v5, :cond_3

    .line 144
    invoke-virtual {v11, v5}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    .line 146
    :cond_3
    sget-object v21, Lcom/miui/milk/model/CommonProtos$ActionType;->UPDATE:Lcom/miui/milk/model/CommonProtos$ActionType;

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->build()Lcom/miui/milk/model/SmsProtos$Sms;

    move-result-object v13

    .line 147
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->addSms(Lcom/miui/milk/model/SmsProtos$Sms;)Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;

    .line 148
    add-int/lit8 v14, v14, 0x1

    .line 149
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    add-int v24, p2, v14

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/miui/milk/common/Constants;->PROMPT_READING:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    mul-int/lit8 v23, p5, 0xa

    add-int v23, v23, p2

    add-int v23, v23, v14

    mul-int/lit8 v23, v23, 0x64

    div-int v23, v23, p6

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, "100"

    aput-object v23, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_4

    .line 154
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/SmsCloudController;->mCanceled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 158
    .end local v5           #guid:Ljava/lang/String;
    .end local v11           #sb:Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    .end local v13           #sms:Lcom/miui/milk/model/SmsProtos$Sms;
    :catch_1
    move-exception v3

    .line 159
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v21, "SmsCloudController"

    const-string v22, "Cannot load sms "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    .end local v3           #e:Ljava/lang/Exception;
    .end local v7           #index:I
    .end local v15           #smsId:Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 164
    :cond_5
    const-string v21, "SmsCloudController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "deviceId : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/SmsCloudController;->mDeviceId:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v21, "SmsCloudController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "IMSI : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/SmsCloudController;->mIMSI:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual/range {v16 .. v16}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->getSmsList()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    if-nez v21, :cond_6

    invoke-virtual/range {v16 .. v16}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->getSmsBookmarkList()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    if-nez v21, :cond_6

    .line 168
    const-string v21, "SmsCloudController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Export Sms Counts : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 172
    :cond_6
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v18

    .line 173
    .local v18, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setMmsSms(Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/SmsCloudController;->getSyncVersion()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setVersion(Ljava/lang/String;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 176
    if-eqz v18, :cond_0

    .line 177
    const/4 v10, 0x0

    .line 179
    .local v10, response:Lorg/apache/http/HttpResponse;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/SmsCloudController;->prepareTransportParams()Ljava/util/HashMap;

    move-result-object v8

    .line 181
    .local v8, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    add-int v24, p2, v14

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/miui/milk/common/Constants;->PROMPT_SENDING:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    mul-int/lit8 v23, p5, 0xa

    add-int v23, v23, p2

    add-int v23, v23, v14

    mul-int/lit8 v23, v23, 0x64

    div-int v23, v23, p6

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, "100"

    aput-object v23, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_7

    .line 185
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/SmsCloudController;->mCanceled:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 222
    .end local v8           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_2
    move-exception v3

    .line 223
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v21, "SmsCloudController"

    const-string v22, "Cannot send sms "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10}, Lcom/miui/milk/control/cloud/SmsCloudController;->makeExceptionCallback(Lcom/miui/milk/control/callback/AsyncTaskCallback;Lorg/apache/http/HttpResponse;)V

    .line 225
    throw v3

    .line 189
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v8       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/SmsCloudController;->mTransport:Lcom/miui/milk/transport/HttpTransport;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/SmsCloudController;->getSyncSaveUrl()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v8}, Lcom/miui/milk/transport/HttpTransport;->sendRequest(Ljava/lang/String;Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 190
    const-string v21, "SmsCloudController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Export Sms Counts : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/miui/milk/control/cloud/SmsCloudController;->checkResponseStatus(Lorg/apache/http/HttpResponse;)V

    .line 193
    if-eqz v10, :cond_a

    .line 195
    const-string v21, "M_WATERMARK"

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v20

    .line 196
    .local v20, waterMarkHeader:Lorg/apache/http/Header;
    const/16 v19, 0x0

    .line 197
    .local v19, waterMark:Ljava/lang/String;
    if-eqz v20, :cond_8

    .line 198
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v19

    .line 200
    :cond_8
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 201
    .local v4, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom([B)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v17

    .line 202
    .local v17, syncResp:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual/range {v17 .. v17}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getMmsSms()Lcom/miui/milk/model/SmsProtos$MmsSms;

    move-result-object v9

    .line 203
    .local v9, respSms:Lcom/miui/milk/model/SmsProtos$MmsSms;
    if-eqz v9, :cond_9

    .line 204
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1}, Lcom/miui/milk/control/cloud/SmsCloudController;->processAfterSave(Lcom/miui/milk/model/SmsProtos$MmsSms;Lcom/miui/milk/control/callback/AsyncTaskCallback;)V

    .line 207
    :cond_9
    if-eqz v19, :cond_a

    .line 208
    invoke-interface/range {p4 .. p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 209
    .local v12, sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v21, "watermark_sms"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 210
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 211
    const-string v21, "SmsCloudController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "get waterMark : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v9           #respSms:Lcom/miui/milk/model/SmsProtos$MmsSms;
    .end local v12           #sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    .end local v17           #syncResp:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v19           #waterMark:Ljava/lang/String;
    .end local v20           #waterMarkHeader:Lorg/apache/http/Header;
    :cond_a
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    add-int v24, p2, v14

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/miui/milk/common/Constants;->PROMPT_SENDING:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    mul-int/lit8 v23, p5, 0xa

    add-int v23, v23, p2

    add-int v23, v23, v14

    add-int/lit8 v23, v23, 0xa

    mul-int/lit8 v23, v23, 0x64

    div-int v23, v23, p6

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, "100"

    aput-object v23, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_0

    .line 219
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/SmsCloudController;->mCanceled:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1
.end method


# virtual methods
.method public calculateSyncSize()I
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/SmsCloudController;->checkEmpty()V

    .line 43
    iget-object v1, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    invoke-virtual {v1}, Lcom/miui/milk/source/sms/SmsTracker;->prepareChangeItems()V

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, totalCount:I
    iget-object v1, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    invoke-virtual {v1}, Lcom/miui/milk/source/sms/SmsTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    iget-object v1, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    invoke-virtual {v1}, Lcom/miui/milk/source/sms/SmsTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

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
    .line 364
    iget-object v0, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/sms/SmsTracker;->clearPrepared()V

    .line 365
    return-void
.end method

.method public read(Lcom/miui/milk/control/callback/AsyncTaskCallback;Landroid/content/SharedPreferences;)V
    .locals 28
    .parameter "callback"
    .parameter "sharedPref"

    .prologue
    .line 260
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/SmsCloudController;->mCanceled:Z

    .line 262
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/miui/milk/control/cloud/SmsCloudController;->tryPing(Lcom/miui/milk/control/callback/AsyncTaskCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/SmsCloudController;->checkEmpty()V

    .line 269
    const-string v24, "SmsCloudController"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "deviceId : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/SmsCloudController;->mDeviceId:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v24, "SmsCloudController"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "IMSI : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/SmsCloudController;->mIMSI:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v13, 0x0

    .line 273
    .local v13, response:Lorg/apache/http/HttpResponse;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/SmsCloudController;->prepareTransportParams()Ljava/util/HashMap;

    move-result-object v12

    .line 275
    .local v12, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v24, "restore_watermark_sms"

    const-string v25, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 276
    .local v21, waterMark:Ljava/lang/String;
    if-eqz v21, :cond_0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_0

    .line 277
    const-string v24, "M_WATERMARK_ORIGINAL"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    :cond_0
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v18

    .line 281
    .local v18, syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    invoke-static {}, Lcom/miui/milk/model/SmsProtos$MmsSms;->newBuilder()Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->build()Lcom/miui/milk/model/SmsProtos$MmsSms;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setMmsSms(Lcom/miui/milk/model/SmsProtos$MmsSms;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/SmsCloudController;->mTransport:Lcom/miui/milk/transport/HttpTransport;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/SmsCloudController;->getSyncReadUrl()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v18 .. v18}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v12}, Lcom/miui/milk/transport/HttpTransport;->sendRequest(Ljava/lang/String;Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 284
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/miui/milk/control/cloud/SmsCloudController;->checkResponseStatus(Lorg/apache/http/HttpResponse;)V

    .line 285
    if-eqz v13, :cond_3

    .line 287
    const-string v24, "M_WATERMARK"

    move-object/from16 v0, v24

    invoke-interface {v13, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v22

    .line 288
    .local v22, waterMarkHeader:Lorg/apache/http/Header;
    const/16 v23, 0x0

    .line 289
    .local v23, waterMarkNew:Ljava/lang/String;
    if-eqz v22, :cond_1

    .line 290
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v23

    .line 293
    :cond_1
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 294
    .local v8, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v8}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom([B)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v19

    .line 296
    .local v19, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual/range {v19 .. v19}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getMmsSms()Lcom/miui/milk/model/SmsProtos$MmsSms;

    move-result-object v17

    .line 297
    .local v17, smsPool:Lcom/miui/milk/model/SmsProtos$MmsSms;
    if-eqz v17, :cond_6

    .line 298
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/SmsCloudController;->openStore()V

    .line 299
    const/16 v16, 0x0

    .line 300
    .local v16, smsCount:I
    invoke-virtual/range {v17 .. v17}, Lcom/miui/milk/model/SmsProtos$MmsSms;->getSmsList()Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    invoke-virtual/range {v17 .. v17}, Lcom/miui/milk/model/SmsProtos$MmsSms;->getSmsBookmarkList()Ljava/util/List;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    add-int v20, v24, v25

    .line 302
    .local v20, totalCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsManager:Lcom/miui/milk/source/sms/SmsManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/miui/milk/source/sms/SmsManager;->prepareSms()V

    .line 303
    invoke-virtual/range {v17 .. v17}, Lcom/miui/milk/model/SmsProtos$MmsSms;->getSmsList()Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/miui/milk/model/SmsProtos$Sms;

    .line 304
    .local v15, sms:Lcom/miui/milk/model/SmsProtos$Sms;
    invoke-virtual {v15}, Lcom/miui/milk/model/SmsProtos$Sms;->getDate()J

    move-result-wide v4

    .line 305
    .local v4, date:J
    invoke-virtual {v15}, Lcom/miui/milk/model/SmsProtos$Sms;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 306
    .local v3, address:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsManager:Lcom/miui/milk/source/sms/SmsManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/miui/milk/source/sms/SmsManager;->add(Lcom/miui/milk/model/SmsProtos$Sms;)J

    move-result-wide v10

    .line 307
    .local v10, luid:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    move-object/from16 v24, v0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    invoke-virtual {v15}, Lcom/miui/milk/model/SmsProtos$Sms;->getGuid()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v24 .. v27}, Lcom/miui/milk/source/sms/SmsTracker;->setTrackerStatus(Ljava/lang/String;ZLjava/lang/String;)V

    .line 308
    add-int/lit8 v16, v16, 0x1

    .line 309
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Lcom/miui/milk/common/Constants;->PROMPT_WRITING:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    mul-int/lit8 v26, v16, 0x64

    div-int v26, v26, v20

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    const-string v26, "100"

    aput-object v26, v24, v25

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_2

    .line 313
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/SmsCloudController;->mCanceled:Z

    .line 342
    .end local v3           #address:Ljava/lang/String;
    .end local v4           #date:J
    .end local v8           #entity:Lorg/apache/http/HttpEntity;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #luid:J
    .end local v12           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v15           #sms:Lcom/miui/milk/model/SmsProtos$Sms;
    .end local v16           #smsCount:I
    .end local v17           #smsPool:Lcom/miui/milk/model/SmsProtos$MmsSms;
    .end local v18           #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .end local v19           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v20           #totalCount:I
    .end local v21           #waterMark:Ljava/lang/String;
    .end local v22           #waterMarkHeader:Lorg/apache/http/Header;
    .end local v23           #waterMarkNew:Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v7

    .line 264
    .local v7, e1:Ljava/lang/Exception;
    goto :goto_0

    .line 318
    .end local v7           #e1:Ljava/lang/Exception;
    .restart local v8       #entity:Lorg/apache/http/HttpEntity;
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v12       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v16       #smsCount:I
    .restart local v17       #smsPool:Lcom/miui/milk/model/SmsProtos$MmsSms;
    .restart local v18       #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .restart local v19       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .restart local v20       #totalCount:I
    .restart local v21       #waterMark:Ljava/lang/String;
    .restart local v22       #waterMarkHeader:Lorg/apache/http/Header;
    .restart local v23       #waterMarkNew:Ljava/lang/String;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/SmsCloudController;->closeStore()V

    .line 319
    const-string v24, "SmsCloudController"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Import Sms Counts : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, ""

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const/16 v26, 0x64

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    const-string v26, "100"

    aput-object v26, v24, v25

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_5

    .line 321
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/SmsCloudController;->mCanceled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 338
    .end local v8           #entity:Lorg/apache/http/HttpEntity;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v12           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16           #smsCount:I
    .end local v17           #smsPool:Lcom/miui/milk/model/SmsProtos$MmsSms;
    .end local v18           #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .end local v19           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v20           #totalCount:I
    .end local v21           #waterMark:Ljava/lang/String;
    .end local v22           #waterMarkHeader:Lorg/apache/http/Header;
    .end local v23           #waterMarkNew:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 339
    .local v6, e:Ljava/lang/Exception;
    const-string v24, "SmsCloudController"

    const-string v25, "Cannot read sms "

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lcom/miui/milk/control/cloud/SmsCloudController;->makeExceptionCallback(Lcom/miui/milk/control/callback/AsyncTaskCallback;Lorg/apache/http/HttpResponse;)V

    goto :goto_0

    .line 324
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v8       #entity:Lorg/apache/http/HttpEntity;
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v12       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16       #smsCount:I
    .restart local v17       #smsPool:Lcom/miui/milk/model/SmsProtos$MmsSms;
    .restart local v18       #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .restart local v19       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .restart local v20       #totalCount:I
    .restart local v21       #waterMark:Ljava/lang/String;
    .restart local v22       #waterMarkHeader:Lorg/apache/http/Header;
    .restart local v23       #waterMarkNew:Ljava/lang/String;
    :cond_5
    const/16 v24, 0x2

    :try_start_2
    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "SUCCESS"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_6

    .line 325
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/SmsCloudController;->mCanceled:Z

    goto/16 :goto_0

    .line 330
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v16           #smsCount:I
    .end local v20           #totalCount:I
    :cond_6
    if-eqz v23, :cond_3

    .line 331
    invoke-interface/range {p2 .. p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 332
    .local v14, sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v24, "restore_watermark_sms"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 333
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 334
    const-string v24, "SmsCloudController"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "new waterMark : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public saveInBatchMode(Lcom/miui/milk/control/callback/AsyncTaskCallback;Landroid/content/SharedPreferences;)V
    .locals 13
    .parameter "callback"
    .parameter "sharedPref"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 53
    iput-boolean v10, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mCanceled:Z

    .line 54
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/SmsCloudController;->checkEmpty()V

    .line 56
    iget-object v0, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/sms/SmsTracker;->prepareChangeItems()V

    .line 58
    const/4 v3, 0x0

    .line 59
    .local v3, totalCount:I
    iget-object v0, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/sms/SmsTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v3, v0

    .line 60
    iget-object v0, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/sms/SmsTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v3, v0

    .line 62
    div-int/lit16 v7, v3, 0xfa

    .line 63
    .local v7, batches:I
    mul-int/lit16 v0, v7, 0xfa

    if-le v3, v0, :cond_0

    .line 64
    add-int/lit8 v7, v7, 0x1

    .line 67
    :cond_0
    mul-int/lit8 v0, v7, 0xa

    add-int v6, v3, v0

    .line 68
    .local v6, totalTime:I
    const/4 v5, 0x0

    .line 70
    .local v5, batchCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 72
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mCanceled:Z

    if-eqz v0, :cond_2

    .line 94
    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 73
    invoke-direct/range {v0 .. v6}, Lcom/miui/milk/control/cloud/SmsCloudController;->saveSmsPerBatch(Lcom/miui/milk/control/callback/AsyncTaskCallback;IILandroid/content/SharedPreferences;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    add-int/lit16 v2, v2, 0xfa

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 74
    :catch_0
    move-exception v8

    .line 75
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "SmsCloudController"

    const-string v1, "Cannot save sms batch "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 80
    .end local v8           #e:Ljava/lang/Exception;
    :cond_3
    iget-boolean v0, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mCanceled:Z

    if-nez v0, :cond_1

    .line 82
    new-array v0, v12, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, "100"

    aput-object v1, v0, v11

    invoke-interface {p1, v0}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 83
    iput-boolean v9, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mCanceled:Z

    goto :goto_1

    .line 86
    :cond_4
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SUCCESS"

    aput-object v1, v0, v10

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, "0"

    aput-object v1, v0, v11

    const-string v1, "0"

    aput-object v1, v0, v12

    invoke-interface {p1, v0}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 87
    iput-boolean v9, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mCanceled:Z

    goto :goto_1

    .line 92
    :cond_5
    iget-object v0, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/sms/SmsTracker;->removeDeletedItemKeys()V

    goto :goto_1
.end method
