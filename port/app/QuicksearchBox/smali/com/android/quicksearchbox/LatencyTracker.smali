.class public Lcom/android/quicksearchbox/LatencyTracker;
.super Ljava/lang/Object;
.source "LatencyTracker.java"


# instance fields
.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/quicksearchbox/LatencyTracker;->mStartTime:J

    .line 38
    return-void
.end method


# virtual methods
.method public getLatency()I
    .locals 4

    .prologue
    .line 51
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 52
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/quicksearchbox/LatencyTracker;->mStartTime:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    return v2
.end method
