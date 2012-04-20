.class final Lcom/android/systemui/settings/ToggleManager$WifiStateTracker;
.super Lcom/android/systemui/settings/ToggleManager$StateTracker;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WifiStateTracker"
.end annotation


# instance fields
.field public zConnected:Z

.field private zScanAttempt:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 842
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager$StateTracker;-><init>()V

    .line 845
    iput-boolean v0, p0, Lcom/android/systemui/settings/ToggleManager$WifiStateTracker;->zConnected:Z

    .line 846
    iput v0, p0, Lcom/android/systemui/settings/ToggleManager$WifiStateTracker;->zScanAttempt:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/settings/ToggleManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 842
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleManager$WifiStateTracker;-><init>()V

    return-void
.end method

.method private static wifiStateToFiveState(I)I
    .locals 1
    .parameter "wifiState"

    .prologue
    .line 924
    packed-switch p0, :pswitch_data_0

    .line 934
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 926
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 928
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 930
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 932
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 924
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 850
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 851
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 852
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/settings/ToggleManager$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v1

    .line 854
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x3

    .line 889
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 890
    const-string v5, "wifi_state"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 891
    .local v2, wifiState:I
    invoke-static {v2}, Lcom/android/systemui/settings/ToggleManager$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v5

    invoke-virtual {p0, p1, v5}, Lcom/android/systemui/settings/ToggleManager$WifiStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 893
    if-ne v7, v2, :cond_0

    .line 894
    iput-boolean v4, p0, Lcom/android/systemui/settings/ToggleManager$WifiStateTracker;->zConnected:Z

    .line 895
    iput v3, p0, Lcom/android/systemui/settings/ToggleManager$WifiStateTracker;->zScanAttempt:I

    .line 918
    .end local v2           #wifiState:I
    :cond_0
    :goto_0
    return-void

    .line 898
    :cond_1
    const-string v5, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 899
    iget v4, p0, Lcom/android/systemui/settings/ToggleManager$WifiStateTracker;->zScanAttempt:I

    if-ge v4, v7, :cond_0

    .line 900
    iget v4, p0, Lcom/android/systemui/settings/ToggleManager$WifiStateTracker;->zScanAttempt:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/systemui/settings/ToggleManager$WifiStateTracker;->zScanAttempt:I

    if-ne v4, v7, :cond_0

    .line 901
    iput-boolean v3, p0, Lcom/android/systemui/settings/ToggleManager$WifiStateTracker;->zConnected:Z

    goto :goto_0

    .line 905
    :cond_2
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 906
    iput v7, p0, Lcom/android/systemui/settings/ToggleManager$WifiStateTracker;->zScanAttempt:I

    .line 908
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 911
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 912
    .local v1, state:Landroid/net/NetworkInfo$DetailedState;
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v1, :cond_3

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v1, :cond_3

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v1, :cond_3

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v1, :cond_3

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, v1, :cond_4

    :cond_3
    move v3, v4

    :cond_4
    iput-boolean v3, p0, Lcom/android/systemui/settings/ToggleManager$WifiStateTracker;->zConnected:Z

    goto :goto_0
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 859
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 860
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    .line 861
    const-string v1, "ToggleManager"

    const-string v2, "No wifiManager."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :goto_0
    return-void

    .line 869
    :cond_0
    new-instance v1, Lcom/android/systemui/settings/ToggleManager$WifiStateTracker$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/systemui/settings/ToggleManager$WifiStateTracker$1;-><init>(Lcom/android/systemui/settings/ToggleManager$WifiStateTracker;Landroid/net/wifi/WifiManager;Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleManager$WifiStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
