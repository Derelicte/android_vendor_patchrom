.class public Lcom/android/systemui/settings/ToggleManager;
.super Ljava/lang/Object;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/ToggleManager$WifiStateTracker;,
        Lcom/android/systemui/settings/ToggleManager$StateTracker;,
        Lcom/android/systemui/settings/ToggleManager$OnToggleOrderChangedListener;,
        Lcom/android/systemui/settings/ToggleManager$OnToggleChangedListener;
    }
.end annotation


# static fields
.field public static final MINIMUM_BACKLIGHT:I

.field private static sLongClickActions:[I

.field private static sToggleImages:[I

.field private static sToggleNames:[I


# instance fields
.field private mAccelerometer:Z

.field private mApnEnable:Z

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothEnable:Z

.field private mBluetoothEnabling:Z

.field private mBrightnessToggleIsTwoStates:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mFlightMode:Z

.field private mGpsEnable:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mMobileDataEnableObserver:Landroid/database/ContentObserver;

.field private mPrivacyMode:Z

.field private final mPrivacyModeObserver:Landroid/database/ContentObserver;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mResource:Landroid/content/res/Resources;

.field private mScreenButtonDisabled:Z

.field private mScreenButtonNotification:Landroid/app/Notification;

.field private final mScreenButtonStateObserver:Landroid/database/ContentObserver;

.field private final mSecurityHelper:Lmiui/security/ChooseLockSettingsHelper;

.field private mStatusChangeListenerHandle:Ljava/lang/Object;

.field private final mSyncStatusObserver:Landroid/content/SyncStatusObserver;

.field private mToast:Landroid/widget/Toast;

.field private final mTogglOrderObserver:Landroid/database/ContentObserver;

.field private mToggleChangedListener:Lcom/android/systemui/settings/ToggleManager$OnToggleChangedListener;

.field private mToggleOrderChangedListener:Lcom/android/systemui/settings/ToggleManager$OnToggleOrderChangedListener;

.field private mTorchEnable:Z

.field private final mTorchEnableObserver:Landroid/database/ContentObserver;

.field private final mUpdateSyncStateRunnable:Ljava/lang/Runnable;

.field private final mWifiState:Lcom/android/systemui/settings/ToggleManager$StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    const/16 v0, 0x15

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleNames:[I

    .line 108
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleNames:[I

    const/16 v1, 0x10

    const v2, 0x7f0a009a

    aput v2, v0, v1

    .line 109
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleNames:[I

    const/16 v1, 0x13

    const v2, 0x7f0a00aa

    aput v2, v0, v1

    .line 110
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleNames:[I

    const v1, 0x7f0a009b

    aput v1, v0, v5

    .line 111
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleNames:[I

    const v1, 0x7f0a009c

    aput v1, v0, v7

    .line 112
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleNames:[I

    const v1, 0x7f0a009d

    aput v1, v0, v4

    .line 113
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleNames:[I

    const v1, 0x7f0a009e

    aput v1, v0, v3

    .line 114
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleNames:[I

    const/16 v1, 0x9

    const v2, 0x7f0a009f

    aput v2, v0, v1

    .line 115
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleNames:[I

    const/4 v1, 0x7

    const v2, 0x7f0a00a0

    aput v2, v0, v1

    .line 116
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleNames:[I

    const/16 v1, 0xa

    const v2, 0x7f0a00a1

    aput v2, v0, v1

    .line 117
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleNames:[I

    const/4 v1, 0x5

    const v2, 0x7f0a00a2

    aput v2, v0, v1

    .line 118
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleNames:[I

    const/16 v1, 0x11

    const v2, 0x7f0a00a3

    aput v2, v0, v1

    .line 119
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleNames:[I

    const/16 v1, 0xe

    const v2, 0x7f0a00a4

    aput v2, v0, v1

    .line 120
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleNames:[I

    const/16 v1, 0xc

    const v2, 0x7f0a00a5

    aput v2, v0, v1

    .line 121
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleNames:[I

    const v1, 0x7f0a00a6

    aput v1, v0, v6

    .line 122
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleNames:[I

    const/16 v1, 0x14

    const v2, 0x7f0a00a7

    aput v2, v0, v1

    .line 123
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleNames:[I

    const/16 v1, 0x12

    const v2, 0x7f0a00a8

    aput v2, v0, v1

    .line 124
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleNames:[I

    const/16 v1, 0xd

    const v2, 0x7f0a00a9

    aput v2, v0, v1

    .line 125
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleNames:[I

    const/16 v1, 0x8

    const v2, 0x7f0a00aa

    aput v2, v0, v1

    .line 126
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleNames:[I

    const/16 v1, 0xb

    const v2, 0x7f0a00ab

    aput v2, v0, v1

    .line 127
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleNames:[I

    const/4 v1, 0x6

    const v2, 0x7f0a00ac

    aput v2, v0, v1

    .line 128
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleNames:[I

    const/16 v1, 0xf

    const v2, 0x7f0a00ad

    aput v2, v0, v1

    .line 133
    const/16 v0, 0x15

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/settings/ToggleManager;->sLongClickActions:[I

    .line 134
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sLongClickActions:[I

    const/16 v1, 0x13

    const v2, 0x7f0a0004

    aput v2, v0, v1

    .line 135
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sLongClickActions:[I

    const v1, 0x7f0a0005

    aput v1, v0, v4

    .line 136
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sLongClickActions:[I

    const v1, 0x7f0a0006

    aput v1, v0, v3

    .line 137
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sLongClickActions:[I

    const v1, 0x7f0a0007

    aput v1, v0, v5

    .line 138
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sLongClickActions:[I

    const v1, 0x7f0a0008

    aput v1, v0, v7

    .line 139
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sLongClickActions:[I

    const/16 v1, 0x9

    const v2, 0x7f0a0009

    aput v2, v0, v1

    .line 140
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sLongClickActions:[I

    const/4 v1, 0x7

    const v2, 0x7f0a000a

    aput v2, v0, v1

    .line 141
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sLongClickActions:[I

    const/4 v1, 0x5

    const v2, 0x7f0a000b

    aput v2, v0, v1

    .line 142
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sLongClickActions:[I

    const/16 v1, 0x11

    const v2, 0x7f0a000c

    aput v2, v0, v1

    .line 143
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sLongClickActions:[I

    const v1, 0x7f0a000d

    aput v1, v0, v6

    .line 144
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sLongClickActions:[I

    const/16 v1, 0x8

    const v2, 0x7f0a000e

    aput v2, v0, v1

    .line 145
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sLongClickActions:[I

    const/4 v1, 0x6

    const v2, 0x7f0a000f

    aput v2, v0, v1

    .line 146
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sLongClickActions:[I

    const/16 v1, 0xf

    const v2, 0x7f0a0010

    aput v2, v0, v1

    .line 151
    const/16 v0, 0x15

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleImages:[I

    .line 152
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleImages:[I

    const/16 v1, 0x10

    const v2, 0x7f020138

    aput v2, v0, v1

    .line 153
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleImages:[I

    const/16 v1, 0x13

    const v2, 0x7f02016c

    aput v2, v0, v1

    .line 154
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleImages:[I

    const v1, 0x7f02013b

    aput v1, v0, v5

    .line 155
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleImages:[I

    const v1, 0x7f020140

    aput v1, v0, v7

    .line 156
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleImages:[I

    const v1, 0x7f020143

    aput v1, v0, v4

    .line 157
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleImages:[I

    const v1, 0x7f020144

    aput v1, v0, v3

    .line 158
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleImages:[I

    const/16 v1, 0x9

    const v2, 0x7f020148

    aput v2, v0, v1

    .line 159
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleImages:[I

    const/4 v1, 0x7

    const v2, 0x7f020148

    aput v2, v0, v1

    .line 160
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleImages:[I

    const/16 v1, 0xa

    const v2, 0x7f02014b

    aput v2, v0, v1

    .line 161
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleImages:[I

    const/4 v1, 0x5

    const v2, 0x7f02014d

    aput v2, v0, v1

    .line 162
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleImages:[I

    const/16 v1, 0x11

    const v2, 0x7f02014e

    aput v2, v0, v1

    .line 163
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleImages:[I

    const/16 v1, 0xe

    const v2, 0x7f020150

    aput v2, v0, v1

    .line 164
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleImages:[I

    const/16 v1, 0xc

    const v2, 0x7f020151

    aput v2, v0, v1

    .line 165
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleImages:[I

    const v1, 0x7f020154

    aput v1, v0, v6

    .line 166
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleImages:[I

    const/16 v1, 0x14

    const v2, 0x7f020156

    aput v2, v0, v1

    .line 167
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleImages:[I

    const/16 v1, 0x12

    const v2, 0x7f020157

    aput v2, v0, v1

    .line 168
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleImages:[I

    const/16 v1, 0xd

    const v2, 0x7f020159

    aput v2, v0, v1

    .line 169
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleImages:[I

    const/16 v1, 0x8

    const v2, 0x7f02016d

    aput v2, v0, v1

    .line 170
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleImages:[I

    const/16 v1, 0xb

    const v2, 0x7f02016f

    aput v2, v0, v1

    .line 171
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleImages:[I

    const/4 v1, 0x6

    const v2, 0x7f020171

    aput v2, v0, v1

    .line 172
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleImages:[I

    const/16 v1, 0xf

    const v2, 0x7f020174

    aput v2, v0, v1

    .line 457
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/systemui/settings/ToggleManager;->MINIMUM_BACKLIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mHandler:Landroid/os/Handler;

    .line 460
    iput-object v3, p0, Lcom/android/systemui/settings/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 462
    new-instance v1, Lcom/android/systemui/settings/ToggleManager$WifiStateTracker;

    invoke-direct {v1, v3}, Lcom/android/systemui/settings/ToggleManager$WifiStateTracker;-><init>(Lcom/android/systemui/settings/ToggleManager$1;)V

    iput-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mWifiState:Lcom/android/systemui/settings/ToggleManager$StateTracker;

    .line 474
    new-instance v1, Lcom/android/systemui/settings/ToggleManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/ToggleManager$1;-><init>(Lcom/android/systemui/settings/ToggleManager;)V

    iput-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 491
    new-instance v1, Lcom/android/systemui/settings/ToggleManager$2;

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/settings/ToggleManager$2;-><init>(Lcom/android/systemui/settings/ToggleManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    .line 500
    new-instance v1, Lcom/android/systemui/settings/ToggleManager$3;

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/settings/ToggleManager$3;-><init>(Lcom/android/systemui/settings/ToggleManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    .line 507
    new-instance v1, Lcom/android/systemui/settings/ToggleManager$4;

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/settings/ToggleManager$4;-><init>(Lcom/android/systemui/settings/ToggleManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mTorchEnableObserver:Landroid/database/ContentObserver;

    .line 514
    new-instance v1, Lcom/android/systemui/settings/ToggleManager$5;

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/settings/ToggleManager$5;-><init>(Lcom/android/systemui/settings/ToggleManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mPrivacyModeObserver:Landroid/database/ContentObserver;

    .line 521
    new-instance v1, Lcom/android/systemui/settings/ToggleManager$6;

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/settings/ToggleManager$6;-><init>(Lcom/android/systemui/settings/ToggleManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mScreenButtonStateObserver:Landroid/database/ContentObserver;

    .line 529
    new-instance v1, Lcom/android/systemui/settings/ToggleManager$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/ToggleManager$7;-><init>(Lcom/android/systemui/settings/ToggleManager;)V

    iput-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mUpdateSyncStateRunnable:Ljava/lang/Runnable;

    .line 535
    new-instance v1, Lcom/android/systemui/settings/ToggleManager$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/ToggleManager$8;-><init>(Lcom/android/systemui/settings/ToggleManager;)V

    iput-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    .line 1001
    iput-boolean v4, p0, Lcom/android/systemui/settings/ToggleManager;->mBrightnessToggleIsTwoStates:Z

    .line 1178
    iput-object v3, p0, Lcom/android/systemui/settings/ToggleManager;->mToast:Landroid/widget/Toast;

    .line 184
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mResource:Landroid/content/res/Resources;

    .line 188
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 189
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 196
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "status_bar_toggle_list"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 200
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "status_bar_toggle_page"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 204
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleManager;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 209
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleManager;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v1, v2}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 214
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager;->updateAdvancedSyncToggle()V

    .line 216
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "torch_state"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleManager;->mTorchEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 221
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "privacy_mode_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleManager;->mPrivacyModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 225
    new-instance v1, Lmiui/security/ChooseLockSettingsHelper;

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mSecurityHelper:Lmiui/security/ChooseLockSettingsHelper;

    .line 227
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_buttons_state"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleManager;->mScreenButtonStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 231
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mScreenButtonStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 233
    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleManager;->refreshAll()V

    .line 234
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/settings/ToggleManager;)Lcom/android/systemui/settings/ToggleManager$StateTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mWifiState:Lcom/android/systemui/settings/ToggleManager$StateTracker;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/settings/ToggleManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/settings/ToggleManager;)Lmiui/security/ChooseLockSettingsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mSecurityHelper:Lmiui/security/ChooseLockSettingsHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/settings/ToggleManager;)Lcom/android/systemui/settings/ToggleManager$OnToggleOrderChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mToggleOrderChangedListener:Lcom/android/systemui/settings/ToggleManager$OnToggleOrderChangedListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/settings/ToggleManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager;->updateDataToggle()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/settings/ToggleManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager;->updateTorchToggle()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/settings/ToggleManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager;->updatePrivacyModeToggle()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/settings/ToggleManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager;->updateScreenButtonState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/settings/ToggleManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager;->updateAdvancedSyncToggle()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/settings/ToggleManager;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mUpdateSyncStateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/settings/ToggleManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static addIfUnselected(Ljava/util/ArrayList;I)V
    .locals 1
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    :cond_0
    return-void
.end method

.method private ensureBluetoothAdapter()Z
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 967
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDividerFixedPosition(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 297
    invoke-static {p0}, Lcom/android/systemui/settings/ToggleManager;->isListStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method private static getImage(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 394
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleImages:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getImageDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 398
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/settings/ToggleManager;->getImage(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getName(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 390
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleNames:[I

    aget v0, v0, p0

    return v0
.end method

.method private static getToggleOrderSettingID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 301
    invoke-static {p0}, Lcom/android/systemui/settings/ToggleManager;->isListStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "status_bar_toggle_list"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "status_bar_toggle_page"

    goto :goto_0
.end method

.method public static getUserSelectedToggleOrder(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {p0}, Lcom/android/systemui/settings/ToggleManager;->getToggleOrderSettingID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, toggleList:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 258
    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 259
    .local v5, toggles:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_1

    .line 261
    :try_start_0
    aget-object v6, v5, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 262
    .local v2, id:I
    invoke-static {v2}, Lcom/android/systemui/settings/ToggleManager;->getName(I)I

    move-result v6

    if-eqz v6, :cond_0

    .line 263
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    .end local v2           #id:I
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 272
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i:I
    .end local v5           #toggles:[Ljava/lang/String;
    :cond_1
    invoke-static {p0, v3}, Lcom/android/systemui/settings/ToggleManager;->validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 273
    return-object v3
.end method

.method public static initDrawable(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .parameter "drawable"
    .parameter "id"

    .prologue
    .line 402
    const/16 v0, 0x13

    if-ne v0, p1, :cond_0

    .line 403
    instance-of v0, p0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 404
    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    .end local p0
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 407
    :cond_0
    return-void
.end method

.method public static isListStyle(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 290
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "status_bar_style"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private longClickScreenshot()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1464
    .line 1466
    :try_start_0
    const-string v3, "root"

    const-string v4, "ls %s/Screenshots/*.png"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lmiui/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v7}, Lmiui/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lmiui/util/CommandLineUtils;->runAndOutput(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v3

    .line 1470
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1474
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 1476
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1477
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1481
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 1487
    :goto_2
    return v0

    .line 1483
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1484
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "image/*"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1485
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1486
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 1487
    goto :goto_2

    .line 1478
    :catch_0
    move-exception v3

    goto :goto_1

    :cond_1
    move-object v0, v3

    goto :goto_0
.end method

.method private shutdown(Z)V
    .locals 5
    .parameter

    .prologue
    .line 1422
    if-eqz p1, :cond_0

    const v0, 0x30c018c

    move v1, v0

    .line 1425
    :goto_0
    if-eqz p1, :cond_1

    const/high16 v0, 0x30c

    .line 1429
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/systemui/settings/ToggleManager$12;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/settings/ToggleManager$12;-><init>(Lcom/android/systemui/settings/ToggleManager;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1454
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7de

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1455
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1456
    return-void

    .line 1422
    :cond_0
    const v0, 0x30c0191

    move v1, v0

    goto :goto_0

    .line 1425
    :cond_1
    const v0, 0x30c0192

    goto :goto_1
.end method

.method private toast(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mToast:Landroid/widget/Toast;

    .line 1186
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1187
    return-void

    .line 1183
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private toggle(I)Z
    .locals 7
    .parameter "id"

    .prologue
    const/high16 v6, 0x1000

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 552
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "toggle_collapse_after_clicked"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 554
    .local v1, result:Z
    packed-switch p1, :pswitch_data_0

    .line 636
    :goto_0
    return v1

    .line 556
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 557
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.AccessControlSetApp"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 559
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 560
    const/4 v1, 0x1

    .line 561
    goto :goto_0

    .line 564
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager;->toggleAdvancedSync()V

    goto :goto_0

    .line 567
    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager;->toggleBluetooth()V

    goto :goto_0

    .line 570
    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager;->toggleBrightness()V

    goto :goto_0

    .line 573
    :pswitch_4
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager;->toggleData()V

    goto :goto_0

    .line 576
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 577
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.settings.ToggleArrangement"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 579
    const-string v2, "com.android.systemui.settings.EXTRA_LOCATE_DIVIDER"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 580
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 581
    const/4 v1, 0x1

    .line 582
    goto :goto_0

    .line 585
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_6
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager;->toggleFlightMode()V

    goto :goto_0

    .line 588
    :pswitch_7
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager;->toggleGps()V

    goto :goto_0

    .line 591
    :pswitch_8
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_0

    .line 595
    :pswitch_9
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager;->toggleRinger()V

    goto :goto_0

    .line 598
    :pswitch_a
    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/systemui/settings/ToggleManager;->startLongClickAction(I)Z

    .line 599
    const/4 v1, 0x1

    .line 600
    goto :goto_0

    .line 603
    :pswitch_b
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager;->togglePrivacyMode()Z

    move-result v1

    .line 604
    goto :goto_0

    .line 606
    :pswitch_c
    invoke-direct {p0, v5}, Lcom/android/systemui/settings/ToggleManager;->shutdown(Z)V

    goto :goto_0

    .line 609
    :pswitch_d
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager;->toggleAccelerometer()V

    goto :goto_0

    .line 612
    :pswitch_e
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager;->toggleScreenButtonState()V

    goto :goto_0

    .line 615
    :pswitch_f
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager;->toggleScreenshot()V

    .line 616
    const/4 v1, 0x1

    .line 617
    goto/16 :goto_0

    .line 619
    :pswitch_10
    invoke-direct {p0, v4}, Lcom/android/systemui/settings/ToggleManager;->shutdown(Z)V

    goto/16 :goto_0

    .line 622
    :pswitch_11
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager;->toggleSync()V

    goto/16 :goto_0

    .line 625
    :pswitch_12
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager;->toggleTorch()V

    goto/16 :goto_0

    .line 628
    :pswitch_13
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager;->toggleVibrate()V

    goto/16 :goto_0

    .line 631
    :pswitch_14
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleManager;->mWifiState:Lcom/android/systemui/settings/ToggleManager$StateTracker;

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/systemui/settings/ToggleManager$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 554
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_d
        :pswitch_3
        :pswitch_9
        :pswitch_13
        :pswitch_7
        :pswitch_11
        :pswitch_6
        :pswitch_8
        :pswitch_12
        :pswitch_c
        :pswitch_10
        :pswitch_b
        :pswitch_14
        :pswitch_0
        :pswitch_a
        :pswitch_f
        :pswitch_1
        :pswitch_e
    .end packed-switch
.end method

.method private toggleAccelerometer()V
    .locals 4

    .prologue
    .line 1122
    :try_start_0
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 1124
    .local v0, wm:Landroid/view/IWindowManager;
    iget-boolean v1, p0, Lcom/android/systemui/settings/ToggleManager;->mAccelerometer:Z

    if-nez v1, :cond_0

    .line 1125
    invoke-interface {v0}, Landroid/view/IWindowManager;->thawRotation()V

    .line 1138
    .end local v0           #wm:Landroid/view/IWindowManager;
    :goto_0
    return-void

    .line 1127
    .restart local v0       #wm:Landroid/view/IWindowManager;
    :cond_0
    invoke-interface {v0}, Landroid/view/IWindowManager;->getRotation()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1128
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0a00ae

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1134
    :cond_1
    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1136
    .end local v0           #wm:Landroid/view/IWindowManager;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private toggleAdvancedSync()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 1303
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v0

    .line 1304
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1305
    :goto_0
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v3

    .line 1306
    if-nez v0, :cond_2

    .line 1307
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1308
    if-nez v3, :cond_0

    .line 1309
    const-string v5, "force"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1311
    :cond_0
    invoke-static {v6, v6, v4}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1315
    :goto_1
    if-nez v0, :cond_3

    :goto_2
    invoke-direct {p0, v3, v1}, Lcom/android/systemui/settings/ToggleManager;->updateAdvancedSyncToggle(ZZ)V

    .line 1316
    return-void

    :cond_1
    move v0, v2

    .line 1304
    goto :goto_0

    .line 1313
    :cond_2
    invoke-static {v6, v6}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 1315
    goto :goto_2
.end method

.method private toggleBluetooth()V
    .locals 1

    .prologue
    .line 973
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager;->ensureBluetoothAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleManager;->mBluetoothEnable:Z

    if-eqz v0, :cond_1

    .line 975
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 976
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/settings/ToggleManager;->mBluetoothEnabling:Z

    .line 982
    :cond_0
    :goto_0
    return-void

    .line 978
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 979
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/settings/ToggleManager;->mBluetoothEnabling:Z

    goto :goto_0
.end method

.method private toggleBrightness()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1043
    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleManager;->getBrightnessLevel()I

    move-result v0

    .line 1044
    .local v0, brightness:I
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1049
    .local v1, brightnessMode:I
    iget-boolean v2, p0, Lcom/android/systemui/settings/ToggleManager;->mBrightnessToggleIsTwoStates:Z

    if-nez v2, :cond_3

    .line 1051
    if-ne v1, v5, :cond_0

    .line 1052
    sget v0, Lcom/android/systemui/settings/ToggleManager;->MINIMUM_BACKLIGHT:I

    .line 1053
    const/4 v1, 0x0

    .line 1071
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/settings/ToggleManager;->setBrightness(II)V

    .line 1072
    return-void

    .line 1054
    :cond_0
    sget v2, Lcom/android/systemui/settings/ToggleManager;->MINIMUM_BACKLIGHT:I

    if-gt v0, v2, :cond_1

    .line 1055
    const/16 v0, 0x66

    goto :goto_0

    .line 1056
    :cond_1
    const/16 v2, 0xff

    if-ge v0, v2, :cond_2

    .line 1057
    const/16 v0, 0xff

    goto :goto_0

    .line 1060
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 1064
    :cond_3
    if-ne v1, v5, :cond_4

    .line 1065
    const/4 v1, 0x0

    goto :goto_0

    .line 1067
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private toggleData()V
    .locals 3

    .prologue
    .line 1102
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1104
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-boolean v1, p0, Lcom/android/systemui/settings/ToggleManager;->mApnEnable:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 1105
    return-void

    .line 1104
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private toggleFlightMode()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1344
    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleManager;->mFlightMode:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/settings/ToggleManager;->mFlightMode:Z

    .line 1345
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "airplane_mode_on"

    iget-boolean v4, p0, Lcom/android/systemui/settings/ToggleManager;->mFlightMode:Z

    if-eqz v4, :cond_1

    :goto_1
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1346
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1347
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1348
    const-string v1, "state"

    iget-boolean v2, p0, Lcom/android/systemui/settings/ToggleManager;->mFlightMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1349
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1350
    return-void

    :cond_0
    move v0, v2

    .line 1344
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1345
    goto :goto_1
.end method

.method private toggleGps()V
    .locals 3

    .prologue
    .line 1274
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "gps"

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleManager;->mGpsEnable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1276
    return-void

    .line 1274
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private togglePrivacyMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1360
    .line 1361
    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleManager;->mPrivacyMode:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/settings/ToggleManager;->mPrivacyMode:Z

    .line 1362
    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleManager;->mPrivacyMode:Z

    if-eqz v0, :cond_1

    .line 1363
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1364
    const v1, 0x30c0171

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1365
    const v1, 0x30c0174

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1366
    const v1, 0x104000a

    new-instance v3, Lcom/android/systemui/settings/ToggleManager$10;

    invoke-direct {v3, p0}, Lcom/android/systemui/settings/ToggleManager$10;-><init>(Lcom/android/systemui/settings/ToggleManager;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1372
    const/high16 v1, 0x104

    new-instance v3, Lcom/android/systemui/settings/ToggleManager$11;

    invoke-direct {v3, p0}, Lcom/android/systemui/settings/ToggleManager$11;-><init>(Lcom/android/systemui/settings/ToggleManager;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1379
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1380
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x7de

    invoke-virtual {v1, v3}, Landroid/view/Window;->setType(I)V

    .line 1381
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1397
    :goto_1
    return v2

    :cond_0
    move v0, v2

    .line 1361
    goto :goto_0

    .line 1383
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mSecurityHelper:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lmiui/security/ChooseLockSettingsHelper;->isACLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mSecurityHelper:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lmiui/security/ChooseLockSettingsHelper;->isPasswordForPrivacyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1385
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.app.action.CONFIRM_ACCESS_CONTROL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1386
    const-string v2, "confirm_purpose"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1388
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1389
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1390
    const/high16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1391
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v2, v1

    .line 1393
    goto :goto_1

    .line 1394
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mSecurityHelper:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v0, v2}, Lmiui/security/ChooseLockSettingsHelper;->setPrivacyModeEnabled(Z)V

    goto :goto_1
.end method

.method private toggleRinger()V
    .locals 4

    .prologue
    .line 1163
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/util/AudioManagerHelper;->toggleSilent(Landroid/content/Context;)V

    .line 1164
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1165
    .local v0, am:Landroid/media/AudioManager;
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 1167
    return-void
.end method

.method private toggleScreenButtonState()V
    .locals 5

    .prologue
    const v3, 0x7f0a00af

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1491
    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleManager;->mScreenButtonDisabled:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/settings/ToggleManager;->mScreenButtonDisabled:Z

    .line 1493
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "screen_buttons_has_been_disabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 1494
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "screen_buttons_has_been_disabled"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1495
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1500
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1501
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1513
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_buttons_state"

    iget-boolean v4, p0, Lcom/android/systemui/settings/ToggleManager;->mScreenButtonDisabled:Z

    if-eqz v4, :cond_3

    :goto_2
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1516
    return-void

    :cond_0
    move v0, v2

    .line 1491
    goto :goto_0

    .line 1504
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleManager;->mScreenButtonDisabled:Z

    if-eqz v0, :cond_2

    move v0, v3

    :goto_3
    invoke-static {v4, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    const v0, 0x7f0a00b0

    goto :goto_3

    :cond_3
    move v1, v2

    .line 1513
    goto :goto_2
.end method

.method private toggleScreenshot()V
    .locals 3

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 1460
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CAPTURE_SCREENSHOT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1461
    return-void
.end method

.method private toggleSync()V
    .locals 1

    .prologue
    .line 1290
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 1291
    return-void

    .line 1290
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toggleTorch()V
    .locals 3

    .prologue
    .line 1416
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.TOGGLE_TORCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1417
    const-string v1, "miui.intent.extra.IS_TOGGLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1418
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1419
    return-void
.end method

.method private toggleVibrate()V
    .locals 13

    .prologue
    const/4 v2, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 1193
    new-array v5, v2, [Ljava/lang/String;

    const-string v0, "vibrate_ringer"

    aput-object v0, v5, v1

    const-string v0, "vibrate_notification"

    aput-object v0, v5, v11

    const-string v0, "vibrate_mms"

    aput-object v0, v5, v12

    .line 1199
    new-array v6, v2, [I

    fill-array-data v6, :array_0

    .line 1205
    new-array v7, v2, [Z

    move v0, v1

    .line 1207
    :goto_0
    array-length v2, v5

    if-ge v0, v2, :cond_0

    .line 1208
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    aget-object v3, v5, v0

    invoke-static {v2, v3}, Lmiui/provider/ExtraSettings$System;->isVibratePrefOn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    aput-boolean v2, v7, v0

    .line 1207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1211
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1212
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/util/AudioManagerHelper;->toggleVibrate(Landroid/content/Context;)V

    .line 1258
    :goto_1
    return-void

    .line 1214
    :cond_1
    aget-boolean v0, v7, v1

    if-eqz v0, :cond_2

    aget-boolean v0, v7, v11

    if-eqz v0, :cond_2

    aget-boolean v0, v7, v12

    if-eqz v0, :cond_2

    .line 1215
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/util/AudioManagerHelper;->toggleVibrate(Landroid/content/Context;)V

    goto :goto_1

    .line 1216
    :cond_2
    aget-boolean v0, v7, v1

    if-nez v0, :cond_3

    aget-boolean v0, v7, v11

    if-nez v0, :cond_3

    aget-boolean v0, v7, v12

    if-eqz v0, :cond_7

    .line 1217
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/util/AudioManagerHelper;->toggleVibrate(Landroid/content/Context;)V

    .line 1218
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1220
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0a00d2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    move v0, v1

    .line 1221
    :goto_2
    array-length v2, v5

    if-ge v0, v2, :cond_6

    .line 1222
    aget-boolean v2, v7, v0

    if-eqz v2, :cond_5

    move-object v2, v3

    .line 1223
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 1224
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    :cond_4
    iget-object v9, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    aget v10, v6, v0

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move-object v2, v4

    .line 1222
    goto :goto_3

    .line 1228
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0a00d6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v12, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v11

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/settings/ToggleManager;->toast(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1231
    :cond_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a00d7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00d8

    new-instance v2, Lcom/android/systemui/settings/ToggleManager$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/settings/ToggleManager$9;-><init>(Lcom/android/systemui/settings/ToggleManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1254
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1255
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 1199
    :array_0
    .array-data 0x4
        0xd3t 0x0t 0xat 0x7ft
        0xd4t 0x0t 0xat 0x7ft
        0xd5t 0x0t 0xat 0x7ft
    .end array-data
.end method

.method private updateAccelerometerToggle()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x0

    .line 1141
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "accelerometer_rotation"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/settings/ToggleManager;->mAccelerometer:Z

    .line 1143
    iget-boolean v1, p0, Lcom/android/systemui/settings/ToggleManager;->mAccelerometer:Z

    if-eqz v1, :cond_1

    .line 1144
    const v1, 0x7f020154

    invoke-direct {p0, v4, v1}, Lcom/android/systemui/settings/ToggleManager;->updateToggleImage(II)V

    .line 1155
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 1141
    goto :goto_0

    .line 1148
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "user_rotation"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1151
    .local v0, rotation:I
    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v1, v0, :cond_3

    :cond_2
    const v1, 0x7f020152

    :goto_2
    invoke-direct {p0, v4, v1}, Lcom/android/systemui/settings/ToggleManager;->updateToggleImage(II)V

    goto :goto_1

    :cond_3
    const v1, 0x7f020153

    goto :goto_2
.end method

.method private updateAdvancedSyncToggle()V
    .locals 3

    .prologue
    .line 1319
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v1

    .line 1320
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 1321
    .local v0, isActive:Z
    :goto_0
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/settings/ToggleManager;->updateAdvancedSyncToggle(ZZ)V

    .line 1322
    return-void

    .line 1320
    .end local v0           #isActive:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAdvancedSyncToggle(ZZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1325
    .line 1326
    if-eqz p1, :cond_1

    .line 1327
    if-eqz p2, :cond_0

    const v0, 0x7f020162

    .line 1336
    :goto_0
    const/16 v1, 0x13

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/settings/ToggleManager;->updateToggleImage(II)V

    .line 1337
    return-void

    .line 1327
    :cond_0
    const v0, 0x7f020163

    goto :goto_0

    .line 1332
    :cond_1
    if-eqz p2, :cond_2

    const v0, 0x7f020167

    goto :goto_0

    :cond_2
    const v0, 0x7f02016c

    goto :goto_0
.end method

.method private updateBrightnessToggle()V
    .locals 3

    .prologue
    .line 1022
    const/4 v1, 0x0

    .line 1023
    .local v1, resId:I
    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleManager;->isAutoBrightnessMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1024
    const v1, 0x7f02013c

    .line 1039
    :goto_0
    const/4 v2, 0x4

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/settings/ToggleManager;->updateToggleImage(II)V

    .line 1040
    return-void

    .line 1025
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/settings/ToggleManager;->mBrightnessToggleIsTwoStates:Z

    if-eqz v2, :cond_1

    .line 1026
    const v1, 0x7f02013e

    goto :goto_0

    .line 1028
    :cond_1
    const v1, 0x7f02013f

    .line 1029
    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleManager;->getBrightnessLevel()I

    move-result v0

    .line 1030
    .local v0, brightness:I
    sget v2, Lcom/android/systemui/settings/ToggleManager;->MINIMUM_BACKLIGHT:I

    if-gt v0, v2, :cond_2

    .line 1031
    const v1, 0x7f02013f

    goto :goto_0

    .line 1032
    :cond_2
    const/16 v2, 0xff

    if-ge v0, v2, :cond_3

    .line 1033
    const v1, 0x7f02013d

    goto :goto_0

    .line 1035
    :cond_3
    const v1, 0x7f020140

    goto :goto_0
.end method

.method private updateDataToggle()V
    .locals 3

    .prologue
    .line 1108
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1110
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/settings/ToggleManager;->mApnEnable:Z

    .line 1111
    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/android/systemui/settings/ToggleManager;->mApnEnable:Z

    if-eqz v1, :cond_0

    const v1, 0x7f020143

    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/settings/ToggleManager;->updateToggleImage(II)V

    .line 1114
    return-void

    .line 1111
    :cond_0
    const v1, 0x7f020142

    goto :goto_0
.end method

.method private updateFlightModeToggle()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1353
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/settings/ToggleManager;->mFlightMode:Z

    .line 1354
    const/16 v1, 0x9

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleManager;->mFlightMode:Z

    if-eqz v0, :cond_1

    const v0, 0x7f020148

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/settings/ToggleManager;->updateToggleImage(II)V

    .line 1357
    return-void

    .line 1354
    :cond_1
    const v0, 0x7f020147

    goto :goto_0
.end method

.method private updateGpsToggle()V
    .locals 2

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/settings/ToggleManager;->mGpsEnable:Z

    .line 1281
    const/4 v1, 0x7

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleManager;->mGpsEnable:Z

    if-eqz v0, :cond_0

    const v0, 0x7f02014a

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/settings/ToggleManager;->updateToggleImage(II)V

    .line 1284
    return-void

    .line 1281
    :cond_0
    const v0, 0x7f020149

    goto :goto_0
.end method

.method private updatePrivacyModeToggle()V
    .locals 2

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mSecurityHelper:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lmiui/security/ChooseLockSettingsHelper;->isPrivacyModeEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/settings/ToggleManager;->mPrivacyMode:Z

    .line 1402
    const/16 v1, 0xe

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleManager;->mPrivacyMode:Z

    if-eqz v0, :cond_0

    const v0, 0x7f020150

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/settings/ToggleManager;->updateToggleImage(II)V

    .line 1405
    return-void

    .line 1402
    :cond_0
    const v0, 0x7f02014f

    goto :goto_0
.end method

.method private updateScreenButtonState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1520
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_buttons_state"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/settings/ToggleManager;->mScreenButtonDisabled:Z

    .line 1522
    const/16 v3, 0x14

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleManager;->mScreenButtonDisabled:Z

    if-eqz v0, :cond_2

    const v0, 0x7f020155

    :goto_1
    invoke-direct {p0, v3, v0}, Lcom/android/systemui/settings/ToggleManager;->updateToggleImage(II)V

    .line 1526
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mScreenButtonNotification:Landroid/app/Notification;

    if-nez v0, :cond_0

    .line 1527
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.miui.app.ExtraStatusBarManager.TRIGGER_TOGGLE_SCREEN_BUTTONS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1528
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    const v3, 0x7f02006f

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0a00b1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0a00b2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mScreenButtonNotification:Landroid/app/Notification;

    .line 1538
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1540
    iget-boolean v1, p0, Lcom/android/systemui/settings/ToggleManager;->mScreenButtonDisabled:Z

    if-eqz v1, :cond_3

    .line 1541
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mScreenButtonNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleManager;->mScreenButtonNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1546
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 1520
    goto :goto_0

    .line 1522
    :cond_2
    const v0, 0x7f020156

    goto :goto_1

    .line 1544
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mScreenButtonNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_2
.end method

.method private updateSyncToggle()V
    .locals 2

    .prologue
    .line 1294
    const/16 v1, 0x8

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f02016d

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/settings/ToggleManager;->updateToggleImage(II)V

    .line 1297
    return-void

    .line 1294
    :cond_0
    const v0, 0x7f02016c

    goto :goto_0
.end method

.method private updateToggle(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 640
    packed-switch p1, :pswitch_data_0

    .line 683
    :goto_0
    :pswitch_0
    return-void

    .line 642
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager;->updateAdvancedSyncToggle()V

    goto :goto_0

    .line 645
    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager;->updateDataToggle()V

    goto :goto_0

    .line 648
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleManager;->updateBluetoothToggle()V

    goto :goto_0

    .line 651
    :pswitch_4
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager;->updateBrightnessToggle()V

    goto :goto_0

    .line 654
    :pswitch_5
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager;->updateFlightModeToggle()V

    goto :goto_0

    .line 657
    :pswitch_6
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager;->updateGpsToggle()V

    goto :goto_0

    .line 660
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleManager;->updateRingerToggle()V

    goto :goto_0

    .line 663
    :pswitch_8
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager;->updatePrivacyModeToggle()V

    goto :goto_0

    .line 666
    :pswitch_9
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager;->updateAccelerometerToggle()V

    goto :goto_0

    .line 669
    :pswitch_a
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager;->updateSyncToggle()V

    goto :goto_0

    .line 672
    :pswitch_b
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager;->updateTorchToggle()V

    goto :goto_0

    .line 675
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleManager;->updateVibrateToggle()V

    goto :goto_0

    .line 678
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleManager;->updateWifiToggle()V

    goto :goto_0

    .line 640
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_9
        :pswitch_4
        :pswitch_7
        :pswitch_c
        :pswitch_6
        :pswitch_a
        :pswitch_5
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateToggleImage(II)V
    .locals 1
    .parameter "toggleId"
    .parameter "resId"

    .prologue
    .line 544
    sget-object v0, Lcom/android/systemui/settings/ToggleManager;->sToggleImages:[I

    aput p2, v0, p1

    .line 546
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mToggleChangedListener:Lcom/android/systemui/settings/ToggleManager$OnToggleChangedListener;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mToggleChangedListener:Lcom/android/systemui/settings/ToggleManager$OnToggleChangedListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/settings/ToggleManager$OnToggleChangedListener;->OnToggleChanged(I)V

    .line 549
    :cond_0
    return-void
.end method

.method private updateTorchToggle()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1408
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "torch_state"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/settings/ToggleManager;->mTorchEnable:Z

    .line 1410
    const/16 v1, 0xb

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleManager;->mTorchEnable:Z

    if-eqz v0, :cond_1

    const v0, 0x7f02016f

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/settings/ToggleManager;->updateToggleImage(II)V

    .line 1413
    return-void

    :cond_0
    move v0, v1

    .line 1408
    goto :goto_0

    .line 1410
    :cond_1
    const v0, 0x7f02016e

    goto :goto_1
.end method

.method private static validateToggleList(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 317
    const/16 v1, 0xf

    invoke-static {p0, v1}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 318
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 319
    const/4 v1, 0x7

    invoke-static {p0, v1}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 320
    invoke-static {p0, v3}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 321
    invoke-static {p0, v4}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 322
    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 323
    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 324
    const/16 v1, 0x12

    invoke-static {p0, v1}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 325
    const/16 v1, 0x9

    invoke-static {p0, v1}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 326
    invoke-static {p0, v2}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 327
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 328
    const/16 v1, 0x13

    invoke-static {p0, v1}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 329
    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 330
    const/16 v1, 0x11

    invoke-static {p0, v1}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 331
    const/16 v1, 0xe

    invoke-static {p0, v1}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 332
    const/16 v1, 0xb

    invoke-static {p0, v1}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 333
    const/16 v1, 0x14

    invoke-static {p0, v1}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 334
    const/16 v1, 0xa

    invoke-static {p0, v1}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 335
    const/16 v1, 0xc

    invoke-static {p0, v1}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 336
    const/16 v1, 0xd

    invoke-static {p0, v1}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 338
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 341
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 342
    .local v0, dividerIndex:I
    if-ge v0, v3, :cond_0

    .line 343
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 344
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 346
    :cond_0
    return-void
.end method

.method private static validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p0}, Lcom/android/systemui/settings/ToggleManager;->isListStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    invoke-static {p1}, Lcom/android/systemui/settings/ToggleManager;->validateToggleList(Ljava/util/ArrayList;)V

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/settings/ToggleManager;->validateTogglePage(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private static validateTogglePage(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 350
    const/16 v0, 0x9

    invoke-static {p0, v0}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 351
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 352
    const/16 v0, 0x13

    invoke-static {p0, v0}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 353
    const/16 v0, 0x12

    invoke-static {p0, v0}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 354
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 355
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 356
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 357
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 358
    const/16 v0, 0xf

    invoke-static {p0, v0}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 359
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 360
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 361
    const/16 v0, 0x11

    invoke-static {p0, v0}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 362
    const/16 v0, 0xe

    invoke-static {p0, v0}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 363
    const/16 v0, 0xb

    invoke-static {p0, v0}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 364
    const/16 v0, 0x14

    invoke-static {p0, v0}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 365
    invoke-static {p0, v2}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 366
    const/16 v0, 0xc

    invoke-static {p0, v0}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 367
    const/16 v0, 0xd

    invoke-static {p0, v0}, Lcom/android/systemui/settings/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 369
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 370
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 371
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 372
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 373
    return-void
.end method


# virtual methods
.method public getBrightnessLevel()I
    .locals 4

    .prologue
    .line 1016
    sget v0, Lcom/android/systemui/settings/ToggleManager;->MINIMUM_BACKLIGHT:I

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_brightness"

    const/16 v3, 0x66

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public isAutoBrightnessMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1008
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 244
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 246
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mTorchEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 247
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mPrivacyModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 248
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mScreenButtonStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 249
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 250
    return-void
.end method

.method public performToggle(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 410
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/ToggleManager;->toggle(I)Z

    move-result v0

    .line 411
    .local v0, result:Z
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/ToggleManager;->updateToggle(I)V

    .line 412
    return v0
.end method

.method public refreshAll()V
    .locals 2

    .prologue
    .line 237
    sget-object v1, Lcom/android/systemui/settings/ToggleManager;->sToggleNames:[I

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 238
    invoke-direct {p0, v0}, Lcom/android/systemui/settings/ToggleManager;->updateToggle(I)V

    .line 237
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 240
    :cond_0
    return-void
.end method

.method public setBrightness(II)V
    .locals 5
    .parameter "brightnessMode"
    .parameter "brightness"

    .prologue
    .line 1076
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleManager;->mResource:Landroid/content/res/Resources;

    const v3, 0x3090007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1079
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1085
    :goto_0
    if-nez p1, :cond_0

    .line 1086
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 1087
    .local v1, power:Landroid/os/IPowerManager;
    if-eqz v1, :cond_0

    .line 1088
    invoke-interface {v1, p2}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 1089
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness"

    invoke-static {v2, v3, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1095
    .end local v1           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_1
    return-void

    .line 1082
    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    .line 1092
    :catch_0
    move-exception v0

    .line 1093
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "ToggleManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBrightness: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setBrightnessToggleMode(Z)V
    .locals 0
    .parameter "isTwoStates"

    .prologue
    .line 1003
    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleManager;->mBrightnessToggleIsTwoStates:Z

    .line 1004
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager;->updateBrightnessToggle()V

    .line 1005
    return-void
.end method

.method public setOnToggleChangedListener(Lcom/android/systemui/settings/ToggleManager$OnToggleChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleManager;->mToggleChangedListener:Lcom/android/systemui/settings/ToggleManager$OnToggleChangedListener;

    .line 383
    return-void
.end method

.method public setOnToggleOrderChangeListener(Lcom/android/systemui/settings/ToggleManager$OnToggleOrderChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleManager;->mToggleOrderChangedListener:Lcom/android/systemui/settings/ToggleManager$OnToggleOrderChangedListener;

    .line 387
    return-void
.end method

.method public setUserSelectedToggleOrder(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/systemui/settings/ToggleManager;->validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 279
    .local v1, toggleList:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 280
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/settings/ToggleManager;->getToggleOrderSettingID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 287
    return-void
.end method

.method public startLongClickAction(I)Z
    .locals 6
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 416
    const/16 v5, 0x12

    if-ne v5, p1, :cond_1

    .line 417
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager;->longClickScreenshot()Z

    move-result v4

    .line 439
    :cond_0
    :goto_0
    return v4

    .line 420
    :cond_1
    sget-object v5, Lcom/android/systemui/settings/ToggleManager;->sLongClickActions:[I

    aget v3, v5, p1

    .line 421
    .local v3, resId:I
    if-eqz v3, :cond_0

    .line 425
    iget-object v5, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 430
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 431
    .local v1, component:Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 435
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 436
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 437
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 438
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 439
    const/4 v4, 0x1

    goto :goto_0
.end method

.method updateBluetoothToggle()V
    .locals 2

    .prologue
    .line 985
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager;->ensureBluetoothAdapter()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 986
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/settings/ToggleManager;->mBluetoothEnable:Z

    .line 989
    :cond_0
    const/4 v0, 0x0

    .line 990
    .local v0, resId:I
    iget-boolean v1, p0, Lcom/android/systemui/settings/ToggleManager;->mBluetoothEnable:Z

    if-eqz v1, :cond_1

    .line 991
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/settings/ToggleManager;->mBluetoothEnabling:Z

    .line 992
    const v0, 0x7f02013b

    .line 998
    :goto_0
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/settings/ToggleManager;->updateToggleImage(II)V

    .line 999
    return-void

    .line 994
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/settings/ToggleManager;->mBluetoothEnabling:Z

    if-eqz v1, :cond_2

    const v0, 0x7f020139

    :goto_1
    goto :goto_0

    :cond_2
    const v0, 0x7f02013a

    goto :goto_1
.end method

.method public updateRingerToggle()V
    .locals 2

    .prologue
    .line 1170
    const/4 v1, 0x5

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/util/AudioManagerHelper;->isSilentEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f02014d

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/settings/ToggleManager;->updateToggleImage(II)V

    .line 1176
    return-void

    .line 1170
    :cond_0
    const v0, 0x7f02014c

    goto :goto_0
.end method

.method public updateVibrateToggle()V
    .locals 2

    .prologue
    .line 1261
    const/4 v1, 0x6

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f020171

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/settings/ToggleManager;->updateToggleImage(II)V

    .line 1267
    return-void

    .line 1261
    :cond_0
    const v0, 0x7f020170

    goto :goto_0
.end method

.method updateWifiToggle()V
    .locals 3

    .prologue
    .line 940
    const/4 v0, 0x0

    .line 941
    .local v0, resId:I
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mWifiState:Lcom/android/systemui/settings/ToggleManager$StateTracker;

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleManager$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 962
    :goto_0
    :pswitch_0
    const/16 v1, 0xf

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/settings/ToggleManager;->updateToggleImage(II)V

    .line 963
    return-void

    .line 943
    :pswitch_1
    const v0, 0x7f020173

    .line 944
    goto :goto_0

    .line 946
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mWifiState:Lcom/android/systemui/settings/ToggleManager$StateTracker;

    check-cast v1, Lcom/android/systemui/settings/ToggleManager$WifiStateTracker;

    iget-boolean v1, v1, Lcom/android/systemui/settings/ToggleManager$WifiStateTracker;->zConnected:Z

    if-eqz v1, :cond_0

    const v0, 0x7f020174

    .line 949
    :goto_1
    goto :goto_0

    .line 946
    :cond_0
    const v0, 0x7f020175

    goto :goto_1

    .line 956
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager;->mWifiState:Lcom/android/systemui/settings/ToggleManager$StateTracker;

    invoke-virtual {v1}, Lcom/android/systemui/settings/ToggleManager$StateTracker;->isTurningOn()Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f020172

    :goto_2
    goto :goto_0

    :cond_1
    const v0, 0x7f020173

    goto :goto_2

    .line 941
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
