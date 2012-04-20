.class public Lcom/android/phone/MiuiTelephonyCapabilities;
.super Lcom/android/phone/TelephonyCapabilities;
.source "MiuiTelephonyCapabilities.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/android/phone/TelephonyCapabilities;-><init>()V

    return-void
.end method

.method public static isMiuiEnabled()Z
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x1

    return v0
.end method

.method public static supportCallRecording()Z
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lmiui/os/Build;->IS_MILESTONE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_NEXUS_S:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_I9000:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_T959:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportDialingEmergencyNumberDirectly()Z
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lmiui/os/Build;->IS_HTC_HD2:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_NEXUS_S:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_T959:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_DEFY:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportDialingEmergencyNumberWithSuffix()Z
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    return v0
.end method
