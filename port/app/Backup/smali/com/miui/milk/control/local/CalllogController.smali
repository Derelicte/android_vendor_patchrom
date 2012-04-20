.class public Lcom/miui/milk/control/local/CalllogController;
.super Lcom/miui/milk/control/local/BaseController;
.source "CalllogController.java"


# instance fields
.field private mCallsManager:Lcom/miui/milk/source/calls2/CallsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/miui/milk/control/local/BaseController;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Lcom/miui/milk/source/calls2/CallsManager;

    invoke-direct {v0, p1}, Lcom/miui/milk/source/calls2/CallsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/milk/control/local/CalllogController;->mCallsManager:Lcom/miui/milk/source/calls2/CallsManager;

    .line 30
    return-void
.end method


# virtual methods
.method public export(Ljava/io/File;)V
    .locals 12
    .parameter "exportFile"

    .prologue
    .line 34
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 35
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 38
    :cond_0
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos2$Calllog;->newBuilder()Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;

    move-result-object v3

    .line 39
    .local v3, calllog:Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;
    iget-object v8, p0, Lcom/miui/milk/control/local/CalllogController;->mCallsManager:Lcom/miui/milk/source/calls2/CallsManager;

    invoke-virtual {v8}, Lcom/miui/milk/source/calls2/CallsManager;->prepareAllCallIds()Ljava/util/Vector;

    move-result-object v2

    .line 40
    .local v2, callIds:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, p0, Lcom/miui/milk/control/local/CalllogController;->mTotalExportSize:J

    .line 42
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/miui/milk/control/local/CalllogController;->mCurrExportIndex:J

    .line 43
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 44
    .local v1, callId:Ljava/lang/String;
    iget-boolean v8, p0, Lcom/miui/milk/control/local/CalllogController;->mCanceled:Z

    if-eqz v8, :cond_3

    .line 74
    .end local v1           #callId:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 46
    .restart local v1       #callId:Ljava/lang/String;
    :cond_3
    :try_start_0
    iget-object v8, p0, Lcom/miui/milk/control/local/CalllogController;->mCallsManager:Lcom/miui/milk/source/calls2/CallsManager;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/miui/milk/source/calls2/CallsManager;->load(J)Lcom/miui/milk/model/CalllogProtos2$Call;

    move-result-object v0

    .line 47
    .local v0, call:Lcom/miui/milk/model/CalllogProtos2$Call;
    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {v3, v0}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->addCall(Lcom/miui/milk/model/CalllogProtos2$Call;)Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;

    .line 49
    iget-wide v8, p0, Lcom/miui/milk/control/local/CalllogController;->mCurrExportIndex:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/miui/milk/control/local/CalllogController;->mCurrExportIndex:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    .end local v0           #call:Lcom/miui/milk/model/CalllogProtos2$Call;
    :catch_0
    move-exception v4

    .line 52
    .local v4, e:Ljava/lang/Exception;
    const-string v8, "CalllogController"

    const-string v9, "Cannot load calllog "

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 56
    .end local v1           #callId:Ljava/lang/String;
    .end local v4           #e:Ljava/lang/Exception;
    :cond_4
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v7

    .line 57
    .local v7, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    invoke-virtual {v3}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->build()Lcom/miui/milk/model/CalllogProtos2$Calllog;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setCalllog(Lcom/miui/milk/model/CalllogProtos2$Calllog;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 58
    const-string v8, "1"

    invoke-virtual {v7, v8}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setVersion(Ljava/lang/String;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 60
    iget-boolean v8, p0, Lcom/miui/milk/control/local/CalllogController;->mCanceled:Z

    if-nez v8, :cond_2

    .line 64
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 65
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 66
    .local v6, output:Ljava/io/FileOutputStream;
    invoke-virtual {v7}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->writeTo(Ljava/io/OutputStream;)V

    .line 67
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 68
    const-string v8, "CalllogController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Export Call Counts : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/miui/milk/control/local/CalllogController;->mCurrExportIndex:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 69
    .end local v6           #output:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    .line 70
    .local v4, e:Ljava/io/FileNotFoundException;
    const-string v8, "CalllogController"

    const-string v9, "Cannot export calllog "

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 71
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v4

    .line 72
    .local v4, e:Ljava/io/IOException;
    const-string v8, "CalllogController"

    const-string v9, "Cannot export calllog "

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public importData(Ljava/io/File;)V
    .locals 11
    .parameter "importFile"

    .prologue
    .line 79
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 80
    .local v4, input:Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 82
    .local v1, calllog:Lcom/miui/milk/model/CalllogProtos2$Calllog;
    invoke-static {v4}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom(Ljava/io/InputStream;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v6

    .line 83
    .local v6, syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 84
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->hasVersion()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "1"

    invoke-virtual {v6}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 86
    invoke-virtual {v6}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getCalllog()Lcom/miui/milk/model/CalllogProtos2$Calllog;

    move-result-object v1

    .line 89
    :cond_0
    iget-boolean v7, p0, Lcom/miui/milk/control/local/CalllogController;->mCanceled:Z

    if-nez v7, :cond_1

    if-nez v1, :cond_2

    .line 115
    .end local v1           #calllog:Lcom/miui/milk/model/CalllogProtos2$Calllog;
    .end local v4           #input:Ljava/io/FileInputStream;
    .end local v6           #syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_1
    :goto_0
    return-void

    .line 91
    .restart local v1       #calllog:Lcom/miui/milk/model/CalllogProtos2$Calllog;
    .restart local v4       #input:Ljava/io/FileInputStream;
    .restart local v6       #syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_2
    invoke-virtual {v1}, Lcom/miui/milk/model/CalllogProtos2$Calllog;->getCallList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, p0, Lcom/miui/milk/control/local/CalllogController;->mTotalImportSize:J

    .line 92
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/miui/milk/control/local/CalllogController;->mCurrImportIndex:J

    .line 93
    iget-object v7, p0, Lcom/miui/milk/control/local/CalllogController;->mCallsManager:Lcom/miui/milk/source/calls2/CallsManager;

    invoke-virtual {v7}, Lcom/miui/milk/source/calls2/CallsManager;->prepareCall()V

    .line 94
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v5, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v1}, Lcom/miui/milk/model/CalllogProtos2$Calllog;->getCallList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/milk/model/CalllogProtos2$Call;

    .line 97
    .local v0, call:Lcom/miui/milk/model/CalllogProtos2$Call;
    iget-boolean v7, p0, Lcom/miui/milk/control/local/CalllogController;->mCanceled:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v7, :cond_1

    .line 99
    :try_start_1
    iget-object v7, p0, Lcom/miui/milk/control/local/CalllogController;->mCallsManager:Lcom/miui/milk/source/calls2/CallsManager;

    invoke-virtual {v7, v0, v5}, Lcom/miui/milk/source/calls2/CallsManager;->prepareAdd(Lcom/miui/milk/model/CalllogProtos2$Call;Ljava/util/ArrayList;)Z

    .line 100
    iget-wide v7, p0, Lcom/miui/milk/control/local/CalllogController;->mCurrImportIndex:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/miui/milk/control/local/CalllogController;->mCurrImportIndex:J

    .line 101
    iget-wide v7, p0, Lcom/miui/milk/control/local/CalllogController;->mCurrImportIndex:J

    iget-wide v9, p0, Lcom/miui/milk/control/local/CalllogController;->mTotalImportSize:J

    cmp-long v7, v7, v9

    if-eqz v7, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, 0x19

    if-lt v7, v8, :cond_3

    .line 102
    :cond_4
    iget-object v7, p0, Lcom/miui/milk/control/local/CalllogController;->mCallsManager:Lcom/miui/milk/source/calls2/CallsManager;

    invoke-virtual {v7, v5}, Lcom/miui/milk/source/calls2/CallsManager;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 103
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 105
    :catch_0
    move-exception v2

    .line 106
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    const-string v7, "CalllogController"

    const-string v8, "Cannot add calllog "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 110
    .end local v0           #call:Lcom/miui/milk/model/CalllogProtos2$Call;
    .end local v1           #calllog:Lcom/miui/milk/model/CalllogProtos2$Calllog;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #input:Ljava/io/FileInputStream;
    .end local v5           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v6           #syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :catch_1
    move-exception v2

    .line 111
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v7, "CalllogController"

    const-string v8, "Cannot import calllog "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 109
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #calllog:Lcom/miui/milk/model/CalllogProtos2$Calllog;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #input:Ljava/io/FileInputStream;
    .restart local v5       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v6       #syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_5
    :try_start_3
    const-string v7, "CalllogController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Import Call Counts : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/miui/milk/control/local/CalllogController;->mCurrImportIndex:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 112
    .end local v1           #calllog:Lcom/miui/milk/model/CalllogProtos2$Calllog;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #input:Ljava/io/FileInputStream;
    .end local v5           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v6           #syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :catch_2
    move-exception v2

    .line 113
    .local v2, e:Ljava/io/IOException;
    const-string v7, "CalllogController"

    const-string v8, "Cannot import calllog "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
