.class public Lcom/android/providers/telephony/MmsSmsUtils$OperationPerfProfiler;
.super Ljava/lang/Object;
.source "MmsSmsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/MmsSmsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OperationPerfProfiler"
.end annotation


# instance fields
.field private mOp:Ljava/lang/String;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "op"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/telephony/MmsSmsUtils$OperationPerfProfiler;->mStartTime:J

    .line 34
    iput-object p1, p0, Lcom/android/providers/telephony/MmsSmsUtils$OperationPerfProfiler;->mOp:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public prof()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1f4

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/providers/telephony/MmsSmsUtils$OperationPerfProfiler;->mStartTime:J

    sub-long v0, v2, v4

    .line 39
    .local v0, duration:J
    sub-long v2, v0, v6

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    .line 40
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsUtils;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Operation %s takes over %d ms."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/providers/telephony/MmsSmsUtils$OperationPerfProfiler;->mOp:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    return-void
.end method
