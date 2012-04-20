.class Lcom/android/systemui/settings/ToggleManager$1;
.super Landroid/content/BroadcastReceiver;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/ToggleManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/ToggleManager;)V
    .locals 0
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleManager$1;->this$0:Lcom/android/systemui/settings/ToggleManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 476
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 480
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager$1;->this$0:Lcom/android/systemui/settings/ToggleManager;

    #getter for: Lcom/android/systemui/settings/ToggleManager;->mWifiState:Lcom/android/systemui/settings/ToggleManager$StateTracker;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleManager;->access$100(Lcom/android/systemui/settings/ToggleManager;)Lcom/android/systemui/settings/ToggleManager$StateTracker;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/settings/ToggleManager$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 481
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager$1;->this$0:Lcom/android/systemui/settings/ToggleManager;

    invoke-virtual {v1}, Lcom/android/systemui/settings/ToggleManager;->updateWifiToggle()V

    .line 488
    :cond_1
    :goto_0
    return-void

    .line 482
    :cond_2
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 483
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager$1;->this$0:Lcom/android/systemui/settings/ToggleManager;

    invoke-virtual {v1}, Lcom/android/systemui/settings/ToggleManager;->updateBluetoothToggle()V

    goto :goto_0

    .line 484
    :cond_3
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 485
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager$1;->this$0:Lcom/android/systemui/settings/ToggleManager;

    invoke-virtual {v1}, Lcom/android/systemui/settings/ToggleManager;->updateRingerToggle()V

    .line 486
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleManager$1;->this$0:Lcom/android/systemui/settings/ToggleManager;

    invoke-virtual {v1}, Lcom/android/systemui/settings/ToggleManager;->updateVibrateToggle()V

    goto :goto_0
.end method
