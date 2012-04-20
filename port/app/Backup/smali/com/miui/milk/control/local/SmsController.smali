.class public Lcom/miui/milk/control/local/SmsController;
.super Lcom/miui/milk/control/local/BaseController;
.source "SmsController.java"


# instance fields
.field private mSmsManager:Lcom/miui/milk/source/sms/SmsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/miui/milk/control/local/BaseController;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Lcom/miui/milk/source/sms/SmsManager;

    invoke-direct {v0, p1}, Lcom/miui/milk/source/sms/SmsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/milk/control/local/SmsController;->mSmsManager:Lcom/miui/milk/source/sms/SmsManager;

    .line 35
    return-void
.end method

.method private apply()V
    .locals 7

    .prologue
    .line 136
    iget-object v3, p0, Lcom/miui/milk/control/local/SmsController;->mSmsManager:Lcom/miui/milk/source/sms/SmsManager;

    invoke-virtual {v3}, Lcom/miui/milk/source/sms/SmsManager;->apply()[Landroid/content/ContentProviderResult;

    move-result-object v2

    .line 137
    .local v2, result:[Landroid/content/ContentProviderResult;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 138
    aget-object v3, v2, v1

    iget-object v3, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    .local v0, insertPath:Ljava/lang/String;
    const-string v3, "inserted"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "restored"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    :cond_0
    iget-wide v3, p0, Lcom/miui/milk/control/local/SmsController;->mCurrImportIndex:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/miui/milk/control/local/SmsController;->mCurrImportIndex:J

    .line 137
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v0           #insertPath:Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public export(Ljava/io/File;)V
    .locals 12
    .parameter "exportFile"

    .prologue
    .line 39
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 40
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 43
    :cond_0
    invoke-static {}, Lcom/miui/milk/model/SmsProtos$MmsSms;->newBuilder()Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;

    move-result-object v6

    .line 44
    .local v6, smsPool:Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;
    iget-object v8, p0, Lcom/miui/milk/control/local/SmsController;->mSmsManager:Lcom/miui/milk/source/sms/SmsManager;

    invoke-virtual {v8}, Lcom/miui/milk/source/sms/SmsManager;->prepareAllSmsIds()Ljava/util/Vector;

    move-result-object v5

    .line 46
    .local v5, smsIds:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, p0, Lcom/miui/milk/control/local/SmsController;->mTotalExportSize:J

    .line 47
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/miui/milk/control/local/SmsController;->mCurrExportIndex:J

    .line 48
    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 49
    .local v2, id:Ljava/lang/String;
    iget-boolean v8, p0, Lcom/miui/milk/control/local/SmsController;->mCanceled:Z

    if-eqz v8, :cond_3

    .line 79
    .end local v2           #id:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 51
    .restart local v2       #id:Ljava/lang/String;
    :cond_3
    :try_start_0
    iget-object v8, p0, Lcom/miui/milk/control/local/SmsController;->mSmsManager:Lcom/miui/milk/source/sms/SmsManager;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/miui/milk/source/sms/SmsManager;->load(J)Lcom/miui/milk/model/SmsProtos$Sms;

    move-result-object v4

    .line 52
    .local v4, sms:Lcom/miui/milk/model/SmsProtos$Sms;
    if-eqz v4, :cond_1

    .line 53
    invoke-virtual {v6, v4}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->addSms(Lcom/miui/milk/model/SmsProtos$Sms;)Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;

    .line 54
    iget-wide v8, p0, Lcom/miui/milk/control/local/SmsController;->mCurrExportIndex:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/miui/milk/control/local/SmsController;->mCurrExportIndex:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    .end local v4           #sms:Lcom/miui/milk/model/SmsProtos$Sms;
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "SmsController"

    const-string v9, "Cannot load sms "

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 61
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #id:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v7

    .line 62
    .local v7, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    invoke-virtual {v6}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->build()Lcom/miui/milk/model/SmsProtos$MmsSms;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setMmsSms(Lcom/miui/milk/model/SmsProtos$MmsSms;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 63
    const-string v8, "1"

    invoke-virtual {v7, v8}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setVersion(Ljava/lang/String;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 65
    iget-boolean v8, p0, Lcom/miui/milk/control/local/SmsController;->mCanceled:Z

    if-nez v8, :cond_2

    .line 69
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 70
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 71
    .local v3, output:Ljava/io/FileOutputStream;
    invoke-virtual {v7}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->writeTo(Ljava/io/OutputStream;)V

    .line 72
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 73
    const-string v8, "SmsController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Export Sms Counts : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/miui/milk/control/local/SmsController;->mCurrExportIndex:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 74
    .end local v3           #output:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 75
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v8, "SmsController"

    const-string v9, "Cannot export sms "

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 76
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 77
    .local v0, e:Ljava/io/IOException;
    const-string v8, "SmsController"

    const-string v9, "Cannot export sms "

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public importData(Ljava/io/File;)V
    .locals 13
    .parameter "importFile"

    .prologue
    .line 84
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 85
    .local v3, input:Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 87
    .local v7, smsPool:Lcom/miui/milk/model/SmsProtos$MmsSms;
    invoke-static {v3}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom(Ljava/io/InputStream;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v8

    .line 88
    .local v8, syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 89
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->hasVersion()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "1"

    invoke-virtual {v8}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 91
    invoke-virtual {v8}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getMmsSms()Lcom/miui/milk/model/SmsProtos$MmsSms;

    move-result-object v7

    .line 94
    :cond_0
    iget-boolean v9, p0, Lcom/miui/milk/control/local/SmsController;->mCanceled:Z

    if-nez v9, :cond_1

    if-nez v7, :cond_2

    .line 133
    .end local v3           #input:Ljava/io/FileInputStream;
    .end local v7           #smsPool:Lcom/miui/milk/model/SmsProtos$MmsSms;
    .end local v8           #syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_1
    :goto_0
    return-void

    .line 97
    .restart local v3       #input:Ljava/io/FileInputStream;
    .restart local v7       #smsPool:Lcom/miui/milk/model/SmsProtos$MmsSms;
    .restart local v8       #syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_2
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/miui/milk/control/local/SmsController;->mCurrImportIndex:J

    .line 99
    invoke-virtual {v7}, Lcom/miui/milk/model/SmsProtos$MmsSms;->getSmsList()Ljava/util/List;

    move-result-object v4

    .line 100
    .local v4, origSmsList:Ljava/util/List;,"Ljava/util/List<Lcom/miui/milk/model/SmsProtos$Sms;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 101
    .local v6, smsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/model/SmsProtos$Sms;>;"
    new-instance v9, Lcom/miui/milk/control/local/SmsController$1;

    invoke-direct {v9, p0}, Lcom/miui/milk/control/local/SmsController$1;-><init>(Lcom/miui/milk/control/local/SmsController;)V

    invoke-static {v6, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 107
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    int-to-long v9, v9

    iput-wide v9, p0, Lcom/miui/milk/control/local/SmsController;->mTotalImportSize:J

    .line 109
    iget-object v9, p0, Lcom/miui/milk/control/local/SmsController;->mSmsManager:Lcom/miui/milk/source/sms/SmsManager;

    invoke-virtual {v9}, Lcom/miui/milk/source/sms/SmsManager;->prepareSms()V

    .line 110
    const/4 v1, 0x0

    .line 111
    .local v1, i:I
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/milk/model/SmsProtos$Sms;

    .line 112
    .local v5, sms:Lcom/miui/milk/model/SmsProtos$Sms;
    iget-boolean v9, p0, Lcom/miui/milk/control/local/SmsController;->mCanceled:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v9, :cond_1

    .line 116
    add-int/lit8 v1, v1, 0x1

    .line 117
    :try_start_1
    iget-object v9, p0, Lcom/miui/milk/control/local/SmsController;->mSmsManager:Lcom/miui/milk/source/sms/SmsManager;

    invoke-virtual {v9, v5}, Lcom/miui/milk/source/sms/SmsManager;->add(Lcom/miui/milk/model/SmsProtos$Sms;)J

    .line 118
    rem-int/lit8 v9, v1, 0x32

    if-nez v9, :cond_3

    .line 119
    invoke-direct {p0}, Lcom/miui/milk/control/local/SmsController;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v9, "SmsController"

    const-string v10, "Cannot add sms "

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 128
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #input:Ljava/io/FileInputStream;
    .end local v4           #origSmsList:Ljava/util/List;,"Ljava/util/List<Lcom/miui/milk/model/SmsProtos$Sms;>;"
    .end local v5           #sms:Lcom/miui/milk/model/SmsProtos$Sms;
    .end local v6           #smsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/model/SmsProtos$Sms;>;"
    .end local v7           #smsPool:Lcom/miui/milk/model/SmsProtos$MmsSms;
    .end local v8           #syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :catch_1
    move-exception v0

    .line 129
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v9, "SmsController"

    const-string v10, "Cannot import sms "

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 125
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #i:I
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #input:Ljava/io/FileInputStream;
    .restart local v4       #origSmsList:Ljava/util/List;,"Ljava/util/List<Lcom/miui/milk/model/SmsProtos$Sms;>;"
    .restart local v6       #smsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/model/SmsProtos$Sms;>;"
    .restart local v7       #smsPool:Lcom/miui/milk/model/SmsProtos$MmsSms;
    .restart local v8       #syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_4
    :try_start_3
    invoke-direct {p0}, Lcom/miui/milk/control/local/SmsController;->apply()V

    .line 126
    const-string v9, "SmsController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Import Sms Counts : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/miui/milk/control/local/SmsController;->mCurrImportIndex:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 130
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #input:Ljava/io/FileInputStream;
    .end local v4           #origSmsList:Ljava/util/List;,"Ljava/util/List<Lcom/miui/milk/model/SmsProtos$Sms;>;"
    .end local v6           #smsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/model/SmsProtos$Sms;>;"
    .end local v7           #smsPool:Lcom/miui/milk/model/SmsProtos$MmsSms;
    .end local v8           #syncRoot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :catch_2
    move-exception v0

    .line 131
    .local v0, e:Ljava/io/IOException;
    const-string v9, "SmsController"

    const-string v10, "Cannot import sms "

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
