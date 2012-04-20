.class public Lcom/android/deskclock/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDegreeWithRadian(D)D
    .locals 4
    .parameter "radian"

    .prologue
    .line 30
    const-wide v0, 0x4066800000000000L

    mul-double/2addr v0, p0

    const-wide v2, 0x400921fb54442d18L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static getDifferWithDegrees(DD)D
    .locals 4
    .parameter "degree1"
    .parameter "degree2"

    .prologue
    .line 34
    sub-double v2, p0, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 35
    .local v0, differ:D
    const-wide v2, 0x4066800000000000L

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 36
    const-wide v2, 0x4076800000000000L

    sub-double v0, v2, v0

    .line 38
    :cond_0
    return-wide v0
.end method

.method public static getRadianWithDegree(D)D
    .locals 4
    .parameter "degree"

    .prologue
    .line 26
    const-wide v0, 0x4066800000000000L

    div-double v0, p0, v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    return-wide v0
.end method
