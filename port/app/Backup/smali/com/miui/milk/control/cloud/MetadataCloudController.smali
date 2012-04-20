.class public Lcom/miui/milk/control/cloud/MetadataCloudController;
.super Lcom/miui/milk/control/cloud/BaseCloudController;
.source "MetadataCloudController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/miui/milk/control/cloud/BaseCloudController;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method


# virtual methods
.method public calculateSyncSize()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public clearPrepared()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/milk/control/cloud/MetadataCloudController;->mIMSI:Ljava/lang/String;

    return-object v0
.end method

.method public read(Ljava/util/ArrayList;Lcom/miui/milk/control/callback/AsyncTaskCallback;)Lcom/miui/milk/model/MetadataProtos$Metadata;
    .locals 13
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/model/MetadataProtos$ResourceType;",
            ">;",
            "Lcom/miui/milk/control/callback/AsyncTaskCallback;",
            ")",
            "Lcom/miui/milk/model/MetadataProtos$Metadata;"
        }
    .end annotation

    .prologue
    .local p1, requestTypeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/model/MetadataProtos$ResourceType;>;"
    const/4 v9, 0x0

    .line 30
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/miui/milk/control/cloud/MetadataCloudController;->tryPing(Lcom/miui/milk/control/callback/AsyncTaskCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 35
    const-string v10, "MetadataCloudController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "deviceId : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/miui/milk/control/cloud/MetadataCloudController;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string v10, "MetadataCloudController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IMSI : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/miui/milk/control/cloud/MetadataCloudController;->mIMSI:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 v5, 0x0

    .line 39
    .local v5, response:Lorg/apache/http/HttpResponse;
    :try_start_1
    invoke-virtual {p0}, Lcom/miui/milk/control/cloud/MetadataCloudController;->prepareTransportParams()Ljava/util/HashMap;

    move-result-object v4

    .line 41
    .local v4, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/miui/milk/model/MetadataProtos$Metadata;->newBuilder()Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;

    move-result-object v3

    .line 42
    .local v3, metadata:Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;
    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/milk/model/MetadataProtos$ResourceType;

    .line 44
    .local v8, type:Lcom/miui/milk/model/MetadataProtos$ResourceType;
    invoke-virtual {v3, v8}, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->addRequest(Lcom/miui/milk/model/MetadataProtos$ResourceType;)Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 58
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #metadata:Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;
    .end local v4           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #type:Lcom/miui/milk/model/MetadataProtos$ResourceType;
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Ljava/lang/Exception;
    const-string v10, "MetadataCloudController"

    const-string v11, "Cannot read metadata "

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    invoke-virtual {p0, p2, v5}, Lcom/miui/milk/control/cloud/MetadataCloudController;->makeExceptionCallback(Lcom/miui/milk/control/callback/AsyncTaskCallback;Lorg/apache/http/HttpResponse;)V

    .line 62
    .end local v0           #e:Ljava/lang/Exception;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_1
    return-object v9

    .line 31
    :catch_1
    move-exception v0

    .line 32
    .restart local v0       #e:Ljava/lang/Exception;
    goto :goto_1

    .line 47
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #metadata:Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;
    .restart local v4       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5       #response:Lorg/apache/http/HttpResponse;
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v6

    .line 48
    .local v6, syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    invoke-virtual {v3}, Lcom/miui/milk/model/MetadataProtos$Metadata$Builder;->build()Lcom/miui/milk/model/MetadataProtos$Metadata;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setMetadata(Lcom/miui/milk/model/MetadataProtos$Metadata;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 50
    iget-object v10, p0, Lcom/miui/milk/control/cloud/MetadataCloudController;->mTransport:Lcom/miui/milk/transport/HttpTransport;

    invoke-virtual {p0}, Lcom/miui/milk/control/cloud/MetadataCloudController;->getSyncReadUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v12

    invoke-virtual {v10, v11, v12, v4}, Lcom/miui/milk/transport/HttpTransport;->sendRequest(Ljava/lang/String;Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 51
    invoke-virtual {p0, v5}, Lcom/miui/milk/control/cloud/MetadataCloudController;->checkResponseStatus(Lorg/apache/http/HttpResponse;)V

    .line 52
    if-eqz v5, :cond_0

    .line 53
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 54
    .local v1, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v10

    invoke-static {v10}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom([B)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v7

    .line 55
    .local v7, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual {v7}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getMetadata()Lcom/miui/milk/model/MetadataProtos$Metadata;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v9

    goto :goto_1
.end method

.method public read(Lcom/miui/milk/control/callback/AsyncTaskCallback;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter "callback"
    .parameter "sharedPref"

    .prologue
    .line 112
    return-void
.end method

.method public saveInBatchMode(Lcom/miui/milk/control/callback/AsyncTaskCallback;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter "callback"
    .parameter "sharedPref"

    .prologue
    .line 107
    return-void
.end method
