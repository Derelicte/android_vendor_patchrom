.class public Lcom/android/deskclock/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private refresh()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 127
    const-string v5, "alarm_in_silent_mode"

    invoke-virtual {p0, v5}, Lcom/android/deskclock/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 129
    .local v0, alarmInSilentModePref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/deskclock/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mode_ringer_streams_affected"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 132
    .local v3, silentModeStreams:I
    and-int/lit8 v5, v3, 0x10

    if-nez v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 135
    const-string v4, "snooze_duration"

    invoke-virtual {p0, v4}, Lcom/android/deskclock/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 137
    .local v2, listPref:Landroid/preference/ListPreference;
    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 140
    const-string v4, "auto_silence"

    invoke-virtual {p0, v4}, Lcom/android/deskclock/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .end local v2           #listPref:Landroid/preference/ListPreference;
    check-cast v2, Landroid/preference/ListPreference;

    .line 141
    .restart local v2       #listPref:Landroid/preference/ListPreference;
    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, delay:Ljava/lang/String;
    invoke-direct {p0, v2, v1}, Lcom/android/deskclock/SettingsActivity;->updateAutoSnoozeSummary(Landroid/preference/ListPreference;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 145
    const-string v4, "alarm_in_silent_mode"

    invoke-virtual {p0, v4}, Lcom/android/deskclock/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 146
    return-void
.end method

.method private updateAutoSnoozeSummary(Landroid/preference/ListPreference;Ljava/lang/String;)V
    .locals 5
    .parameter "listPref"
    .parameter "delay"

    .prologue
    .line 117
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 118
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 119
    const v1, 0x7f0b0028

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    const v1, 0x7f0b0027

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/deskclock/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v2, 0x7f060002

    invoke-virtual {p0, v2}, Lcom/android/deskclock/SettingsActivity;->addPreferencesFromResource(I)V

    .line 58
    const-string v2, "default_ringtone"

    invoke-virtual {p0, v2}, Lcom/android/deskclock/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/AlarmPreference;

    .line 60
    .local v1, ringtone:Lcom/android/deskclock/AlarmPreference;
    const/4 v2, 0x4

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 62
    .local v0, alert:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v1, v0}, Lcom/android/deskclock/AlarmPreference;->setAlert(Landroid/net/Uri;)V

    .line 65
    :cond_0
    invoke-virtual {v1}, Lcom/android/deskclock/AlarmPreference;->setChangeDefault()V

    .line 66
    invoke-virtual {p0}, Lcom/android/deskclock/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 67
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 77
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 84
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 79
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/DeskClockTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/deskclock/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/deskclock/SettingsActivity;->finish()V

    .line 81
    const/4 v0, 0x1

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 89
    const-string v4, "snooze_duration"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, p1

    .line 90
    check-cast v2, Landroid/preference/ListPreference;

    .line 91
    .local v2, listPref:Landroid/preference/ListPreference;
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v2, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 92
    .local v1, idx:I
    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 112
    .end local v1           #idx:I
    .end local v2           #listPref:Landroid/preference/ListPreference;
    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 93
    .restart local p2
    :cond_1
    const-string v4, "auto_silence"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, p1

    .line 94
    check-cast v2, Landroid/preference/ListPreference;

    .restart local v2       #listPref:Landroid/preference/ListPreference;
    move-object v0, p2

    .line 95
    check-cast v0, Ljava/lang/String;

    .line 96
    .local v0, delay:Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/android/deskclock/SettingsActivity;->updateAutoSnoozeSummary(Landroid/preference/ListPreference;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    .end local v0           #delay:Ljava/lang/String;
    .end local v2           #listPref:Landroid/preference/ListPreference;
    :cond_2
    const-string v4, "alarm_in_silent_mode"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/deskclock/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mode_ringer_streams_affected"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 102
    .local v3, ringerModeStreamTypes:I
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 103
    and-int/lit8 v3, v3, -0x11

    .line 108
    :goto_1
    invoke-virtual {p0}, Lcom/android/deskclock/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mode_ringer_streams_affected"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 105
    :cond_3
    or-int/lit8 v3, v3, 0x10

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 72
    invoke-direct {p0}, Lcom/android/deskclock/SettingsActivity;->refresh()V

    .line 73
    return-void
.end method
