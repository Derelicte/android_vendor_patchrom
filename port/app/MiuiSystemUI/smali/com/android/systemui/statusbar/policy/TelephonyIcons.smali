.class Lcom/android/systemui/statusbar/policy/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field static final DATA_1X:[[I

.field static final DATA_3G:[[I

.field static final DATA_4G:[[I

.field static final DATA_E:[[I

.field static final DATA_G:[[I

.field static final DATA_H:[[I

.field static final DATA_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-array v0, v3, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 33
    new-array v0, v3, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    .line 41
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    .line 46
    new-array v0, v3, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    .line 53
    new-array v0, v3, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    .line 60
    new-array v0, v3, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    .line 68
    new-array v0, v3, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    .line 77
    new-array v0, v3, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    .line 85
    new-array v0, v3, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    return-void

    .line 25
    nop

    :array_0
    .array-data 0x4
        0xd2t 0x0t 0x2t 0x7ft
        0xd7t 0x0t 0x2t 0x7ft
        0xdct 0x0t 0x2t 0x7ft
        0xe1t 0x0t 0x2t 0x7ft
        0xe6t 0x0t 0x2t 0x7ft
    .end array-data

    .line 33
    :array_1
    .array-data 0x4
        0xd2t 0x0t 0x2t 0x7ft
        0xd7t 0x0t 0x2t 0x7ft
        0xdct 0x0t 0x2t 0x7ft
        0xe1t 0x0t 0x2t 0x7ft
        0xe6t 0x0t 0x2t 0x7ft
    .end array-data

    .line 46
    :array_2
    .array-data 0x4
        0xa5t 0x0t 0x2t 0x7ft
        0xa5t 0x0t 0x2t 0x7ft
        0xa5t 0x0t 0x2t 0x7ft
        0xa5t 0x0t 0x2t 0x7ft
    .end array-data

    .line 53
    :array_3
    .array-data 0x4
        0x9dt 0x0t 0x2t 0x7ft
        0x9dt 0x0t 0x2t 0x7ft
        0x9dt 0x0t 0x2t 0x7ft
        0x9dt 0x0t 0x2t 0x7ft
    .end array-data

    .line 60
    :array_4
    .array-data 0x4
        0xa3t 0x0t 0x2t 0x7ft
        0xa3t 0x0t 0x2t 0x7ft
        0xa3t 0x0t 0x2t 0x7ft
        0xa3t 0x0t 0x2t 0x7ft
    .end array-data

    .line 68
    :array_5
    .array-data 0x4
        0xa7t 0x0t 0x2t 0x7ft
        0xa7t 0x0t 0x2t 0x7ft
        0xa7t 0x0t 0x2t 0x7ft
        0xa7t 0x0t 0x2t 0x7ft
    .end array-data

    .line 77
    :array_6
    .array-data 0x4
        0x99t 0x0t 0x2t 0x7ft
        0x99t 0x0t 0x2t 0x7ft
        0x99t 0x0t 0x2t 0x7ft
        0x99t 0x0t 0x2t 0x7ft
    .end array-data

    .line 85
    :array_7
    .array-data 0x4
        0xa1t 0x0t 0x2t 0x7ft
        0xa1t 0x0t 0x2t 0x7ft
        0xa1t 0x0t 0x2t 0x7ft
        0xa1t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
