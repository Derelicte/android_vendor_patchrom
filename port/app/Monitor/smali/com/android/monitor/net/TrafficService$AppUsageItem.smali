.class Lcom/android/monitor/net/TrafficService$AppUsageItem;
.super Ljava/lang/Object;
.source "TrafficService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/monitor/net/TrafficService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppUsageItem"
.end annotation


# instance fields
.field private mRxBytes:J

.field private mTxBytes:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/monitor/net/TrafficService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/android/monitor/net/TrafficService$AppUsageItem;-><init>()V

    return-void
.end method


# virtual methods
.method public addRxBytes(J)V
    .locals 2
    .parameter "bytes"

    .prologue
    .line 458
    iget-wide v0, p0, Lcom/android/monitor/net/TrafficService$AppUsageItem;->mRxBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/monitor/net/TrafficService$AppUsageItem;->mRxBytes:J

    .line 459
    return-void
.end method

.method public addTxBytes(J)V
    .locals 2
    .parameter "bytes"

    .prologue
    .line 462
    iget-wide v0, p0, Lcom/android/monitor/net/TrafficService$AppUsageItem;->mTxBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/monitor/net/TrafficService$AppUsageItem;->mTxBytes:J

    .line 463
    return-void
.end method

.method public getRxBytes()J
    .locals 2

    .prologue
    .line 451
    iget-wide v0, p0, Lcom/android/monitor/net/TrafficService$AppUsageItem;->mRxBytes:J

    return-wide v0
.end method

.method public getTotal()J
    .locals 4

    .prologue
    .line 466
    iget-wide v0, p0, Lcom/android/monitor/net/TrafficService$AppUsageItem;->mTxBytes:J

    iget-wide v2, p0, Lcom/android/monitor/net/TrafficService$AppUsageItem;->mRxBytes:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTxBytes()J
    .locals 2

    .prologue
    .line 455
    iget-wide v0, p0, Lcom/android/monitor/net/TrafficService$AppUsageItem;->mTxBytes:J

    return-wide v0
.end method
