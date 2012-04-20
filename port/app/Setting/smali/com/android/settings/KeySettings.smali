.class public Lcom/android/settings/KeySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "KeySettings.java"


# instance fields
.field private mBackLongPressEnable:Landroid/preference/CheckBoxPreference;

.field private mCameraKeyAction:Landroid/preference/Preference;

.field private mMultiTouchPonitsEnable:Landroid/preference/CheckBoxPreference;

.field private mPowerLongPressEnable:Landroid/preference/CheckBoxPreference;

.field private mTrackballWake:Landroid/preference/CheckBoxPreference;

.field private mVolumeKeyWakeEnable:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateState(Z)V
    .locals 9
    .parameter "force"

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 80
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mTrackballWake:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    .line 81
    iget-object v6, p0, Lcom/android/settings/KeySettings;->mTrackballWake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "trackball_wake_screen"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 85
    :cond_0
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mMultiTouchPonitsEnable:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    .line 86
    const-string v3, "persist.sys.multitouch"

    invoke-static {v3, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v8, :cond_3

    .line 87
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mMultiTouchPonitsEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 93
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "back_key_long_press_timeout"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 98
    .local v2, timeout:I
    iget-object v6, p0, Lcom/android/settings/KeySettings;->mBackLongPressEnable:Landroid/preference/CheckBoxPreference;

    if-lez v2, :cond_4

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 100
    iget-object v6, p0, Lcom/android/settings/KeySettings;->mPowerLongPressEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "keyguard_disable_power_key_long_press"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_5

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 105
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mVolumeKeyWakeEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "volumekey_wake_screen"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_6

    :goto_4
    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 108
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mCameraKeyAction:Landroid/preference/Preference;

    if-nez v3, :cond_7

    .line 134
    :goto_5
    return-void

    .end local v2           #timeout:I
    :cond_2
    move v3, v5

    .line 81
    goto :goto_0

    .line 89
    :cond_3
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mMultiTouchPonitsEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .restart local v2       #timeout:I
    :cond_4
    move v3, v5

    .line 98
    goto :goto_2

    :cond_5
    move v3, v5

    .line 100
    goto :goto_3

    :cond_6
    move v4, v5

    .line 105
    goto :goto_4

    .line 112
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "camera_key_preferred_action_type"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 115
    .local v0, actionType:I
    const v1, 0x7f0b0613

    .line 116
    .local v1, lableId:I
    packed-switch v0, :pswitch_data_0

    .line 133
    :goto_6
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mCameraKeyAction:Landroid/preference/Preference;

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_5

    .line 118
    :pswitch_0
    const v1, 0x7f0b0612

    .line 119
    goto :goto_6

    .line 122
    :pswitch_1
    const v1, 0x7f0b0613

    .line 123
    goto :goto_6

    .line 126
    :pswitch_2
    const v1, 0x7f0b0614

    .line 127
    goto :goto_6

    .line 130
    :pswitch_3
    const v1, 0x7f0b0615

    goto :goto_6

    .line 116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f050022

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->addPreferencesFromResource(I)V

    .line 49
    const-string v0, "enable_back_long_press"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KeySettings;->mBackLongPressEnable:Landroid/preference/CheckBoxPreference;

    .line 50
    const-string v0, "disable_power_long_press"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KeySettings;->mPowerLongPressEnable:Landroid/preference/CheckBoxPreference;

    .line 51
    const-string v0, "pref_volume_wake"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KeySettings;->mVolumeKeyWakeEnable:Landroid/preference/CheckBoxPreference;

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "multi_touch_points_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 59
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v0, "trackball_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 66
    :goto_1
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "camera_key_action_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 71
    :goto_2
    return-void

    .line 56
    :cond_0
    const-string v0, "enable_multi_touch_points"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KeySettings;->mMultiTouchPonitsEnable:Landroid/preference/CheckBoxPreference;

    goto :goto_0

    .line 62
    :cond_1
    const-string v0, "trackball_wake"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KeySettings;->mTrackballWake:Landroid/preference/CheckBoxPreference;

    .line 63
    iget-object v0, p0, Lcom/android/settings/KeySettings;->mTrackballWake:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    goto :goto_1

    .line 69
    :cond_2
    const-string v0, "camera_key_action"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/KeySettings;->mCameraKeyAction:Landroid/preference/Preference;

    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mBackLongPressEnable:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_2

    .line 140
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mBackLongPressEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 142
    .local v0, isChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "back_key_long_press_timeout"

    if-eqz v0, :cond_1

    :goto_0
    mul-int/lit16 v1, v1, 0x5dc

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 173
    .end local v0           #isChecked:Z
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .restart local v0       #isChecked:Z
    :cond_1
    move v1, v2

    .line 142
    goto :goto_0

    .line 146
    .end local v0           #isChecked:Z
    :cond_2
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mPowerLongPressEnable:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_4

    .line 147
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mPowerLongPressEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 148
    .restart local v0       #isChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "keyguard_disable_power_key_long_press"

    if-eqz v0, :cond_3

    :goto_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    .line 152
    .end local v0           #isChecked:Z
    :cond_4
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mTrackballWake:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_6

    .line 153
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mTrackballWake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 154
    .restart local v0       #isChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "trackball_wake_screen"

    if-eqz v0, :cond_5

    :goto_3
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_3

    .line 158
    .end local v0           #isChecked:Z
    :cond_6
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mMultiTouchPonitsEnable:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_8

    .line 159
    iget-object v1, p0, Lcom/android/settings/KeySettings;->mMultiTouchPonitsEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 160
    .restart local v0       #isChecked:Z
    if-eqz v0, :cond_7

    .line 161
    const-string v1, "persist.sys.multitouch"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 164
    :cond_7
    const-string v1, "persist.sys.multitouch"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 167
    .end local v0           #isChecked:Z
    :cond_8
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mVolumeKeyWakeEnable:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_0

    .line 168
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mVolumeKeyWakeEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 169
    .restart local v0       #isChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "volumekey_wake_screen"

    if-eqz v0, :cond_9

    :goto_4
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_9
    move v1, v2

    goto :goto_4
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 76
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/KeySettings;->updateState(Z)V

    .line 77
    return-void
.end method
