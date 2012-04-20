.class public Lcom/android/settings/wifi/MiuiWifiSettings;
.super Lcom/android/settings/wifi/WifiSettings;
.source "MiuiWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/MiuiWifiSettings$ArrowClickListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    return-void
.end method

.method private addAccessPoint(Ljava/util/List;Lcom/android/settings/wifi/MiuiAccessPoint;)V
    .locals 1
    .parameter
    .parameter "accessPoint"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;",
            "Lcom/android/settings/wifi/MiuiAccessPoint;",
            ")V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, accessPoints:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/wifi/AccessPoint;>;"
    new-instance v0, Lcom/android/settings/wifi/MiuiWifiSettings$ArrowClickListener;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/wifi/MiuiWifiSettings$ArrowClickListener;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/android/settings/wifi/AccessPoint;)V

    .line 233
    .local v0, arrowClickListener:Lcom/android/settings/wifi/MiuiWifiSettings$ArrowClickListener;
    invoke-virtual {p2, v0}, Lcom/android/settings/wifi/MiuiAccessPoint;->setArrowClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    return-void
.end method

.method private initUI()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    const-string v3, "notify_open_networks"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 50
    .local v0, notifyOpenNetworks:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_networks_available_notification_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 52
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 53
    return-void

    :cond_0
    move v1, v2

    .line 50
    goto :goto_0
.end method


# virtual methods
.method protected constructAccessPoints()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v1, accessPoints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/wifi/AccessPoint;>;"
    new-instance v2, Lcom/android/settings/wifi/WifiSettings$Multimap;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$Multimap;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    .line 190
    .local v2, apMap:Lcom/android/settings/wifi/WifiSettings$Multimap;,"Lcom/android/settings/wifi/WifiSettings$Multimap<Ljava/lang/String;Lcom/android/settings/wifi/AccessPoint;>;"
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 191
    .local v4, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v4, :cond_0

    .line 192
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 193
    .local v3, config:Landroid/net/wifi/WifiConfiguration;
    new-instance v0, Lcom/android/settings/wifi/MiuiAccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v0, v11, v3}, Lcom/android/settings/wifi/MiuiAccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 194
    .local v0, accessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v12, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v11, v12}, Lcom/android/settings/wifi/MiuiAccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 195
    iget-object v11, v0, Lcom/android/settings/wifi/MiuiAccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v11, v0}, Lcom/android/settings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 199
    .end local v0           #accessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;
    .end local v3           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v10

    .line 200
    .local v10, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v10, :cond_6

    .line 201
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;

    .line 202
    .local v9, result:Landroid/net/wifi/ScanResult;
    const/4 v5, 0x0

    .line 203
    .local v5, found:Z
    const/4 v6, 0x0

    .line 206
    .local v6, hide:Z
    iget-object v11, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v11, :cond_2

    iget-object v11, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v12, "[IBSS]"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 208
    :cond_2
    const/4 v6, 0x1

    .line 211
    :cond_3
    iget-object v11, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v11}, Lcom/android/settings/wifi/WifiSettings$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 212
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0, v9}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 213
    const/4 v5, 0x1

    .line 214
    check-cast v0, Lcom/android/settings/wifi/MiuiAccessPoint;

    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->addAccessPoint(Ljava/util/List;Lcom/android/settings/wifi/MiuiAccessPoint;)V

    goto :goto_2

    .line 218
    :cond_5
    if-nez v6, :cond_1

    if-nez v5, :cond_1

    .line 219
    new-instance v0, Lcom/android/settings/wifi/MiuiAccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v0, v11, v9}, Lcom/android/settings/wifi/MiuiAccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 220
    .local v0, accessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;
    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->addAccessPoint(Ljava/util/List;Lcom/android/settings/wifi/MiuiAccessPoint;)V

    .line 221
    iget-object v11, v0, Lcom/android/settings/wifi/MiuiAccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v11, v0}, Lcom/android/settings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 227
    .end local v0           #accessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;
    .end local v5           #found:Z
    .end local v6           #hide:Z
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #result:Landroid/net/wifi/ScanResult;
    :cond_6
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 228
    return-object v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onActivityCreated(Landroid/os/Bundle;)V

    .line 44
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->initUI()V

    .line 45
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v3, -0x1

    .line 132
    sparse-switch p1, :sswitch_data_0

    .line 159
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiSettings;->onActivityResult(IILandroid/content/Intent;)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 134
    :sswitch_0
    if-ne p2, v3, :cond_0

    .line 135
    const-string v2, "config"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 136
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 137
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->connectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->refreshAccessPoints()V

    goto :goto_0

    .line 144
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :sswitch_1
    if-ne p2, v3, :cond_0

    .line 145
    const-string v2, "network_id"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 146
    .local v1, networkId:I
    if-eq v1, v3, :cond_2

    .line 147
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->forgetNetwork(I)V

    .line 154
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->refreshAccessPoints()V

    goto :goto_0

    .line 149
    :cond_2
    const-string v2, "config"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 150
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1

    .line 151
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_1

    .line 132
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mInXlSetupWizard:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiSettings;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 39
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/MiuiAddNetworkFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b01bf

    const/16 v6, 0x64

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 124
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v7, -0x1

    const/4 v4, 0x1

    .line 88
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, key:Ljava/lang/String;
    const-string v5, "notify_open_networks"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_networks_available_notification_on"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 112
    :cond_1
    :goto_0
    return v4

    .line 96
    .restart local p2
    :cond_2
    instance-of v5, p2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v5, :cond_6

    move-object v0, p2

    .line 97
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 98
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    iget-object v1, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 99
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget v5, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v5, v7, :cond_5

    iget v5, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v5, :cond_4

    iget v5, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    if-eqz v1, :cond_3

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v5, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 104
    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    iget v5, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v3, v5, :cond_1

    .line 105
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v5, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiManager;->connectNetwork(I)V

    goto :goto_0

    .line 109
    :cond_5
    iput v7, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 112
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto :goto_0
.end method

.method protected updateAccessPoints()V
    .locals 8

    .prologue
    .line 57
    iget-object v6, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v5

    .line 58
    .local v5, wifiState:I
    packed-switch v5, :pswitch_data_0

    .line 82
    invoke-super {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 61
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->constructAccessPoints()Ljava/util/List;

    move-result-object v1

    .line 62
    .local v1, accessPoints:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/settings/wifi/AccessPoint;>;"
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 63
    iget-boolean v6, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mInXlSetupWizard:Z

    if-eqz v6, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->onAccessPointsUpdated(Landroid/preference/PreferenceScreen;Ljava/util/Collection;)V

    goto :goto_0

    .line 67
    :cond_1
    const v6, 0x7f050059

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/MiuiWifiSettings;->addPreferencesFromResource(I)V

    .line 68
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->initUI()V

    .line 69
    const-string v6, "nearby_wifi"

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 70
    .local v4, wifiList:Landroid/preference/PreferenceCategory;
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 71
    new-instance v3, Lcom/android/settings/wifi/SummaryPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/settings/wifi/SummaryPreference;-><init>(Landroid/content/Context;)V

    .line 72
    .local v3, pref:Lcom/android/settings/wifi/SummaryPreference;
    const v6, 0x7f0b0635

    invoke-virtual {v3, v6}, Lcom/android/settings/wifi/SummaryPreference;->setSummary(I)V

    .line 73
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 75
    .end local v3           #pref:Lcom/android/settings/wifi/SummaryPreference;
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 76
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 58
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
