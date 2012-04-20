.class Lcom/android/monitor/NetworkMonitor$TrafficComparator;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/monitor/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrafficComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/monitor/net/UidInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/monitor/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/android/monitor/NetworkMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 510
    iput-object p1, p0, Lcom/android/monitor/NetworkMonitor$TrafficComparator;->this$0:Lcom/android/monitor/NetworkMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/monitor/net/UidInfo;Lcom/android/monitor/net/UidInfo;)I
    .locals 11
    .parameter "a"
    .parameter "b"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x2

    .line 512
    const-wide/16 v0, 0x0

    .line 513
    .local v0, abytes:J
    iget-object v6, p1, Lcom/android/monitor/net/UidInfo;->mTxBytes:[J

    aget-wide v6, v6, v8

    add-long/2addr v0, v6

    .line 514
    iget-object v6, p1, Lcom/android/monitor/net/UidInfo;->mRxBytes:[J

    aget-wide v6, v6, v8

    add-long/2addr v0, v6

    .line 515
    iget-object v6, p1, Lcom/android/monitor/net/UidInfo;->mMobileTxBytes:[J

    aget-wide v6, v6, v8

    add-long/2addr v0, v6

    .line 516
    iget-object v6, p1, Lcom/android/monitor/net/UidInfo;->mMobileRxBytes:[J

    aget-wide v6, v6, v8

    add-long/2addr v0, v6

    .line 518
    const-wide/16 v2, 0x0

    .line 519
    .local v2, bbytes:J
    iget-object v6, p2, Lcom/android/monitor/net/UidInfo;->mTxBytes:[J

    aget-wide v6, v6, v8

    add-long/2addr v2, v6

    .line 520
    iget-object v6, p2, Lcom/android/monitor/net/UidInfo;->mRxBytes:[J

    aget-wide v6, v6, v8

    add-long/2addr v2, v6

    .line 521
    iget-object v6, p2, Lcom/android/monitor/net/UidInfo;->mMobileTxBytes:[J

    aget-wide v6, v6, v8

    add-long/2addr v2, v6

    .line 522
    iget-object v6, p2, Lcom/android/monitor/net/UidInfo;->mMobileRxBytes:[J

    aget-wide v6, v6, v8

    add-long/2addr v2, v6

    .line 524
    sub-long v4, v2, v0

    .line 525
    .local v4, diff:J
    cmp-long v6, v4, v9

    if-lez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_0
    cmp-long v6, v4, v9

    if-nez v6, :cond_1

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    const/4 v6, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 510
    check-cast p1, Lcom/android/monitor/net/UidInfo;

    .end local p1
    check-cast p2, Lcom/android/monitor/net/UidInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/monitor/NetworkMonitor$TrafficComparator;->compare(Lcom/android/monitor/net/UidInfo;Lcom/android/monitor/net/UidInfo;)I

    move-result v0

    return v0
.end method
