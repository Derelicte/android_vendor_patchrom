.class public Lcom/android/settings/LedSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LedSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBreathingLightColor:Landroid/preference/ListPreference;

.field private mBreathingLightFreq:Landroid/preference/ListPreference;

.field private mCallBreathingLightColor:Landroid/preference/ListPreference;

.field private mCallBreathingLightFreq:Landroid/preference/ListPreference;

.field private mMmsBreathingLightColor:Landroid/preference/ListPreference;

.field private mMmsBreathingLightFreq:Landroid/preference/ListPreference;

.field private mNotificationPulse:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private setSummary(Landroid/preference/ListPreference;IZ)I
    .locals 8
    .parameter "pref"
    .parameter "value"
    .parameter "isColor"

    .prologue
    .line 112
    const/4 v4, -0x1

    .line 113
    .local v4, i:I
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/CharSequence;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v3, v0, v5

    .line 114
    .local v3, entryValue:Ljava/lang/CharSequence;
    add-int/lit8 v4, v4, 0x1

    .line 115
    const/4 v2, 0x0

    .line 116
    .local v2, entry:I
    if-eqz p3, :cond_1

    .line 117
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 121
    :goto_1
    if-ne p2, v2, :cond_2

    .line 122
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 123
    .local v1, entries:[Ljava/lang/CharSequence;
    aget-object v7, v1, v4

    invoke-virtual {p1, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 127
    .end local v1           #entries:[Ljava/lang/CharSequence;
    .end local v2           #entry:I
    .end local v3           #entryValue:Ljava/lang/CharSequence;
    :cond_0
    return v4

    .line 119
    .restart local v2       #entry:I
    .restart local v3       #entryValue:Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    .line 113
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private setValue(Landroid/preference/ListPreference;IZ)V
    .locals 2
    .parameter "pref"
    .parameter "value"
    .parameter "isColor"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/LedSettings;->setSummary(Landroid/preference/ListPreference;IZ)I

    move-result v0

    .line 106
    .local v0, index:I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 107
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 109
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const v13, 0x7f07004e

    const v12, 0x7f07004d

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 38
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v8, 0x7f050027

    invoke-virtual {p0, v8}, Lcom/android/settings/LedSettings;->addPreferencesFromResource(I)V

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v11, 0x7f0b0640

    invoke-virtual {v8, v11}, Landroid/app/Activity;->setTitle(I)V

    .line 42
    const-string v8, "notification_pulse"

    invoke-virtual {p0, v8}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings/LedSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    .line 43
    iget-object v8, p0, Lcom/android/settings/LedSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 45
    const-string v8, "breathing_light_color"

    invoke-virtual {p0, v8}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings/LedSettings;->mBreathingLightColor:Landroid/preference/ListPreference;

    .line 46
    iget-object v8, p0, Lcom/android/settings/LedSettings;->mBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 47
    const-string v8, "breathing_light_freq"

    invoke-virtual {p0, v8}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings/LedSettings;->mBreathingLightFreq:Landroid/preference/ListPreference;

    .line 48
    iget-object v8, p0, Lcom/android/settings/LedSettings;->mBreathingLightFreq:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 50
    const-string v8, "call_breathing_light_color"

    invoke-virtual {p0, v8}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightColor:Landroid/preference/ListPreference;

    .line 51
    iget-object v8, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 52
    const-string v8, "call_breathing_light_freq"

    invoke-virtual {p0, v8}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightFreq:Landroid/preference/ListPreference;

    .line 53
    iget-object v8, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightFreq:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 55
    const-string v8, "mms_breathing_light_color"

    invoke-virtual {p0, v8}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightColor:Landroid/preference/ListPreference;

    .line 56
    iget-object v8, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 57
    const-string v8, "mms_breathing_light_freq"

    invoke-virtual {p0, v8}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightFreq:Landroid/preference/ListPreference;

    .line 58
    iget-object v8, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightFreq:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 60
    sget-boolean v8, Lmiui/os/Build;->IS_MIONE:Z

    if-eqz v8, :cond_0

    .line 61
    iget-object v8, p0, Lcom/android/settings/LedSettings;->mBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v8, v13}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 62
    iget-object v8, p0, Lcom/android/settings/LedSettings;->mBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v8, v12}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 64
    iget-object v8, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v8, v13}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 65
    iget-object v8, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v8, v12}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 67
    iget-object v8, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v8, v13}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 68
    iget-object v8, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v8, v12}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 70
    iget-object v8, p0, Lcom/android/settings/LedSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    const v11, 0x7f0b0643

    invoke-virtual {v8, v11}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x3070009

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 75
    .local v3, defaultColor:I
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "breathing_light_color"

    invoke-static {v8, v11, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 77
    .local v2, color:I
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "call_breathing_light_color"

    invoke-static {v8, v11, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 79
    .local v0, callColor:I
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "mms_breathing_light_color"

    invoke-static {v8, v11, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 82
    .local v6, mmsColor:I
    iget-object v8, p0, Lcom/android/settings/LedSettings;->mBreathingLightColor:Landroid/preference/ListPreference;

    invoke-direct {p0, v8, v2, v9}, Lcom/android/settings/LedSettings;->setValue(Landroid/preference/ListPreference;IZ)V

    .line 83
    iget-object v8, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightColor:Landroid/preference/ListPreference;

    invoke-direct {p0, v8, v0, v9}, Lcom/android/settings/LedSettings;->setValue(Landroid/preference/ListPreference;IZ)V

    .line 84
    iget-object v8, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightColor:Landroid/preference/ListPreference;

    invoke-direct {p0, v8, v6, v9}, Lcom/android/settings/LedSettings;->setValue(Landroid/preference/ListPreference;IZ)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x308000a

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 88
    .local v4, defaultFreq:I
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "breathing_light_freq"

    invoke-static {v8, v11, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 90
    .local v5, freq:I
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "call_breathing_light_freq"

    invoke-static {v8, v11, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 92
    .local v1, callFreq:I
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "mms_breathing_light_freq"

    invoke-static {v8, v11, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 95
    .local v7, mmsFreq:I
    iget-object v8, p0, Lcom/android/settings/LedSettings;->mBreathingLightFreq:Landroid/preference/ListPreference;

    invoke-direct {p0, v8, v5, v10}, Lcom/android/settings/LedSettings;->setValue(Landroid/preference/ListPreference;IZ)V

    .line 96
    iget-object v8, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightFreq:Landroid/preference/ListPreference;

    invoke-direct {p0, v8, v1, v10}, Lcom/android/settings/LedSettings;->setValue(Landroid/preference/ListPreference;IZ)V

    .line 97
    iget-object v8, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightFreq:Landroid/preference/ListPreference;

    invoke-direct {p0, v8, v7, v10}, Lcom/android/settings/LedSettings;->setValue(Landroid/preference/ListPreference;IZ)V

    .line 100
    iget-object v11, p0, Lcom/android/settings/LedSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v12, "notification_light_pulse"

    invoke-static {v8, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_1

    move v8, v9

    :goto_0
    invoke-virtual {v11, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 102
    return-void

    :cond_1
    move v8, v10

    .line 100
    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v7, 0x1

    .line 132
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, key:Ljava/lang/String;
    const/4 v5, -0x1

    .line 134
    .local v5, value:I
    const/4 v2, 0x0

    .line 135
    .local v2, isColor:Z
    const-string v6, "breathing_light_color"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 136
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 137
    const/4 v2, 0x1

    .line 138
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Lcom/android/settings/LedSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 141
    .local v4, nm:Landroid/app/NotificationManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "breathing_light_color"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v4           #nm:Landroid/app/NotificationManager;
    :cond_0
    :goto_0
    instance-of v6, p1, Landroid/preference/ListPreference;

    if-eqz v6, :cond_1

    .line 198
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-direct {p0, p1, v5, v2}, Lcom/android/settings/LedSettings;->setSummary(Landroid/preference/ListPreference;IZ)I

    .line 200
    :cond_1
    return v7

    .line 143
    .restart local v4       #nm:Landroid/app/NotificationManager;
    .restart local p1
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v6, "TrackballSettings"

    const-string v8, "could not persist breathing light color settings"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 146
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v4           #nm:Landroid/app/NotificationManager;
    .restart local p2
    :cond_2
    const-string v6, "breathing_light_freq"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 147
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 149
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "breathing_light_freq"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 151
    :catch_1
    move-exception v0

    .line 152
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v6, "TrackballSettings"

    const-string v8, "could not persist breathing light frequency settings"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 154
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_3
    const-string v6, "call_breathing_light_color"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 155
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 156
    const/4 v2, 0x1

    .line 157
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Lcom/android/settings/LedSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 160
    .restart local v4       #nm:Landroid/app/NotificationManager;
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "call_breathing_light_color"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 162
    :catch_2
    move-exception v0

    .line 163
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v6, "TrackballSettings"

    const-string v8, "could not persist breathing light color settings"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 165
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v4           #nm:Landroid/app/NotificationManager;
    .restart local p2
    :cond_4
    const-string v6, "call_breathing_light_freq"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 166
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 168
    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "call_breathing_light_freq"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 170
    :catch_3
    move-exception v0

    .line 171
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v6, "TrackballSettings"

    const-string v8, "could not persist breathing light frequency settings"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 173
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_5
    const-string v6, "mms_breathing_light_color"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 174
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 175
    const/4 v2, 0x1

    .line 176
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Lcom/android/settings/LedSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 179
    .restart local v4       #nm:Landroid/app/NotificationManager;
    :try_start_4
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "mms_breathing_light_color"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 181
    :catch_4
    move-exception v0

    .line 182
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v6, "TrackballSettings"

    const-string v8, "could not persist breathing light color settings"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 184
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v4           #nm:Landroid/app/NotificationManager;
    .restart local p2
    :cond_6
    const-string v6, "mms_breathing_light_freq"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 185
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 187
    :try_start_5
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "mms_breathing_light_freq"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 189
    :catch_5
    move-exception v0

    .line 190
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v6, "TrackballSettings"

    const-string v8, "could not persist breathing light frequency settings"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 192
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_7
    const-string v6, "notification_pulse"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 193
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 194
    .local v1, isChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "notification_light_pulse"

    if-eqz v1, :cond_8

    move v6, v7

    :goto_1
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_8
    const/4 v6, 0x0

    goto :goto_1
.end method
