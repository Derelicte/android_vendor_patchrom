.class public Lcom/google/android/gsf/usagestats/DataUsageReporter;
.super Ljava/lang/Object;
.source "DataUsageReporter.java"


# instance fields
.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/DataUsageReporter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 57
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/DataUsageReporter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 59
    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/DataUsageReporter;->mStatsService:Landroid/net/INetworkStatsService;

    .line 61
    return-void
.end method

.method private buildNetworkStats(Landroid/net/NetworkTemplate;IJJLandroid/util/SparseBooleanArray;Z)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;
    .locals 25
    .parameter "template"
    .parameter "type"
    .parameter "start"
    .parameter "end"
    .parameter "knownUidsOut"
    .parameter "uploadAllStats"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v17, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;

    invoke-direct/range {v17 .. v17}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;-><init>()V

    .line 129
    .local v17, network:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;
    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->setType(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;

    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/usagestats/DataUsageReporter;->mStatsService:Landroid/net/INetworkStatsService;

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3}, Landroid/net/INetworkStatsService;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v14

    .line 133
    .local v14, history:Landroid/net/NetworkStatsHistory;
    const/4 v13, 0x0

    .line 134
    .local v13, entry:Landroid/net/NetworkStatsHistory$Entry;
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    invoke-virtual {v14}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v2

    if-ge v15, v2, :cond_1

    .line 136
    invoke-virtual {v14, v15, v13}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v13

    .line 137
    iget-wide v2, v13, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    iget-wide v6, v13, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    add-long v11, v2, v6

    .line 138
    .local v11, bucketEnd:J
    cmp-long v2, v11, p3

    if-lez v2, :cond_0

    cmp-long v2, v11, p5

    if-gtz v2, :cond_0

    .line 139
    new-instance v16, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;

    invoke-direct/range {v16 .. v16}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;-><init>()V

    .line 141
    .local v16, ipBucket:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;
    iget-wide v2, v13, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->setBucketStartMsec(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;

    .line 142
    iget-wide v2, v13, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->setBucketDurationMsec(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;

    .line 143
    iget-wide v2, v13, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->setNetworkActiveDuration(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;

    .line 146
    new-instance v24, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    invoke-direct/range {v24 .. v24}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;-><init>()V

    .line 147
    .local v24, totalTxStats:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setNetworkProto(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 148
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setDirection(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 149
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setFgBg(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 150
    new-instance v23, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    invoke-direct/range {v23 .. v23}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;-><init>()V

    .line 151
    .local v23, totalTxCounterData:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;
    iget-wide v2, v13, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->setBytes(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    .line 152
    iget-wide v2, v13, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->setPackets(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    .line 153
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setCounterData(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 156
    new-instance v22, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    invoke-direct/range {v22 .. v22}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;-><init>()V

    .line 157
    .local v22, totalRxStats:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setNetworkProto(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 158
    const/4 v2, 0x2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setDirection(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 159
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setFgBg(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 160
    new-instance v21, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    invoke-direct/range {v21 .. v21}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;-><init>()V

    .line 161
    .local v21, totalRxCounterData:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;
    iget-wide v2, v13, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->setBytes(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    .line 162
    iget-wide v2, v13, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->setPackets(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    .line 163
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setCounterData(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 165
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->addStatCounters(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;

    .line 166
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->addStatCounters(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;

    .line 168
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->addIpLayerNetworkBucket(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;

    .line 134
    .end local v16           #ipBucket:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;
    .end local v21           #totalRxCounterData:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;
    .end local v22           #totalRxStats:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    .end local v23           #totalTxCounterData:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;
    .end local v24           #totalTxStats:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 172
    .end local v11           #bucketEnd:J
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/usagestats/DataUsageReporter;->mStatsService:Landroid/net/INetworkStatsService;

    const/4 v8, 0x1

    move-object/from16 v3, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-interface/range {v2 .. v8}, Landroid/net/INetworkStatsService;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v19

    .line 174
    .local v19, stats:Landroid/net/NetworkStats;
    const/16 v20, 0x0

    .line 175
    .local v20, statsEntry:Landroid/net/NetworkStats$Entry;
    const/4 v15, 0x0

    :goto_1
    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkStats;->size()I

    move-result v2

    if-ge v15, v2, :cond_5

    .line 176
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v20

    .line 177
    move-object/from16 v0, v20

    iget v4, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 178
    .local v4, uid:I
    move-object/from16 v0, v20

    iget v5, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 179
    .local v5, tag:I
    if-nez p8, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gsf/usagestats/DataUsageReporter;->uploadStatsForUid(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 175
    :cond_2
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 183
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p7

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 188
    const/4 v6, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gsf/usagestats/DataUsageReporter;->buildUidTagStats(Landroid/net/NetworkTemplate;IIIJJ)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;

    move-result-object v18

    .line 189
    .local v18, stat:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;
    if-eqz v18, :cond_4

    .line 190
    invoke-virtual/range {v17 .. v18}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->addIpLayerAppStat(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;

    .line 193
    :cond_4
    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gsf/usagestats/DataUsageReporter;->buildUidTagStats(Landroid/net/NetworkTemplate;IIIJJ)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;

    move-result-object v18

    .line 194
    if-eqz v18, :cond_2

    .line 195
    invoke-virtual/range {v17 .. v18}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->addIpLayerAppStat(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;

    goto :goto_2

    .line 198
    .end local v4           #uid:I
    .end local v5           #tag:I
    .end local v18           #stat:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;
    :cond_5
    return-object v17
.end method

.method public static buildReport(Landroid/content/Context;JZ)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;
    .locals 1
    .parameter "context"
    .parameter "sinceTime"
    .parameter "uploadAllStats"

    .prologue
    .line 65
    new-instance v0, Lcom/google/android/gsf/usagestats/DataUsageReporter;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/usagestats/DataUsageReporter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gsf/usagestats/DataUsageReporter;->buildReport(JZ)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;

    move-result-object v0

    return-object v0
.end method

.method private buildUidMapping(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;
    .locals 11
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 289
    new-instance v4, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;

    invoke-direct {v4}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;-><init>()V

    .line 290
    .local v4, mapping:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;
    invoke-virtual {v4, p1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->setPackageKey(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;

    .line 292
    iget-object v9, p0, Lcom/google/android/gsf/usagestats/DataUsageReporter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v8

    .line 293
    .local v8, uidName:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 294
    invoke-virtual {v4, v8}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->setUidName(Ljava/lang/String;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;

    .line 297
    :cond_0
    iget-object v9, p0, Lcom/google/android/gsf/usagestats/DataUsageReporter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 298
    .local v7, packageNames:[Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 299
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v6, v0, v1

    .line 300
    .local v6, packageName:Ljava/lang/String;
    new-instance v2, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;

    invoke-direct {v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;-><init>()V

    .line 301
    .local v2, info:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;
    iget-object v9, p0, Lcom/google/android/gsf/usagestats/DataUsageReporter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v6, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 303
    .local v5, packageInfo:Landroid/content/pm/PackageInfo;
    invoke-virtual {v2, v6}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->setPkgName(Ljava/lang/String;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;

    .line 304
    iget v9, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v9}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->setVersionCode(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;

    .line 305
    invoke-virtual {v4, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->addSharedPackageList(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #info:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;
    .end local v3           #len$:I
    .end local v5           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v6           #packageName:Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method private buildUidTagStats(Landroid/net/NetworkTemplate;IIIJJ)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;
    .locals 20
    .parameter "template"
    .parameter "uid"
    .parameter "tag"
    .parameter "fg_bg"
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 208
    new-instance v14, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;

    invoke-direct {v14}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;-><init>()V

    .line 209
    .local v14, stat:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;
    const/4 v13, 0x1

    .line 210
    .local v13, isEmpty:Z
    move/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->setPackageKey(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;

    .line 211
    move/from16 v0, p3

    invoke-virtual {v14, v0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->setApplicationTag(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/usagestats/DataUsageReporter;->mStatsService:Landroid/net/INetworkStatsService;

    const/4 v7, -0x1

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p4

    move/from16 v6, p3

    invoke-interface/range {v2 .. v7}, Landroid/net/INetworkStatsService;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v11

    .line 216
    .local v11, history:Landroid/net/NetworkStatsHistory;
    const/4 v10, 0x0

    .line 217
    .local v10, entry:Landroid/net/NetworkStatsHistory$Entry;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    invoke-virtual {v11}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v2

    if-ge v12, v2, :cond_3

    .line 219
    invoke-virtual {v11, v12, v10}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 220
    iget-wide v2, v10, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    add-long v8, v2, v4

    .line 221
    .local v8, bucketEnd:J
    cmp-long v2, v8, p5

    if-lez v2, :cond_0

    cmp-long v2, v8, p7

    if-gtz v2, :cond_0

    .line 222
    const/4 v13, 0x0

    .line 223
    new-instance v19, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;

    invoke-direct/range {v19 .. v19}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;-><init>()V

    .line 224
    .local v19, uidBucket:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    iget-wide v2, v10, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->setBucketStartMsec(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;

    .line 225
    iget-wide v2, v10, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->setBucketDurationMsec(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;

    .line 226
    iget-wide v2, v10, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->setOperationCount(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;

    .line 229
    new-instance v18, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    invoke-direct/range {v18 .. v18}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;-><init>()V

    .line 230
    .local v18, totalTxStats:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setNetworkProto(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 231
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setDirection(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 232
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_1

    const/4 v2, 0x2

    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setFgBg(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 234
    new-instance v17, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    invoke-direct/range {v17 .. v17}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;-><init>()V

    .line 235
    .local v17, totalTxCounterData:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;
    iget-wide v2, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->setBytes(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    .line 236
    iget-wide v2, v10, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->setPackets(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    .line 237
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setCounterData(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 240
    new-instance v16, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    invoke-direct/range {v16 .. v16}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;-><init>()V

    .line 241
    .local v16, totalRxStats:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setNetworkProto(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 242
    const/4 v2, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setDirection(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 243
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_2

    const/4 v2, 0x2

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setFgBg(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 245
    new-instance v15, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    invoke-direct {v15}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;-><init>()V

    .line 246
    .local v15, totalRxCounterData:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;
    iget-wide v2, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    invoke-virtual {v15, v2, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->setBytes(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    .line 247
    iget-wide v2, v10, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    invoke-virtual {v15, v2, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->setPackets(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    .line 248
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setCounterData(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 250
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->addStatCounters(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;

    .line 251
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->addStatCounters(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;

    .line 253
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->addIpLayerAppBucket(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;

    .line 217
    .end local v15           #totalRxCounterData:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;
    .end local v16           #totalRxStats:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    .end local v17           #totalTxCounterData:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;
    .end local v18           #totalTxStats:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    .end local v19           #uidBucket:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 232
    .restart local v18       #totalTxStats:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    .restart local v19       #uidBucket:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 243
    .restart local v16       #totalRxStats:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    .restart local v17       #totalTxCounterData:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;
    :cond_2
    const/4 v2, 0x1

    goto :goto_2

    .line 257
    .end local v8           #bucketEnd:J
    .end local v16           #totalRxStats:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    .end local v17           #totalTxCounterData:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;
    .end local v18           #totalTxStats:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    .end local v19           #uidBucket:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    :cond_3
    if-nez v13, :cond_4

    .end local v14           #stat:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;
    :goto_3
    return-object v14

    .restart local v14       #stat:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;
    :cond_4
    const/4 v14, 0x0

    goto :goto_3
.end method

.method private uploadStatsForUid(I)Z
    .locals 9
    .parameter "uid"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 262
    const/16 v8, 0x2710

    if-ge p1, v8, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v6

    .line 267
    :cond_1
    iget-object v8, p0, Lcom/google/android/gsf/usagestats/DataUsageReporter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 269
    .local v5, packageNames:[Ljava/lang/String;
    if-nez v5, :cond_2

    move v6, v7

    .line 270
    goto :goto_0

    .line 273
    :cond_2
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_4

    aget-object v4, v0, v1

    .line 274
    .local v4, packageName:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/gsf/usagestats/DataUsageReporter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v4}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, installerName:Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v8, "com.google.android.feedback"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    :cond_3
    const-string v8, "com.google"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "com.android"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #installerName:Ljava/lang/String;
    .end local v4           #packageName:Ljava/lang/String;
    :cond_4
    move v6, v7

    .line 285
    goto :goto_0
.end method


# virtual methods
.method public buildReport(JZ)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;
    .locals 15
    .parameter "sinceTime"
    .parameter "uploadAllStats"

    .prologue
    .line 73
    new-instance v12, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;

    invoke-direct {v12}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;-><init>()V

    .line 74
    .local v12, statReport:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;
    new-instance v9, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;

    invoke-direct {v9}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;-><init>()V

    .line 78
    .local v9, duReport:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/DataUsageReporter;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 81
    :goto_0
    move-wide/from16 v3, p1

    .line 82
    .local v3, start:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 84
    .local v5, end:J
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->setVersion(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;

    .line 85
    invoke-virtual {v9, v5, v6}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->setCurrentReportMsec(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;

    .line 88
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/DataUsageReporter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v13

    .line 91
    .local v13, subscriberId:Ljava/lang/String;
    :try_start_1
    new-instance v7, Landroid/util/SparseBooleanArray;

    invoke-direct {v7}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 97
    .local v7, knownUids:Landroid/util/SparseBooleanArray;
    invoke-static {v13}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    const/4 v2, 0x1

    move-object v0, p0

    move/from16 v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gsf/usagestats/DataUsageReporter;->buildNetworkStats(Landroid/net/NetworkTemplate;IJJLandroid/util/SparseBooleanArray;Z)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->addIpLayerNetworkStat(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;

    .line 102
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifi()Landroid/net/NetworkTemplate;

    move-result-object v1

    const/4 v2, 0x2

    move-object v0, p0

    move/from16 v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gsf/usagestats/DataUsageReporter;->buildNetworkStats(Landroid/net/NetworkTemplate;IJJLandroid/util/SparseBooleanArray;Z)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->addIpLayerNetworkStat(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;

    .line 107
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ge v11, v0, :cond_0

    .line 108
    invoke-virtual {v7, v11}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v14

    .line 109
    .local v14, uid:I
    invoke-direct {p0, v14}, Lcom/google/android/gsf/usagestats/DataUsageReporter;->buildUidMapping(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->addKeyToPackageNameMapping(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 111
    .end local v7           #knownUids:Landroid/util/SparseBooleanArray;
    .end local v11           #i:I
    .end local v14           #uid:I
    :catch_0
    move-exception v10

    .line 112
    .local v10, e:Landroid/os/RemoteException;
    const-string v0, "DataUsageReporter"

    const-string v1, "problem reading stats"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_0
    :goto_2
    invoke-virtual {v12, v9}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;->setDataUsage(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;

    .line 118
    return-object v12

    .line 113
    :catch_1
    move-exception v10

    .line 114
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, "DataUsageReporter"

    const-string v1, "problem reading package details"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 79
    .end local v3           #start:J
    .end local v5           #end:J
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v13           #subscriberId:Ljava/lang/String;
    :catch_2
    move-exception v0

    goto :goto_0
.end method
