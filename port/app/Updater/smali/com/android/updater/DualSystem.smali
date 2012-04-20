.class public Lcom/android/updater/DualSystem;
.super Ljava/lang/Object;
.source "DualSystem.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "dualsystem"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native buddySystemId()I
.end method

.method public static synchronized native declared-synchronized buddySystemVersion()Ljava/lang/String;
.end method

.method public static native canSwitch()Z
.end method

.method public static native currentSystemId()I
.end method

.method public static synchronized native declared-synchronized installUpdate(Lcom/android/updater/InstallUpdateListener;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native native_switchSystem()I
.end method

.method public static switchSystem()V
    .locals 0

    .prologue
    .line 29
    invoke-static {}, Lcom/android/updater/DualSystem;->native_switchSystem()I

    .line 30
    return-void
.end method
