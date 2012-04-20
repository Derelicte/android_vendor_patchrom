.class public Lcom/miui/player/network/DownloadInfoManager;
.super Ljava/lang/Object;
.source "DownloadInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;
    }
.end annotation


# static fields
.field private static sIdToDetailsMap:Ljava/util/HashMap;
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

.field private static sOnlineIdToCandidateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/player/network/DownloadInfoManager;->sOnlineIdToCandidateMap:Ljava/util/HashMap;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/player/network/DownloadInfoManager;->sIdToDetailsMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static declared-synchronized getCandidates(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "onlineId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    const-class v2, Lcom/miui/player/network/DownloadInfoManager;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/miui/player/network/DownloadInfoManager;->sOnlineIdToCandidateMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;

    .line 48
    .local v0, info:Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;->mCandidates:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 47
    .end local v0           #info:Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getDownloadId(Ljava/lang/String;)J
    .locals 4
    .parameter "onlineId"

    .prologue
    .line 52
    const-class v3, Lcom/miui/player/network/DownloadInfoManager;

    monitor-enter v3

    :try_start_0
    sget-object v1, Lcom/miui/player/network/DownloadInfoManager;->sOnlineIdToCandidateMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;

    .line 53
    .local v0, info:Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;
    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;->mDownloadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v3

    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 52
    .end local v0           #info:Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1
.end method

.method public static declared-synchronized isDownloading(Ljava/lang/String;)Z
    .locals 2
    .parameter "onlineId"

    .prologue
    .line 57
    const-class v1, Lcom/miui/player/network/DownloadInfoManager;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lcom/miui/player/network/DownloadInfoManager;->sOnlineIdToCandidateMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized registerDetails(JLjava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "details"

    .prologue
    .line 31
    const-class v1, Lcom/miui/player/network/DownloadInfoManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/player/network/DownloadInfoManager;->sIdToDetailsMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit v1

    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized registerDownload(Ljava/lang/String;JLjava/util/List;)V
    .locals 3
    .parameter "onlineId"
    .parameter "id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p3, candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-class v1, Lcom/miui/player/network/DownloadInfoManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/player/network/DownloadInfoManager;->sOnlineIdToCandidateMap:Ljava/util/HashMap;

    new-instance v2, Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;

    invoke-direct {v2, p1, p2, p3}, Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;-><init>(JLjava/util/List;)V

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit v1

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized unregisterDetails(J)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 35
    const-class v1, Lcom/miui/player/network/DownloadInfoManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/player/network/DownloadInfoManager;->sIdToDetailsMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized unregisterDownload(Ljava/lang/String;)V
    .locals 2
    .parameter "onlineId"

    .prologue
    .line 43
    const-class v1, Lcom/miui/player/network/DownloadInfoManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/player/network/DownloadInfoManager;->sOnlineIdToCandidateMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit v1

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
