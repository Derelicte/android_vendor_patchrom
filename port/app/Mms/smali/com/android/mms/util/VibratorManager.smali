.class public Lcom/android/mms/util/VibratorManager;
.super Ljava/lang/Object;
.source "VibratorManager.java"


# static fields
.field private static final DEFAULT_VIBRATE_PATTERN:[J

.field private static mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/util/VibratorManager;->DEFAULT_VIBRATE_PATTERN:[J

    .line 11
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    sput-object v0, Lcom/android/mms/util/VibratorManager;->mVibrator:Landroid/os/Vibrator;

    return-void

    .line 10
    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancel()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/android/mms/util/VibratorManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 21
    return-void
.end method

.method public static vibrate(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 14
    const-string v0, "vibrate_mms"

    invoke-static {p0, v0}, Lmiui/util/AudioManagerHelper;->shouldVibrateForPref(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    sget-object v0, Lcom/android/mms/util/VibratorManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/mms/util/VibratorManager;->DEFAULT_VIBRATE_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 17
    :cond_0
    return-void
.end method
